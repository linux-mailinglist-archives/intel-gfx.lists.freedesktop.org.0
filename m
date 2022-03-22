Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 810CD4E3C58
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 11:22:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A12E710E064;
	Tue, 22 Mar 2022 10:22:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6207610E064
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 10:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647944524; x=1679480524;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Fr8W3zrWYPPwj/jaH96GwLfboHpmppu3RuGhdwrP2r8=;
 b=Vqv9T+y76uvGSivzsdC6W8KHseGp4fxuOhToUcK4zhrFXhS4M1fE5LEg
 ZVk7Jw263IMjV+gDaT8kwhTDZpeFFwrq9IFz7OE0TdP62XxTMcXekIwLp
 ng3MnMNLTfK/k0IxYrFrKwwGcsG6IKsTnflVOU4wzqBCyyQ0FWoiRfdqa
 jaQoTeCpkt7nEVuqqDwbs/pl7gWYnXBJ34jw+Ci7AiszPHfo5sDqMrmAn
 dXhFCLCeDvES9wxV3huhadIYwEG6XbCFpFNdXMZ5oRAd8Z8cjkO+0a/1e
 GE8xUudJfHwd28icgQUFlA5kLVZ06IjQ4a2Q5ngLIiQpE1TPOdHE3s2WN A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="257971498"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="257971498"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 03:22:03 -0700
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="543626820"
Received: from sburacze-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.58.237])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 03:22:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, Casey Bowman
 <casey.g.bowman@intel.com>
In-Reply-To: <20220322020144.thmvicqtlpcmkf6l@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220215234146.304035-1-casey.g.bowman@intel.com>
 <20220215234146.304035-2-casey.g.bowman@intel.com>
 <f971fcd0-a95e-93c5-46c2-3cd9fe753f9e@intel.com>
 <20220322020144.thmvicqtlpcmkf6l@ldmartin-desk2>
Date: Tue, 22 Mar 2022 12:21:59 +0200
Message-ID: <87r16ujni0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC PATCH v3 1/1] i915/drm: Split out x86/arm64
 for run_as_guest
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
Cc: daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org,
 michael.cheng@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 21 Mar 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Mon, Mar 21, 2022 at 04:34:49PM -0700, Casey Bowman wrote:
>>Wanted to ping this older thread to find out where we stand with this patch,
>>Are we OK with the current state of these changes?
>>
>>With more recent information gathered from feedback on other patches, would
>>we prefer changing this to a more arch-neutral control flow?
>>
>>e.g.
>>#if IS_ENABLED(CONFIG_X86)
>>...
>>#else
>>...
>>#endif
>>
>>Would we also prefer this RFC series be merged or would it be preferred to
>>create a new series instead?
>
> for this specific function, that is used in only 2 places I think it's
> ok to do:
>
> 	static inline bool run_as_guest(void)
> 	{
> 	#if IS_ENABLED(CONFIG_X86)
> 		return !hypervisor_is_type(X86_HYPER_NATIVE);
> 	#else	
> 		/* Not supported yet */
> 		return false;	
> 	#endif
> 	}
>
> For PCH it doesn't really matter as we don't execute that function
> for discrete. For intel_vtd_active() I figure anything other than
> x86 would be fine with false here.
>
> Jani, that this look good to you?

It's more important to me to get this out of i915_drv.h, which is not
supposed to be a collection of random stuff anymore. I've sent patches
to this effect but they've stalled a bit.

In general I like the preprocessor control flow outside of functions,
i.e. completely separate function definitions, but for one-line function
implementations I guess this is fine. This is less important for me than
the first point.


BR,
Jani.


>
> Lucas De Marchi
>
>>
>>Regards,
>>Casey
>>
>>On 2/15/22 15:41, Casey Bowman wrote:
>>>Splitting out run_as_guest into platform-specific functions
>>>as arm64 does not support this functionality.
>>>
>>>Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>
>>>---
>>>  drivers/gpu/drm/i915/i915_drv.h | 8 ++++++++
>>>  1 file changed, 8 insertions(+)
>>>
>>>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>>>index 1bca510a946d..fdec2b025540 100644
>>>--- a/drivers/gpu/drm/i915/i915_drv.h
>>>+++ b/drivers/gpu/drm/i915/i915_drv.h
>>>@@ -1381,10 +1381,18 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>>  #define INTEL_DISPLAY_ENABLED(dev_priv) \
>>>  	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->params.disable_display)
>>>+#if IS_ENABLED(CONFIG_X86)
>>>  static inline bool run_as_guest(void)
>>>  {
>>>  	return !hypervisor_is_type(X86_HYPER_NATIVE);
>>>  }
>>>+#elif IS_ENABLED(CONFIG_ARM64)
>>>+static inline bool run_as_guest(void)
>>>+{
>>>+	/* Not supported for arm64, so we return false  */
>>>+	return false;
>>>+}
>>>+#endif
>>>  #define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
>>>  					      IS_ALDERLAKE_S(dev_priv))
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
