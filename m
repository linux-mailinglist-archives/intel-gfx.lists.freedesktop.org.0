Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BF65F3D45
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 09:32:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9413910E176;
	Tue,  4 Oct 2022 07:32:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D08010E176
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 07:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664868720; x=1696404720;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=CzU72YDTa4XkhcsecxTTk8+/pNDP1+jG6tZzPg9Uc+I=;
 b=V5AMSAZMJ/wTXcGzQY4BMlbtncnWCeAKEiGZY0MjpZY3QhiXYK+WbzdF
 Pur24feOqeRfLsO+H2wpoXgboXCGPfSTTv2PFp4AELoo/wtHsKAUoXBA1
 CukG+6lglxs7lgHKIrX81p9c28LtqBIEpqSGJ3DycsvYJ/W7ORpxvYe0V
 IqGuxXAzscvDxZ7A/VXmT9wgRNl02pdSSv3B8RI1yJWcKo2wM8FzskIZF
 wMCh2LfL71t70zSEIVcYVtsX6c6kSO3EtO7gi7S34+6FMRAgnpRPTJAah
 V2qMCQyEHNxgR8ARwOyeMyJ/WErff87q4SROHqu4wbfdCeYZb2wLdjfFK Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="304391052"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="304391052"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 00:31:59 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="574940579"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="574940579"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.8.49])
 ([10.213.8.49])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 00:31:57 -0700
Message-ID: <6ee039ba-280b-f147-4c3e-716bbbe4bd21@intel.com>
Date: Tue, 4 Oct 2022 09:31:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <20221003223258.2650934-1-andrzej.hajda@intel.com>
 <20221003223258.2650934-2-andrzej.hajda@intel.com> <87o7usuk7d.fsf@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <87o7usuk7d.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display: Use drm_device alias
 if defined
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 04.10.2022 09:22, Jani Nikula wrote:
> On Tue, 04 Oct 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
>> Alias is shorter and more readable.
> But it's preferrable to *not* have struct drm_device * around at all,
> only struct drm_i915_private *.
>
> So this is kind of going the wrong way.

I guess this is some misunderstanding.
The patch does not add any permanent fields to structs, it just makes 
broader use of local aliases (pointers to dev_priv->drm).
For example:

