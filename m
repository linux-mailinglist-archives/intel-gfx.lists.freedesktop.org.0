Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8687D82BE56
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 11:17:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C82310EAAC;
	Fri, 12 Jan 2024 10:17:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3AF610E054
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 10:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705054652; x=1736590652;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=49UcyedNLjA89VPXXtuIOffb5ExbHzkR8j5GWvvLi3E=;
 b=R1vftIAgfxTqbifW+wwD4BOHVSkwEWvJARTkWdNL8E/dXgXNQjrAT/uL
 k8gkDgpEV7eyryBJo8JyrAXO9p3w527fD+o9BPSRIiYG9xK40uolvVrub
 VZLDpg8p1tszZezZkXWCNLDlBa8g1jyxVL7vaewT5MH67hxXex1sdAdNr
 5vwwAiPhYN63cDUcAjHGt854WLkkhQdPiGYvKd5nRH24g/Qdtb5yDz2cT
 ub+McvDlUwlFMaZVkuepwjDsTpzW6hslB8gLo7mntFcQFnGVvpoDXga35
 eXiCjSeyKiXr/OTUxNPudCw97BA0Sjy8sN6nck/7aVit8aAfSwYcaRvW0 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="17743010"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; d="scan'208";a="17743010"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 02:17:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; d="scan'208";a="24961166"
Received: from tsenx-mobl.ger.corp.intel.com (HELO localhost) ([10.252.38.158])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 02:17:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: Re: [PATCH 4/6] drm/i915/opregion: abstract ASLE presence check
In-Reply-To: <ZaCB4Ne7sXnZvwCw@invictus>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1704992868.git.jani.nikula@intel.com>
 <1829415d3e7b29e78c46b20bca8175ef373bcd92.1704992868.git.jani.nikula@intel.com>
 <ZaCB4Ne7sXnZvwCw@invictus>
Date: Fri, 12 Jan 2024 12:17:25 +0200
Message-ID: <8734v2ua8a.fsf@intel.com>
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

On Thu, 11 Jan 2024, Radhakrishna Sripada <radhakrishna.sripada@intel.com> wrote:
> On Thu, Jan 11, 2024 at 07:21:17PM +0200, Jani Nikula wrote:
>> Add a function to check the opregion ASLE presence instead of accessing
>> the opregion structures directly.
>> 
>> Reorder the checks in i915_has_asle() to avoid the function call if
>> possible.
>> 
>> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_irq.c | 6 +++---
>>  drivers/gpu/drm/i915/display/intel_opregion.c    | 5 +++++
>>  drivers/gpu/drm/i915/display/intel_opregion.h    | 6 ++++++
>>  3 files changed, 14 insertions(+), 3 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> index 99843883cef7..f846c5b108b5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> @@ -266,12 +266,12 @@ void i915_disable_pipestat(struct drm_i915_private *dev_priv,
>>  	intel_uncore_posting_read(&dev_priv->uncore, reg);
>>  }
>>  
>> -static bool i915_has_asle(struct drm_i915_private *dev_priv)
>> +static bool i915_has_asle(struct drm_i915_private *i915)
> Why not move this to intel_opregion.c and export it instead of
> intel_opregion_asle_present ?

I'm trying to be conscious of the possible performance impact of making
calls from the irq code just to find there's nothing to do.

>>  {
>> -	if (!dev_priv->display.opregion.asle)
>> +	if (!IS_PINEVIEW(i915) && !IS_MOBILE(i915))
> Can we extend this check to dgfx as well?

Extend how? This will return early for everything after IVB.

BR,
Jani.

>
> -Radhakrishna(RK) Sripada
>
>>  		return false;
>>  
>> -	return IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv);
>> +	return intel_opregion_asle_present(i915);
>>  }
>>  
>>  /**
>> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
>> index 8b9e820971cb..26aacb01f9ec 100644
>> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
>> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
>> @@ -632,6 +632,11 @@ static void asle_work(struct work_struct *work)
>>  	asle->aslc = aslc_stat;
>>  }
>>  
>> +bool intel_opregion_asle_present(struct drm_i915_private *i915)
>> +{
>> +	return i915->display.opregion.asle;
>> +}
>> +
>>  void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
>>  {
>>  	if (dev_priv->display.opregion.asle)
>> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
>> index 9efadfb72584..d084b30e8703 100644
>> --- a/drivers/gpu/drm/i915/display/intel_opregion.h
>> +++ b/drivers/gpu/drm/i915/display/intel_opregion.h
>> @@ -69,6 +69,7 @@ void intel_opregion_resume(struct drm_i915_private *dev_priv);
>>  void intel_opregion_suspend(struct drm_i915_private *dev_priv,
>>  			    pci_power_t state);
>>  
>> +bool intel_opregion_asle_present(struct drm_i915_private *i915);
>>  void intel_opregion_asle_intr(struct drm_i915_private *dev_priv);
>>  int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
>>  				  bool enable);
>> @@ -111,6 +112,11 @@ static inline void intel_opregion_suspend(struct drm_i915_private *dev_priv,
>>  {
>>  }
>>  
>> +static inline bool intel_opregion_asle_present(struct drm_i915_private *i915)
>> +{
>> +	return false;
>> +}
>> +
>>  static inline void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
>>  {
>>  }
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
