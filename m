Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1559E18A383
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 21:11:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 014926E05A;
	Wed, 18 Mar 2020 20:10:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C45606E05A
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 20:10:55 +0000 (UTC)
IronPort-SDR: P5TNe4g6R73N0wUA7igaXLW/9+OEw7kAmET30d8+FtpwjuchVYlJcaBgMNqi6zM53M5uDxCwG5
 Mw6NtmsxUIoA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 13:10:54 -0700
IronPort-SDR: aaxSHI3KsNa3PQirL1ksisyQtk5p1sBMthFx31DA0C911Ca3MY3D2G3w7Hb0Rergxmxgo0wU6T
 qmeLrM+i/uHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,568,1574150400"; d="scan'208";a="238287899"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga008.fm.intel.com with ESMTP; 18 Mar 2020 13:10:54 -0700
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Mar 2020 13:10:53 -0700
Received: from orsmsx109.amr.corp.intel.com ([169.254.11.100]) by
 ORSMSX159.amr.corp.intel.com ([169.254.11.47]) with mapi id 14.03.0439.000;
 Wed, 18 Mar 2020 13:10:53 -0700
From: "Pandruvada, Srinivas" <srinivas.pandruvada@intel.com>
To: "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "currojerez@riseup.net" <currojerez@riseup.net>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 07/10] cpufreq: intel_pstate: Implement VLP controller
 for HWP parts.
Thread-Index: AQHV9yVZzfN0ydxLQk2N+RiJ1IPVFahN90kAgAFM9wCAAAV0gA==
Date: Wed, 18 Mar 2020 20:10:53 +0000
Message-ID: <8819f9b64ef4bd9ae3621b1073740de1febe3967.camel@intel.com>
References: <20200310214203.26459-1-currojerez@riseup.net>
 <20200310214203.26459-8-currojerez@riseup.net>
 <40db3c86c68abfab406618e2424787c18c119c87.camel@intel.com>
 <87fte57879.fsf@riseup.net>
In-Reply-To: <87fte57879.fsf@riseup.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.34.2 (3.34.2-1.fc31) 
x-originating-ip: [10.212.192.29]
Content-ID: <183AF26DAB16374E8D69BC8B8D56CFC5@intel.com>
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

On Wed, 2020-03-18 at 12:51 -0700, Francisco Jerez wrote:
> "Pandruvada, Srinivas" <srinivas.pandruvada@intel.com> writes:
> 
> > On Tue, 2020-03-10 at 14:42 -0700, Francisco Jerez wrote:
> > > This implements a simple variably low-pass-filtering governor in
> > > control of the HWP MIN/MAX PERF range based on the previously
> > > introduced get_vlp_target_range().  See "cpufreq: intel_pstate:
> > > Implement VLP controller target P-state range estimation." for
> > > the
> > > rationale.
> > 
> > I just gave a try on a pretty idle system with just systemd
> > processes
> > and usual background tasks with nomodset. 
> > 
> > I see that there HWP min is getting changed between 4-8. Why are
> > changing HWP dynamic range even on an idle system running no where
> > close to TDP?
> > 
> 
> The HWP request range is clamped to the frequency range specified by
> the
> CPUFREQ policy and to the cpu->pstate.min_pstate bound.
> 
> If you see the HWP minimum fluctuating above that it's likely a sign
> of
> your system not being completely idle -- If that's the case it's
> likely
> to go away after you do:
> 
>  echo 0 > /sys/kernel/debug/pstate_snb/vlp_realtime_gain_pml
> 
The objective which I though was to improve performance of GPU
workloads limited by TDP because of P-states ramping up and resulting
in less power to GPU to complete a task.
 
HWP takes decision not on just load on a CPU but several other factors
like total SoC power and scalability. We don't want to disturb HWP
algorithms when there is no TDP limitations. If writing 0, causes this
behavior then that should be the default.

Thanks,
Srinivas





