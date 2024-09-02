Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 428C7968204
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 10:33:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D422B10E255;
	Mon,  2 Sep 2024 08:33:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EJbxu8sy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6474910E255
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 08:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725266028; x=1756802028;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=PPJ1jFfZTcuK+ioHxSrAX1EQOVy/7HKu3/XfeJGrBFI=;
 b=EJbxu8sy1cTOibNZMUucnK6BtuwVaUCXuVdoRsygOMf7Te/XK9ZppiCz
 WqSnqRQXgDotKVyN4tXjDs4BAwDvZTfvUsr96XdBbWIRGTYhL0ZHAiSHr
 boBzcwJBDm6dewCnWUqhgBEcbRPvC6JJM3gmDxJ103loO/i4HGoqD5gab
 eP6Oc9koSO4yapjYAPVa5fVWQXWjDjQDXbgwmOWXdN3vY3sGUzP/aumq7
 /VvsHqqgvgMaqpmvGOaRBG23Dj5z/4YkmVufdWbD60iWKPticq0454U2p
 F9RW8Njvb4905WmBFb6qGLwdHSQEk2x66x65zwa6aARWxYwuN2FoBeM6g w==;
X-CSE-ConnectionGUID: gYFxLjpfRBeS5DXhRBW7jw==
X-CSE-MsgGUID: D5NZqQP3SbmcUp6PNy+w1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="35201567"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="35201567"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:33:48 -0700
X-CSE-ConnectionGUID: vBtOqK93TpSFXHqWU66m+Q==
X-CSE-MsgGUID: Y1OroN15S6eeIYeRX3o5iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="68673484"
Received: from ltuz-desk.ger.corp.intel.com (HELO localhost) ([10.245.246.4])
 by fmviesa003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Sep 2024 01:33:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>
Subject: Re: [PATCH v3 2/2] drm/i915/display: Increase Fast Wake Sync length
 as a quirk
In-Reply-To: <20240902064241.1020965-3-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240902064241.1020965-1-jouni.hogander@intel.com>
 <20240902064241.1020965-3-jouni.hogander@intel.com>
