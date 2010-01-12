class JobView < Effigy::View
  attr_reader :job

  def initialize(job)
    @job = job
  end

  def transform
    f('title').text("#{job.position} at #{job.company}")
    f('h1').text(job.position)
    f('h2 a').attr(:href => job.company_url).
              text(job.company)
    f('#description').html(job.description)
    f('#apply-at').text(job.apply_at)
  end
end
