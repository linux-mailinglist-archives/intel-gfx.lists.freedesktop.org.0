Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A44F7A90409
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 15:15:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B048C10E8F3;
	Wed, 16 Apr 2025 13:15:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=tuxedocomputers.com header.i=@tuxedocomputers.com header.b="en8oRMBR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.tuxedocomputers.com (mail.tuxedocomputers.com
 [157.90.84.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C86A110E121;
 Tue, 15 Apr 2025 15:48:06 +0000 (UTC)
Received: from [10.6.0.9] (host-88-217-226-44.customer.m-online.net
 [88.217.226.44]) (Authenticated sender: wse@tuxedocomputers.com)
 by mail.tuxedocomputers.com (Postfix) with ESMTPSA id 42CB82FC0080;
 Tue, 15 Apr 2025 17:48:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tuxedocomputers.com;
 s=default; t=1744732085;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=maGoJBK5xCAyYyKJeZaWSsoxxkvu0jZ9O2cBTcEsb88=;
 b=en8oRMBR5Norg8huOJbddYOeOsQ78jf6SWdZjDrLdktIoGHZ9plPPZNZUoU/MOLpAb7ILk
 PzO19URATtR+p8zuHqaauVZK5zZob/RuplNAdHQo82bUZYi7EXBk/eyzCkjvpfpTQDdBH2
 0bxlec7KsiKt7w6f6q83fOE3p0xQ+Po=
Authentication-Results: mail.tuxedocomputers.com;
 auth=pass smtp.auth=wse@tuxedocomputers.com
 smtp.mailfrom=wse@tuxedocomputers.com
Message-ID: <6e4f4d23-3c5a-448f-bc0b-cf6a6e9f3d2e@tuxedocomputers.com>
Date: Tue, 15 Apr 2025 17:48:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] drm/i915/display: Add quirk to force backlight type
 on some TUXEDO devices
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net, airlied@gmail.com,
 simona@ffwll.ch, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
References: <20250411171756.142777-1-wse@tuxedocomputers.com>
 <20250411171756.142777-2-wse@tuxedocomputers.com>
 <Z_llydAABYIueYA6@intel.com>
Content-Language: en-US
From: Werner Sembach <wse@tuxedocomputers.com>
In-Reply-To: <Z_llydAABYIueYA6@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 16 Apr 2025 13:15:46 +0000
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

Hi,

Am 11.04.25 um 20:56 schrieb Ville Syrjälä:
> On Fri, Apr 11, 2025 at 05:55:08PM +0200, Werner Sembach wrote:
>> The display backlight on TUXEDO DX1708 and InsanityBook 15 v1 with panels
>> AUO 12701 and AUO 12701 must be forced to INTEL_DP_AUX_BACKLIGHT_ON to be
>> able to control the brightness.
>>
>> This could already be archived via a module parameter, but this patch adds
>> a quirk to apply this by default on the mentioned device + panel
>> combinations.
> Why aren't you fixing the VBT to be correct in the first place?

I don't have access to the firmware source code and these are quite old devices 
so I also can't request a fix from the ODM. Besides: it can be quite hard to 
explain to the ODM what exactly the problem is if it doesn't also affect Windows.

Best regards,

Werner Sembach

