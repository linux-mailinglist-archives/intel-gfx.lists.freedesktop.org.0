Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 396E318B223
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 12:12:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6B886E9F7;
	Thu, 19 Mar 2020 11:12:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl
 [79.96.170.134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65A936E9F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 11:12:48 +0000 (UTC)
Received: from 185.80.35.16 (185.80.35.16) (HELO kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.341)
 id 270faa119340128a; Thu, 19 Mar 2020 12:12:46 +0100
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Francisco Jerez <currojerez@riseup.net>
Date: Thu, 19 Mar 2020 12:12:46 +0100
Message-ID: <3718460.DcMx3OjSep@kreacher>
In-Reply-To: <20200310214203.26459-7-currojerez@riseup.net>
References: <20200310214203.26459-1-currojerez@riseup.net>
 <20200310214203.26459-7-currojerez@riseup.net>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 06/10] cpufreq: intel_pstate: Implement VLP
 controller target P-state range estimation.
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
Cc: Peter Zijlstra <peterz@infradead.org>, intel-gfx@lists.freedesktop.org,
 "Pandruvada, Srinivas" <srinivas.pandruvada@intel.com>,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tuesday, March 10, 2020 10:41:59 PM CET Francisco Jerez wrote:
> The function introduced here calculates a P-state range derived from
> the statistics computed in the previous patch which will be used to
> drive the HWP P-state range or (if HWP is not available) as basis for
> some additional kernel-side frequency selection mechanism which will
> choose a single P-state from the range.  This is meant to provide a
> variably low-pass filtering effect that will damp oscillations below a
> frequency threshold that can be specified by device drivers via PM QoS
> in order to achieve energy-efficient behavior in cases where the
> system has an IO bottleneck.
> 
> Signed-off-by: Francisco Jerez <currojerez@riseup.net>

The separation of this patch from the other one appears to be artificial
and it actually makes reviewing them both harder in my perspective.

What would be wrong with merging them together?

