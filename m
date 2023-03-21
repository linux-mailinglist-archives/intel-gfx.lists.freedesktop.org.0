Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9180C6C2E57
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 10:59:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DEFD10E09F;
	Tue, 21 Mar 2023 09:59:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D64710E09F
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 09:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679392778; x=1710928778;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=C3kx+EYXH0bR4lyOf7KfMmn51AFQp+MBKEGHIFF63eU=;
 b=aU3FuMgaMSP6KiZSiH5x9oyjQbV6SYmL8liZldzYcDfujxoGYuxUcLs5
 rKVG/Dghnw3H035LHEFFO8elUBZx51Q1iu9vLR4mwgfxPshEI3l34JUi5
 En3zyayivbtwh++ErsxUiyNeP+uRDP4pY7Gj4mv29Zsu+rbAXTtuVmnF4
 5j2IJsD2DWcicTCy4Klk1Mvf2CT8GBEQ3zK0y7X4U4GorHLg4OD6wyIf6
 1X0fCXE8shlAuvhqR4ZdoCDw51fGUSher1vgl5RsNSn0hPYDzI81SD6B/
 pIxIj1ZEFg95bX+qEagpMzyS5QagKVmHHEi/oTotVwCjDXR2ccESbo6Cd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="336404386"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="336404386"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 02:59:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="711742880"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="711742880"
Received: from trybicki-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.119])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 02:59:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
In-Reply-To: <ZBiy8icI4foN5Eo7@orsosgc001.jf.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230317231641.2815418-1-umesh.nerlige.ramappa@intel.com>
 <20230317231641.2815418-2-umesh.nerlige.ramappa@intel.com>
 <87bkknafta.fsf@intel.com> <ZBiy8icI4foN5Eo7@orsosgc001.jf.intel.com>
Date: Tue, 21 Mar 2023 11:59:33 +0200
Message-ID: <87sfdy8lx6.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 20 Mar 2023, Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com> wrote:
> On Mon, Mar 20, 2023 at 12:16:17PM +0200, Jani Nikula wrote:
>>On Fri, 17 Mar 2023, Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com> wrote:
>>> From: Chris Wilson <chris.p.wilson@linux.intel.com>
>>>
>>> If we fail to adjust the GuC run-control on opening the perf stream,
>>> make sure we unwind the wakeref just taken.
>>>
>>> v2: Retain old goto label names (Ashutosh)
>>>
>>> Fixes: 01e742746785 ("drm/i915/guc: Support OA when Wa_16011777198 is enabled")
>>> Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
>>> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/i915_perf.c       | 14 +++++++++-----
>>>  drivers/gpu/drm/i915/i915_perf_types.h |  6 ++++++
>>>  2 files changed, 15 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>>> index 824a34ec0b83..283a4a3c6862 100644
>>> --- a/drivers/gpu/drm/i915/i915_perf.c
>>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>>> @@ -1592,9 +1592,7 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
>>>  	/*
>>>  	 * Wa_16011777198:dg2: Unset the override of GUCRC mode to enable rc6.
>>>  	 */
>>> -	if (intel_uc_uses_guc_rc(&gt->uc) &&
>>> -	    (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
>>> -	     IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0)))
>>> +	if (stream->override_gucrc)
>>>  		drm_WARN_ON(&gt->i915->drm,
>>>  			    intel_guc_slpc_unset_gucrc_mode(&gt->uc.guc.slpc));
>>>
>>> @@ -3305,8 +3303,10 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>>>  		if (ret) {
>>>  			drm_dbg(&stream->perf->i915->drm,
>>>  				"Unable to override gucrc mode\n");
>>> -			goto err_config;
>>> +			goto err_gucrc;
>>>  		}
>>> +
>>> +		stream->override_gucrc = true;
>>>  	}
>>>
>>>  	ret = alloc_oa_buffer(stream);
>>> @@ -3345,11 +3345,15 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>>>  	free_oa_buffer(stream);
>>>
>>>  err_oa_buf_alloc:
>>> -	free_oa_configs(stream);
>>> +	if (stream->override_gucrc)
>>> +		intel_guc_slpc_unset_gucrc_mode(&gt->uc.guc.slpc);
>>>
>>> +err_gucrc:
>>>  	intel_uncore_forcewake_put(stream->uncore, FORCEWAKE_ALL);
>>>  	intel_engine_pm_put(stream->engine);
>>>
>>> +	free_oa_configs(stream);
>>> +
>>>  err_config:
>>>  	free_noa_wait(stream);
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
>>> index ca150b7af3f2..e36f046fe2b6 100644
>>> --- a/drivers/gpu/drm/i915/i915_perf_types.h
>>> +++ b/drivers/gpu/drm/i915/i915_perf_types.h
>>> @@ -316,6 +316,12 @@ struct i915_perf_stream {
>>>  	 * buffer should be checked for available data.
>>>  	 */
>>>  	u64 poll_oa_period;
>>> +
>>> +	/**
>>> +	 * @override_gucrc: GuC RC has been overridden for the perf stream,
>>> +	 * and we need to restore the default configuration on release.
>>> +	 */
>>> +	bool override_gucrc:1;
>>
>>What do you gain by making this a bitfield? It's already a big struct,
>>and there already are other bool flags.
>
> Noticed it now. I guess this is not portable as it's compiler dependent.  
> I would just remove the bitfield. I do see a few occurrences of bitfield 
> bools in i915 though, so any specific guidelines on when to use bool vs 
> bitfields?

Use it when you really need the space saving, but don't mind the added
cost for accessing the bit. And then you do need to pay attention to how
the struct members are added to not do silly padding.

The VBT code uses bitfields for parsing the binary data, it's
implementation dependent behaviour but it works for us. Need to be
mindful about it.

BR,
Jani.


>
> Thanks,
> Umesh
>>
>>BR,
>>Jani.
>>
>>
>>
>>>  };
>>>
>>>  /**
>>
>>-- 
>>Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
