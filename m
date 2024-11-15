Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D679CDFAF
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 14:15:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9839E10E2CF;
	Fri, 15 Nov 2024 13:15:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MiAWB+23";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23B7010E864;
 Fri, 15 Nov 2024 13:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731676521; x=1763212521;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=SeSa5OGYsj+bIytkd8347xpfcxNUQKO1fmTXY0RAE30=;
 b=MiAWB+23KtmQu8UW4gaH7TAD+RHeD6pARjvCCAskPhOwVxvNMg8R+aoU
 IeK6AYW2QS7MBLwsftrz/LuFz+TcyZyZOcAncyhu+BjqWmj+smyKQiI1I
 7+2kYPB6mHYbuteTEpil32wbdo61TwAhNToODfcglbduxfQQQAq6IQeVW
 PBXCmm4PouJY59re+lHJAX0pYdGTjXrKCSsSSmdYW/IdXYwWQUmd3fy9n
 aQqib0+5WshwidJdFvnf3axBkbJVdF2WuuG1J3EX5PksUY6rggdqZluLm
 zQGlfkaMf9VpwKorDYvlQk6j5YafZMvKHqT93awBluDVt8fkUgX97kdlx A==;
X-CSE-ConnectionGUID: moE/t+KgSICTHObpB3sDuA==
X-CSE-MsgGUID: tN4vMoffRm+TsKwbP5oL4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11257"; a="42315129"
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="42315129"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 05:15:20 -0800
X-CSE-ConnectionGUID: 5/3doXmJTH+GqkWhELT4SA==
X-CSE-MsgGUID: E5gOY8kiQE6adpxGLUWNWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="89313466"
Received: from ksztyber-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.64])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 05:15:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 5/5] drm/i915/irq: emphasize display_irqs_enabled is
 only about VLV/CHV
In-Reply-To: <ZzY57OkvPYMVqYkS@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1731347547.git.jani.nikula@intel.com>
 <3540e31869bbb68abd6cae88375d214d3aa1f5e5.1731347547.git.jani.nikula@intel.com>
 <ZzY57OkvPYMVqYkS@intel.com>
Date: Fri, 15 Nov 2024 15:15:15 +0200
Message-ID: <87zfm04p0c.fsf@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 14 Nov 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Nov 11, 2024 at 07:53:34PM +0200, Jani Nikula wrote:
>> Rename display_irqs_enabled to vlv_display_irqs_enabled, to emphasize
>> it's really only about VLV/CHV. Only access it when running on VLV/CHV.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../gpu/drm/i915/display/intel_display_core.h |  9 ++++++-
>>  .../gpu/drm/i915/display/intel_display_irq.c  | 26 ++++++-------------
>>  .../gpu/drm/i915/display/intel_hotplug_irq.c  |  6 ++++-
>>  3 files changed, 21 insertions(+), 20 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>> index 45b7c6900adc..5ad66df1a85e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -453,7 +453,14 @@ struct intel_display {
>>  	} ips;
>>  
>>  	struct {
>> -		bool display_irqs_enabled;
>> +		/*
>> +		 * Most platforms treat the display irq block as an always-on
>> +		 * power domain. vlv/chv can disable it at runtime and need
>> +		 * special care to avoid writing any of the display block
>> +		 * registers outside of the power domain. We defer setting up
>> +		 * the display irqs in this case to the runtime pm.
>> +		 */
>> +		bool vlv_display_irqs_enabled;
>>  
>>  		/* For i915gm/i945gm vblank irq workaround */
>>  		u8 vblank_enabled;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> index d5458b0d976b..50c1ca062b80 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> @@ -434,7 +434,8 @@ void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
>>  
>>  	spin_lock(&dev_priv->irq_lock);
>>  
>> -	if (!dev_priv->display.irq.display_irqs_enabled) {
>> +	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
>> +	    !dev_priv->display.irq.vlv_display_irqs_enabled) {
>>  		spin_unlock(&dev_priv->irq_lock);
>>  		return;
>>  	}
>> @@ -1499,7 +1500,7 @@ static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>>  
>>  void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>>  {
>> -	if (dev_priv->display.irq.display_irqs_enabled)
>> +	if (dev_priv->display.irq.vlv_display_irqs_enabled)
>>  		_vlv_display_irq_reset(dev_priv);
>>  }
>>  
>> @@ -1522,7 +1523,7 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
>>  	u32 enable_mask;
>>  	enum pipe pipe;
>>  
>> -	if (!dev_priv->display.irq.display_irqs_enabled)
>> +	if (!dev_priv->display.irq.vlv_display_irqs_enabled)
>>  		return;
>>  
>>  	pipestat_mask = PIPE_CRC_DONE_INTERRUPT_STATUS;
>> @@ -1697,10 +1698,10 @@ void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
>>  {
>>  	lockdep_assert_held(&dev_priv->irq_lock);
>>  
>> -	if (dev_priv->display.irq.display_irqs_enabled)
>> +	if (dev_priv->display.irq.vlv_display_irqs_enabled)
>>  		return;
>>  
>> -	dev_priv->display.irq.display_irqs_enabled = true;
>> +	dev_priv->display.irq.vlv_display_irqs_enabled = true;
>>  
>>  	if (intel_irqs_enabled(dev_priv)) {
>>  		_vlv_display_irq_reset(dev_priv);
>> @@ -1712,10 +1713,10 @@ void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
>>  {
>>  	lockdep_assert_held(&dev_priv->irq_lock);
>>  
>> -	if (!dev_priv->display.irq.display_irqs_enabled)
>> +	if (!dev_priv->display.irq.vlv_display_irqs_enabled)
>>  		return;
>>  
>> -	dev_priv->display.irq.display_irqs_enabled = false;
>> +	dev_priv->display.irq.vlv_display_irqs_enabled = false;
>>  
>>  	if (intel_irqs_enabled(dev_priv))
>>  		_vlv_display_irq_reset(dev_priv);
>> @@ -1911,17 +1912,6 @@ void intel_display_irq_init(struct drm_i915_private *i915)
>>  {
>>  	i915->drm.vblank_disable_immediate = true;
>>  
>> -	/*
>> -	 * Most platforms treat the display irq block as an always-on power
>> -	 * domain. vlv/chv can disable it at runtime and need special care to
>> -	 * avoid writing any of the display block registers outside of the power
>> -	 * domain. We defer setting up the display irqs in this case to the
>> -	 * runtime pm.
>> -	 */
>> -	i915->display.irq.display_irqs_enabled = true;
>> -	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
>> -		i915->display.irq.display_irqs_enabled = false;
>> -
>>  	intel_hotplug_irq_init(i915);
>>  
>>  	INIT_WORK(&i915->display.irq.vblank_dc_work,
>> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
>> index cb64c6f0ad1b..476ac88087e0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
>> @@ -1457,7 +1457,11 @@ void intel_hpd_enable_detection(struct intel_encoder *encoder)
>>  
>>  void intel_hpd_irq_setup(struct drm_i915_private *i915)
>>  {
>> -	if (i915->display.irq.display_irqs_enabled && i915->display.funcs.hotplug)
>> +	if ((IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) &&
>
> I like the overal change, but it is not just a 'Rename' as the commit message
> tells if we are changing conditions.

The commit message does say, "Only access it when running on VLV/CHV.",
but yeah, I could rephrase it.

BR,
Jani.



>
>> +	    !i915->display.irq.vlv_display_irqs_enabled)
>> +		return;
>> +
>> +	if (i915->display.funcs.hotplug)
>>  		i915->display.funcs.hotplug->hpd_irq_setup(i915);
>>  }
>>  
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
