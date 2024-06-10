Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F97590265E
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:13:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06A2B10E1F8;
	Mon, 10 Jun 2024 16:13:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="C5a4mzS7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25B0610E1F8
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 16:13:26 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id
 4fb4d7f45d1cf-5751bcb3139so7172a12.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 09:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1718036004; x=1718640804;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IHrTUon4UB+z5jTaR6PI30Mzqfji7UXu2V4YDVpmxWQ=;
 b=C5a4mzS7Q+m6EmBVbapi6/bHQFuX4/yE6NcNSPeu5fELL3eWusuaC5xcsovGthI2mc
 jCSzEqrL2f0ftms55Cw1K45ne3wY/gebBeOwf96oNC+6acjN0mA7z76zNjI+20aNSYhI
 CH988vYRVwXXYJIRCbuiKVnlmajf2LzHevM8Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718036004; x=1718640804;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=IHrTUon4UB+z5jTaR6PI30Mzqfji7UXu2V4YDVpmxWQ=;
 b=u6fwzs8URT2nX1AvClkDtoM5/AmsdZNBsMlc8wSsOv81i7yt9dsZgSMJXD2dcnc+Gs
 SuRg9NOxJndQ6SjDBodC02XY3vjmiyFLwyH5Wo/2+of8oYO0mq9fFaygdLnYhK61JDyP
 9NKJJx3dZVGsYlAZ61KQhw7XUhu5r/9kTm+5Ltsp7gpBXUwDRmHXAQ6AeHP4eCvP9B0c
 gaVwlXOO5PkssBBZeryDMylgapp7dS+azFAsw+E54jB+uNheoZ5c05uOYqKe9vkEFzux
 9bLPFIIhAarwj+3zQKqs01jsZE7REoQZ+MBp5gEWM8IXFpAPqkisr/yMXHlbPnMgROxi
 BUNA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUdb7JywIS1pDWpVQkSs+f3Flwv6PJTKaF/AvJHZvFuH3RCShQa7b4f82M6Pnxq9b8JDYn0OfXo6lRgeHqOrdf97e3PN7O0Nc09fGFylBut
X-Gm-Message-State: AOJu0Yz/FV2gJkK8U1a12Z71D6Pts9lfblYjAZQGILmfxc4uZVN21JwK
 0G/sco6axzJObqwg8AfcGFBd0d5I619a2f5WUSW6dcJCH8Dzw9+bUQ5TZY8YItQMk3mRpB44AP6
 XARz6O2v612JEPvTy2P8dF7VO/4hg/C+iNYh0
X-Google-Smtp-Source: AGHT+IFAGtcIW+PVYTYY6nDMBc8MvKb1wKeEmsF0bcBxfw7dIN5Uo6d1UszHacv0yxO6uqfO3kbfCyjHMtr/rBhZVSU=
X-Received: by 2002:a50:9eef:0:b0:578:56e1:7ba3 with SMTP id
 4fb4d7f45d1cf-57c509a5fb8mr5807982a12.38.1718036004162; Mon, 10 Jun 2024
 09:13:24 -0700 (PDT)
MIME-Version: 1.0
References: <20240520185822.3725844-1-imre.deak@intel.com>
 <20240520185822.3725844-4-imre.deak@intel.com>
 <Zk44ChJS3IqC8pcj@intel.com>
In-Reply-To: <Zk44ChJS3IqC8pcj@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Mon, 10 Jun 2024 09:13:13 -0700
Message-ID: <CAE72mN=URSeWMtnuoQp9HCJVBTCpxu3mHGpkYzgg-_odTmfOLA@mail.gmail.com>
Subject: Re: [PATCH v2 03/21] drm/i915/dp: Move link train fallback to
 intel_dp_link_training.c
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
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

Looks good to me,

Reviewed-by: Manasi Navare <navaremanasi@chromium.org>

Manasi

