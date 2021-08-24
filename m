Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EB03F58DE
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Aug 2021 09:21:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4E2589B69;
	Tue, 24 Aug 2021 07:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com
 [IPv6:2607:f8b0:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E744789B69
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Aug 2021 07:21:46 +0000 (UTC)
Received: by mail-ot1-x334.google.com with SMTP id
 x10-20020a056830408a00b004f26cead745so43467104ott.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Aug 2021 00:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=t//xyFFqUAKYAO4PmiCW5X+vQuhQaffyQQS3rvsI1Ww=;
 b=LQLAYjMebugxPQDNaW562ib3IsstnnfhSuIvPOZ7GlY3796R+vRRKX32Hwl51xM/Er
 zBze4pvkzY+TpmXB9oE7d05xBvg7x9RLvMPFD91UsNTOvCy7kvzIsQSV3UQi9erEtHk7
 fntTosUU6du72km9vRkdn3vvIzsLNoZqRKLlQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=t//xyFFqUAKYAO4PmiCW5X+vQuhQaffyQQS3rvsI1Ww=;
 b=dZRvKwWpfIZubXvGH3VOr/bivO1J83PPDU39FwCVjZb2EPbw+bQJ4s3Ejp89fpeIwV
 5e0xbW5lFt2Y5xT3J3EC3gAFAyNIVK5SPxCJAVMyqGr2Pr5CSQ2F8n+DerNtQ6/vay4f
 7iXE5WxRi0vcFSrPCDwTO7fMmJTjoLMJlfvAbMwkWjlH2fpib3Zz0gQuK+JwFLp6DcUo
 1s8n9wQgLo8hUXvyy9NOdjSe66hpuZeK6qCcMZio5YLL8/EJq1ksPrqdEiTJXCmMtmSd
 gjkLriKXLzc3woZM/ZGutYuRqRyKj4oa7XgadKbHjkd72ZpuP4fRgKxd0fGZHCEKgXMk
 hykQ==
X-Gm-Message-State: AOAM531fY8gyNSSa8k7dRJ1dvNw9RvvSkQf5Xep/dLj2+NwzqPzYN4ki
 RivjT6hhQMPMCyaAZQNWDxcMmphtDF1xuZs9jBE1vg==
X-Google-Smtp-Source: ABdhPJw/Gb3J586RgcAAHrYyVy1fqVsg5QylF7yWSEUGEfHtM1j9+cTy+OvmJXk1O90bmZIOfKpfS9Gq3Z7Kr8SR8KE=
X-Received: by 2002:a05:6808:2116:: with SMTP id
 r22mr1849565oiw.128.1629789706113; 
 Tue, 24 Aug 2021 00:21:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210818004216.220279-1-jose.souza@intel.com>
 <20210818004216.220279-8-jose.souza@intel.com>
In-Reply-To: <20210818004216.220279-8-jose.souza@intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 24 Aug 2021 09:21:35 +0200
Message-ID: <CAKMK7uF7Py_Mu-fUG+b-xXUFidEUncEgjCR+D8MJG9+deaurcw@mail.gmail.com>
To: =?UTF-8?Q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, 
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>, 
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/display/skl+: Drop frontbuffer
 rendering support
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

On Wed, Aug 18, 2021 at 2:37 AM Jos=C3=A9 Roberto de Souza
<jose.souza@intel.com> wrote:
>
> By now all the userspace applications should have migrated to atomic
> or at least be calling DRM_IOCTL_MODE_DIRTYFB.
>
> With that we can kill frontbuffer rendering support in i915 for
> modern platforms.
>
> So here converting legacy APIs into atomic commits so it can be
> properly handled by driver i915.
>
> Several IGT tests will fail with this changes, because some tests
> were stressing those frontbuffer rendering scenarios that no userspace
> should be using by now, fixes to IGT should be sent soon.
>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>

Patch looks good in overall direction, but there's more
intel_frontbuffer.c functions to disable, none of the tracking of the
tracking bits should ever be set, maybe even throw some WARN_ON in the
code.
-Daniel

> ---
>  drivers/gpu/drm/i915/display/intel_cursor.c      | 6 ++----
>  drivers/gpu/drm/i915/display/intel_display.c     | 7 ++++++-
>  drivers/gpu/drm/i915/display/intel_frontbuffer.c | 6 ++++++
>  drivers/gpu/drm/i915/i915_drv.h                  | 2 ++
>  4 files changed, 16 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/dr=
m/i915/display/intel_cursor.c
> index c7618fef01439..5aa996c3b7980 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -617,6 +617,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>                            u32 src_w, u32 src_h,
>                            struct drm_modeset_acquire_ctx *ctx)
>  {
> +       struct drm_i915_private *i915 =3D to_i915(_crtc->dev);
>         struct intel_plane *plane =3D to_intel_plane(_plane);
>         struct intel_crtc *crtc =3D to_intel_crtc(_crtc);
>         struct intel_plane_state *old_plane_state =3D
> @@ -633,12 +634,9 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>          * PSR2 selective fetch also requires the slow path as
>          * PSR2 plane and transcoder registers can only be updated during
>          * vblank.
> -        *
> -        * FIXME bigjoiner fastpath would be good
>          */
>         if (!crtc_state->hw.active || intel_crtc_needs_modeset(crtc_state=
) ||
> -           crtc_state->update_pipe || crtc_state->bigjoiner ||
> -           crtc_state->enable_psr2_sel_fetch)
> +           crtc_state->update_pipe || !HAS_FRONTBUFFER_RENDERING(i915))
>                 goto slow;
>
>         /*
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index e55c9e2cb254a..f700544454ad5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -11744,10 +11744,15 @@ static int intel_user_framebuffer_dirty(struct =
drm_framebuffer *fb,
>                                         unsigned num_clips)
>  {
>         struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
> +       struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
>
>         i915_gem_object_flush_if_display(obj);
> -       intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB)=
;
>
> +       if (!HAS_FRONTBUFFER_RENDERING(i915))
> +               return drm_atomic_helper_dirtyfb(fb, file, flags, color, =
clips,
> +                                                num_clips);
> +
> +       intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB)=
;
>         return 0;
>  }
>
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/g=
pu/drm/i915/display/intel_frontbuffer.c
> index e4834d84ce5e3..6be2f767a203c 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -91,6 +91,9 @@ static void frontbuffer_flush(struct drm_i915_private *=
i915,
>
>         trace_intel_frontbuffer_flush(frontbuffer_bits, origin);
>
> +       if (!HAS_FRONTBUFFER_RENDERING(i915))
> +               return;
> +
>         might_sleep();
>         intel_edp_drrs_flush(i915, frontbuffer_bits);
>         intel_psr_flush(i915, frontbuffer_bits, origin);
> @@ -179,6 +182,9 @@ void __intel_fb_invalidate(struct intel_frontbuffer *=
front,
>
>         trace_intel_frontbuffer_invalidate(frontbuffer_bits, origin);
>
> +       if (!HAS_FRONTBUFFER_RENDERING(i915))
> +               return;
> +
>         might_sleep();
>         intel_psr_invalidate(i915, frontbuffer_bits, origin);
>         intel_edp_drrs_invalidate(i915, frontbuffer_bits);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 1ea27c4e94a6d..fe1dc8b7871a0 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1719,6 +1719,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>
>  #define HAS_VRR(i915)  (GRAPHICS_VER(i915) >=3D 12)
>
> +#define HAS_FRONTBUFFER_RENDERING(i915)        (GRAPHICS_VER(i915) < 9)
> +
>  /* Only valid when HAS_DISPLAY() is true */
>  #define INTEL_DISPLAY_ENABLED(dev_priv) \
>         (drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_pri=
v)->params.disable_display)
> --
> 2.32.0
>


--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
