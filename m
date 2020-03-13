Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6390518443B
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 10:59:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A8126EBAA;
	Fri, 13 Mar 2020 09:59:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEFF46EBAA
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 09:59:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 02:59:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,548,1574150400"; d="scan'208";a="246651809"
Received: from spandey2-mobl2.ger.corp.intel.com (HELO [10.252.53.204])
 ([10.252.53.204])
 by orsmga006.jf.intel.com with ESMTP; 13 Mar 2020 02:59:07 -0700
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200312230502.36898-1-umesh.nerlige.ramappa@intel.com>
 <20200312230502.36898-5-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <daeb4fa0-11cb-0d8b-15a3-8f907d10dde8@intel.com>
Date: Fri, 13 Mar 2020 11:59:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200312230502.36898-5-umesh.nerlige.ramappa@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/perf: add new open param to
 configure polling of OA buffer
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 13/03/2020 01:05, Umesh Nerlige Ramappa wrote:
> From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>
> This new parameter let's the application choose how often the OA
> buffer should be checked on the CPU side for data availability. Longer
> polling period tend to reduce CPU overhead if the application does not
> care about somewhat real time data collection.
>
> v2: Allow disabling polling completely with 0 value (Lionel)
> v3: Version the new parameter (Joonas)
> v4: Rebase (Umesh)
> v5: Make poll delay value of 0 invalid (Umesh)
>
> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_perf.c       | 37 ++++++++++++++++++++------
>   drivers/gpu/drm/i915/i915_perf_types.h |  6 +++++
>   include/uapi/drm/i915_drm.h            | 13 +++++++++
>   3 files changed, 48 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 21a63644846f..ca139ac31b11 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -262,11 +262,11 @@
>    */
>   #define OA_TAIL_MARGIN_NSEC	100000ULL
>   
> -/* frequency for checking whether the OA unit has written new reports to the
> - * circular OA buffer...
> +/* The default frequency for checking whether the OA unit has written new
> + * reports to the circular OA buffer...
>    */
> -#define POLL_FREQUENCY 200
> -#define POLL_PERIOD (NSEC_PER_SEC / POLL_FREQUENCY)
> +#define DEFAULT_POLL_FREQUENCY 200
> +#define DEFAULT_POLL_PERIOD (NSEC_PER_SEC / DEFAULT_POLL_FREQUENCY)
>   
>   /* for sysctl proc_dointvec_minmax of dev.i915.perf_stream_paranoid */
>   static u32 i915_perf_stream_paranoid = true;
> @@ -349,6 +349,8 @@ static const struct i915_oa_format gen12_oa_formats[I915_OA_FORMAT_MAX] = {
>    * @oa_periodic: Whether to enable periodic OA unit sampling
>    * @oa_period_exponent: The OA unit sampling period is derived from this
>    * @engine: The engine (typically rcs0) being monitored by the OA unit
> + * @poll_oa_period: The period at which the CPU will check for OA data
> + * availability
>    *
>    * As read_properties_unlocked() enumerates and validates the properties given
>    * to open a stream of metrics the configuration is built up in the structure
> @@ -368,6 +370,7 @@ struct perf_open_properties {
>   	int oa_period_exponent;
>   
>   	struct intel_engine_cs *engine;
> +	u64 poll_oa_period;
>   };
>   
>   struct i915_oa_config_bo {
> @@ -2642,9 +2645,9 @@ static void i915_oa_stream_enable(struct i915_perf_stream *stream)
>   
>   	stream->perf->ops.oa_enable(stream);
>   
> -	if (stream->periodic)
> +	if (stream->periodic && stream->poll_oa_period)
>   		hrtimer_start(&stream->poll_check_timer,
> -			      ns_to_ktime(POLL_PERIOD),
> +			      ns_to_ktime(stream->poll_oa_period),
>   			      HRTIMER_MODE_REL_PINNED);
>   }
>   
> @@ -3044,7 +3047,8 @@ static enum hrtimer_restart oa_poll_check_timer_cb(struct hrtimer *hrtimer)
>   		wake_up(&stream->poll_wq);
>   	}
>   
> -	hrtimer_forward_now(hrtimer, ns_to_ktime(POLL_PERIOD));
> +	hrtimer_forward_now(hrtimer,
> +			    ns_to_ktime(stream->poll_oa_period));
>   
>   	return HRTIMER_RESTART;
>   }
> @@ -3425,6 +3429,7 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
>   
>   	stream->perf = perf;
>   	stream->ctx = specific_ctx;
> +	stream->poll_oa_period = props->poll_oa_period;
>   
>   	ret = i915_oa_stream_init(stream, param, props);
>   	if (ret)
> @@ -3481,6 +3486,7 @@ static u64 oa_exponent_to_ns(struct i915_perf *perf, int exponent)
>   /**
>    * read_properties_unlocked - validate + copy userspace stream open properties
>    * @perf: i915 perf instance
> + * @open_flags: Flags set by userspace for the opening of the stream


Looks you can drop the open_flags, it's not used anymore in this version.


>    * @uprops: The array of u64 key value pairs given by userspace
>    * @n_props: The number of key value pairs expected in @uprops
>    * @props: The stream configuration built up while validating properties
> @@ -3494,6 +3500,7 @@ static u64 oa_exponent_to_ns(struct i915_perf *perf, int exponent)
>    * rule out defining new properties with ordering requirements in the future.
>    */
>   static int read_properties_unlocked(struct i915_perf *perf,
> +				    u32 open_flags,
>   				    u64 __user *uprops,
>   				    u32 n_props,
>   				    struct perf_open_properties *props)
> @@ -3502,6 +3509,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   	u32 i;
>   
>   	memset(props, 0, sizeof(struct perf_open_properties));
> +	props->poll_oa_period = DEFAULT_POLL_PERIOD;
>   
>   	if (!n_props) {
>   		DRM_DEBUG("No i915 perf properties given\n");
> @@ -3617,6 +3625,14 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   		case DRM_I915_PERF_PROP_HOLD_PREEMPTION:
>   			props->hold_preemption = !!value;
>   			break;
> +		case DRM_I915_PERF_PROP_POLL_OA_DELAY:
> +			if (value < 100000 /* 100us */) {
> +				DRM_DEBUG("OA availability timer too small (%lluns < 100us)\n",
> +					  value);
> +				return -EINVAL;
> +			}
> +			props->poll_oa_period = value;
> +			break;
>   		case DRM_I915_PERF_PROP_MAX:
>   			MISSING_CASE(id);
>   			return -EINVAL;
> @@ -3675,6 +3691,7 @@ int i915_perf_open_ioctl(struct drm_device *dev, void *data,
>   	}
>   
>   	ret = read_properties_unlocked(perf,
> +				       param->flags,
>   				       u64_to_user_ptr(param->properties_ptr),
>   				       param->num_properties,
>   				       &props);
> @@ -4457,8 +4474,12 @@ int i915_perf_ioctl_version(void)
>   	 *    preemption on a particular context so that performance data is
>   	 *    accessible from a delta of MI_RPC reports without looking at the
>   	 *    OA buffer.
> +	 *
> +	 * 4: Add DRM_I915_PERF_PROP_POLL_OA_DELAY parameter that controls
> +	 *    enable/disable as well as the interval for the hrtimer used to
> +	 *    check for OA data.


I think you should drop the "enable/disable" part. We just make the 
delay configurable now with a lower bound limit of 100us.


>   	 */
> -	return 3;
> +	return 4;
>   }
>   
>   #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
> index 9ee7c58e70d5..01559ead22e2 100644
> --- a/drivers/gpu/drm/i915/i915_perf_types.h
> +++ b/drivers/gpu/drm/i915/i915_perf_types.h
> @@ -304,6 +304,12 @@ struct i915_perf_stream {
>   	 * reprogrammed.
>   	 */
>   	struct i915_vma *noa_wait;
> +
> +	/**
> +	 * @poll_oa_period: The period in nanoseconds at which the OA
> +	 * buffer should be checked for available data.
> +	 */
> +	u64 poll_oa_period;
>   };
>   
>   /**
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 2813e579b480..dd511e7f795d 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -1969,6 +1969,19 @@ enum drm_i915_perf_property_id {
>   	 */
>   	DRM_I915_PERF_PROP_HOLD_PREEMPTION,
>   
> +	/**
> +	 * This optional parameter specifies the timer interval in nanoseconds
> +	 * at which the i915 driver will check the OA buffer for available data.
> +	 * Minimum allowed value is 100 microseconds. A default value is used by
> +	 * the driver if this parameter is not specified. Note that a large
> +	 * value may reduce cpu consumption during OA perf captures, but it
> +	 * would also potentially result in OA buffer overwrite as the captures
> +	 * reach end of the OA buffer.
> +	 *
> +	 * This property is available in perf revision 4.
> +	 */
> +	DRM_I915_PERF_PROP_POLL_OA_DELAY,
> +
>   	DRM_I915_PERF_PROP_MAX /* non-ABI */
>   };
>   


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
