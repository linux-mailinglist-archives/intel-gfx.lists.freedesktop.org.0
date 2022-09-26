Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2332E5EA051
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 12:36:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C061610E683;
	Mon, 26 Sep 2022 10:36:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0509910E67C
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 10:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664188559; x=1695724559;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=1g3qFmpSKkD2qveSlaeweC2/G+uv4ZvTbfdSm2juIrM=;
 b=I2ny8ckleBJbET936KumPCHmJCCQYZYBUVcetLsywZNe/iDxplN3rIkL
 D5s40z0g2FDog7V4NEEBnaUtg72G5C+xRUedHsvr4N21ISiGEEQW6hm8I
 jkbfU+yf5t+1IkN9t0nnd0bvFrxvP6qaRzD6RQI31Ep4Vh+HNFhvu9Evx
 mNgPt+NWVgm7xekx1T+r1yQmiQE3uB2icvD9c7YdDWTwDEtLXMI9zqHqp
 ljUu8LFUMYlKaqhAJiu5uLcNN2GzPqRroaSqviy8gaZ0g0KyNmZKZ6lXv
 JuMILRYC79moGqivciS43d4/xNNjik0b0Ufn8g8kN7hpPbZyi661uC+/v Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="362823344"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="362823344"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 03:35:57 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="866075623"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="866075623"
Received: from lsabisze-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.243])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 03:35:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>, Ville =?utf-8?B?U3lyasOk?=
 =?utf-8?B?bMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <PH7PR11MB59813932FC99E7402988D620F94C9@PH7PR11MB5981.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220916083102.18559-1-animesh.manna@intel.com>
 <20220916083102.18559-2-animesh.manna@intel.com>
 <YyQ6nSbIvO2WxO2K@intel.com>
 <PH7PR11MB598191FC5E2ACA27BA1CD305F9489@PH7PR11MB5981.namprd11.prod.outlook.com>
 <87r10br1zj.fsf@intel.com>
 <PH7PR11MB59813932FC99E7402988D620F94C9@PH7PR11MB5981.namprd11.prod.outlook.com>
