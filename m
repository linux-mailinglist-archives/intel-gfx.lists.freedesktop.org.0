Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B93D53F4A62
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 14:10:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CBD9897F5;
	Mon, 23 Aug 2021 12:10:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 816F2897F5
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 12:10:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="217115399"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="217115399"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 05:10:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="525947023"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Aug 2021 05:10:40 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 23 Aug 2021 13:10:39 +0100
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.010;
 Mon, 23 Aug 2021 17:40:37 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Chiou, Cooper" <cooper.chiou@intel.com>,
 "Tseng, William" <william.tseng@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Thread-Topic: [v4 6/7] drm/i915/dsi: Retrieve max brightness level from VBT.
Thread-Index: AQHXj5B9gIFF6sfJxUWBvmNPCfa7+quA1XbAgAACrICAADfQUA==
Date: Mon, 23 Aug 2021 12:10:37 +0000
Message-ID: <ec29365c26b14b1d8c9753414ba58dc7@intel.com>
References: <20210812154237.13911-1-shawn.c.lee@intel.com>
 <20210812154237.13911-7-shawn.c.lee@intel.com>
 <c9f59c701b334f5fb70555c6d7fbd413@intel.com>
 <CO6PR11MB56518647521412FDCBA955A4A3C49@CO6PR11MB5651.namprd11.prod.outlook.com>
In-Reply-To: <CO6PR11MB56518647521412FDCBA955A4A3C49@CO6PR11MB5651.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v4 6/7] drm/i915/dsi: Retrieve max brightness
 level from VBT.
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

> -----Original Message-----
> From:=20
> Sent: Monday, August 23, 2021 2:34 PM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; ville.syrjala@linux.intel.com; =
Chiou,
> Cooper <cooper.chiou@intel.com>; Tseng, William
> <william.tseng@intel.com>; Jani Nikula <jani.nikula@linux.intel.com>
> Subject: RE: [v4 6/7] drm/i915/dsi: Retrieve max brightness level from VB=
T.
>=20
> On Mon, 23 Aug 2021, Kulkarni, Vandita <vandita.kulkarni@intel.com> wrote=
:
> >>
> >> So far, DCS backlight driver hardcode (0xFF) for max brightness level.
> >> MIPI DCS spec allow max 0xFFFF for set_display_brightness (51h)
> command.
> >> And VBT brightness precision bits can support 8 ~ 16 bits.
> >>
> >> We should set correct precision bits in VBT that meet panel's request.
> >> Driver can refer to this setting then configure max brightness level
> >> in DCS backlight driver properly.
> >>
> >> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> >> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> >> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> >> Cc: Cooper Chiou <cooper.chiou@intel.com>
> >> Cc: William Tseng <william.tseng@intel.com>
> >> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_bios.c            |  3 +++
> >>  .../gpu/drm/i915/display/intel_dsi_dcs_backlight.c   | 12 +++++++++--=
-
> >>  drivers/gpu/drm/i915/i915_drv.h                      |  1 +
> >>  3 files changed, 13 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> >> b/drivers/gpu/drm/i915/display/intel_bios.c
> >> index e86e6ed2d3bf..1affd679d1d1 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> >> @@ -483,6 +483,9 @@ parse_lfp_backlight(struct drm_i915_private
> >> *i915, level =3D 255;  }  i915->vbt.backlight.min_brightness =3D
> >> min_level;
> >> +
> >> +i915->vbt.backlight.max_brightness_level =3D
> >> +(1 << backlight_data-
> >> >brightness_precision_bits[panel_type]) - 1;
> >>  } else {
> >>  level =3D backlight_data->level[panel_type];
> >>  i915->vbt.backlight.min_brightness =3D entry->min_brightness; diff
> >> --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> >> b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> >> index 584c14c4cbd0..cd85520d36e2 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> >> @@ -41,7 +41,7 @@
> >>  #define POWER_SAVE_HIGH(3 << 0)
> >>  #define POWER_SAVE_OUTDOOR_MODE(4 << 0)
> >>
> >> -#define PANEL_PWM_MAX_VALUE0xFF
> >
> >Shouldn't this be panel dependant too?
>=20
> If driver did not retrieve proper precision bits, we will use
> PANEL_PWM_MAX_VALUE as default max backlight.
> Do you recommend to keep 0xFF here?
Precision bits are defined from version 236 of VBT , if that is not valid o=
r is equal to 8 then max brightness should be 0xFF.
>=20
> >> +#define PANEL_PWM_MAX_VALUE0xFFFF
> >>
> >>  static u32 dcs_get_backlight(struct intel_connector *connector, enum
> >> pipe
> >> unused)  { @@ -147,10 +147,16 @@ static void
> >> dcs_enable_backlight(const struct intel_crtc_state *crtc_state,
> >> static int dcs_setup_backlight(struct intel_connector *connector,
> >>         enum pipe unused)
> >>  {
> >> +struct drm_device *dev =3D connector->base.dev; struct
> >> +drm_i915_private *dev_priv =3D to_i915(dev);
> >>  struct intel_panel *panel =3D &connector->panel;
> >>
> >> -panel->backlight.max =3D PANEL_PWM_MAX_VALUE; backlight.level =3D
> >> -panel->PANEL_PWM_MAX_VALUE;
> >> +panel->backlight.max =3D dev_priv-
> >> >vbt.backlight.max_brightness_level \
> >> +       ? dev_priv->vbt.backlight.max_brightness_level \
> >> +       : PANEL_PWM_MAX_VALUE;
> >> +panel->backlight.level =3D dev_priv-
> >> >vbt.backlight.max_brightness_level \
> >> + ? dev_priv-
> >> >vbt.backlight.max_brightness_level \
> >> + : PANEL_PWM_MAX_VALUE;
> >>
> >>  return 0;
> >>  }
> >> diff --git a/drivers/gpu/drm/i915/i915_drv.h
> >> b/drivers/gpu/drm/i915/i915_drv.h index 005b1cec7007..fbb3f18e7b8e
> >> 100644
> >> --- a/drivers/gpu/drm/i915/i915_drv.h
> >> +++ b/drivers/gpu/drm/i915/i915_drv.h
> >> @@ -706,6 +706,7 @@ struct intel_vbt_data {
> >>
> >>  struct {
> >>  u16 pwm_freq_hz;
> >
> >VBT doesn't provide max_brightness_level, instead it gives us Brightness
> Precision bits from version 236 onwards.
>=20
> I will modify this variable name to "brightness_precision_bits". And move=
 the
> max brightness calculation into dcs_setup_backlight().
>=20
> Best regards,
> Shawn
>=20
> >> +u16 max_brightness_level;
> >>  bool present;
> >>  bool active_low_pwm;
> >>  u8 min_brightness;/* min_brightness/255 of max */
> >> --
> >> 2.17.1