On Wed, May 22, 2024 at 11:23=E2=80=AFAM Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Mon, May 20, 2024 at 09:58:01PM +0300, Imre Deak wrote:
> > Move the functions used to reduce the link parameters during link
> > training to intel_dp_link_training.c .
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 76 +------------------
> >  drivers/gpu/drm/i915/display/intel_dp.h       |  4 +-
> >  .../drm/i915/display/intel_dp_link_training.c | 73 ++++++++++++++++++
> >  3 files changed, 77 insertions(+), 76 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/=
i915/display/intel_dp.c
> > index ceedd3ef41946..81e620dd33bb7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -329,7 +329,7 @@ static int intel_dp_common_len_rate_limit(const str=
uct intel_dp *intel_dp,
> >                                      intel_dp->num_common_rates, max_ra=
te);
> >  }
> >
> > -static int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
> > +int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
> >  {
> >       if (drm_WARN_ON(&dp_to_i915(intel_dp)->drm,
> >                       index < 0 || index >=3D intel_dp->num_common_rate=
s))
> > @@ -604,7 +604,7 @@ static int intersect_rates(const int *source_rates,=
 int source_len,
> >  }
> >
> >  /* return index of rate in rates array, or -1 if not found */
> > -static int intel_dp_rate_index(const int *rates, int len, int rate)
> > +int intel_dp_rate_index(const int *rates, int len, int rate)
> >  {
> >       int i;
> >
> > @@ -654,78 +654,6 @@ static bool intel_dp_link_params_valid(struct inte=
l_dp *intel_dp, int link_rate,
> >       return true;
> >  }
> >
> > -static bool intel_dp_can_link_train_fallback_for_edp(struct intel_dp *=
intel_dp,
> > -                                                  int link_rate,
> > -                                                  u8 lane_count)
> > -{
> > -     /* FIXME figure out what we actually want here */
> > -     const struct drm_display_mode *fixed_mode =3D
> > -             intel_panel_preferred_fixed_mode(intel_dp->attached_conne=
ctor);
> > -     int mode_rate, max_rate;
> > -
> > -     mode_rate =3D intel_dp_link_required(fixed_mode->clock, 18);
> > -     max_rate =3D intel_dp_max_link_data_rate(intel_dp, link_rate, lan=
e_count);
> > -     if (mode_rate > max_rate)
> > -             return false;
> > -
> > -     return true;
> > -}
> > -
> > -int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> > -                                         int link_rate, u8 lane_count)
> > -{
> > -     struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > -     int index;
> > -
> > -     /*
> > -      * TODO: Enable fallback on MST links once MST link compute can h=
andle
> > -      * the fallback params.
> > -      */
> > -     if (intel_dp->is_mst) {
> > -             drm_err(&i915->drm, "Link Training Unsuccessful\n");
> > -             return -1;
> > -     }
> > -
> > -     if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
> > -             drm_dbg_kms(&i915->drm,
> > -                         "Retrying Link training for eDP with max para=
meters\n");
> > -             intel_dp->use_max_params =3D true;
> > -             return 0;
> > -     }
> > -
> > -     index =3D intel_dp_rate_index(intel_dp->common_rates,
> > -                                 intel_dp->num_common_rates,
> > -                                 link_rate);
> > -     if (index > 0) {
> > -             if (intel_dp_is_edp(intel_dp) &&
> > -                 !intel_dp_can_link_train_fallback_for_edp(intel_dp,
> > -                                                           intel_dp_co=
mmon_rate(intel_dp, index - 1),
> > -                                                           lane_count)=
) {
> > -                     drm_dbg_kms(&i915->drm,
> > -                                 "Retrying Link training for eDP with =
same parameters\n");
> > -                     return 0;
> > -             }
> > -             intel_dp->link.max_rate =3D intel_dp_common_rate(intel_dp=
, index - 1);
> > -             intel_dp->link.max_lane_count =3D lane_count;
> > -     } else if (lane_count > 1) {
> > -             if (intel_dp_is_edp(intel_dp) &&
> > -                 !intel_dp_can_link_train_fallback_for_edp(intel_dp,
> > -                                                           intel_dp_ma=
x_common_rate(intel_dp),
> > -                                                           lane_count =
>> 1)) {
> > -                     drm_dbg_kms(&i915->drm,
> > -                                 "Retrying Link training for eDP with =
same parameters\n");
> > -                     return 0;
> > -             }
> > -             intel_dp->link.max_rate =3D intel_dp_max_common_rate(inte=
l_dp);
> > -             intel_dp->link.max_lane_count =3D lane_count >> 1;
> > -     } else {
> > -             drm_err(&i915->drm, "Link Training Unsuccessful\n");
> > -             return -1;
> > -     }
> > -
> > -     return 0;
> > -}
> > -
> >  u32 intel_dp_mode_to_fec_clock(u32 mode_clock)
> >  {
> >       return div_u64(mul_u32_u32(mode_clock, DP_DSC_FEC_OVERHEAD_FACTOR=
),
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/=
i915/display/intel_dp.h
> > index aad2223df2a35..e7b47e7bcd98b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -55,8 +55,6 @@ void intel_dp_connector_sync_state(struct intel_conne=
ctor *connector,
> >                                  const struct intel_crtc_state *crtc_st=
ate);
> >  void intel_dp_set_link_params(struct intel_dp *intel_dp,
> >                             int link_rate, int lane_count);
> > -int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> > -                                         int link_rate, u8 lane_count)=
;
> >  int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
> >                             struct drm_modeset_acquire_ctx *ctx,
> >                             u8 *pipe_mask);
> > @@ -107,6 +105,8 @@ int intel_dp_config_required_rate(const struct inte=
l_crtc_state *crtc_state);
> >  int intel_dp_rate_select(struct intel_dp *intel_dp, int rate);
> >  int intel_dp_max_common_rate(struct intel_dp *intel_dp);
> >  int intel_dp_max_common_lane_count(struct intel_dp *intel_dp);
> > +int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
> > +int intel_dp_rate_index(const int *rates, int len, int rate);
> >  void intel_dp_update_sink_caps(struct intel_dp *intel_dp);
> >
> >  void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/dr=
ivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 947575140059d..4db293f256896 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -25,6 +25,7 @@
> >  #include "intel_display_types.h"
> >  #include "intel_dp.h"
> >  #include "intel_dp_link_training.h"
> > +#include "intel_panel.h"
> >
> >  #define LT_MSG_PREFIX                        "[CONNECTOR:%d:%s][ENCODE=
R:%d:%s][%s] "
> >  #define LT_MSG_ARGS(_intel_dp, _dp_phy)      (_intel_dp)->attached_con=
nector->base.base.id, \
> > @@ -1091,6 +1092,78 @@ intel_dp_link_train_phy(struct intel_dp *intel_d=
p,
> >       return ret;
> >  }
> >
> > +static bool intel_dp_can_link_train_fallback_for_edp(struct intel_dp *=
intel_dp,
> > +                                                  int link_rate,
> > +                                                  u8 lane_count)
> > +{
> > +     /* FIXME figure out what we actually want here */
> > +     const struct drm_display_mode *fixed_mode =3D
> > +             intel_panel_preferred_fixed_mode(intel_dp->attached_conne=
ctor);
> > +     int mode_rate, max_rate;
> > +
> > +     mode_rate =3D intel_dp_link_required(fixed_mode->clock, 18);
> > +     max_rate =3D intel_dp_max_link_data_rate(intel_dp, link_rate, lan=
e_count);
> > +     if (mode_rate > max_rate)
> > +             return false;
> > +
> > +     return true;
> > +}
> > +
> > +static int intel_dp_get_link_train_fallback_values(struct intel_dp *in=
tel_dp,
> > +                                                int link_rate, u8 lane=
_count)
> > +{
> > +     struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > +     int index;
> > +
> > +     /*
> > +      * TODO: Enable fallback on MST links once MST link compute can h=
andle
> > +      * the fallback params.
> > +      */
> > +     if (intel_dp->is_mst) {
> > +             drm_err(&i915->drm, "Link Training Unsuccessful\n");
> > +             return -1;
> > +     }
> > +
> > +     if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
> > +             drm_dbg_kms(&i915->drm,
> > +                         "Retrying Link training for eDP with max para=
meters\n");
> > +             intel_dp->use_max_params =3D true;
> > +             return 0;
> > +     }
> > +
> > +     index =3D intel_dp_rate_index(intel_dp->common_rates,
> > +                                 intel_dp->num_common_rates,
> > +                                 link_rate);
> > +     if (index > 0) {
> > +             if (intel_dp_is_edp(intel_dp) &&
> > +                 !intel_dp_can_link_train_fallback_for_edp(intel_dp,
> > +                                                           intel_dp_co=
mmon_rate(intel_dp, index - 1),
> > +                                                           lane_count)=
) {
> > +                     drm_dbg_kms(&i915->drm,
> > +                                 "Retrying Link training for eDP with =
same parameters\n");
> > +                     return 0;
> > +             }
> > +             intel_dp->link.max_rate =3D intel_dp_common_rate(intel_dp=
, index - 1);
> > +             intel_dp->link.max_lane_count =3D lane_count;
> > +     } else if (lane_count > 1) {
> > +             if (intel_dp_is_edp(intel_dp) &&
> > +                 !intel_dp_can_link_train_fallback_for_edp(intel_dp,
> > +                                                           intel_dp_ma=
x_common_rate(intel_dp),
> > +                                                           lane_count =
>> 1)) {
> > +                     drm_dbg_kms(&i915->drm,
> > +                                 "Retrying Link training for eDP with =
same parameters\n");
> > +                     return 0;
> > +             }
> > +             intel_dp->link.max_rate =3D intel_dp_max_common_rate(inte=
l_dp);
> > +             intel_dp->link.max_lane_count =3D lane_count >> 1;
> > +     } else {
> > +             drm_err(&i915->drm, "Link Training Unsuccessful\n");
> > +             return -1;
> > +     }
> > +
> > +     return 0;
> > +}
> > +
> >  static void intel_dp_schedule_fallback_link_training(struct intel_dp *=
intel_dp,
> >                                                    const struct intel_c=
rtc_state *crtc_state)
> >  {
> > --
> > 2.43.3
>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
