Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3286E8BD41A
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 19:50:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A2CF10F1F7;
	Mon,  6 May 2024 17:50:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="emZr/hQR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C57210F1F7
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 17:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1715017829;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9wu/fxykHqpC3qk/F8ss5hlhJpShzSA63g/qKQykOUQ=;
 b=emZr/hQR18em71Q7aTeWassc3QsT7VjUOKUUNXfMyqWPmMQemXhHvD6TW22QT8Chn/5H1Q
 o02xVdaPyCJ65afckkm0A/RvhQvzN83kcJ3/t6Ppo8OSIXrfO03Gry3lcJ19eTPWs2ZX5A
 bVpi+Qg2qtQU7ppkhnlDWWKtgWSxztk=
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-557-Qd4MZAiBM2aE81PFwdMUrA-1; Mon, 06 May 2024 13:50:27 -0400
X-MC-Unique: Qd4MZAiBM2aE81PFwdMUrA-1
Received: by mail-lj1-f198.google.com with SMTP id
 38308e7fff4ca-2e0b3a7ffbeso20507591fa.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 May 2024 10:50:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715017826; x=1715622626;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=9wu/fxykHqpC3qk/F8ss5hlhJpShzSA63g/qKQykOUQ=;
 b=N+G0cWgAMBJ/nT8mcPNOgqYw7oN7ZyAT/UmMonGlR1qcSGy/r0nl0kK6Q//qVsUp5L
 8Fc4715h+vuqi3xhZhBEmjn7NgESAbBMJ3Qv3rL22r/AnkXGC8NhuWqLJEifge7uvY/w
 hh5f3xnei3WPGOBzs7tOIvEvnQWT/V6TFORVBBT7t2G+gYXmRnB0++XV+bG3v1FUxwDX
 TBgQAxKqsaQXjU7SE+t4R/p+B93MNF6bJHHVPkkHtZvq3/RIeMwwCOkG33i8b6DLaofv
 MTDcTjyADN2wfzxIdSsuxLRLx18tDRlJasWl8uwYnkNa6Seyw6qdBuLN2GJL7hp+OYji
 HIVQ==
X-Gm-Message-State: AOJu0YxGWmfEalAi9MY5/t9Div+WSRu4l7fnNEpW+aH/YjLg6qAm4/Ox
 FzT6YjZ5sJzu4PNcePp65DvLbgRm0D6yFhRZ0by8ChqZCzCyZwXOMCE8gGDlUE4kXtV3NJ2Vtv3
 VJamYddallUm9v4LdrpXWq9Z4w7XvN6RuvIAp2KLdy8ixvCzAz6zyo8m0/9W75rg7/HX4i6kuXG
 WOTQtHxrIlLHQv6P/wXXj4FBNy6ASRxFuHPDKty6bf
X-Received: by 2002:a2e:8904:0:b0:2df:4bad:cb7a with SMTP id
 d4-20020a2e8904000000b002df4badcb7amr8305784lji.0.1715017826274; 
 Mon, 06 May 2024 10:50:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEcO2gsOO3T2Ymz5JPqTyvt1q/i7ssadW3hR/YrhdpacpXgQKAPEEfpLkSOBCL+svNLckEVA4gtn5p/vhZnXAE=
X-Received: by 2002:a2e:8904:0:b0:2df:4bad:cb7a with SMTP id
 d4-20020a2e8904000000b002df4badcb7amr8305765lji.0.1715017825827; Mon, 06 May
 2024 10:50:25 -0700 (PDT)
MIME-Version: 1.0
References: <20240422033256.713902-6-suraj.kandpal@intel.com>
 <20240423212129.GA99376@toolbox>
 <SN7PR11MB6750052CC3E4F6481F8F1093E3102@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750052CC3E4F6481F8F1093E3102@SN7PR11MB6750.namprd11.prod.outlook.com>
From: Sebastian Wick <sebastian.wick@redhat.com>
Date: Mon, 6 May 2024 19:50:14 +0200
Message-ID: <CA+hFU4xY3EzUbS1=phP873bvrYmLpxDSKm_NNoOy7H1rjNRd6Q@mail.gmail.com>
Subject: Re: [5/6] drm/i915/dp: Enable AUX based backlight for HDR
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar,
 Uma" <uma.shankar@intel.com>, 
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy,
 Arun R" <arun.r.murthy@intel.com>, 
 "Kumar, Naveen1" <naveen1.kumar@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
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

