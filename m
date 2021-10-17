Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D08430CF5
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 01:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3689D6E843;
	Sun, 17 Oct 2021 23:58:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 299176E843
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 Oct 2021 23:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634515120;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OS2ZZKauVXSadqX1o7ZMVg6q9XRB65NOcG7iDPu/evI=;
 b=Cq8MohwKP49Lm48FDI19h0Lba1aFuqJcbh23O3a61azSwJG5L6WJ/AkLQdpZmWyxng3pLN
 ZZZi9nyIc4LQeXP+j4Ddzcwtd2VSHkoZkgCQro5IS4/b93YKLEt1YXGVsh8IvEyCe1GQ9J
 GddmAlSZjUCcEmiOnBlE/HyYAXCtoxU=
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com
 [209.85.210.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-356-eZfjHtQXMFaP9JDSTlYfBw-1; Sun, 17 Oct 2021 19:58:39 -0400
X-MC-Unique: eZfjHtQXMFaP9JDSTlYfBw-1
Received: by mail-ot1-f71.google.com with SMTP id
 c19-20020a056830001300b00546faa88f0cso9703275otp.13
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 Oct 2021 16:58:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=OS2ZZKauVXSadqX1o7ZMVg6q9XRB65NOcG7iDPu/evI=;
 b=WOGV60T4sOfbD61DZtRwzbXUWlLQlNFHAy696buc/Sh0Bj733h4DCsw4j1j7o0AnzD
 bmhdvOb4oT7lcoGSOXZY13+ADfcNA8UX+CXTkuyA58lMiueGAaVgFYY1627n8kVZda/r
 AeB2lZibba38OHKDLwfEgRNymT7yhfVZePPsWf7/1yzi/LXXSnTZOG6WIkcS9lYTOKVf
 vLAvK+s6GAj7Wu6EoayqBkuKJGWQo5ELBAj9ZJcYqFgEDPp8+j1oWS+I+4DUP1Ic6HTZ
 KCt3+2huY2ZuJWx4I6LQwn/Prk12zwSezzF7X+zWqeQohg/mzmUpsxKeGsijQbcbBHRe
 xB0A==
X-Gm-Message-State: AOAM530a3FVBiJIkWOavMe9wp9ATWMkzAGsOU3vlU8K/izEjBDvBRMEc
 VmerWta9jFkZB5M5SHr2mtrHqe0HRvyPp9EGhGt5QehaAUZlciMXMIIIhOnmzR4LbFawcym2glr
 H10WgZTcH8iMndUkWJUGRMJTW/S837XqMOkgKcAaqO2Fl
X-Received: by 2002:a05:6808:14d6:: with SMTP id
 f22mr2857161oiw.152.1634515118076; 
 Sun, 17 Oct 2021 16:58:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyFWifyP47NljMa4uf5N0ilcXqG3EWW5mnL8I7C5qXonO19v1NnsWZBpzE7YFlCkvRb15HTjI2E8EBIiKrBzFA=
X-Received: by 2002:a05:6808:14d6:: with SMTP id
 f22mr2857152oiw.152.1634515117879; 
 Sun, 17 Oct 2021 16:58:37 -0700 (PDT)
MIME-Version: 1.0
References: <20211015071625.593-1-ville.syrjala@linux.intel.com>
 <20211015071625.593-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20211015071625.593-4-ville.syrjala@linux.intel.com>
From: David Airlie <airlied@redhat.com>
Date: Mon, 18 Oct 2021 09:58:26 +1000
Message-ID: <CAMwc25q=ww8y3yeE-dnDDjFJS3Z1mXJs9F7DGtE6YKytkJHHxQ@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: "Development, Intel" <intel-gfx@lists.freedesktop.org>,
 Jani Nikula <jani.nikula@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915: Clean up the {ilk,
 lpt}_pch_enable() calling convention
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

On Fri, Oct 15, 2021 at 5:16 PM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use the clean "atomic_state+crtc" approach of passing
> arguments to the top level PCH modeset code.
>
> And while at it we can also just pass the whole crtc to
> ilk_disable_pch_transcoder().

Some minor whitespace:

> +               intel_atomic_get_new_crtc_state(state,  crtc);

There are a few of these with two spaces after the ,

with those fixed up.

Reviewed-by: Dave Airlie <airlied@redhat.com>
>
> Cc: Dave Airlie <airlied@redhat.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crt.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  4 ++--
>  .../gpu/drm/i915/display/intel_pch_display.c  | 23 +++++++++++--------
>  .../gpu/drm/i915/display/intel_pch_display.h  | 12 +++++-----
>  4 files changed, 22 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index 54540138bd1d..4038ae342ea1 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -318,7 +318,7 @@ static void hsw_enable_crt(struct intel_atomic_state =
*state,
>
>         intel_enable_transcoder(crtc_state);
>
> -       lpt_pch_enable(crtc_state);
> +       lpt_pch_enable(state, crtc);
>
>         intel_crtc_vblank_on(crtc_state);
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 69549886fe5b..2ee02c16bd1c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2020,7 +2020,7 @@ static void ilk_crtc_enable(struct intel_atomic_sta=
te *state,
>         intel_enable_transcoder(new_crtc_state);
>
>         if (new_crtc_state->has_pch_encoder)
> -               ilk_pch_enable(state, new_crtc_state);
> +               ilk_pch_enable(state, crtc);
>
>         intel_crtc_vblank_on(new_crtc_state);
>
> @@ -2299,7 +2299,7 @@ static void ilk_crtc_disable(struct intel_atomic_st=
ate *state,
>         intel_encoders_post_disable(state, crtc);
>
>         if (old_crtc_state->has_pch_encoder) {
> -               ilk_disable_pch_transcoder(dev_priv, pipe);
> +               ilk_disable_pch_transcoder(crtc);
>
>                 if (HAS_PCH_CPT(dev_priv)) {
>                         i915_reg_t reg;
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/g=
pu/drm/i915/display/intel_pch_display.c
> index 0056c2fe49ec..50995c4f2aaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -179,9 +179,10 @@ static void ilk_enable_pch_transcoder(const struct i=
ntel_crtc_state *crtc_state)
>                         pipe_name(pipe));
>  }
>
> -void ilk_disable_pch_transcoder(struct drm_i915_private *dev_priv,
> -                               enum pipe pipe)
> +void ilk_disable_pch_transcoder(struct intel_crtc *crtc)
>  {
> +       struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +       enum pipe pipe =3D crtc->pipe;
>         i915_reg_t reg;
>         u32 val;
>
> @@ -218,12 +219,12 @@ void ilk_disable_pch_transcoder(struct drm_i915_pri=
vate *dev_priv,
>   *   - DP transcoding bits
>   *   - transcoder
>   */
> -void ilk_pch_enable(const struct intel_atomic_state *state,
> -                   const struct intel_crtc_state *crtc_state)
> +void ilk_pch_enable(struct intel_atomic_state *state,
> +                   struct intel_crtc *crtc)
>  {
> -       struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -       struct drm_device *dev =3D crtc->base.dev;
> -       struct drm_i915_private *dev_priv =3D to_i915(dev);
> +       struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +       const struct intel_crtc_state *crtc_state =3D
> +               intel_atomic_get_new_crtc_state(state,  crtc);
>         enum pipe pipe =3D crtc->pipe;
>         u32 temp;
>
> @@ -289,7 +290,7 @@ void ilk_pch_enable(const struct intel_atomic_state *=
state,
>                         temp |=3D TRANS_DP_VSYNC_ACTIVE_HIGH;
>
>                 port =3D intel_get_crtc_new_encoder(state, crtc_state)->p=
ort;
> -               drm_WARN_ON(dev, port < PORT_B || port > PORT_D);
> +               drm_WARN_ON(&dev_priv->drm, port < PORT_B || port > PORT_=
D);
>                 temp |=3D TRANS_DP_PORT_SEL(port);
>
>                 intel_de_write(dev_priv, reg, temp);
> @@ -348,10 +349,12 @@ void lpt_disable_pch_transcoder(struct drm_i915_pri=
vate *dev_priv)
>         intel_de_write(dev_priv, TRANS_CHICKEN2(PIPE_A), val);
>  }
>
> -void lpt_pch_enable(const struct intel_crtc_state *crtc_state)
> +void lpt_pch_enable(struct intel_atomic_state *state,
> +                   struct intel_crtc *crtc)
>  {
> -       struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>         struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +       const struct intel_crtc_state *crtc_state =3D
> +               intel_atomic_get_new_crtc_state(state,  crtc);
>         enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>
>         assert_pch_transcoder_disabled(dev_priv, PIPE_A);
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.h b/drivers/g=
pu/drm/i915/display/intel_pch_display.h
> index 6eba1fd667ea..7f9df2c13cf3 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.h
> @@ -6,17 +6,17 @@
>  #ifndef _INTEL_PCH_DISPLAY_H_
>  #define _INTEL_PCH_DISPLAY_H_
>
> -enum pipe;
>  struct drm_i915_private;
>  struct intel_atomic_state;
> +struct intel_crtc;
>  struct intel_crtc_state;
>
> -void ilk_disable_pch_transcoder(struct drm_i915_private *dev_priv,
> -                               enum pipe pipe);
> -void ilk_pch_enable(const struct intel_atomic_state *state,
> -                   const struct intel_crtc_state *crtc_state);
> +void ilk_disable_pch_transcoder(struct intel_crtc *crtc);
> +void ilk_pch_enable(struct intel_atomic_state *state,
> +                   struct intel_crtc *crtc);
>
>  void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv);
> -void lpt_pch_enable(const struct intel_crtc_state *crtc_state);
> +void lpt_pch_enable(struct intel_atomic_state *state,
> +                   struct intel_crtc *crtc);
>
>  #endif
> --
> 2.32.0
>

