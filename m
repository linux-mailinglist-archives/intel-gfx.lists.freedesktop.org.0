Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1559B13BB19
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 09:31:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F80C6E886;
	Wed, 15 Jan 2020 08:31:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DE866E886
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 08:31:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 00:31:28 -0800
X-IronPort-AV: E=Sophos;i="5.70,322,1574150400"; d="scan'208";a="218051609"
Received: from huse-mobl2.ger.corp.intel.com (HELO localhost) ([10.252.50.31])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Jan 2020 00:31:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lyude Paul <lyude@redhat.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <fc4b86e27577d0467e3ca1bff52d7645b1e71e31.camel@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1579010266.git.jani.nikula@intel.com>
 <99df51313fd8112a9eb8d30dde19dde51e0c618b.1579010266.git.jani.nikula@intel.com>
 <fc4b86e27577d0467e3ca1bff52d7645b1e71e31.camel@redhat.com>
Date: Wed, 15 Jan 2020 10:32:00 +0200
Message-ID: <87ftghjf27.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 5/5] drm/i915: Force DPCD backlight mode
 on X1 Extreme 2nd Gen 4K AMOLED panel
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
Cc: AceLan Kao <acelan.kao@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 14 Jan 2020, Lyude Paul <lyude@redhat.com> wrote:
> fwiw - I got some feedback from one of the vendors that we work with that I
> haven't gone through yet, but I'm hoping to figure out whether we want to
> trust the vbt/dpcd based off that once I do. Once we've made up the decision
> on that (and I send out a reroll if needed), think this is good to merge? (I
> don't see any issues with any of the changes you've made, and they seem to
> work fine on my machines)

Thanks, yes, my idea was that I'd merge this after CI says good to
go. But do let me know if you get more information.

BR,
Jani.


>
> On Tue, 2020-01-14 at 16:01 +0200, Jani Nikula wrote:
>> From: Lyude Paul <lyude@redhat.com>
>> 
>> Annoyingly, the VBT on the ThinkPad X1 Extreme 2nd Gen indicates that
>> the system uses plain PWM based backlight controls, when in reality the
>> only backlight controls that work are the standard VESA eDP DPCD
>> backlight controls.
>> 
>> Honestly, this makes me wonder how many other systems have these issues
>> or lie about this in their VBT. Not sure we have any good way of finding
>> out until panels like this become more common place in the laptop
>> market. For now, just add a DRM DP quirk to indicate that this panel is
>> telling the truth and is being a good LCD.
>> 
>> v2 by Jani:
>> - rebase
>> 
>> Bugzilla: https://bugs.freedesktop.org/show_bug.cgi?id=112376
>> Closes: https://gitlab.freedesktop.org/drm/intel/issues/642
>> Tested-by: AceLan Kao <acelan.kao@canonical.com>
>> Signed-off-by: Lyude Paul <lyude@redhat.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/drm_dp_helper.c                       | 4 ++++
>>  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 8 ++++++--
>>  include/drm/drm_dp_helper.h                           | 8 ++++++++
>>  3 files changed, 18 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/drm_dp_helper.c
>> b/drivers/gpu/drm/drm_dp_helper.c
>> index 5a103e9b3c86..90e122809fa4 100644
>> --- a/drivers/gpu/drm/drm_dp_helper.c
>> +++ b/drivers/gpu/drm/drm_dp_helper.c
>> @@ -1179,6 +1179,10 @@ static const struct dpcd_quirk dpcd_quirk_list[] = {
>>  	{ OUI(0x00, 0x00, 0x00), DEVICE_ID('C', 'H', '7', '5', '1', '1'),
>> false, BIT(DP_DPCD_QUIRK_NO_SINK_COUNT) },
>>  	/* Synaptics DP1.4 MST hubs can support DSC without virtual DPCD */
>>  	{ OUI(0x90, 0xCC, 0x24), DEVICE_ID_ANY, true,
>> BIT(DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD) },
>> +	/* Optional 4K AMOLED panel in the ThinkPad X1 Extreme 2nd Generation
>> +	 * only supports DPCD backlight controls, despite advertising
>> otherwise
>> +	 */
>> +	{ OUI(0xba, 0x41, 0x59), DEVICE_ID_ANY, false,
>> BIT(DP_DPCD_QUIRK_FORCE_DPCD_BACKLIGHT) },
>>  };
>>  
>>  #undef OUI
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> index 77a759361c5c..57774003e8c5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> @@ -328,11 +328,15 @@ intel_dp_aux_display_control_capable(struct
>> intel_connector *connector)
>>  int intel_dp_aux_init_backlight_funcs(struct intel_connector
>> *intel_connector)
>>  {
>>  	struct intel_panel *panel = &intel_connector->panel;
>> -	struct drm_i915_private *dev_priv = to_i915(intel_connector-
>> >base.dev);
>> +	struct intel_dp *intel_dp = enc_to_intel_dp(intel_connector->encoder);
>> +	struct drm_i915_private *i915 = to_i915(intel_connector->base.dev);
>>  
>>  	if (i915_modparams.enable_dpcd_backlight == 0 ||
>>  	    (i915_modparams.enable_dpcd_backlight == -1 &&
>> -	    dev_priv->vbt.backlight.type !=
>> INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE))
>> +	     i915->vbt.backlight.type !=
>> +	     INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE &&
>> +	     !drm_dp_has_quirk(&intel_dp->desc,
>> +			       DP_DPCD_QUIRK_FORCE_DPCD_BACKLIGHT)))
>>  		return -ENODEV;
>>  
>>  	if (!intel_dp_aux_display_control_capable(intel_connector))
>> diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
>> index 262faf9e5e94..bb081921f53d 100644
>> --- a/include/drm/drm_dp_helper.h
>> +++ b/include/drm/drm_dp_helper.h
>> @@ -1532,6 +1532,14 @@ enum drm_dp_quirk {
>>  	 * The DSC caps can be read from the physical aux instead.
>>  	 */
>>  	DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD,
>> +	/**
>> +	 * @DP_DPCD_QUIRK_FORCE_DPCD_BACKLIGHT:
>> +	 *
>> +	 * The device is telling the truth when it says that it uses DPCD
>> +	 * backlight controls, even if the system's firmware disagrees.
>> +	 * The driver should honor the DPCD backlight capabilities advertised.
>> +	 */
>> +	DP_DPCD_QUIRK_FORCE_DPCD_BACKLIGHT,
>>  };
>>  
>>  /**

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
