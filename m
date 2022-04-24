Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 844B550D485
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Apr 2022 21:08:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DBDB10E069;
	Sun, 24 Apr 2022 19:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 649A910E069
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Apr 2022 19:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650827303; x=1682363303;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=BOwC8WFMaVqqHBY849YmQ7N02s10ztf5Bz8f1MylSGo=;
 b=THhn9BUQe1Y4sgBT5OuNVO9likx7DQJRM7cXOA4M04lXWFZykwT5eX4w
 d6IkVh0L6LnFU4CnE2BN535N8hrfDXpx6PZKiGXzwNiNwDhC2lYsCw0Nw
 oDSV4v51akXST5iir+xZaxdktUDiQqoJzw1gRfQaVrhA8iSMuTDamk8nF
 dFMljX9UNjHctNsKKQTFlLSO+MnzN+PZPSFWWF+PLR2kzhXrZdiWkCN6D
 oXmskVR6zrrC24UE5G6o4LpaChLhHsetaS0xjZMBTVR77Hi/5ZoGVe/DI
 ffV/JVBh5rKoAunGqB8Q0YAhQSBYLAPsT5XgTg87sYHy/NfXbhcL4c8s6 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="246998098"
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="246998098"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2022 12:08:22 -0700
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="578899958"
Received: from fmihut-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.47.38])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2022 12:08:21 -0700
Date: Sun, 24 Apr 2022 21:08:18 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <YmWgIscRqTRTAq9c@intel.intel>
References: <cover.1650435571.git.ashutosh.dixit@intel.com>
 <2e9c13234fe510235688e774d70326870eb7e219.1650435571.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2e9c13234fe510235688e774d70326870eb7e219.1650435571.git.ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915/pcode: Extend pcode functions
 for multiple gt's
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ashutosh,

[...]

