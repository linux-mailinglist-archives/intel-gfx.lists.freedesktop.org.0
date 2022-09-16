Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE78F5BAC6E
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 13:30:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3031410EC6A;
	Fri, 16 Sep 2022 11:30:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35C9C10EC6A
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 11:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663327802; x=1694863802;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=vpTpHb9vRowjrtIhRAEjmCV2Ru1SOpzJQmWSssIQ4Js=;
 b=gpuoshib1gVIBgcAaWobsuCS717tQ1GBuF95EJj+gafqJZ+Ly2ug3G+Y
 bGZ2A9ZHZIsSH1BOzrklji+h08pzE/LbARg43+bL9Y/fmnoFy55ZwRPrR
 VWOnUxnxdXejfv1GXab3zkGQIGx6YsBQPgXeV26TAQBFp4bCz8mobR31T
 Jt2nmxvQLhNiKC92denggjp395XfXILDC2dTSyNEYPVpntsRb/7IXRV1K
 NArZFDdDyH6F+/Tiw7Af9WSNThN3keQQFGFQJOrYTNesxjxVH4i86Ah7C
 0PU7wnvz/wcugfzsYAXTjKcMlejTManxPgZw687sz5t59nS2uye3WI2gp Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="360712316"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="360712316"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 04:30:01 -0700
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="793072008"
Received: from malisch-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.60.50])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 04:29:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>, Ville =?utf-8?B?U3lyasOk?=
 =?utf-8?B?bMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <PH7PR11MB598191FC5E2ACA27BA1CD305F9489@PH7PR11MB5981.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220916083102.18559-1-animesh.manna@intel.com>
 <20220916083102.18559-2-animesh.manna@intel.com>
 <YyQ6nSbIvO2WxO2K@intel.com>
 <PH7PR11MB598191FC5E2ACA27BA1CD305F9489@PH7PR11MB5981.namprd11.prod.outlook.com>
Date: Fri, 16 Sep 2022 14:29:52 +0300
Message-ID: <87r10br1zj.fsf@intel.com>
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

On Fri, 16 Sep 2022, "Manna, Animesh" <animesh.manna@intel.com> wrote:
>> -----Original Message-----
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Sent: Friday, September 16, 2022 2:28 PM
>> To: Manna, Animesh <animesh.manna@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com=
>;
>> Shankar, Uma <uma.shankar@intel.com>
>> Subject: Re: [PATCH 2/2] drm/i915/pps: Enable 2nd pps for dual EDP scena=
rio
>>
>> On Fri, Sep 16, 2022 at 02:01:02PM +0530, Animesh Manna wrote:
>> > >From display gen12 onwards to support dual EDP two instances of pps a=
dded.
>> > Currently backlight controller and pps instance can be mapped together
>> > for a specific panel. Extended support for gen12 for dual EDP usage.
>> >
>> > v1: Iniital revision
>> > v2: Called intel_bios_panel_init w/o PNPID before intel_pps_init.
>> > [Jani]
>> >
>> > Cc: Jani Nikula <jani.nikula@intel.com>
>> > Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > Cc: Uma Shankar <uma.shankar@intel.com>
>> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_bios.c | 7 -------
>> > drivers/gpu/drm/i915/display/intel_bios.h | 7 +++++++
>> >  drivers/gpu/drm/i915/display/intel_dp.c   | 9 ++++++---
>> >  drivers/gpu/drm/i915/display/intel_pps.c  | 2 +-
>> >  4 files changed, 14 insertions(+), 11 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
>> > b/drivers/gpu/drm/i915/display/intel_bios.c
>> > index 28bdb936cd1f..5fd4c09dfa96 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> > @@ -706,13 +706,6 @@ static int fallback_get_panel_type(struct
>> drm_i915_private *i915,
>> >     return 0;
>> >  }
>> >
>> > -enum panel_type {
>> > -   PANEL_TYPE_OPREGION,
>> > -   PANEL_TYPE_VBT,
>> > -   PANEL_TYPE_PNPID,
>> > -   PANEL_TYPE_FALLBACK,
>> > -};
>> > -
>> >  static int get_panel_type(struct drm_i915_private *i915,
>> >                       const struct intel_bios_encoder_data *devdata,
>> >                       const struct edid *edid)
>> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.h
>> > b/drivers/gpu/drm/i915/display/intel_bios.h
>> > index e375405a7828..da01b13260ae 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_bios.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
>> > @@ -231,6 +231,13 @@ struct mipi_pps_data {
>> >     u16 panel_power_cycle_delay;
>> >  } __packed;
>> >
>> > +enum panel_type {
>> > +   PANEL_TYPE_OPREGION,
>> > +   PANEL_TYPE_VBT,
>> > +   PANEL_TYPE_PNPID,
>> > +   PANEL_TYPE_FALLBACK,
>> > +};
>> > +