void icl_dsi_init(struct drm_i915_private *dev_priv)
{
         struct drm_device *dev = &dev_priv->drm;
         ...
-        drm_err(&dev_priv->drm, "DSI fixed mode info missing\n");
+       drm_err(dev, "DSI fixed mode info missing\n");

Is it sth wrong?

Regards
Andrzej

>
> BR,
> Jani.
>
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/icl_dsi.c               |  4 ++--
>>   drivers/gpu/drm/i915/display/intel_display.c         |  2 +-
>>   drivers/gpu/drm/i915/display/intel_display_debugfs.c |  2 +-
>>   drivers/gpu/drm/i915/display/intel_hotplug.c         |  2 +-
>>   drivers/gpu/drm/i915/display/intel_lvds.c            | 10 +++++-----
>>   drivers/gpu/drm/i915/display/intel_opregion.c        |  2 +-
>>   drivers/gpu/drm/i915/display/vlv_dsi.c               |  2 +-
>>   7 files changed, 12 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
>> index 47f13750f6fa66..bdf874c9f66b00 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> @@ -2050,7 +2050,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>>   	mutex_unlock(&dev->mode_config.mutex);
>>   
>>   	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
>> -		drm_err(&dev_priv->drm, "DSI fixed mode info missing\n");
>> +		drm_err(dev, "DSI fixed mode info missing\n");
>>   		goto err;
>>   	}
>>   
>> @@ -2063,7 +2063,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>>   	else
>>   		intel_dsi->ports = BIT(port);
>>   
>> -	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
>> +	if (drm_WARN_ON(dev, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
>>   		intel_connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
>>   
>>   	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 3ffd8fc0b05c10..22248422b2a98c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -8708,7 +8708,7 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
>>   
>>   	intel_gmbus_setup(i915);
>>   
>> -	drm_dbg_kms(&i915->drm, "%d display pipe%s available.\n",
>> +	drm_dbg_kms(dev, "%d display pipe%s available.\n",
>>   		    INTEL_NUM_PIPES(i915),
>>   		    INTEL_NUM_PIPES(i915) > 1 ? "s" : "");
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> index c5f47df0f3622b..8c7d775af5d9e9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -998,7 +998,7 @@ static int i915_ddb_info(struct seq_file *m, void *unused)
>>   
>>   	seq_printf(m, "%-15s%8s%8s%8s\n", "", "Start", "End", "Size");
>>   
>> -	for_each_intel_crtc(&dev_priv->drm, crtc) {
>> +	for_each_intel_crtc(dev, crtc) {
>>   		struct intel_crtc_state *crtc_state =
>>   			to_intel_crtc_state(crtc->base.state);
>>   		enum pipe pipe = crtc->pipe;
>> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
>> index 352a1b53b63ed6..6bad2e7543c427 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
>> @@ -378,7 +378,7 @@ static void i915_hotplug_work_func(struct work_struct *work)
>>   	u32 hpd_retry_bits;
>>   
>>   	mutex_lock(&dev->mode_config.mutex);
>> -	drm_dbg_kms(&dev_priv->drm, "running encoder hotplug functions\n");
>> +	drm_dbg_kms(dev, "running encoder hotplug functions\n");
>>   
>>   	spin_lock_irq(&dev_priv->irq_lock);
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
>> index e97e24f690a9f8..2d07e2a13b1faa 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
>> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
>> @@ -847,7 +847,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>>   	}
>>   
>>   	if (!dev_priv->display.vbt.int_lvds_support) {
>> -		drm_dbg_kms(&dev_priv->drm,
>> +		drm_dbg_kms(dev,
>>   			    "Internal LVDS support disabled by VBT\n");
>>   		return;
>>   	}
>> @@ -867,11 +867,11 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>>   	pin = GMBUS_PIN_PANEL;
>>   	if (!intel_bios_is_lvds_present(dev_priv, &pin)) {
>>   		if ((lvds & LVDS_PORT_EN) == 0) {
>> -			drm_dbg_kms(&dev_priv->drm,
>> +			drm_dbg_kms(dev,
>>   				    "LVDS is not present in VBT\n");
>>   			return;
>>   		}
>> -		drm_dbg_kms(&dev_priv->drm,
>> +		drm_dbg_kms(dev,
>>   			    "LVDS is not present in VBT, but enabled anyway\n");
>>   	}
>>   
>> @@ -993,7 +993,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>>   	intel_backlight_setup(intel_connector, INVALID_PIPE);
>>   
>>   	lvds_encoder->is_dual_link = compute_is_dual_link_lvds(lvds_encoder);
>> -	drm_dbg_kms(&dev_priv->drm, "detected %s-link lvds configuration\n",
>> +	drm_dbg_kms(dev, "detected %s-link lvds configuration\n",
>>   		    lvds_encoder->is_dual_link ? "dual" : "single");
>>   
>>   	lvds_encoder->a3_power = lvds & LVDS_A3_POWER_MASK;
>> @@ -1001,7 +1001,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>>   	return;
>>   
>>   failed:
>> -	drm_dbg_kms(&dev_priv->drm, "No LVDS modes found, disabling.\n");
>> +	drm_dbg_kms(dev, "No LVDS modes found, disabling.\n");
>>   	drm_connector_cleanup(connector);
>>   	drm_encoder_cleanup(encoder);
>>   	kfree(lvds_encoder);
>> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
>> index caa07ef34f21ef..ba3666e94fc48d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
>> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
>> @@ -465,7 +465,7 @@ static u32 asle_set_backlight(struct drm_i915_private *dev_priv, u32 bclp)
>>   	struct opregion_asle *asle = dev_priv->display.opregion.asle;
>>   	struct drm_device *dev = &dev_priv->drm;
>>   
>> -	drm_dbg(&dev_priv->drm, "bclp = 0x%08x\n", bclp);
>> +	drm_dbg(dev, "bclp = 0x%08x\n", bclp);
>>   
>>   	if (acpi_video_get_backlight_type() == acpi_backlight_native) {
>>   		drm_dbg_kms(&dev_priv->drm,
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> index dee0147a316ce7..fdfe3611e74a76 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> @@ -1855,7 +1855,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>>   	enum port port;
>>   	enum pipe pipe;
>>   
>> -	drm_dbg_kms(&dev_priv->drm, "\n");
>> +	drm_dbg_kms(dev, "\n");
>>   
>>   	/* There is no detection method for MIPI so rely on VBT */
>>   	if (!intel_bios_is_dsi_present(dev_priv, &port))