> > Thanks,
> > Srinivas
> > 
> > 
> > > Signed-off-by: Francisco Jerez <currojerez@riseup.net>
> > > ---
> > >  drivers/cpufreq/intel_pstate.c | 79
> > > +++++++++++++++++++++++++++++++++-
> > >  1 file changed, 77 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/cpufreq/intel_pstate.c
> > > b/drivers/cpufreq/intel_pstate.c
> > > index cecadfec8bc1..a01eed40d897 100644
> > > --- a/drivers/cpufreq/intel_pstate.c
> > > +++ b/drivers/cpufreq/intel_pstate.c
> > > @@ -1905,6 +1905,20 @@ static void intel_pstate_reset_vlp(struct
> > > cpudata *cpu)
> > >  	vlp->gain = max(1, div_fp(1000, vlp_params.setpoint_0_pml));
> > >  	vlp->target.p_base = 0;
> > >  	vlp->stats.last_response_frequency_hz = vlp_params.avg_hz;
> > > +
> > > +	if (hwp_active) {
> > > +		const uint32_t p0 = max(cpu->pstate.min_pstate,
> > > +					cpu->min_perf_ratio);
> > > +		const uint32_t p1 = max_t(uint32_t, p0, cpu-
> > > > max_perf_ratio);
> > > +		const uint64_t hwp_req = (READ_ONCE(cpu-
> > > > hwp_req_cached) &
> > > +					  ~(HWP_MAX_PERF(~0L) |
> > > +					    HWP_MIN_PERF(~0L) |
> > > +					    HWP_DESIRED_PERF(~0L))) |
> > > +					 HWP_MIN_PERF(p0) |
> > > HWP_MAX_PERF(p1);
> > > +
> > > +		wrmsrl_on_cpu(cpu->cpu, MSR_HWP_REQUEST, hwp_req);
> > > +		cpu->hwp_req_cached = hwp_req;
> > > +	}
> > >  }
> > >  
> > >  /**
> > > @@ -2222,6 +2236,46 @@ static void
> > > intel_pstate_adjust_pstate(struct
> > > cpudata *cpu)
> > >  		fp_toint(cpu->iowait_boost * 100));
> > >  }
> > >  
> > > +static void intel_pstate_adjust_pstate_range(struct cpudata
> > > *cpu,
> > > +					     const unsigned int
> > > range[])
> > > +{
> > > +	const int from = cpu->hwp_req_cached;
> > > +	unsigned int p0, p1, p_min, p_max;
> > > +	struct sample *sample;
> > > +	uint64_t hwp_req;
> > > +
> > > +	update_turbo_state();
> > > +
> > > +	p0 = max(cpu->pstate.min_pstate, cpu->min_perf_ratio);
> > > +	p1 = max_t(unsigned int, p0, cpu->max_perf_ratio);
> > > +	p_min = clamp_t(unsigned int, range[0], p0, p1);
> > > +	p_max = clamp_t(unsigned int, range[1], p0, p1);
> > > +
> > > +	trace_cpu_frequency(p_max * cpu->pstate.scaling, cpu->cpu);
> > > +
> > > +	hwp_req = (READ_ONCE(cpu->hwp_req_cached) &
> > > +		   ~(HWP_MAX_PERF(~0L) | HWP_MIN_PERF(~0L) |
> > > +		     HWP_DESIRED_PERF(~0L))) |
> > > +		  HWP_MIN_PERF(vlp_params.debug & 2 ? p0 : p_min) |
> > > +		  HWP_MAX_PERF(vlp_params.debug & 4 ? p1 : p_max);
> > > +
> > > +	if (hwp_req != cpu->hwp_req_cached) {
> > > +		wrmsrl(MSR_HWP_REQUEST, hwp_req);
> > > +		cpu->hwp_req_cached = hwp_req;
> > > +	}
> > > +
> > > +	sample = &cpu->sample;
> > > +	trace_pstate_sample(mul_ext_fp(100, sample->core_avg_perf),
> > > +			    fp_toint(sample->busy_scaled),
> > > +			    from,
> > > +			    hwp_req,
> > > +			    sample->mperf,
> > > +			    sample->aperf,
> > > +			    sample->tsc,
> > > +			    get_avg_frequency(cpu),
> > > +			    fp_toint(cpu->iowait_boost * 100));
> > > +}
> > > +
> > >  static void intel_pstate_update_util(struct update_util_data
> > > *data,
> > > u64 time,
> > >  				     unsigned int flags)
> > >  {
> > > @@ -2260,6 +2314,22 @@ static void
> > > intel_pstate_update_util(struct
> > > update_util_data *data, u64 time,
> > >  		intel_pstate_adjust_pstate(cpu);
> > >  }
> > >  
> > > +/**
> > > + * Implementation of the cpufreq update_util hook based on the
> > > VLP
> > > + * controller (see get_vlp_target_range()).
> > > + */
> > > +static void intel_pstate_update_util_hwp_vlp(struct
> > > update_util_data
> > > *data,
> > > +					     u64 time, unsigned int
> > > flags)
> > > +{
> > > +	struct cpudata *cpu = container_of(data, struct cpudata,
> > > update_util);
> > > +
> > > +	if (update_vlp_sample(cpu, time, flags)) {
> > > +		const struct vlp_target_range *target =
> > > +			get_vlp_target_range(cpu);
> > > +		intel_pstate_adjust_pstate_range(cpu, target->value);
> > > +	}
> > > +}
> > > +
> > >  static struct pstate_funcs core_funcs = {
> > >  	.get_max = core_get_max_pstate,
> > >  	.get_max_physical = core_get_max_pstate_physical,
> > > @@ -2389,6 +2459,9 @@ static int intel_pstate_init_cpu(unsigned
> > > int
> > > cpunum)
> > >  
> > >  	intel_pstate_get_cpu_pstates(cpu);
> > >  
> > > +	if (pstate_funcs.update_util ==
> > > intel_pstate_update_util_hwp_vlp)
> > > +		intel_pstate_reset_vlp(cpu);
> > > +
> > >  	pr_debug("controlling: cpu %d\n", cpunum);
> > >  
> > >  	return 0;
> > > @@ -2398,7 +2471,8 @@ static void
> > > intel_pstate_set_update_util_hook(unsigned int cpu_num)
> > >  {
> > >  	struct cpudata *cpu = all_cpu_data[cpu_num];
> > >  
> > > -	if (hwp_active && !hwp_boost)
> > > +	if (hwp_active && !hwp_boost &&
> > > +	    pstate_funcs.update_util !=
> > > intel_pstate_update_util_hwp_vlp)
> > >  		return;
> > >  
> > >  	if (cpu->update_util_set)
> > > @@ -2526,7 +2600,8 @@ static int intel_pstate_set_policy(struct
> > > cpufreq_policy *policy)
> > >  		 * was turned off, in that case we need to clear the
> > >  		 * update util hook.
> > >  		 */
> > > -		if (!hwp_boost)
> > > +		if (!hwp_boost && pstate_funcs.update_util !=
> > > +				  intel_pstate_update_util_hwp_vlp)
> > >  			intel_pstate_clear_update_util_hook(policy-
> > > > cpu);
> > >  		intel_pstate_hwp_set(policy->cpu);
> > >  	}
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