On Wed, Apr 24, 2024 at 5:59=E2=80=AFAM Kandpal, Suraj <suraj.kandpal@intel=
.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Sebastian Wick <sebastian.wick@redhat.com>
> > Sent: Wednesday, April 24, 2024 2:51 AM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Borah, Chaitanya Kumar
> > <chaitanya.kumar.borah@intel.com>; Shankar, Uma
> > <uma.shankar@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>=
;
> > Murthy, Arun R <arun.r.murthy@intel.com>; Kumar, Naveen1
> > <naveen1.kumar@intel.com>
> > Subject: Re: [5/6] drm/i915/dp: Enable AUX based backlight for HDR
> >
> > On Mon, Apr 22, 2024 at 09:02:54AM +0530, Suraj Kandpal wrote:
> > > As of now whenerver HDR is switched on we use the PWM to change the
> > > backlight as opposed to AUX based backlight changes in terms of nits.
> > > This patch writes to the appropriate DPCD registers to enable aux
> > > based backlight using values in nits.
> > >
> > > --v2
> > > -Fix max_cll and max_fall assignment [Jani] -Fix the size sent in
> > > drm_dpcd_write [Jani]
> > >
> > > --v3
> > > -Content Luminance needs to be sent only for pre-ICL after that it is
> > > directly picked up from hdr metadata [Ville]
> > >
> > > --v4
> > > -Add checks for HDR TCON cap bits [Ville] -Check eotf of
> > > hdr_output_data and sets bits base of that value.
> > >
> > > --v5
> > > -Fix capability check bits.
> > > -Check colorspace before setting BT2020
> > >
> > > --v6
> > > -Use intel_dp_has_gamut_dip to check if we have capability to send sd=
p
> > > [Ville] -Seprate filling of all hdr tcon related bits into it's own
> > > function.
> > > -Check eotf data to make sure we are in HDR mode [Sebastian]
> > >
> > > --v7
> > > -Fix confusion function name for hdr mode check [Jani] -Fix the
> > > condition which tells us if we are in HDR mode or not [Sebastian]
> > >
> > > --v8
> > > -Call fill_hdr_tcon_param unconditionally as some parameters may not
> > > be dependent on the fact if we are in hdr mode or not [Sebastian] -Fi=
x
> > > some conditions after change in hdr mode check [Sebastian]
> > >
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_dp_aux_backlight.c | 98
> > > ++++++++++++++++---
> > >  1 file changed, 87 insertions(+), 11 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > index b61bad218994..e23694257ea5 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > @@ -40,11 +40,6 @@
> > >  #include "intel_dp.h"
> > >  #include "intel_dp_aux_backlight.h"
> > >
> > > -/* TODO:
> > > - * Implement HDR, right now we just implement the bare minimum to
> > > bring us back into SDR mode so we
> > > - * can make people's backlights work in the mean time
> > > - */
> > > -
> > >  /*
> > >   * DP AUX registers for Intel's proprietary HDR backlight interface.=
 We define
> > >   * them here since we'll likely be the only driver to ever use these=
.
> > > @@ -127,9 +122,6 @@ intel_dp_aux_supports_hdr_backlight(struct
> > intel_connector *connector)
> > >     if (ret !=3D sizeof(tcon_cap))
> > >             return false;
> > >
> > > -   if (!(tcon_cap[1] & INTEL_EDP_HDR_TCON_BRIGHTNESS_NITS_CAP))
> > > -           return false;
> > > -
> > >     drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Detected %s HDR
> > backlight interface version %d\n",
> > >                 connector->base.base.id, connector->base.name,
> > >                 is_intel_tcon_cap(tcon_cap) ? "Intel" : "unsupported"=
,
> > > tcon_cap[0]); @@ -137,6 +129,9 @@
> > intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
> > >     if (!is_intel_tcon_cap(tcon_cap))
> > >             return false;
> > >
> > > +   if (!(tcon_cap[1] & INTEL_EDP_HDR_TCON_BRIGHTNESS_NITS_CAP))
> > > +           return false;
> > > +
> > >     /*
> > >      * If we don't have HDR static metadata there is no way to
> > >      * runtime detect used range for nits based control. For now @@
> > > -225,13 +220,27 @@ intel_dp_aux_hdr_set_aux_backlight(const struct
> > drm_connector_state *conn_state,
> > >                     connector->base.base.id, connector->base.name);  =
}
> > >
> > > +static bool
> > > +intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state) {
> > > +   struct hdr_output_metadata *hdr_metadata;
> > > +
> > > +   if (!conn_state->hdr_output_metadata)
> > > +           return false;
> > > +
> > > +   hdr_metadata =3D conn_state->hdr_output_metadata->data;
> > > +
> > > +   return hdr_metadata->hdmi_metadata_type1.eotf =3D=3D
> > > +HDMI_EOTF_SMPTE_ST2084; }
> > > +
> > >  static void
> > >  intel_dp_aux_hdr_set_backlight(const struct drm_connector_state
> > > *conn_state, u32 level)  {
> > >     struct intel_connector *connector =3D to_intel_connector(conn_sta=
te-
> > >connector);
> > >     struct intel_panel *panel =3D &connector->panel;
> > >
> > > -   if (panel->backlight.edp.intel.sdr_uses_aux) {
> > > +   if (intel_dp_in_hdr_mode(conn_state) ||
> > > +       panel->backlight.edp.intel.sdr_uses_aux) {
> > >             intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
> > >     } else {
> > >             const u32 pwm_level =3D
> > intel_backlight_level_to_pwm(connector,
> > > level); @@ -240,6 +249,64 @@ intel_dp_aux_hdr_set_backlight(const
> > struct drm_connector_state *conn_state, u32
> > >     }
> > >  }
> > >
> > > +static void
> > > +intel_dp_aux_write_content_luminance(struct intel_connector *connect=
or,
> > > +                                struct hdr_output_metadata
> > *hdr_metadata) {
> > > +   struct intel_dp *intel_dp =3D enc_to_intel_dp(connector->encoder)=
;
> > > +   struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > > +   int ret;
> > > +   u8 buf[4];
> > > +
> > > +   if (!intel_dp_has_gamut_metadata_dip(connector->encoder))
> > > +           return;
> >
> > The usage of intel_dp_has_gamut_metadata_dip is all over the place. You
> > happily set INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE and
> > INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE even when it doesn't have
> > the dip but you require it for INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX
> > and INTEL_EDP_HDR_CONTENT_LUMINANCE. Why?
> >
> > Especially because when there is no gamut_metadata_dip, the KMS propert=
ies
> > for HDR is not exposed.
> >
>
> As I have iterated multiple times before segmented backlight needs to be =
set
> regardless of H/W's capabilities to send SDP(the spec demands it). Having=
 it set based on a KMS property
> Is a whole different conversation keeping in mind this is an INTEL specif=
ic spec DPCD
> reg bit which needs to be set, do we really want to expose a property tha=
t only intel
> H/W will use does not seem right but as I said a discussion that needs to=
 be taken up later
> and should not be a part of this patch series which enables HDR and AUX b=
ased backlight.

I don't have the spec and can only speculate what's going on, but I
doubt a lot that you cannot enter HDR mode without segmented
backlight. Did you actually test this?

Control over segmented backlight is part of both Vulkan and DX so I
don't think it's far-fetched to expose this to KMS.

Either way, I agree with you, this is something for the future.

> INTEL_EDP_HDR_CONTENT_LUMINANCE is only set in cases DISPLAY_VER < 11 tha=
t's why the
> Dip check there since it return true in case DISPLAY_VER >=3D 11 or if po=
rt is not A (which is used for EDP).
> INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX well and this need a dip check which =
seems obvious since we
> Would only want to override aux if SDP is present.
> So in short I am pretty happy with the bits that have been set and the co=
nditions used to set them.

The dip check is never going to be reached when the dip check fails in
the first place. You only expose the property when the dip check
succeeds, thus you only can be in hdr mode if it succeeds and you only
ever call intel_dp_aux_write_content_luminance if the connector is in
hdr mode. It is redundant here but it's your driver and it still works
just fine as is.

For the whole series:

Reviewed-by: Sebastian Wick <sebastian.wick@redhat.com>

>
> > > +
> > > +   buf[0] =3D hdr_metadata->hdmi_metadata_type1.max_cll & 0xFF;
> > > +   buf[1] =3D (hdr_metadata->hdmi_metadata_type1.max_cll & 0xFF00)
> > >> 8;
> > > +   buf[2] =3D hdr_metadata->hdmi_metadata_type1.max_fall & 0xFF;
> > > +   buf[3] =3D (hdr_metadata->hdmi_metadata_type1.max_fall & 0xFF00)
> > >> 8;
> > > +
> > > +   ret =3D drm_dp_dpcd_write(&intel_dp->aux,
> > > +                           INTEL_EDP_HDR_CONTENT_LUMINANCE,
> > > +                           buf, sizeof(buf));
> > > +   if (ret < 0)
> > > +           drm_dbg_kms(&i915->drm,
> > > +                       "Content Luminance DPCD reg write failed, err=
:-
> > %d\n",
> > > +                       ret);
> > > +}
> > > +
> > > +static void
> > > +intel_dp_aux_fill_hdr_tcon_params(const struct drm_connector_state
> > > +*conn_state, u8 *ctrl) {
> > > +   struct intel_connector *connector =3D to_intel_connector(conn_sta=
te-
> > >connector);
> > > +   struct intel_panel *panel =3D &connector->panel;
> > > +   struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > > +
> > > +   /*
> > > +    * According to spec segmented backlight needs to be set whenever
> > panel is in
> > > +    * HDR mode.
> > > +    */
> > > +   if (intel_dp_in_hdr_mode(conn_state)) {
> > > +           *ctrl |=3D
> > INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE;
> > > +           *ctrl |=3D INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE;
> > > +   }
> > > +
> > > +   if (DISPLAY_VER(i915) < 11)
> > > +           *ctrl &=3D ~INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE;
> > > +
> > > +   if (panel->backlight.edp.intel.supports_2020_gamut &&
> > > +       (conn_state->colorspace =3D=3D
> > DRM_MODE_COLORIMETRY_BT2020_RGB ||
> > > +        conn_state->colorspace =3D=3D
> > DRM_MODE_COLORIMETRY_BT2020_YCC ||
> > > +        conn_state->colorspace =3D=3D
> > DRM_MODE_COLORIMETRY_BT2020_CYCC))
> > > +           *ctrl |=3D INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE;
> > > +
> > > +   if (panel->backlight.edp.intel.supports_sdp_colorimetry &&
> > > +       intel_dp_has_gamut_metadata_dip(connector->encoder))
> > > +           *ctrl |=3D INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX;
> > > +   else
> > > +           *ctrl &=3D ~INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX;
> > > +}
> > > +
> > >  static void
> > >  intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crt=
c_state,
> > >                               const struct drm_connector_state
> > *conn_state, u32 level) @@
> > > -248,6 +315,7 @@ intel_dp_aux_hdr_enable_backlight(const struct
> > intel_crtc_state *crtc_state,
> > >     struct intel_panel *panel =3D &connector->panel;
> > >     struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > >     struct intel_dp *intel_dp =3D enc_to_intel_dp(connector->encoder)=
;
> > > +   struct hdr_output_metadata *hdr_metadata;
> > >     int ret;
> > >     u8 old_ctrl, ctrl;
> > >
> > > @@ -261,8 +329,10 @@ intel_dp_aux_hdr_enable_backlight(const struct
> > intel_crtc_state *crtc_state,
> > >     }
> > >
> > >     ctrl =3D old_ctrl;
> > > -   if (panel->backlight.edp.intel.sdr_uses_aux) {
> > > +   if (intel_dp_in_hdr_mode(conn_state) ||
> > > +       panel->backlight.edp.intel.sdr_uses_aux) {
> > >             ctrl |=3D INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
> > > +
> > >             intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
> > >     } else {
> > >             u32 pwm_level =3D intel_backlight_level_to_pwm(connector,
> > level); @@
> > > -272,10 +342,17 @@ intel_dp_aux_hdr_enable_backlight(const struct
> > intel_crtc_state *crtc_state,
> > >             ctrl &=3D ~INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
> > >     }
> > >
> > > +   intel_dp_aux_fill_hdr_tcon_params(conn_state, &ctrl);
> > > +
> > >     if (ctrl !=3D old_ctrl &&
> > >         drm_dp_dpcd_writeb(&intel_dp->aux,
> > INTEL_EDP_HDR_GETSET_CTRL_PARAMS, ctrl) !=3D 1)
> > >             drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to
> > configure DPCD brightness controls\n",
> > >                     connector->base.base.id, connector->base.name);
> >
> > Unrelated to the changes here, but why is crtl based on the old value?
> > There is nothing else that sets it so the state is always entirely dete=
rmined
> > here.
> >
>
> We read the getset_param register and set oldctrl and ctrl. Then ctrl is =
changed based on
> State and other params. In case ctrl and old ctrl still end up being the =
same value that means
> No change in DPCD register is required as of now so let's not waste a AUX=
 write operation on that
>
> Regards,
> Suraj Kandpal
> > > +
> > > +   if (intel_dp_in_hdr_mode(conn_state)) {
> > > +           hdr_metadata =3D conn_state->hdr_output_metadata->data;
> > > +           intel_dp_aux_write_content_luminance(connector,
> > hdr_metadata);
> > > +   }
> > >  }
> > >
> > >  static void
> > > @@ -332,7 +409,6 @@ intel_dp_aux_hdr_setup_backlight(struct
> > intel_connector *connector, enum pipe pi
> > >                 connector->base.base.id, connector->base.name,
> > >                 panel->backlight.min, panel->backlight.max);
> > >
> > > -
> > >     panel->backlight.level =3D intel_dp_aux_hdr_get_backlight(connect=
or,
> > pipe);
> > >     panel->backlight.enabled =3D panel->backlight.level !=3D 0;
> > >
>