> ---
>  drivers/cpufreq/intel_pstate.c | 157 +++++++++++++++++++++++++++++++++
>  1 file changed, 157 insertions(+)
> 
> diff --git a/drivers/cpufreq/intel_pstate.c b/drivers/cpufreq/intel_pstate.c
> index 12ee350db2a9..cecadfec8bc1 100644
> --- a/drivers/cpufreq/intel_pstate.c
> +++ b/drivers/cpufreq/intel_pstate.c
> @@ -207,17 +207,34 @@ struct vlp_status_sample {
>  	int32_t realtime_avg;
>  };
>  
> +/**
> + * VLP controller state used for the estimation of the target P-state
> + * range, computed by get_vlp_target_range() from the heuristic status
> + * information defined above in struct vlp_status_sample.
> + */
> +struct vlp_target_range {
> +	unsigned int value[2];
> +	int32_t p_base;
> +};
> +
>  /**
>   * struct vlp_data - VLP controller parameters and state.
>   * @sample_interval_ns:	 Update interval in ns.
>   * @sample_frequency_hz: Reciprocal of the update interval in Hz.
> + * @gain*:		 Response factor of the controller relative to each
> + *			 one of its linear input variables as fixed-point
> + *			 fraction.
>   */
>  struct vlp_data {
>  	s64 sample_interval_ns;
>  	int32_t sample_frequency_hz;
> +	int32_t gain_aggr;
> +	int32_t gain_rt;
> +	int32_t gain;
>  
>  	struct vlp_input_stats stats;
>  	struct vlp_status_sample status;
> +	struct vlp_target_range target;
>  };
>  
>  /**
> @@ -323,12 +340,18 @@ static struct cpudata **all_cpu_data;
>  /**
>   * struct vlp_params - VLP controller static configuration
>   * @sample_interval_ms:	     Update interval in ms.
> + * @setpoint_*_pml:	     Target CPU utilization at which the controller is
> + *			     expected to leave the current P-state untouched,
> + *			     as an integer per mille.
>   * @avg*_hz:		     Exponential averaging frequencies of the various
>   *			     low-pass filters as an integer in Hz.
>   */
>  struct vlp_params {
>  	int sample_interval_ms;
> +	int setpoint_0_pml;
> +	int setpoint_aggr_pml;
>  	int avg_hz;
> +	int realtime_gain_pml;
>  	int debug;
>  };
>  
> @@ -362,7 +385,10 @@ struct pstate_funcs {
>  static struct pstate_funcs pstate_funcs __read_mostly;
>  static struct vlp_params vlp_params __read_mostly = {
>  	.sample_interval_ms = 10,
> +	.setpoint_0_pml = 900,
> +	.setpoint_aggr_pml = 1500,
>  	.avg_hz = 2,
> +	.realtime_gain_pml = 12000,
>  	.debug = 0,
>  };
>  
> @@ -1873,6 +1899,11 @@ static void intel_pstate_reset_vlp(struct cpudata *cpu)
>  	vlp->sample_interval_ns = vlp_params.sample_interval_ms * NSEC_PER_MSEC;
>  	vlp->sample_frequency_hz = max(1u, (uint32_t)MSEC_PER_SEC /
>  					   vlp_params.sample_interval_ms);
> +	vlp->gain_rt = div_fp(cpu->pstate.max_pstate *
> +			      vlp_params.realtime_gain_pml, 1000);
> +	vlp->gain_aggr = max(1, div_fp(1000, vlp_params.setpoint_aggr_pml));
> +	vlp->gain = max(1, div_fp(1000, vlp_params.setpoint_0_pml));
> +	vlp->target.p_base = 0;
>  	vlp->stats.last_response_frequency_hz = vlp_params.avg_hz;
>  }
>  
> @@ -1996,6 +2027,132 @@ static const struct vlp_status_sample *get_vlp_status_sample(
>  	return last_status;
>  }
>  
> +/**
> + * Calculate the target P-state range for the next update period.
> + * Uses a variably low-pass-filtering controller intended to improve
> + * energy efficiency when a CPU response frequency target is specified
> + * via PM QoS (e.g. under IO-bound conditions).
> + */
> +static const struct vlp_target_range *get_vlp_target_range(struct cpudata *cpu)
> +{
> +	struct vlp_data *vlp = &cpu->vlp;
> +	struct vlp_target_range *last_target = &vlp->target;
> +
> +	/*
> +	 * P-state limits in fixed-point as allowed by the policy.
> +	 */
> +	const int32_t p0 = int_tofp(max(cpu->pstate.min_pstate,
> +					cpu->min_perf_ratio));
> +	const int32_t p1 = int_tofp(cpu->max_perf_ratio);
> +
> +	/*
> +	 * Observed average P-state during the sampling period.	 The
> +	 * conservative path (po_cons) uses the TSC increment as
> +	 * denominator which will give the minimum (arguably most
> +	 * energy-efficient) P-state able to accomplish the observed
> +	 * amount of work during the sampling period.
> +	 *
> +	 * The downside of that somewhat optimistic estimate is that
> +	 * it can give a biased result for intermittent
> +	 * latency-sensitive workloads, which may have to be completed
> +	 * in a short window of time for the system to achieve maximum
> +	 * performance, even if the average CPU utilization is low.
> +	 * For that reason the aggressive path (po_aggr) uses the
> +	 * MPERF increment as denominator, which is approximately
> +	 * optimal under the pessimistic assumption that the CPU work
> +	 * cannot be parallelized with any other dependent IO work
> +	 * that subsequently keeps the CPU idle (partly in C1+
> +	 * states).
> +	 */
> +	const int32_t po_cons =
> +		div_fp((cpu->sample.aperf << cpu->aperf_mperf_shift)
> +		       * cpu->pstate.max_pstate_physical,
> +		       cpu->sample.tsc);
> +	const int32_t po_aggr =
> +		div_fp((cpu->sample.aperf << cpu->aperf_mperf_shift)
> +		       * cpu->pstate.max_pstate_physical,
> +		       (cpu->sample.mperf << cpu->aperf_mperf_shift));
> +
> +	const struct vlp_status_sample *status =
> +		get_vlp_status_sample(cpu, po_cons);
> +
> +	/* Calculate the target P-state. */
> +	const int32_t p_tgt_cons = mul_fp(vlp->gain, po_cons);
> +	const int32_t p_tgt_aggr = mul_fp(vlp->gain_aggr, po_aggr);
> +	const int32_t p_tgt = max(p0, min(p1, max(p_tgt_cons, p_tgt_aggr)));
> +
> +	/* Calculate the realtime P-state target lower bound. */
> +	const int32_t pm = int_tofp(cpu->pstate.max_pstate);
> +	const int32_t p_tgt_rt = min(pm, mul_fp(vlp->gain_rt,
> +						status->realtime_avg));
> +
> +	/*
> +	 * Low-pass filter the P-state estimate above by exponential
> +	 * averaging.  For an oscillating workload (e.g. submitting
> +	 * work repeatedly to a device like a soundcard or GPU) this
> +	 * will approximate the minimum P-state that would be able to
> +	 * accomplish the observed amount of work during the averaging
> +	 * period, which is also the optimally energy-efficient one,
> +	 * under the assumptions that:
> +	 *
> +	 *  - The power curve of the system is convex throughout the
> +	 *    range of P-states allowed by the policy. I.e. energy
> +	 *    efficiency is steadily decreasing with frequency past p0
> +	 *    (which is typically close to the maximum-efficiency
> +	 *    ratio).  In practice for the lower range of P-states
> +	 *    this may only be approximately true due to the
> +	 *    interaction between different components of the system.
> +	 *
> +	 *  - Parallelism constraints of the workload don't prevent it
> +	 *    from achieving the same throughput at the lower P-state.
> +	 *    This will happen in cases where the application is
> +	 *    designed in a way that doesn't allow for dependent CPU
> +	 *    and IO jobs to be pipelined, leading to alternating full
> +	 *    and zero utilization of the CPU and IO device.  This
> +	 *    will give an average IO device utilization lower than
> +	 *    100% regardless of the CPU frequency, which should
> +	 *    prevent the device driver from requesting a response
> +	 *    frequency bound, so the filtered P-state calculated
> +	 *    below won't have an influence on the controller
> +	 *    response.
> +	 *
> +	 *  - The period of the oscillating workload is significantly
> +	 *    shorter than the time constant of the exponential
> +	 *    average (1s / last_response_frequency_hz).  Otherwise for
> +	 *    more slowly oscillating workloads the controller
> +	 *    response will roughly follow the oscillation, leading to
> +	 *    decreased energy efficiency.
> +	 *
> +	 *  - The behavior of the workload doesn't change
> +	 *    qualitatively during the next update interval.  This is
> +	 *    only true in the steady state, and could possibly lead
> +	 *    to a transitory period in which the controller response
> +	 *    deviates from the most energy-efficient ratio until the
> +	 *    workload reaches a steady state again.
> +	 */
> +	const int32_t alpha = get_last_sample_avg_weight(
> +		cpu, vlp->stats.last_response_frequency_hz);
> +
> +	last_target->p_base = p_tgt + mul_fp(alpha,
> +					     last_target->p_base - p_tgt);
> +
> +	/*
> +	 * Use the low-pass-filtered controller response for better
> +	 * energy efficiency unless we have reasons to believe that
> +	 * some of the optimality assumptions discussed above may not
> +	 * hold.
> +	 */
> +	if ((status->value & VLP_BOTTLENECK_IO)) {
> +		last_target->value[0] = rnd_fp(p0);
> +		last_target->value[1] = rnd_fp(last_target->p_base);
> +	} else {
> +		last_target->value[0] = rnd_fp(p_tgt_rt);
> +		last_target->value[1] = rnd_fp(p1);
> +	}
> +
> +	return last_target;
> +}
> +
>  /**
>   * Collect some scheduling and PM statistics in response to an
>   * update_state() call.
> 




_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
