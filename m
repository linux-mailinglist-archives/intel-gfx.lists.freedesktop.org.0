Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA4682DA82
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jan 2024 14:48:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B69AA10E2EA;
	Mon, 15 Jan 2024 13:48:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F00A10E2EA
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jan 2024 13:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705326527; x=1736862527;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=rddOujxXLmcVFvps03ZThKOEskJb9F8nRSTceHMaMJU=;
 b=J9uQk9M6bEY3WYNY0XDFXoz5JAWWE2DRJnVZH2V0u8KYSE92HPHjMa++
 GtMHUVPf5KaAIVxGSxiWVxZBTAIjhaNs5xUIA8EpwoxDmk14v3HEz4T6P
 VmbF+LuUfnXvnmsLsOwBz1ValVajfpAF2TUUShMgIsFll07RGusi9ZgTq
 QkP42zBCdCBKRdEJF6XeD3jlPN0A79meYjBmclnHhyVEgpdN4Dl0JcjkQ
 EhucrD8iQm3eWwPLyAQPf1IqVoQZbJIwN29e54NKvxJVtpYpIvqMCTnkI
 sC8OtzcWGZEZ8JSbW0MpN6K91rb9yznBOeYCKXGo9411OEup9uDnyMTRO Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10953"; a="390070728"
X-IronPort-AV: E=Sophos;i="6.04,196,1695711600"; d="scan'208";a="390070728"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 05:48:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10953"; a="956825725"
X-IronPort-AV: E=Sophos;i="6.04,196,1695711600"; d="scan'208";a="956825725"
Received: from srigaut-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.155])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 05:48:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: Re: [PATCH 4/6] drm/i915/opregion: abstract ASLE presence check
In-Reply-To: <ZaGUv07GTyb24D+A@invictus>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1704992868.git.jani.nikula@intel.com>
 <1829415d3e7b29e78c46b20bca8175ef373bcd92.1704992868.git.jani.nikula@intel.com>
 <ZaCB4Ne7sXnZvwCw@invictus> <8734v2ua8a.fsf@intel.com>
 <ZaGUv07GTyb24D+A@invictus>
Date: Mon, 15 Jan 2024 15:48:42 +0200
Message-ID: <87edeiso5h.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 12 Jan 2024, Radhakrishna Sripada <radhakrishna.sripada@intel.com> wrote:
> On Fri, Jan 12, 2024 at 12:17:25PM +0200, Jani Nikula wrote:
>> On Thu, 11 Jan 2024, Radhakrishna Sripada <radhakrishna.sripada@intel.com> wrote:
>> > On Thu, Jan 11, 2024 at 07:21:17PM +0200, Jani Nikula wrote:
>> >> Add a function to check the opregion ASLE presence instead of accessing
>> >> the opregion structures directly.
>> >> 
>> >> Reorder the checks in i915_has_asle() to avoid the function call if
>> >> possible.
>> >> 
>> >> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_display_irq.c | 6 +++---
>> >>  drivers/gpu/drm/i915/display/intel_opregion.c    | 5 +++++
>> >>  drivers/gpu/drm/i915/display/intel_opregion.h    | 6 ++++++
>> >>  3 files changed, 14 insertions(+), 3 deletions(-)
>> >> 
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> >> index 99843883cef7..f846c5b108b5 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> >> @@ -266,12 +266,12 @@ void i915_disable_pipestat(struct drm_i915_private *dev_priv,
>> >>  	intel_uncore_posting_read(&dev_priv->uncore, reg);
>> >>  }
>> >>  
>> >> -static bool i915_has_asle(struct drm_i915_private *dev_priv)
>> >> +static bool i915_has_asle(struct drm_i915_private *i915)
>> > Why not move this to intel_opregion.c and export it instead of
>> > intel_opregion_asle_present ?
>> 
>> I'm trying to be conscious of the possible performance impact of making
>> calls from the irq code just to find there's nothing to do.
> Makes sense.
>
>> 
>> >>  {
>> >> -	if (!dev_priv->display.opregion.asle)
>> >> +	if (!IS_PINEVIEW(i915) && !IS_MOBILE(i915))
>> > Can we extend this check to dgfx as well?
>> 
>> Extend how? This will return early for everything after IVB.
> The name of the function is bit misleading as looking at Opregion code
> and the spec beyond IVB, asle aka Mailbox 3 is present, just that it is
> not used for reading pipestat. It is used to store rvda from where VBT is read.
> Extension is not required for this purpose. Might want to clear that unless
> I misunderstood the purpose, either way 

The new function intel_opregion_asle_present() added in this patch is
exactly about whether asle mbox is present.

i915_has_asle() may be ill-named, but frankly I'm not sure what it
should be called, and it probably should not be renamed in this patch?

BR,
Jani.

>
> Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>> 
>> BR,
>> Jani.
>> 
>> >
>> > -Radhakrishna(RK) Sripada
>> >
>> >>  		return false;
>> >>  
>> >> -	return IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv);
>> >> +	return intel_opregion_asle_present(i915);
>> >>  }
>> >>  
>> >>  /**
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
>> >> index 8b9e820971cb..26aacb01f9ec 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
>> >> @@ -632,6 +632,11 @@ static void asle_work(struct work_struct *work)
>> >>  	asle->aslc = aslc_stat;
>> >>  }
>> >>  
>> >> +bool intel_opregion_asle_present(struct drm_i915_private *i915)
>> >> +{
>> >> +	return i915->display.opregion.asle;
>> >> +}
>> >> +
>> >>  void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
>> >>  {
>> >>  	if (dev_priv->display.opregion.asle)
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
>> >> index 9efadfb72584..d084b30e8703 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_opregion.h
>> >> +++ b/drivers/gpu/drm/i915/display/intel_opregion.h
>> >> @@ -69,6 +69,7 @@ void intel_opregion_resume(struct drm_i915_private *dev_priv);
>> >>  void intel_opregion_suspend(struct drm_i915_private *dev_priv,
>> >>  			    pci_power_t state);
>> >>  
>> >> +bool intel_opregion_asle_present(struct drm_i915_private *i915);
>> >>  void intel_opregion_asle_intr(struct drm_i915_private *dev_priv);
>> >>  int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
>> >>  				  bool enable);
>> >> @@ -111,6 +112,11 @@ static inline void intel_opregion_suspend(struct drm_i915_private *dev_priv,
>> >>  {
>> >>  }
>> >>  
>> >> +static inline bool intel_opregion_asle_present(struct drm_i915_private *i915)
>> >> +{
>> >> +	return false;
>> >> +}
>> >> +
>> >>  static inline void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
>> >>  {
>> >>  }
>> >> -- 
>> >> 2.39.2
>> >> 
>> 
>> -- 
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
