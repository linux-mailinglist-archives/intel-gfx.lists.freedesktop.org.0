Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12EFD3BBB3E
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jul 2021 12:29:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECEFE89AB2;
	Mon,  5 Jul 2021 10:29:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C4D789AB2
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jul 2021 10:29:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10035"; a="208998340"
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="208998340"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2021 03:28:55 -0700
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="485454409"
Received: from elang-mobl.ger.corp.intel.com (HELO localhost) ([10.252.59.138])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2021 03:28:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Souza\, Jose" <jose.souza@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Tolakanahalli Pradeep\,
 Madhumitha" <madhumitha.tolakanahalli.pradeep@intel.com>
In-Reply-To: <f87ced2d9d378eeaba2be633dd9c5dd770ac9e63.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210628235054.694581-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <f87ced2d9d378eeaba2be633dd9c5dd770ac9e63.camel@intel.com>
Date: Mon, 05 Jul 2021 13:28:49 +0300
Message-ID: <871r8d9hr2.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/tgl: Implement
 Wa_14013120569
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 29 Jun 2021, "Souza, Jose" <jose.souza@intel.com> wrote:
> On Mon, 2021-06-28 at 16:50 -0700, Madhumitha Tolakanahalli Pradeep wrote:
>> PCH display HPD IRQ is not detected with default filter value.
>> So, PP_CONTROL is manually reprogrammed.
>> 
>> Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
>> ---
>>  .../gpu/drm/i915/display/intel_display_power.c   |  8 ++++++++
>>  drivers/gpu/drm/i915/display/intel_hotplug.c     | 16 ++++++++++++++++
>>  2 files changed, 24 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index 285380079aab..e44323cc76f5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -6385,8 +6385,16 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
>>  
>>  void intel_display_power_suspend_late(struct drm_i915_private *i915)
>>  {
>> +    struct drm_i915_private *dev_priv = i915;
>> +    u32 val;
>>  	if (DISPLAY_VER(i915) >= 11 || IS_GEMINILAKE(i915) ||
>>  	    IS_BROXTON(i915)) {
>> +		val = intel_de_read(dev_priv, PP_CONTROL(0));
>> +		/* Wa_14013120569:tgl */
>> +		if (IS_TIGERLAKE(i915)) {
>> +			val &= ~PANEL_POWER_ON;
>> +			intel_de_write(dev_priv, PP_CONTROL(0), val);
>> +	}
>
> Code style is all wrong, please fix it and run "dim checkpatch" to validate it before sending patches.
> Also PP_CONTROL(0) don't point to the same register that the workaround is talking about, between generations register address change that might be
> the case for this one.

In general, I've put a bunch of effort into moving most PPS stuff and
PP_CONTROL reg access into intel_pps.c, not least because you must hold
appropriate locks and power domain references to poke at this. You can't
just mess with it nilly willy. I don't want these abstractions bypassed.

BR,
Jani.

>
> This satisfy the "before going into sleep to allow CS entry" but it do not restore the workaround after waking up from suspend.
> Also you could improve the code, you are reading the register even for platforms that don't need the wa, also check intel_de_rmw() it is better suited
> to this case.
>
>>  		bxt_enable_dc9(i915);
>>  		/* Tweaked Wa_14010685332:icp,jsp,mcc */
>>  		if (INTEL_PCH_TYPE(i915) >= PCH_ICP && INTEL_PCH_TYPE(i915) <= PCH_MCC)
>> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
>> index 47c85ac97c87..8e3f84100daf 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
>> @@ -26,6 +26,7 @@
>>  #include "i915_drv.h"
>>  #include "intel_display_types.h"
>>  #include "intel_hotplug.h"
>> +#include "intel_de.h"
>>  
>>  /**
>>   * DOC: Hotplug
>> @@ -266,7 +267,9 @@ intel_encoder_hotplug(struct intel_encoder *encoder,
>>  		      struct intel_connector *connector)
>>  {
>>  	struct drm_device *dev = connector->base.dev;
>> +	struct drm_i915_private *dev_priv = to_i915(dev);
>>  	enum drm_connector_status old_status;
>> +	u32 val;
>>  	u64 old_epoch_counter;
>>  	bool ret = false;
>>  
>> @@ -288,6 +291,19 @@ intel_encoder_hotplug(struct intel_encoder *encoder,
>>  			      drm_get_connector_status_name(connector->base.status),
>>  			      old_epoch_counter,
>>  			      connector->base.epoch_counter);
>> +
>> +		/* Wa_14013120569:tgl */
>> +		if (IS_TIGERLAKE(dev_priv)) {
>> +			val = intel_de_read(dev_priv, PP_CONTROL(0));
>> +			if (connector->base.status == connector_status_connected) {
>> +				val |= PANEL_POWER_ON;
>> +				intel_de_write(dev_priv, PP_CONTROL(0), val);
>> +			}
>> +			else if (connector->base.status == connector_status_disconnected) {
>> +				val &= ~PANEL_POWER_ON;
>> +				intel_de_write(dev_priv, PP_CONTROL(0), val);
>> +			}
>> +		}
>
> Not sure if this is the best place but anyways it is missing handle the case were tigerlake boots with the external display connected.
> No hotplug will happen and workaround will never be enabled.
>
>>  		return INTEL_HOTPLUG_CHANGED;
>>  	}
>>  	return INTEL_HOTPLUG_UNCHANGED;
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
