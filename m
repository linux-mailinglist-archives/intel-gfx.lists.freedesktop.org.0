Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E38D18FE7E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 21:13:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A7336E394;
	Mon, 23 Mar 2020 20:13:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FB966E394
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 20:13:12 +0000 (UTC)
IronPort-SDR: nxQ0yNyx6sr4G3etEmbCQcCpTAE6JUyOfP5NDcUAMGzDuUxh3Xny8nvotphkANgm9iuaQvBe0B
 IyFBxBcyFqYA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 13:13:11 -0700
IronPort-SDR: a7XUKlyaG8RwqjL8MPmhYkS/HhV8fYq/IkRaPNCdpwjf0NrXetLUi5UrZWq237b4YKMUrqc2H0
 DNvnMFJHtVdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,297,1580803200"; d="scan'208";a="419629103"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga005.jf.intel.com with ESMTP; 23 Mar 2020 13:13:08 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 23 Mar 2020 13:13:08 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.144]) by
 ORSMSX151.amr.corp.intel.com ([169.254.7.134]) with mapi id 14.03.0439.000;
 Mon, 23 Mar 2020 13:13:07 -0700
From: "Pandruvada, Srinivas" <srinivas.pandruvada@intel.com>
To: "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "currojerez@riseup.net" <currojerez@riseup.net>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 07/10] cpufreq: intel_pstate: Implement VLP controller
 for HWP parts.
Thread-Index: AQHV9yVZzfN0ydxLQk2N+RiJ1IPVFahN90kAgAFM9wCAAAV0gIAAAycAgAfZH4A=
Date: Mon, 23 Mar 2020 20:13:06 +0000
Message-ID: <c43ab3612650e359c04693b239bfd7ebef439ad3.camel@intel.com>
References: <20200310214203.26459-1-currojerez@riseup.net>
 <20200310214203.26459-8-currojerez@riseup.net>
 <40db3c86c68abfab406618e2424787c18c119c87.camel@intel.com>
 <87fte57879.fsf@riseup.net>
 <8819f9b64ef4bd9ae3621b1073740de1febe3967.camel@intel.com>
 <87blot76rx.fsf@riseup.net>
In-Reply-To: <87blot76rx.fsf@riseup.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.34.2 (3.34.2-1.fc31) 
x-originating-ip: [10.134.90.138]
Content-ID: <0CA3E1371491DC489EF869FE8000CFC4@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 07/10] cpufreq: intel_pstate: Implement VLP
 controller for HWP parts.
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: "peterz@infradead.org" <peterz@infradead.org>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2020-03-18 at 13:22 -0700, Francisco Jerez wrote:
> "Pandruvada, Srinivas" <srinivas.pandruvada@intel.com> writes:
> 
> > On Wed, 2020-03-18 at 12:51 -0700, Francisco Jerez wrote:
> > > "Pandruvada, Srinivas" <srinivas.pandruvada@intel.com> writes:
> > > 
> > > > On Tue, 2020-03-10 at 14:42 -0700, Francisco Jerez wrote:
> > > > > This implements a simple variably low-pass-filtering governor
> > > > > in
> > > > > control of the HWP MIN/MAX PERF range based on the previously
> > > > > introduced get_vlp_target_range().  See "cpufreq:
> > > > > intel_pstate:
> > > > > Implement VLP controller target P-state range estimation."
> > > > > for
> > > > > the
> > > > > rationale.
> > > > 
> > > > I just gave a try on a pretty idle system with just systemd
> > > > processes
> > > > and usual background tasks with nomodset. 
> > > > 
> > > > I see that there HWP min is getting changed between 4-8. Why
> > > > are
> > > > changing HWP dynamic range even on an idle system running no
> > > > where
> > > > close to TDP?
> > > > 
> > > 
> > > The HWP request range is clamped to the frequency range specified
> > > by
> > > the
> > > CPUFREQ policy and to the cpu->pstate.min_pstate bound.
> > > 
> > > If you see the HWP minimum fluctuating above that it's likely a
> > > sign
> > > of
> > > your system not being completely idle -- If that's the case it's
> > > likely
> > > to go away after you do:
> > > 
> > >  echo 0 > /sys/kernel/debug/pstate_snb/vlp_realtime_gain_pml
> > > 
> > The objective which I though was to improve performance of GPU
> > workloads limited by TDP because of P-states ramping up and
> > resulting
> > in less power to GPU to complete a task.
> >  
> > HWP takes decision not on just load on a CPU but several other
> > factors
> > like total SoC power and scalability. We don't want to disturb HWP
> > algorithms when there is no TDP limitations. If writing 0, causes
> > this
> > behavior then that should be the default.
> > 
> 
> The heuristic disabled by that debugfs file is there to avoid
> regressions in latency-sensitive workloads as you can probably get
> from
> the ecomments.  However ISTR those regressions were specific to non-
> HWP
> systems, so I wouldn't mind disabling it for the moment (or punting
> it
> to the non-HWP series if you like)j.  But first I need to verify that
> there are no performance regressions on HWP systems after changing
> that.
> Can you confirm that the debugfs write above prevents the behavior
> you'd
> like to avoid?
It does prevent. I monitored for 10 min and didn't see any hwp_req
update.

