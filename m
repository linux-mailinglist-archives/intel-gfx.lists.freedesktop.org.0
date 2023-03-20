Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A58E56C0E77
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 11:16:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDB7D10E2EB;
	Mon, 20 Mar 2023 10:16:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E33510E2EB
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 10:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679307387; x=1710843387;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=v0L479aN1dgzkUkss1Zx+W3AZVzAetYOOm+mWZk4JpY=;
 b=UILekAFAZY8NKsEyf1l9/uCOXpsQH2OLmiM4t2pX1z6Wu0HqqiRfxZo3
 N06j82Zu22Hc5Jz5DHe0+uv8r5E6e6nQ382fK0Ont18kSa83BLEkPzWlb
 P2WEeC7tfwwfOhOXJdV9XW1dkCwqPafhSJ79srW2aI8vwoj1PYH4maeci
 uvO9/7DZI53KgAABNqEBY/AYORAE379l/ys5FBvbPC7yIkOobEfA7RzRA
 S4ePudrIiATPxNgHfznWxhk7PHFAE7WZYEhdp8hngiKnkbGSWj9bUB1LM
 z7eYxr/JQERYYPf61IokTkOzslbMqiF5hnrAuilD+TT5eJfMSB4ztPXQ6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="338648959"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="338648959"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 03:16:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="711304090"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="711304090"
Received: from mseifert-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.61.180])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 03:16:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230317231641.2815418-2-umesh.nerlige.ramappa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230317231641.2815418-1-umesh.nerlige.ramappa@intel.com>
 <20230317231641.2815418-2-umesh.nerlige.ramappa@intel.com>
Date: Mon, 20 Mar 2023 12:16:17 +0200
Message-ID: <87bkknafta.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v7 01/11] drm/i915/perf: Drop wakeref on GuC
 RC error
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 17 Mar 2023, Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com> wrote:
> From: Chris Wilson <chris.p.wilson@linux.intel.com>
>
> If we fail to adjust the GuC run-control on opening the perf stream,
> make sure we unwind the wakeref just taken.
>
> v2: Retain old goto label names (Ashutosh)
>
> Fixes: 01e742746785 ("drm/i915/guc: Support OA when Wa_16011777198 is enabled")
> Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_perf.c       | 14 +++++++++-----
>  drivers/gpu/drm/i915/i915_perf_types.h |  6 ++++++
>  2 files changed, 15 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 824a34ec0b83..283a4a3c6862 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -1592,9 +1592,7 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
>  	/*
>  	 * Wa_16011777198:dg2: Unset the override of GUCRC mode to enable rc6.
>  	 */
> -	if (intel_uc_uses_guc_rc(&gt->uc) &&
> -	    (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
> -	     IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0)))
> +	if (stream->override_gucrc)
>  		drm_WARN_ON(&gt->i915->drm,
>  			    intel_guc_slpc_unset_gucrc_mode(&gt->uc.guc.slpc));
>  
> @@ -3305,8 +3303,10 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>  		if (ret) {
>  			drm_dbg(&stream->perf->i915->drm,
>  				"Unable to override gucrc mode\n");
> -			goto err_config;
> +			goto err_gucrc;
>  		}
> +
> +		stream->override_gucrc = true;
>  	}
>  
>  	ret = alloc_oa_buffer(stream);
> @@ -3345,11 +3345,15 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>  	free_oa_buffer(stream);
>  
>  err_oa_buf_alloc:
> -	free_oa_configs(stream);
> +	if (stream->override_gucrc)
> +		intel_guc_slpc_unset_gucrc_mode(&gt->uc.guc.slpc);
>  
> +err_gucrc:
>  	intel_uncore_forcewake_put(stream->uncore, FORCEWAKE_ALL);
>  	intel_engine_pm_put(stream->engine);
>  
> +	free_oa_configs(stream);
> +
>  err_config:
>  	free_noa_wait(stream);
>  
> diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
> index ca150b7af3f2..e36f046fe2b6 100644
> --- a/drivers/gpu/drm/i915/i915_perf_types.h
> +++ b/drivers/gpu/drm/i915/i915_perf_types.h
> @@ -316,6 +316,12 @@ struct i915_perf_stream {
>  	 * buffer should be checked for available data.
>  	 */
>  	u64 poll_oa_period;
> +
> +	/**
> +	 * @override_gucrc: GuC RC has been overridden for the perf stream,
> +	 * and we need to restore the default configuration on release.
> +	 */
> +	bool override_gucrc:1;

What do you gain by making this a bitfield? It's already a big struct,
and there already are other bool flags.

BR,
Jani.



>  };
>  
>  /**

-- 
Jani Nikula, Intel Open Source Graphics Center
