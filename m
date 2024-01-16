Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7817F82EC56
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 10:57:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01FA210E03A;
	Tue, 16 Jan 2024 09:57:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A97C210E03A
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 09:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705399034; x=1736935034;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=KpY2SR9tePenbkMcQ7pbFs7T3fuEHJaz1t7ej6AtDPs=;
 b=KAciXI5Cosck51kLb3XshnsrRWq0MUMCrCNSvUKXJBtZsw9eaeL+09Zl
 RDf7XlF4Gl8drhnLMa7U3MQB03NhMleYTi/C1fcvppa+lBv50YodV+vgE
 lNjGMoajB3PCcL1vQ9kK2VF2pi2MAlLpYcHHOOKI2EMdrC3MrK9wZo+CA
 c+sMlDoCC4Zqn+PIz5kVH608C+S+WKcU3qVCvaIK6RHGpkxPe2Pz06CAk
 84ohycUhKSUeu2+AIAeKhZhYsAfRwWMkNIqa9QAxHtPL5e4ZfpB8kXr6v
 bc3/Apcf+VYpUM8HC/AzXfdsYpO3tqshPc/2zNehNhgu0ACR9JDNqcsMM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="7191336"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; 
   d="scan'208";a="7191336"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2024 01:57:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="787391003"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="787391003"
Received: from jfunnell-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.52])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2024 01:57:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: Re: [PATCH 4/6] drm/i915/opregion: abstract ASLE presence check
In-Reply-To: <87edeiso5h.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1704992868.git.jani.nikula@intel.com>
 <1829415d3e7b29e78c46b20bca8175ef373bcd92.1704992868.git.jani.nikula@intel.com>
 <ZaCB4Ne7sXnZvwCw@invictus> <8734v2ua8a.fsf@intel.com>
 <ZaGUv07GTyb24D+A@invictus> <87edeiso5h.fsf@intel.com>
Date: Tue, 16 Jan 2024 11:57:09 +0200
Message-ID: <878r4psiru.fsf@intel.com>
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

On Mon, 15 Jan 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> On Fri, 12 Jan 2024, Radhakrishna Sripada <radhakrishna.sripada@intel.com> wrote:
>> On Fri, Jan 12, 2024 at 12:17:25PM +0200, Jani Nikula wrote:
>>> On Thu, 11 Jan 2024, Radhakrishna Sripada <radhakrishna.sripada@intel.com> wrote:
>>> > On Thu, Jan 11, 2024 at 07:21:17PM +0200, Jani Nikula wrote:
>>> >> Add a function to check the opregion ASLE presence instead of accessing
>>> >> the opregion structures directly.
>>> >> 
>>> >> Reorder the checks in i915_has_asle() to avoid the function call if
>>> >> possible.
>>> >> 
>>> >> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>>> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> >> ---
>>> >>  drivers/gpu/drm/i915/display/intel_display_irq.c | 6 +++---
>>> >>  drivers/gpu/drm/i915/display/intel_opregion.c    | 5 +++++
>>> >>  drivers/gpu/drm/i915/display/intel_opregion.h    | 6 ++++++
>>> >>  3 files changed, 14 insertions(+), 3 deletions(-)
>>> >> 
>>> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
>>> >> index 99843883cef7..f846c5b108b5 100644
>>> >> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>>> >> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>>> >> @@ -266,12 +266,12 @@ void i915_disable_pipestat(struct drm_i915_private *dev_priv,
>>> >>  	intel_uncore_posting_read(&dev_priv->uncore, reg);
>>> >>  }
>>> >>  
>>> >> -static bool i915_has_asle(struct drm_i915_private *dev_priv)
>>> >> +static bool i915_has_asle(struct drm_i915_private *i915)
>>> > Why not move this to intel_opregion.c and export it instead of
>>> > intel_opregion_asle_present ?
>>> 
>>> I'm trying to be conscious of the possible performance impact of making
>>> calls from the irq code just to find there's nothing to do.
>> Makes sense.
>>
>>> 
>>> >>  {
>>> >> -	if (!dev_priv->display.opregion.asle)
>>> >> +	if (!IS_PINEVIEW(i915) && !IS_MOBILE(i915))
>>> > Can we extend this check to dgfx as well?
>>> 
>>> Extend how? This will return early for everything after IVB.
>> The name of the function is bit misleading as looking at Opregion code
>> and the spec beyond IVB, asle aka Mailbox 3 is present, just that it is
>> not used for reading pipestat. It is used to store rvda from where VBT is read.
>> Extension is not required for this purpose. Might want to clear that unless
>> I misunderstood the purpose, either way 
>
> The new function intel_opregion_asle_present() added in this patch is
> exactly about whether asle mbox is present.
>
> i915_has_asle() may be ill-named, but frankly I'm not sure what it
> should be called, and it probably should not be renamed in this patch?

Anyway, pushed the series to din, thanks for the review!

We can tweak the name details in follow-up patches.

BR,
Jani.


>
> BR,
> Jani.
>
>>
>> Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>>> 
>>> BR,
>>> Jani.
>>> 
>>> >
>>> > -Radhakrishna(RK) Sripada
>>> >
>>> >>  		return false;
>>> >>  
>>> >> -	return IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv);
>>> >> +	return intel_opregion_asle_present(i915);
>>> >>  }
>>> >>  
>>> >>  /**
>>> >> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
>>> >> index 8b9e820971cb..26aacb01f9ec 100644
>>> >> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
>>> >> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
>>> >> @@ -632,6 +632,11 @@ static void asle_work(struct work_struct *work)
>>> >>  	asle->aslc = aslc_stat;
>>> >>  }
>>> >>  
>>> >> +bool intel_opregion_asle_present(struct drm_i915_private *i915)
>>> >> +{
>>> >> +	return i915->display.opregion.asle;
>>> >> +}
>>> >> +
>>> >>  void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
>>> >>  {
>>> >>  	if (dev_priv->display.opregion.asle)
>>> >> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
>>> >> index 9efadfb72584..d084b30e8703 100644
>>> >> --- a/drivers/gpu/drm/i915/display/intel_opregion.h
>>> >> +++ b/drivers/gpu/drm/i915/display/intel_opregion.h
>>> >> @@ -69,6 +69,7 @@ void intel_opregion_resume(struct drm_i915_private *dev_priv);
>>> >>  void intel_opregion_suspend(struct drm_i915_private *dev_priv,
>>> >>  			    pci_power_t state);
>>> >>  
>>> >> +bool intel_opregion_asle_present(struct drm_i915_private *i915);
>>> >>  void intel_opregion_asle_intr(struct drm_i915_private *dev_priv);
>>> >>  int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
>>> >>  				  bool enable);
>>> >> @@ -111,6 +112,11 @@ static inline void intel_opregion_suspend(struct drm_i915_private *dev_priv,
>>> >>  {
>>> >>  }
>>> >>  
>>> >> +static inline bool intel_opregion_asle_present(struct drm_i915_private *i915)
>>> >> +{
>>> >> +	return false;
>>> >> +}
>>> >> +
>>> >>  static inline void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
>>> >>  {
>>> >>  }
>>> >> -- 
>>> >> 2.39.2
>>> >> 
>>> 
>>> -- 
>>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