> -static bool skl_pcode_try_request(struct drm_i915_private *i915, u32 mbox,
> -				  u32 request, u32 reply_mask, u32 reply,
> -				  u32 *status)
> +static bool __gt_pcode_try_request(struct intel_gt *gt, u32 mbox,

why is this becoming a '__' function?

> +				   u32 request, u32 reply_mask, u32 reply,
> +				   u32 *status)
>  {
> -	*status = __snb_pcode_rw(i915, mbox, &request, NULL, 500, 0, true);
> +	*status = __gt_pcode_rw(gt, mbox, &request, NULL, 500, 0, true);
>  
>  	return (*status == 0) && ((request & reply_mask) == reply);
>  }
>  
>  /**
> - * skl_pcode_request - send PCODE request until acknowledgment
> - * @i915: device private
> + * intel_gt_pcode_request - send PCODE request until acknowledgment
> + * @gt: gt
>   * @mbox: PCODE mailbox ID the request is targeted for
>   * @request: request ID
>   * @reply_mask: mask used to check for request acknowledgment
> @@ -158,16 +159,16 @@ static bool skl_pcode_try_request(struct drm_i915_private *i915, u32 mbox,
>   * Returns 0 on success, %-ETIMEDOUT in case of a timeout, <0 in case of some
>   * other error as reported by PCODE.
>   */
> -int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
> -		      u32 reply_mask, u32 reply, int timeout_base_ms)
> +int intel_gt_pcode_request(struct intel_gt *gt, u32 mbox, u32 request,
> +			   u32 reply_mask, u32 reply, int timeout_base_ms)
>  {
>  	u32 status;
>  	int ret;
>  
> -	mutex_lock(&i915->sb_lock);
> +	mutex_lock(&gt->i915->sb_lock);
>  
>  #define COND \
> -	skl_pcode_try_request(i915, mbox, request, reply_mask, reply, &status)
> +	__gt_pcode_try_request(gt, mbox, request, reply_mask, reply, &status)
>  
>  	/*
>  	 * Prime the PCODE by doing a request first. Normally it guarantees
> @@ -193,35 +194,48 @@ int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
>  	 * requests, and for any quirks of the PCODE firmware that delays
>  	 * the request completion.
>  	 */
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(&gt->i915->drm,
>  		    "PCODE timeout, retrying with preemption disabled\n");
> -	drm_WARN_ON_ONCE(&i915->drm, timeout_base_ms > 3);
> +	drm_WARN_ON_ONCE(&gt->i915->drm, timeout_base_ms > 3);
>  	preempt_disable();
>  	ret = wait_for_atomic(COND, 50);
>  	preempt_enable();
>  
>  out:
> -	mutex_unlock(&i915->sb_lock);
> +	mutex_unlock(&gt->i915->sb_lock);
>  	return status ? status : ret;
>  #undef COND
>  }
>  
> +static int __gt_pcode_init(struct intel_gt *gt)
> +{
> +	int ret = intel_gt_pcode_request(gt, DG1_PCODE_STATUS,
> +					 DG1_UNCORE_GET_INIT_STATUS,
> +					 DG1_UNCORE_INIT_STATUS_COMPLETE,
> +					 DG1_UNCORE_INIT_STATUS_COMPLETE, 180000);
> +
> +	drm_dbg(&gt->i915->drm, "gt %d: PCODE init status %d\n", gt->info.id, ret);
> +
> +	if (ret)
> +		drm_err(&gt->i915->drm, "gt %d: Pcode did not report uncore initialization completion!\n",
> +			gt->info.id);
> +
> +	return ret;
> +}
> +
>  int intel_pcode_init(struct drm_i915_private *i915)
>  {
> -	int ret = 0;
> +	struct intel_gt *gt;
> +	int i, ret = 0;
>  
>  	if (!IS_DGFX(i915))
>  		return ret;

we can take some freedom, if you don't mind, and declare ret
inside the for_each, and return 0 here. Just a small cosmetic.

>  
> -	ret = skl_pcode_request(i915, DG1_PCODE_STATUS,
> -				DG1_UNCORE_GET_INIT_STATUS,
> -				DG1_UNCORE_INIT_STATUS_COMPLETE,
> -				DG1_UNCORE_INIT_STATUS_COMPLETE, 180000);
> -
> -	drm_dbg(&i915->drm, "PCODE init status %d\n", ret);
> -
> -	if (ret)
> -		drm_err(&i915->drm, "Pcode did not report uncore initialization completion!\n");
> +	for_each_gt(gt, i915, i) {
> +		ret = __gt_pcode_init(gt);
> +		if (ret)
> +			return ret;
> +	}
>  
> -	return ret;
> +	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/intel_pcode.h
> index 0962a17fac48..96c954ec91f9 100644
> --- a/drivers/gpu/drm/i915/intel_pcode.h
> +++ b/drivers/gpu/drm/i915/intel_pcode.h
> @@ -8,16 +8,31 @@
>  
>  #include <linux/types.h>
>  
> +struct intel_gt;
>  struct drm_i915_private;
>  
> -int snb_pcode_read(struct drm_i915_private *i915, u32 mbox, u32 *val, u32 *val1);
> -int snb_pcode_write_timeout(struct drm_i915_private *i915, u32 mbox, u32 val,
> -			    int fast_timeout_us, int slow_timeout_ms);
> -#define snb_pcode_write(i915, mbox, val)			\
> +int intel_gt_pcode_read(struct intel_gt *gt, u32 mbox, u32 *val, u32 *val1);
> +
> +int intel_gt_pcode_write_timeout(struct intel_gt *gt, u32 mbox, u32 val,
> +				 int fast_timeout_us, int slow_timeout_ms);
> +
> +#define intel_gt_pcode_write(gt, mbox, val) \
> +	intel_gt_pcode_write_timeout(gt, mbox, val, 500, 0)
> +
> +int intel_gt_pcode_request(struct intel_gt *gt, u32 mbox, u32 request,
> +			   u32 reply_mask, u32 reply, int timeout_base_ms);
> +
> +#define snb_pcode_read(i915, mbox, val, val1) \
> +	intel_gt_pcode_read(&(i915)->gt0, mbox, val, val1)
> +
> +#define snb_pcode_write_timeout(i915, mbox, val, fast_timeout_us, slow_timeout_ms) \
> +	intel_gt_pcode_write_timeout(&(i915)->gt0, mbox, val, fast_timeout_us, slow_timeout_ms)
> +
> +#define snb_pcode_write(i915, mbox, val) \
>  	snb_pcode_write_timeout(i915, mbox, val, 500, 0)
>  
> -int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
> -		      u32 reply_mask, u32 reply, int timeout_base_ms);
> +#define skl_pcode_request(i915, mbox, request, reply_mask, reply, timeout_base_ms) \
> +	intel_gt_pcode_request(&(i915)->gt0, mbox, request, reply_mask, reply, timeout_base_ms)

to_gt(i915)

I guess this is just a replacement i915 to gt, I think it's all
correct and with the latter changed:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