Date: Mon, 26 Sep 2022 13:35:35 +0300
Message-ID: <87o7v22zk8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/pps: Enable 2nd pps for dual
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 20 Sep 2022, "Manna, Animesh" <animesh.manna@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Friday, September 16, 2022 5:00 PM
>> To: Manna, Animesh <animesh.manna@intel.com>; Ville Syrj=C3=A4l=C3=A4
>> <ville.syrjala@linux.intel.com>
>> Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>
>> Subject: RE: [PATCH 2/2] drm/i915/pps: Enable 2nd pps for dual EDP scena=
rio
>>
>> On Fri, 16 Sep 2022, "Manna, Animesh" <animesh.manna@intel.com> wrote:
>> >> -----Original Message-----
>> >> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >> Sent: Friday, September 16, 2022 2:28 PM
>> >> To: Manna, Animesh <animesh.manna@intel.com>
>> >> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani
>> >> <jani.nikula@intel.com>; Shankar, Uma <uma.shankar@intel.com>
>> >> Subject: Re: [PATCH 2/2] drm/i915/pps: Enable 2nd pps for dual EDP
>> >> scenario
>> >>
>> >> On Fri, Sep 16, 2022 at 02:01:02PM +0530, Animesh Manna wrote:
>> >> > >From display gen12 onwards to support dual EDP two instances of pps
>> added.
>> >> > Currently backlight controller and pps instance can be mapped
>> >> > together for a specific panel. Extended support for gen12 for dual =
EDP
>> usage.
>> >> >
>> >> > v1: Iniital revision
>> >> > v2: Called intel_bios_panel_init w/o PNPID before intel_pps_init.
>> >> > [Jani]
>> >> >
>> >> > Cc: Jani Nikula <jani.nikula@intel.com>
>> >> > Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >> > Cc: Uma Shankar <uma.shankar@intel.com>
>> >> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>> >> > ---
>> >> >  drivers/gpu/drm/i915/display/intel_bios.c | 7 -------
>> >> > drivers/gpu/drm/i915/display/intel_bios.h | 7 +++++++
>> >> >  drivers/gpu/drm/i915/display/intel_dp.c   | 9 ++++++---
>> >> >  drivers/gpu/drm/i915/display/intel_pps.c  | 2 +-
>> >> >  4 files changed, 14 insertions(+), 11 deletions(-)
>> >> >
>> >> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
>> >> > b/drivers/gpu/drm/i915/display/intel_bios.c
>> >> > index 28bdb936cd1f..5fd4c09dfa96 100644
>> >> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> >> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> >> > @@ -706,13 +706,6 @@ static int fallback_get_panel_type(struct
>> >> drm_i915_private *i915,
>> >> >     return 0;
>> >> >  }
>> >> >
>> >> > -enum panel_type {
>> >> > -   PANEL_TYPE_OPREGION,
>> >> > -   PANEL_TYPE_VBT,
>> >> > -   PANEL_TYPE_PNPID,
>> >> > -   PANEL_TYPE_FALLBACK,
>> >> > -};
>> >> > -
>> >> >  static int get_panel_type(struct drm_i915_private *i915,
>> >> >                       const struct intel_bios_encoder_data *devdata,
>> >> >                       const struct edid *edid) diff --git
>> >> > a/drivers/gpu/drm/i915/display/intel_bios.h
>> >> > b/drivers/gpu/drm/i915/display/intel_bios.h
>> >> > index e375405a7828..da01b13260ae 100644
>> >> > --- a/drivers/gpu/drm/i915/display/intel_bios.h
>> >> > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
>> >> > @@ -231,6 +231,13 @@ struct mipi_pps_data {
>> >> >     u16 panel_power_cycle_delay;
>> >> >  } __packed;
>> >> >
>> >> > +enum panel_type {
>> >> > +   PANEL_TYPE_OPREGION,
>> >> > +   PANEL_TYPE_VBT,
>> >> > +   PANEL_TYPE_PNPID,
>> >> > +   PANEL_TYPE_FALLBACK,
>> >> > +};
>> >> > +
>>
>> I don't want enum panel_type exposed from intel_bios.c at all, there's n=
o reason
>> for that.
>
> Hi Jani,
>
> Thanks for your inputs. I have made the changes as per your suggestion.
> I have a doubt which is mentioned below, currently have sent to trybot fo=
r quick feedback.
> https://patchwork.freedesktop.org/patch/503759/?series=3D108786&rev=3D1

I'm not subscribed to the trybot list, so I can't easily reply with
comments.

Use trybot only to *test* stuff, not if you want human feedback.