I don't want enum panel_type exposed from intel_bios.c at all, there's
no reason for that.

>> >  void intel_bios_init(struct drm_i915_private *dev_priv);  void
>> > intel_bios_init_panel(struct drm_i915_private *dev_priv,
>> >                        struct intel_panel *panel,
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> > b/drivers/gpu/drm/i915/display/intel_dp.c
>> > index c19e99ee06b6..6f7afa75ec4d 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > @@ -5222,6 +5222,9 @@ static bool intel_edp_init_connector(struct inte=
l_dp
>> *intel_dp,
>> >             return false;
>> >     }
>> >
>> > +   intel_bios_init_panel(dev_priv, &intel_connector->panel,
>> > +                         encoder->devdata, NULL);
>>
>> We don't want to go for the fallback type here if we the VBT wants us to=
 use
>> pnpid. Maybe we should just remove the fallback type entirely? Or perhap=
s only
>> use it if the VBT panel type is entirely invalid?
>
> Ok, Can I add like below?
> If (!PANEL_TYPE_FALLBACK)
>         intel_pps_init(intel_dp);
>
> But to read EDID pps_init should be called before it. Or else I can enabl=
e both the pps and later disable the unused one.

The first call should init everything if it can (panel type is *not*
pnpid). Fallback is fine in that case too.

If panel type indicates pnpid, intel_bios_init_panel() should set the
pps id to, say, -1, so intel_pps_init() or more specifically
bxt_power_sequencer_idx() can use some default or look at the hardware
or whatever.

intel_bios_init_panel() should probably also return a value on pnpid
indicating intel_edp_init_connector() should call
intel_bios_init_panel() again, this time with EDID. (Note: I kind of
like separating returning the value and setting the pps id to -1. I
don't want intel_edp_init_connector() to look at pps id, that's for pps,
and I don't want to pass flags all the way to bxt_power_sequencer_idx()
either.)


BR,
Jani.


>
> Regards,
> Animesh
>
>> > +
>> >     intel_pps_init(intel_dp);
>> >
>> >     /* Cache DPCD and EDID for edp. */
>> > @@ -5255,9 +5258,9 @@ static bool intel_edp_init_connector(struct inte=
l_dp
>> *intel_dp,
>> >             edid =3D ERR_PTR(-ENOENT);
>> >     }
>> >     intel_connector->edid =3D edid;
>> > -
>> > -   intel_bios_init_panel(dev_priv, &intel_connector->panel,
>> > -                         encoder->devdata, IS_ERR(edid) ? NULL : edid=
);
>> > +   if (intel_connector->panel.vbt.panel_type =3D=3D PANEL_TYPE_FALLBA=
CK)
>> > +           intel_bios_init_panel(dev_priv, &intel_connector->panel,
>> > +                                 encoder->devdata, IS_ERR(edid) ? NUL=
L :
>> edid);
>> >
>> >     intel_panel_add_edid_fixed_modes(intel_connector,
>> >                                      intel_connector->panel.vbt.drrs_t=
ype
>> !=3D DRRS_TYPE_NONE, diff
>> > --git a/drivers/gpu/drm/i915/display/intel_pps.c
>> > b/drivers/gpu/drm/i915/display/intel_pps.c
>> > index b972fa6ec00d..4b8413382c5d 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> > @@ -1430,7 +1430,7 @@ void intel_pps_init(struct intel_dp *intel_dp)
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
>> > --
>> > 2.29.0
>>
>> --
>> Ville Syrj=C3=A4l=C3=A4
>> Intel

--=20
Jani Nikula, Intel Open Source Graphics Center
