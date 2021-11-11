Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4939944D4C9
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Nov 2021 11:09:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E4AA6EA5D;
	Thu, 11 Nov 2021 10:09:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09CA26EA76
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Nov 2021 10:09:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10164"; a="212920948"
X-IronPort-AV: E=Sophos;i="5.87,225,1631602800"; d="scan'208";a="212920948"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2021 02:09:51 -0800
X-IronPort-AV: E=Sophos;i="5.87,225,1631602800"; d="scan'208";a="504374678"
Received: from pbohlinb-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.33.242])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2021 02:09:48 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "20211110010217.26759-1-william.tseng\@intel.com"
 <20211110010217.26759-1-william.tseng@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <SJ0PR11MB58948DC96596233FAC8AF443F1949@SJ0PR11MB5894.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211109082458.13740-1-william.tseng@intel.com>
 <20211110010217.26759-1-william.tseng@intel.com> <87r1bo47dh.fsf@intel.com>
 <SJ0PR11MB58948DC96596233FAC8AF443F1949@SJ0PR11MB5894.namprd11.prod.outlook.com>
Date: Thu, 11 Nov 2021 12:09:46 +0200
Message-ID: <87ilwz3swl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dsi: transmit brightness
 command in HS state
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
Cc: "Chiou,
 Cooper" <cooper.chiou@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 11 Nov 2021, "Tseng, William" <william.tseng@intel.com> wrote:
> Noted.  Thanks for your consideration, Jani.

And pushed, thanks for the patch.

BR,
Jani.

>
> Regards
> William
>
> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com> 
> Sent: Wednesday, November 10, 2021 6:45 PM
> To: Tseng, William <william.tseng@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Tseng, William <william.tseng@intel.com>; Ville Syrjala <ville.syrjala@linux.intel.com>; Kulkarni, Vandita <vandita.kulkarni@intel.com>; Lee, Shawn C <shawn.c.lee@intel.com>; Chiou, Cooper <cooper.chiou@intel.com>
> Subject: Re: [PATCH v3] drm/i915/dsi: transmit brightness command in HS state
>
> On Wed, 10 Nov 2021, William Tseng <william.tseng@intel.com> wrote:
>> In Video Mode, if DSI transcoder is set to transmit packets in LP 
>> Escape mode, screen flickering would be obseved when brightness 
>> commands are continuously and quickly transmitted to a panel.
>>
>> The problem may be resolved by changing the mode to transmit packets 
>> from Low Power to HS.
>>
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> Cc: Lee Shawn C <shawn.c.lee@intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> Signed-off-by: William Tseng <william.tseng@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c 
>> b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
>> index f61ed82e8867..7d234429e71e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
>> @@ -71,6 +71,7 @@ static void dcs_set_backlight(const struct drm_connector_state *conn_state, u32
>>  	u8 data[2] = {};
>>  	enum port port;
>>  	size_t len = panel->backlight.max > U8_MAX ? 2 : 1;
>> +	unsigned long mode_flags;
>>  
>>  	if (len == 1) {
>>  		data[0] = level;
>> @@ -81,8 +82,11 @@ static void dcs_set_backlight(const struct 
>> drm_connector_state *conn_state, u32
>>  
>>  	for_each_dsi_port(port, intel_dsi->dcs_backlight_ports) {
>>  		dsi_device = intel_dsi->dsi_hosts[port]->device;
>> +		mode_flags = dsi_device->mode_flags;
>> +		dsi_device->mode_flags &= ~MIPI_DSI_MODE_LPM;
>>  		mipi_dsi_dcs_write(dsi_device, MIPI_DCS_SET_DISPLAY_BRIGHTNESS,
>>  				   &data, len);
>> +		dsi_device->mode_flags = mode_flags;
>
> I realize we don't really have a clear picture how to manage
> ->mode_flags or MIPI_DSI_MODE_LPM in particular, but this seems like the
> safest option for now.
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>
> I'll push once CI results are in; had to request a re-run.
>
>
>
>>  	}
>>  }
>
> --
> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