>
>>
>> >> >  void intel_bios_init(struct drm_i915_private *dev_priv);  void
>> >> > intel_bios_init_panel(struct drm_i915_private *dev_priv,
>> >> >                        struct intel_panel *panel, diff --git
>> >> > a/drivers/gpu/drm/i915/display/intel_dp.c
>> >> > b/drivers/gpu/drm/i915/display/intel_dp.c
>> >> > index c19e99ee06b6..6f7afa75ec4d 100644
>> >> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> >> > @@ -5222,6 +5222,9 @@ static bool intel_edp_init_connector(struct
>> >> > intel_dp
>> >> *intel_dp,
>> >> >             return false;
>> >> >     }
>> >> >
>> >> > +   intel_bios_init_panel(dev_priv, &intel_connector->panel,
>> >> > +                         encoder->devdata, NULL);
>> >>
>> >> We don't want to go for the fallback type here if we the VBT wants us
>> >> to use pnpid. Maybe we should just remove the fallback type entirely?
>> >> Or perhaps only use it if the VBT panel type is entirely invalid?
>> >
>> > Ok, Can I add like below?
>> > If (!PANEL_TYPE_FALLBACK)
>> >         intel_pps_init(intel_dp);
>> >
>> > But to read EDID pps_init should be called before it. Or else I can en=
able both
>> the pps and later disable the unused one.
>>
>> The first call should init everything if it can (panel type is *not* pnp=
id). Fallback is
>> fine in that case too.
>
> First time intel_bios_init_panel() will be called with null edid and pane=
l type will be set to PANEL_TYPE_FALLBACK.
>
>>
>> If panel type indicates pnpid, intel_bios_init_panel() should set the pp=
s id to, say,
>> -1, so intel_pps_init() or more specifically
>> bxt_power_sequencer_idx() can use some default or look at the hardware or
>> whatever.
>
> Currently checking for PANEL_TYPE_PNPID in intel_bios_init_panel() and se=
tting pps id to -1.
> But I am not sure why special handling is needed in bxt_power_sequencer_i=
dx().
> Is backlight_controller value can be used to derive pps instance for PANE=
L_TYPE_PNPID.

Backlight controller and pps index are basically the *same* thing. If
PNPID is used, the backlight controller is uninitialized.

This is actually a bug in the current code, even for single panel
configurations, if someone has chosen to use the 2nd pps/backlight.

BR,
Jani.

>
>>
>> intel_bios_init_panel() should probably also return a value on pnpid ind=
icating
>> intel_edp_init_connector() should call
>> intel_bios_init_panel() again, this time with EDID. (Note: I kind of lik=
e separating
>> returning the value and setting the pps id to -1. I don't want
>> intel_edp_init_connector() to look at pps id, that's for pps, and I don'=
t want to
>> pass flags all the way to bxt_power_sequencer_idx()
>> either.)
>
> For PANEL_TYPE_PNPID am returning boolean retry, with that don=E2=80=99t =
need to move panet type enum to intel_bios.h.
> If the retry is true will call intel_bios_init_panel() with edid to check=
 for PANEL_TYPE_PNPID.
>
> Regards,
> Animesh
>
>>
>>
>> BR,
>> Jani.
>>
>>
>> >
>> > Regards,
>> > Animesh
>> >
>> >> > +
>> >> >     intel_pps_init(intel_dp);
>> >> >
>> >> >     /* Cache DPCD and EDID for edp. */ @@ -5255,9 +5258,9 @@ static
>> >> > bool intel_edp_init_connector(struct intel_dp
>> >> *intel_dp,
>> >> >             edid =3D ERR_PTR(-ENOENT);
>> >> >     }
>> >> >     intel_connector->edid =3D edid;
>> >> > -
>> >> > -   intel_bios_init_panel(dev_priv, &intel_connector->panel,
>> >> > -                         encoder->devdata, IS_ERR(edid) ? NULL : e=
did);
>> >> > +   if (intel_connector->panel.vbt.panel_type =3D=3D PANEL_TYPE_FAL=
LBACK)
>> >> > +           intel_bios_init_panel(dev_priv, &intel_connector->panel,
>> >> > +                                 encoder->devdata, IS_ERR(edid) ? =
NULL :
>> >> edid);
>> >> >
>> >> >     intel_panel_add_edid_fixed_modes(intel_connector,
>> >> >
>> >> > intel_connector->panel.vbt.drrs_type
>> >> !=3D DRRS_TYPE_NONE, diff
>> >> > --git a/drivers/gpu/drm/i915/display/intel_pps.c
>> >> > b/drivers/gpu/drm/i915/display/intel_pps.c
>> >> > index b972fa6ec00d..4b8413382c5d 100644
>> >> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> >> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> >> > @@ -1430,7 +1430,7 @@ void intel_pps_init(struct intel_dp *intel_dp)
>> >> >     intel_dp->pps.initializing =3D true;
>> >> >     INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work,
>> >> > edp_panel_vdd_work);
>> >> >
>> >> > -   if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
>> >> > +   if (IS_GEMINILAKE(i915) || IS_BROXTON(i915) ||
>> >> > +DISPLAY_VER(i915) >=3D
>> >> > +12)
>> >> >             intel_dp->get_pps_idx =3D bxt_power_sequencer_idx;
>> >> >     else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
>> >> >             intel_dp->get_pps_idx =3D vlv_power_sequencer_pipe;
>> >> > --
>> >> > 2.29.0
>> >>
>> >> --
>> >> Ville Syrj=C3=A4l=C3=A4
>> >> Intel
>>
>> --
>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
