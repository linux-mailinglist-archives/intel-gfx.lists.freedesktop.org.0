Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD0E622D21
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 15:04:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB54510E5EC;
	Wed,  9 Nov 2022 14:04:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B00F610E5EC
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 14:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668002695; x=1699538695;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=B456yEUNMq/+p9o5muKJ9JjLJrhQOBYcnHcrGwFGzb4=;
 b=Ip1YHHa7/ijpwIcAXzUZa4X/WQ+YO6FK44TZ/5eVTsYA51LaTME96ysA
 IuQEjmLWgP6Vr/kTPdgaVHbyv4VU2qSFex8aI3awUMA+Fgfy2zD+U52xw
 E1ahTZqID4vNWjAEEQRyoTQl0EWE1DFeCl9+dydE3Eu5C3N7mSqAZAnCk
 jmPYpzedpeAZR70WDYuI/BHWROUY+oqSu5QmGfbgk2zaU1TjX8pWUMAvY
 Ufjet1kGlUxToKtjavXxEXd4O4U32jAM10E4h92HwvxoqrAVzVfoe7i+7
 y1mZyt5i6itx7DqWDN96LsK1xE+ivQo6a3vEoKeqCivo2UX8I1QDlzBx0 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="308600999"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="308600999"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 06:04:37 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="631258271"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="631258271"
Received: from skorobko-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.15.56])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 06:04:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <PH7PR11MB5981811EDDC0E92B460FF1AEF93E9@PH7PR11MB5981.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221109111529.27476-1-animesh.manna@intel.com>
 <20221109111529.27476-2-animesh.manna@intel.com>
 <87leok73s2.fsf@intel.com>
 <PH7PR11MB5981811EDDC0E92B460FF1AEF93E9@PH7PR11MB5981.namprd11.prod.outlook.com>
Date: Wed, 09 Nov 2022 16:04:32 +0200
Message-ID: <87cz9w6x73.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/pps: Enable 2nd pps for dual
 EDP scenario
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