Thanks,
Srinivas

> 
> > Thanks,
> > Srinivas
> > 
> > 
> > 
> > 
> > 
> > > > Thanks,
> > > > Srinivas
> > > > 
> > > > 
> > > > > Signed-off-by: Francisco Jerez <currojerez@riseup.net>
> > > > > ---
> > > > >  drivers/cpufreq/intel_pstate.c | 79
> > > > > +++++++++++++++++++++++++++++++++-
> > > > >  1 file changed, 77 insertions(+), 2 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/cpufreq/intel_pstate.c
> > > > > b/drivers/cpufreq/intel_pstate.c
> > > > > index cecadfec8bc1..a01eed40d897 100644
> > > > > --- a/drivers/cpufreq/intel_pstate.c
> > > > > +++ b/drivers/cpufreq/intel_pstate.c
> > > > > @@ -1905,6 +1905,20 @@ static void
> > > > > intel_pstate_reset_vlp(struct
> > > > > cpudata *cpu)
> > > > >  	vlp->gain = max(1, div_fp(1000,
> > > > > vlp_params.setpoint_0_pml));
> > > > >  	vlp->target.p_base = 0;
> > > > >  	vlp->stats.last_response_frequency_hz =
> > > > > vlp_params.avg_hz;
> > > > > +
> > > > > +	if (hwp_active) {
> > > > > +		const uint32_t p0 = max(cpu->pstate.min_pstate,
> > > > > +					cpu->min_perf_ratio);
> > > > > +		const uint32_t p1 = max_t(uint32_t, p0, cpu-
> > > > > > max_perf_ratio);
> > > > > +		const uint64_t hwp_req = (READ_ONCE(cpu-
> > > > > > hwp_req_cached) &
> > > > > +					  ~(HWP_MAX_PERF(~0L) |
> > > > > +					    HWP_MIN_PERF(~0L) |
> > > > > +					    HWP_DESIRED_PERF(~0
> > > > > L))) |
> > > > > +					 HWP_MIN_PERF(p0) |
> > > > > HWP_MAX_PERF(p1);
> > > > > +
> > > > > +		wrmsrl_on_cpu(cpu->cpu, MSR_HWP_REQUEST,
> > > > > hwp_req);
> > > > > +		cpu->hwp_req_cached = hwp_req;
> > > > > +	}
> > > > >  }
> > > > >  
> > > > >  /**
> > > > > @@ -2222,6 +2236,46 @@ static void
> > > > > intel_pstate_adjust_pstate(struct
> > > > > cpudata *cpu)
> > > > >  		fp_toint(cpu->iowait_boost * 100));
> > > > >  }
> > > > >  
> > > > > +static void intel_pstate_adjust_pstate_range(struct cpudata
> > > > > *cpu,
> > > > > +					     const unsigned int
> > > > > range[])
> > > > > +{
> > > > > +	const int from = cpu->hwp_req_cached;
> > > > > +	unsigned int p0, p1, p_min, p_max;
> > > > > +	struct sample *sample;
> > > > > +	uint64_t hwp_req;
> > > > > +
> > > > > +	update_turbo_state();
> > > > > +
> > > > > +	p0 = max(cpu->pstate.min_pstate, cpu->min_perf_ratio);
> > > > > +	p1 = max_t(unsigned int, p0, cpu->max_perf_ratio);
> > > > > +	p_min = clamp_t(unsigned int, range[0], p0, p1);
> > > > > +	p_max = clamp_t(unsigned int, range[1], p0, p1);
> > > > > +
> > > > > +	trace_cpu_frequency(p_max * cpu->pstate.scaling, cpu-
> > > > > >cpu);
> > > > > +
> > > > > +	hwp_req = (READ_ONCE(cpu->hwp_req_cached) &
> > > > > +		   ~(HWP_MAX_PERF(~0L) | HWP_MIN_PERF(~0L) |
> > > > > +		     HWP_DESIRED_PERF(~0L))) |
> > > > > +		  HWP_MIN_PERF(vlp_params.debug & 2 ? p0 :
> > > > > p_min) |
> > > > > +		  HWP_MAX_PERF(vlp_params.debug & 4 ? p1 :
> > > > > p_max);
> > > > > +
> > > > > +	if (hwp_req != cpu->hwp_req_cached) {
> > > > > +		wrmsrl(MSR_HWP_REQUEST, hwp_req);
> > > > > +		cpu->hwp_req_cached = hwp_req;
> > > > > +	}
> > > > > +
> > > > > +	sample = &cpu->sample;
> > > > > +	trace_pstate_sample(mul_ext_fp(100, sample-
> > > > > >core_avg_perf),
> > > > > +			    fp_toint(sample->busy_scaled),
> > > > > +			    from,
> > > > > +			    hwp_req,
> > > > > +			    sample->mperf,
> > > > > +			    sample->aperf,
> > > > > +			    sample->tsc,
> > > > > +			    get_avg_frequency(cpu),
> > > > > +			    fp_toint(cpu->iowait_boost * 100));
> > > > > +}
> > > > > +
> > > > >  static void intel_pstate_update_util(struct update_util_data
> > > > > *data,
> > > > > u64 time,
> > > > >  				     unsigned int flags)
> > > > >  {
> > > > > @@ -2260,6 +2314,22 @@ static void
> > > > > intel_pstate_update_util(struct
> > > > > update_util_data *data, u64 time,
> > > > >  		intel_pstate_adjust_pstate(cpu);
> > > > >  }
> > > > >  
> > > > > +/**
> > > > > + * Implementation of the cpufreq update_util hook based on
> > > > > the
> > > > > VLP
> > > > > + * controller (see get_vlp_target_range()).
> > > > > + */
> > > > > +static void intel_pstate_update_util_hwp_vlp(struct
> > > > > update_util_data
> > > > > *data,
> > > > > +					     u64 time, unsigned
> > > > > int
> > > > > flags)
> > > > > +{
> > > > > +	struct cpudata *cpu = container_of(data, struct
> > > > > cpudata,
> > > > > update_util);
> > > > > +
> > > > > +	if (update_vlp_sample(cpu, time, flags)) {
> > > > > +		const struct vlp_target_range *target =
> > > > > +			get_vlp_target_range(cpu);
> > > > > +		intel_pstate_adjust_pstate_range(cpu, target-
> > > > > >value);
> > > > > +	}
> > > > > +}
> > > > > +
> > > > >  static struct pstate_funcs core_funcs = {
> > > > >  	.get_max = core_get_max_pstate,
> > > > >  	.get_max_physical = core_get_max_pstate_physical,
> > > > > @@ -2389,6 +2459,9 @@ static int
> > > > > intel_pstate_init_cpu(unsigned
> > > > > int
> > > > > cpunum)
> > > > >  
> > > > >  	intel_pstate_get_cpu_pstates(cpu);
> > > > >  
> > > > > +	if (pstate_funcs.update_util ==
> > > > > intel_pstate_update_util_hwp_vlp)
> > > > > +		intel_pstate_reset_vlp(cpu);
> > > > > +
> > > > >  	pr_debug("controlling: cpu %d\n", cpunum);
> > > > >  
> > > > >  	return 0;
> > > > > @@ -2398,7 +2471,8 @@ static void
> > > > > intel_pstate_set_update_util_hook(unsigned int cpu_num)
> > > > >  {
> > > > >  	struct cpudata *cpu = all_cpu_data[cpu_num];
> > > > >  
> > > > > -	if (hwp_active && !hwp_boost)
> > > > > +	if (hwp_active && !hwp_boost &&
> > > > > +	    pstate_funcs.update_util !=
> > > > > intel_pstate_update_util_hwp_vlp)
> > > > >  		return;
> > > > >  
> > > > >  	if (cpu->update_util_set)
> > > > > @@ -2526,7 +2600,8 @@ static int
> > > > > intel_pstate_set_policy(struct
> > > > > cpufreq_policy *policy)
> > > > >  		 * was turned off, in that case we need to
> > > > > clear the
> > > > >  		 * update util hook.
> > > > >  		 */
> > > > > -		if (!hwp_boost)
> > > > > +		if (!hwp_boost && pstate_funcs.update_util !=
> > > > > +				  intel_pstate_update_util_hwp_
> > > > > vlp)
> > > > >  			intel_pstate_clear_update_util_hook(pol
> > > > > icy-
> > > > > > cpu);
> > > > >  		intel_pstate_hwp_set(policy->cpu);
> > > > >  	}
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