>
>> Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
>> Cc: stable@vger.kernel.org
>> ---
>>   .../drm/i915/display/intel_dp_aux_backlight.c | 14 ++++++-
>>   drivers/gpu/drm/i915/display/intel_quirks.c   | 42 +++++++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_quirks.h   |  1 +
>>   3 files changed, 56 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> index c846ef4acf5b2..0cac04c98a3e3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> @@ -34,12 +34,14 @@
>>    * for some reason.
>>    */
>>   
>> +#include <drm/drm_edid.h>
>>   #include "i915_utils.h"
>>   #include "intel_backlight.h"
>>   #include "intel_display_core.h"
>>   #include "intel_display_types.h"
>>   #include "intel_dp.h"
>>   #include "intel_dp_aux_backlight.h"
>> +#include "intel_quirks.h"
>>   
>>   /*
>>    * DP AUX registers for Intel's proprietary HDR backlight interface. We define
>> @@ -607,11 +609,21 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>>   	struct drm_device *dev = connector->base.dev;
>>   	struct intel_panel *panel = &connector->panel;
>>   	bool try_intel_interface = false, try_vesa_interface = false;
>> +	int enable_dpcd_backlight;
>> +	u32 pnl_id;
>>   
>>   	/* Check the VBT and user's module parameters to figure out which
>>   	 * interfaces to probe
>>   	 */
>> -	switch (display->params.enable_dpcd_backlight) {
>> +	enable_dpcd_backlight = display->params.enable_dpcd_backlight;
>> +	if (enable_dpcd_backlight == INTEL_DP_AUX_BACKLIGHT_AUTO &&
>> +	    intel_has_quirk(display, QUIRK_AUO_12701_21229_ENABLE_DPCD_BACKLIGHT)) {
>> +		pnl_id = drm_edid_get_panel_id(panel->fixed_edid);
>> +		if (pnl_id == drm_edid_encode_panel_id('A', 'U', 'O', 0x319d) ||
>> +		    pnl_id == drm_edid_encode_panel_id('A', 'U', 'O', 0x52ed))
>> +			enable_dpcd_backlight = INTEL_DP_AUX_BACKLIGHT_ON;
>> +	}
>> +	switch (enable_dpcd_backlight) {
>>   	case INTEL_DP_AUX_BACKLIGHT_OFF:
>>   		return -ENODEV;
>>   	case INTEL_DP_AUX_BACKLIGHT_AUTO:
>> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
>> index 8b30e9fd936e7..6f724e5712664 100644
>> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
>> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
>> @@ -78,6 +78,12 @@ static void quirk_fw_sync_len(struct intel_dp *intel_dp)
>>   	drm_info(display->drm, "Applying Fast Wake sync pulse count quirk\n");
>>   }
>>   
>> +static void quirk_auo_12701_21229_enable_dpcd_backlight(struct intel_display *display)
>> +{
>> +	intel_set_quirk(display, QUIRK_AUO_12701_21229_ENABLE_DPCD_BACKLIGHT);
>> +	drm_info(display->drm, "Applying Display AUO Model 12701 and 21229 Enable DPCD Backlight quirk\n");
>> +}
>> +
>>   struct intel_quirk {
>>   	int device;
>>   	int subsystem_vendor;
>> @@ -118,6 +124,12 @@ static int intel_dmi_no_pps_backlight(const struct dmi_system_id *id)
>>   	return 1;
>>   }
>>   
>> +static int intel_dmi_auo_12701_21229_enable_dpcd_backlight(const struct dmi_system_id *id)
>> +{
>> +	DRM_INFO("Display AUO model 12701 and 21229 DPCD backlight control on %s\n", id->ident);
>> +	return 1;
>> +}
>> +
>>   static const struct intel_dmi_quirk intel_dmi_quirks[] = {
>>   	{
>>   		.dmi_id_list = &(const struct dmi_system_id[]) {
>> @@ -164,6 +176,36 @@ static const struct intel_dmi_quirk intel_dmi_quirks[] = {
>>   		},
>>   		.hook = quirk_no_pps_backlight_power_hook,
>>   	},
>> +	{
>> +		.dmi_id_list = &(const struct dmi_system_id[]) {
>> +			{
>> +				.callback = intel_dmi_auo_12701_21229_enable_dpcd_backlight,
>> +				.ident = "TUXEDO DX1708",
>> +				.matches = {DMI_MATCH(DMI_BOARD_NAME, "N8xEJEK"),
>> +				},
>> +			},
>> +			{
>> +				.callback = intel_dmi_auo_12701_21229_enable_dpcd_backlight,
>> +				.ident = "TUXEDO InsanityBook 15 v1",
>> +				.matches = {DMI_MATCH(DMI_BOARD_NAME, "P95_HP"),
>> +				},
>> +			},
>> +			{
>> +				.callback = intel_dmi_auo_12701_21229_enable_dpcd_backlight,
>> +				.ident = "TUXEDO InsanityBook 15 v1",
>> +				.matches = {DMI_MATCH(DMI_BOARD_NAME, "P95_HR"),
>> +				},
>> +			},
>> +			{
>> +				.callback = intel_dmi_auo_12701_21229_enable_dpcd_backlight,
>> +				.ident = "TUXEDO InsanityBook 15 v1",
>> +				.matches = {DMI_MATCH(DMI_BOARD_NAME, "P95_HP,HR,HQ"),
>> +				},
>> +			},
>> +			{ }
>> +		},
>> +		.hook = quirk_auo_12701_21229_enable_dpcd_backlight,
>> +	},
>>   };
>>   
>>   static struct intel_quirk intel_quirks[] = {
>> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
>> index cafdebda75354..38bdbd65d7efb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_quirks.h
>> +++ b/drivers/gpu/drm/i915/display/intel_quirks.h
>> @@ -20,6 +20,7 @@ enum intel_quirk_id {
>>   	QUIRK_LVDS_SSC_DISABLE,
>>   	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
>>   	QUIRK_FW_SYNC_LEN,
>> +	QUIRK_AUO_12701_21229_ENABLE_DPCD_BACKLIGHT,
>>   };
>>   
>>   void intel_init_quirks(struct intel_display *display);
>> -- 
>> 2.43.0
