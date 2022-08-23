Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB9059E501
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 16:16:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48DAC10F748;
	Tue, 23 Aug 2022 14:16:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3B9210F129
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 14:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661264191; x=1692800191;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=YNmRggzf6g3LctbuebsyquJj9fk3ZsTv2Z3ny3ZeLNU=;
 b=EkomtMEVp5bSgvBuxRLh+tvtpjOH5P2AigoyhiR9wX17iXZ0WyP4ZMOc
 vrsRiEQx3I1edooIR6s8pNfyPLx0AsG6T2W+VI8kV+TP2blYUGI+tX6gp
 JKJhu2Sj/6TgCCmupWUWCC0Vt+z+FrEutPlESHrNbfYPeZVxdMg1qekgd
 Qetg2B9LJSrCLp1FMHOCGCSJrJEXMp5W63dgsLa2pp40+JRATW+f3rSr4
 99RTc3FKfORu7Keen465ppIH6fPI4zwAMlNdPrpzqcm64F1A7omMaR9Wl
 O4fbwcjoia03lvfVsvqV26BgfePo2rO3lUaHvrCMFcsnG00eT70ozl1x/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="294980018"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="294980018"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 07:16:31 -0700
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="670049967"
Received: from obeltran-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.51.100])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 07:16:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87fshnmmva.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220822140836.534432-1-jouni.hogander@intel.com>
 <87fshnmmva.fsf@intel.com>
Date: Tue, 23 Aug 2022 17:16:27 +0300
Message-ID: <87wnazjb9g.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/backlight: Disable pps power hook
 for aux based backlight
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

On Tue, 23 Aug 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> On Mon, 22 Aug 2022, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
>> Pps power hook seems to be problematic for backlight controlled via
>> aux channel. Disable it for such cases.
>>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3657
>> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

And pushed to drm-intel-next with cc: stable.

BR,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/display/intel_backlight.c | 11 ++++++++---
>>  drivers/gpu/drm/i915/display/intel_dp.c        |  2 --
>>  2 files changed, 8 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gp=
u/drm/i915/display/intel_backlight.c
>> index af28b143d27a..5d317a20dd0f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
>> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
>> @@ -17,6 +17,7 @@
>>  #include "intel_dsi_dcs_backlight.h"
>>  #include "intel_panel.h"
>>  #include "intel_pci_config.h"
>> +#include "intel_pps.h"
>>=20=20
>>  /**
>>   * scale - scale values from one range to another
>> @@ -1778,9 +1779,13 @@ void intel_backlight_init_funcs(struct intel_pane=
l *panel)
>>  		panel->backlight.pwm_funcs =3D &i9xx_pwm_funcs;
>>  	}
>>=20=20
>> -	if (connector->base.connector_type =3D=3D DRM_MODE_CONNECTOR_eDP &&
>> -	    intel_dp_aux_init_backlight_funcs(connector) =3D=3D 0)
>> -		return;
>> +	if (connector->base.connector_type =3D=3D DRM_MODE_CONNECTOR_eDP) {
>> +		if (intel_dp_aux_init_backlight_funcs(connector) =3D=3D 0)
>> +			return;
>> +
>> +		if (!(dev_priv->quirks & QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
>> +			connector->panel.backlight.power =3D intel_pps_backlight_power;
>> +	}
>>=20=20
>>  	/* We're using a standard PWM backlight interface */
>>  	panel->backlight.funcs =3D &pwm_bl_funcs;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
>> index 32292c0be2bd..ac90d455a7c7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -5293,8 +5293,6 @@ static bool intel_edp_init_connector(struct intel_=
dp *intel_dp,
>>=20=20
>>  	intel_panel_init(intel_connector);
>>=20=20
>> -	if (!(dev_priv->quirks & QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
>> -		intel_connector->panel.backlight.power =3D intel_pps_backlight_power;
>>  	intel_backlight_setup(intel_connector, pipe);
>>=20=20
>>  	intel_edp_add_properties(intel_dp);

--=20
Jani Nikula, Intel Open Source Graphics Center