Date: Mon, 02 Sep 2024 11:33:32 +0300
Message-ID: <87a5gqv4ir.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, 02 Sep 2024, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> In commit "drm/i915/display: Increase number of fast wake precharge pulse=
s"
> we were increasing Fast Wake sync pulse length to fix problems observed on
> Dell Precision 5490 laptop with AUO panel. Later we have observed this is
> causing problems on other panels.
>
> Fix these problems by increasing Fast Wake sync pulse length as a quirk
> applied for Dell Precision 5490 with problematic panel.
>
> Fixes: f77772866385 ("drm/i915/display: Increase number of fast wake prec=
harge pulses")
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Closes: http://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9739
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2246
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11762
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Cc: <stable@vger.kernel.org> # v6.10+
Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 16 +++++++++++-----
>  drivers/gpu/drm/i915/display/intel_dp_aux.h |  2 +-
>  drivers/gpu/drm/i915/display/intel_quirks.c | 17 +++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
>  5 files changed, 31 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/=
i915/display/intel_alpm.c
> index 82ee778b2efe9..186cf4833f716 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -228,7 +228,7 @@ bool intel_alpm_compute_params(struct intel_dp *intel=
_dp,
>  	int tfw_exit_latency =3D 20; /* eDP spec */
>  	int phy_wake =3D 4;	   /* eDP spec */
>  	int preamble =3D 8;	   /* eDP spec */
> -	int precharge =3D intel_dp_aux_fw_sync_len() - preamble;
> +	int precharge =3D intel_dp_aux_fw_sync_len(intel_dp) - preamble;
>  	u8 max_wake_lines;
>=20=20
>  	io_wake_time =3D max(precharge, io_buffer_wake_time(crtc_state)) +
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/dr=
m/i915/display/intel_dp_aux.c
> index cbc817bb0cc3e..6420da69f3bbc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -13,6 +13,7 @@
>  #include "intel_dp_aux.h"
>  #include "intel_dp_aux_regs.h"
>  #include "intel_pps.h"
> +#include "intel_quirks.h"
>  #include "intel_tc.h"
>=20=20
>  #define AUX_CH_NAME_BUFSIZE	6
> @@ -142,16 +143,21 @@ static int intel_dp_aux_sync_len(void)
>  	return precharge + preamble;
>  }
>=20=20
> -int intel_dp_aux_fw_sync_len(void)
> +int intel_dp_aux_fw_sync_len(struct intel_dp *intel_dp)
>  {
> +	int precharge =3D 10; /* 10-16 */
> +	int preamble =3D 8;
> +
>  	/*
>  	 * We faced some glitches on Dell Precision 5490 MTL laptop with panel:
>  	 * "Manufacturer: AUO, Model: 63898" when using HW default 18. Using 20
>  	 * is fixing these problems with the panel. It is still within range
> -	 * mentioned in eDP specification.
> +	 * mentioned in eDP specification. Increasing Fast Wake sync length is
> +	 * causing problems with other panels: increase length as a quirk for
> +	 * this specific laptop.
>  	 */
> -	int precharge =3D 12; /* 10-16 */
> -	int preamble =3D 8;
> +	if (intel_has_dpcd_quirk(intel_dp, QUIRK_FW_SYNC_LEN))
> +		precharge +=3D 2;
>=20=20
>  	return precharge + preamble;
>  }
> @@ -211,7 +217,7 @@ static u32 skl_get_aux_send_ctl(struct intel_dp *inte=
l_dp,
>  		DP_AUX_CH_CTL_TIME_OUT_MAX |
>  		DP_AUX_CH_CTL_RECEIVE_ERROR |
>  		DP_AUX_CH_CTL_MESSAGE_SIZE(send_bytes) |
> -		DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL(intel_dp_aux_fw_sync_len()) |
> +		DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL(intel_dp_aux_fw_sync_len(intel_dp)) |
>  		DP_AUX_CH_CTL_SYNC_PULSE_SKL(intel_dp_aux_sync_len());
>=20=20
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.h b/drivers/gpu/dr=
m/i915/display/intel_dp_aux.h
> index 76d1f2ed7c2f4..593f58fafab71 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.h
> @@ -20,6 +20,6 @@ enum aux_ch intel_dp_aux_ch(struct intel_encoder *encod=
er);
>=20=20
>  void intel_dp_aux_irq_handler(struct drm_i915_private *i915);
>  u32 intel_dp_aux_pack(const u8 *src, int src_bytes);
> -int intel_dp_aux_fw_sync_len(void);
> +int intel_dp_aux_fw_sync_len(struct intel_dp *intel_dp);
>=20=20
>  #endif /* __INTEL_DP_AUX_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/dr=
m/i915/display/intel_quirks.c
> index bce1f67c918bb..29b56d53a340a 100644
> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
> @@ -70,6 +70,14 @@ static void quirk_no_pps_backlight_power_hook(struct i=
ntel_display *display)
>  	drm_info(display->drm, "Applying no pps backlight power quirk\n");
>  }
>=20=20
> +static void quirk_fw_sync_len(struct intel_dp *intel_dp)
> +{
> +	struct intel_display *display =3D to_intel_display(intel_dp);
> +
> +	intel_set_dpcd_quirk(intel_dp, QUIRK_FW_SYNC_LEN);
> +	drm_info(display->drm, "Applying Fast Wake sync pulse count quirk\n");
> +}
> +
>  struct intel_quirk {
>  	int device;
>  	int subsystem_vendor;
> @@ -224,6 +232,15 @@ static struct intel_quirk intel_quirks[] =3D {
>  };
>=20=20
>  static struct intel_dpcd_quirk intel_dpcd_quirks[] =3D {
> +	/* Dell Precision 5490 */
> +	{
> +		.device =3D 0x7d55,
> +		.subsystem_vendor =3D 0x1028,
> +		.subsystem_device =3D 0x0cc7,
> +		.sink_oui =3D SINK_OUI(0x38, 0xec, 0x11),
> +		.hook =3D quirk_fw_sync_len,
> +	},
> +
>  };
>=20=20
>  void intel_init_quirks(struct intel_display *display)
> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/dr=
m/i915/display/intel_quirks.h
> index c8db50b9ab74d..cafdebda75354 100644
> --- a/drivers/gpu/drm/i915/display/intel_quirks.h
> +++ b/drivers/gpu/drm/i915/display/intel_quirks.h
> @@ -19,6 +19,7 @@ enum intel_quirk_id {
>  	QUIRK_INVERT_BRIGHTNESS,
>  	QUIRK_LVDS_SSC_DISABLE,
>  	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
> +	QUIRK_FW_SYNC_LEN,
>  };
>=20=20
>  void intel_init_quirks(struct intel_display *display);

--=20
Jani Nikula, Intel