On Wed, 09 Nov 2022, "Manna, Animesh" <animesh.manna@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Wednesday, November 9, 2022 5:12 PM
>> To: Manna, Animesh <animesh.manna@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Cc: Manna, Animesh <animesh.manna@intel.com>; Ville Syrj=C3=A4l=C3=A4
>> <ville.syrjala@linux.intel.com>; Shankar, Uma <uma.shankar@intel.com>
>> Subject: Re: [PATCH 2/3] drm/i915/pps: Enable 2nd pps for dual EDP scena=
rio
>>
>> On Wed, 09 Nov 2022, Animesh Manna <animesh.manna@intel.com> wrote:
>> > From display gen12 onwards to support dual EDP two instances of pps ad=
ded.
>> > Currently backlight controller and pps instance can be mapped together
>> > for a specific panel. Currently dual PPS support is broken. This patch
>> > fixes it and enables for display 12+.
>> >
>> > v1: Iniital revision.
>> > v2: Called intel_bios_panel_init w/o PNPID before intel_pps_init.
>> > [Jani]
>> > v3: Set pps_id to -1 for pnpid type of panel which will be used by
>> > bxt_power_sequencer_idx() to set 2nd pps instance as default for 2nd
>> > EDP panel. [Jani]
>> > v4: Early return for PANEL_TYPE_FALLBACK. [Jani]
>> > v5: Removed additional pps_id variable and reused backlight
>> > controller. [Jani]
>> >
>> > Cc: Jani Nikula <jani.nikula@intel.com>
>> > Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > Cc: Uma Shankar <uma.shankar@intel.com>
>> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_bios.c |  9 ++++++++-
>> > drivers/gpu/drm/i915/display/intel_bios.h |  2 +-
>> >  drivers/gpu/drm/i915/display/intel_dp.c   | 10 +++++++---
>> >  drivers/gpu/drm/i915/display/intel_pps.c  | 12 +++++++++++-
>> >  4 files changed, 27 insertions(+), 6 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
>> > b/drivers/gpu/drm/i915/display/intel_bios.c
>> > index c2987f2c2b2e..1c1eea061fbb 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> > @@ -3183,7 +3183,7 @@ void intel_bios_init(struct drm_i915_private *i9=
15)
>> >     kfree(oprom_vbt);
>> >  }
>> >
>> > -void intel_bios_init_panel(struct drm_i915_private *i915,
>> > +bool intel_bios_init_panel(struct drm_i915_private *i915,
>> >                        struct intel_panel *panel,
>> >                        const struct intel_bios_encoder_data *devdata,
>> >                        const struct edid *edid)
>> > @@ -3192,6 +3192,11 @@ void intel_bios_init_panel(struct
>> > drm_i915_private *i915,
>> >
>> >     panel->vbt.panel_type =3D get_panel_type(i915, devdata, edid);
>> >
>> > +   if (panel->vbt.panel_type =3D=3D PANEL_TYPE_FALLBACK && !edid) {
>>
>> As Ville pointed out, "panel->vbt.panel_type =3D=3D PANEL_TYPE_FALLBACK"=
 is
>> comparing apples to oranges, and we hit this path only in the rare case =
that
>> panel_type =3D=3D 3, regardless of where the panel type originated.
>
> Got it, tried returning some random negative number (for example -2) from=
 fallback_get_panel_type() and checking the same here is fixing the WARN_ON.
>
>>
>> This is probably the reason patches 1&2 don't fix the original issue lik=
e it should.
>>
>> I remind you that the issue is two eDP having their own pps software sta=
tes but
>> using the same pps hardware due to conflicting pps index (which is the s=
ame as
>> panel->vbt.backlight.controller). This is what we need to solve here.
>
> In this patch we decide to use the specific pps based on port number. Onc=
e we identify it is PORT B always 2nd instance of PPS will be used. All pps=
 register get instantiated with pps_idx 1
>         if (backlight_controller =3D=3D -1) {
>                 /*
>                  * Use 2nd PPS instance as default for 2nd EDP panel.
>                  */
>                 if (connector->encoder->port =3D=3D PORT_A)
>                         return 0;
>                 else
>                         return 1;
>         }
> Not sure what is toggling the VDD.

The 2nd eDP obviously!

BR,
Jani.


> Anyways I agree patch 3 is not
> needed. Thanks for review.
>
> Regards,
> Animesh
>
>>
>> We get the wakeref imbalance because of two eDP trampling on the same pps
>> hardware. Patch 3 does nothing to address that issue, it just tries to h=
ide the
>> problem.
>>
>>
>> BR,
>> Jani.
>>
>>
>> > +           panel->vbt.backlight.controller =3D -1;
>> > +           return true;
>> > +   }
>> > +
>> >     parse_panel_options(i915, panel);
>> >     parse_generic_dtd(i915, panel);
>> >     parse_lfp_data(i915, panel);
>> > @@ -3203,6 +3208,8 @@ void intel_bios_init_panel(struct drm_i915_priva=
te
>> *i915,
>> >     parse_psr(i915, panel);
>> >     parse_mipi_config(i915, panel);
>> >     parse_mipi_sequence(i915, panel);
>> > +
>> > +   return false;
>> >  }
>> >
>> >  /**
>> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.h
>> > b/drivers/gpu/drm/i915/display/intel_bios.h
>> > index e375405a7828..f8ef0274f3ee 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_bios.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
>> > @@ -232,7 +232,7 @@ struct mipi_pps_data {  } __packed;
>> >
>> >  void intel_bios_init(struct drm_i915_private *dev_priv); -void
>> > intel_bios_init_panel(struct drm_i915_private *dev_priv,
>> > +bool intel_bios_init_panel(struct drm_i915_private *dev_priv,
>> >                        struct intel_panel *panel,
>> >                        const struct intel_bios_encoder_data *devdata,
>> >                        const struct edid *edid);
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> > b/drivers/gpu/drm/i915/display/intel_dp.c
>> > index 7400d6b4c587..78cf3a77f026 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > @@ -5235,6 +5235,7 @@ static bool intel_edp_init_connector(struct inte=
l_dp
>> *intel_dp,
>> >     struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>> >     bool has_dpcd;
>> >     struct edid *edid;
>> > +   bool retry;
>> >
>> >     if (!intel_dp_is_edp(intel_dp))
>> >             return true;
>> > @@ -5254,6 +5255,9 @@ static bool intel_edp_init_connector(struct inte=
l_dp
>> *intel_dp,
>> >             return false;
>> >     }
>> >
>> > +   retry =3D intel_bios_init_panel(dev_priv, &intel_connector->panel,
>> > +                                 encoder->devdata, NULL);
>> > +
>> >     intel_pps_init(intel_dp);
>> >
>> >     /* Cache DPCD and EDID for edp. */
>> > @@ -5288,9 +5292,9 @@ static bool intel_edp_init_connector(struct inte=
l_dp
>> *intel_dp,
>> >             edid =3D ERR_PTR(-ENOENT);
>> >     }
>> >     intel_connector->edid =3D edid;
>> > -
>> > -   intel_bios_init_panel(dev_priv, &intel_connector->panel,
>> > -                         encoder->devdata, IS_ERR(edid) ? NULL : edid=
);
>> > +   if (retry)
>> > +           intel_bios_init_panel(dev_priv, &intel_connector->panel,
>> > +                                 encoder->devdata, IS_ERR(edid) ? NUL=
L :
>> edid);
>> >
>> >     intel_panel_add_edid_fixed_modes(intel_connector, true);
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
>> > b/drivers/gpu/drm/i915/display/intel_pps.c
>> > index 3949fb449353..5738af154bd2 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> > @@ -219,6 +219,16 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
>> >     /* We should never land here with regular DP ports */
>> >     drm_WARN_ON(&dev_priv->drm, !intel_dp_is_edp(intel_dp));
>> >
>> > +   if (backlight_controller =3D=3D -1) {
>> > +           /*
>> > +            * Use 2nd PPS instance as default for 2nd EDP panel.
>> > +            */
>> > +           if (connector->encoder->port =3D=3D PORT_A)
>> > +                   return 0;
>> > +           else
>> > +                   return 1;
>> > +   }
>> > +
>> >     if (!intel_dp->pps.pps_reset)
>> >             return backlight_controller;
>> >
>> > @@ -1430,7 +1440,7 @@ void intel_pps_init(struct intel_dp *intel_dp)
>> >     intel_dp->pps.initializing =3D true;
>> >     INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work,
>> > edp_panel_vdd_work);
>> >
>> > -   if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
>> > +   if (IS_GEMINILAKE(i915) || IS_BROXTON(i915) || DISPLAY_VER(i915) >=
=3D
>> > +12)
>> >             intel_dp->get_pps_idx =3D bxt_power_sequencer_idx;
>> >     else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
>> >             intel_dp->get_pps_idx =3D vlv_power_sequencer_pipe;
>>
>> --
>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
