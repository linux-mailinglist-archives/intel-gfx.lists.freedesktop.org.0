Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CE44DA2A4
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 19:49:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B24DB89CB9;
	Tue, 15 Mar 2022 18:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc2d.google.com (mail-oo1-xc2d.google.com
 [IPv6:2607:f8b0:4864:20::c2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05AA989C9B;
 Tue, 15 Mar 2022 18:49:19 +0000 (UTC)
Received: by mail-oo1-xc2d.google.com with SMTP id
 s203-20020a4a3bd4000000b003191c2dcbe8so25446oos.9; 
 Tue, 15 Mar 2022 11:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=u6ABoHWUhBA9p1aT2jJKMlO3TZD/I48FdccngvJUa/U=;
 b=kNNvrpnW37jeGp/Duy9S/WQKjfL4j2NZaMRkVXf1pNKPldYgUhIwjcCK9zwsOX3GvY
 sksD5SkXtOIq9TbGSHhBpBUW2eLtDjsa2rgOlf0zZBFXpjIQL3FW57r2Kcme3q0Ni+x2
 gQThixQUHtgSYQGvFIwIFcoHZR6XTcgezuHQW1yo7oiOKcc8FCvD15sMRJ0XfIeoirEp
 bj75uf2gz94qWbs/39nLX5aUFuEjg71zjcgaijdz9gzpUpyv4KQMwNmRl1DidLWrAPIg
 OFWFjgyLJi3qiBPAeSJ4g5UM18oluyLJZKZlqFNK47mw2PqHOLcviu8UwBRrSmJuvGKt
 KFuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=u6ABoHWUhBA9p1aT2jJKMlO3TZD/I48FdccngvJUa/U=;
 b=oYuGBZhfITnvK9njGjsheGzbosm7vJniNoab5WBgddIP2d1pU4h707r8JN8M11YDML
 8BxTomLj+9xpRVWKDb2sBwjuw7XPoRifDZKz9Kqz25csy4iAXG36E9tCLQOCvlaeTUjF
 /5UxdjoqU0QOT4XjW+EwtnMO+fCdMMAIOgvKfBdHRjvUfMHJMpGicusoxmt2gYESshnX
 NkyePfDYHSKPL1+D8zWjNFPVOAvSZOx3INeM1Sp9cr1LQtKV3RB9IjIZJP6tKuI81FDf
 Ia/ZR6L8OweiIHO3o2WLIrxcAp5Y0U/0k+EuC1KiXMr8QsdM9OJ7OiNtXTuRLZAF07mp
 ckaA==
X-Gm-Message-State: AOAM530S/SI6b9n7Q1v9hEp2BAiv1IOaCRvevW3MKxmOKARijc3TyWX0
 V2Gk5ixM6s6tIvELcwUA4gr9JjsI87DxR2xYFME=
X-Google-Smtp-Source: ABdhPJz+58m6m7nisD0zYaxae9ecI8FZlNo42Hu6U45q5rMnVMKaMskszHvuKiWmeHriIROvPS1UDLJRSLXP/Alew+c=
X-Received: by 2002:a4a:db64:0:b0:2ea:37f4:d798 with SMTP id
 o4-20020a4adb64000000b002ea37f4d798mr11705761ood.23.1647370158307; Tue, 15
 Mar 2022 11:49:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220218100403.7028-1-ville.syrjala@linux.intel.com>
 <20220218100403.7028-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20220218100403.7028-6-ville.syrjala@linux.intel.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 15 Mar 2022 14:49:07 -0400
Message-ID: <CADnq5_P7-FsB4uLUdWhvrx3T_+2UYThnkTiPot0XXL6+fBhfCg@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 05/22] drm/radeon: Use drm_mode_copy()
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
Cc: Alex Deucher <alexander.deucher@amd.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Applied.  Thanks!

Alex

On Fri, Feb 18, 2022 at 5:04 AM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> struct drm_display_mode embeds a list head, so overwriting
> the full struct with another one will corrupt the list
> (if the destination mode is on a list). Use drm_mode_copy()
> instead which explicitly preserves the list head of
> the destination mode.
>
> Even if we know the destination mode is not on any list
> using drm_mode_copy() seems decent as it sets a good
> example. Bad examples of not using it might eventually
> get copied into code where preserving the list head
> actually matters.
>
> Obviously one case not covered here is when the mode
> itself is embedded in a larger structure and the whole
> structure is copied. But if we are careful when copying
> into modes embedded in structures I think we can be a
> little more reassured that bogus list heads haven't been
> propagated in.
>
> @is_mode_copy@
> @@
> drm_mode_copy(...)
> {
> ...
> }
>
> @depends on !is_mode_copy@
> struct drm_display_mode *mode;
> expression E, S;
> @@
> (
> - *mode =3D E
> + drm_mode_copy(mode, &E)
> |
> - memcpy(mode, E, S)
> + drm_mode_copy(mode, E)
> )
>
> @depends on !is_mode_copy@
> struct drm_display_mode mode;
> expression E;
> @@
> (
> - mode =3D E
> + drm_mode_copy(&mode, &E)
> |
> - memcpy(&mode, E, S)
> + drm_mode_copy(&mode, E)
> )
>
> @@
> struct drm_display_mode *mode;
> @@
> - &*mode
> + mode
>
> Cc: Alex Deucher <alexander.deucher@amd.com>
> Cc: amd-gfx@lists.freedesktop.org
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/radeon/radeon_connectors.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/radeon/radeon_connectors.c b/drivers/gpu/drm=
/radeon/radeon_connectors.c
> index a7925a8290b2..0cb1345c6ba4 100644
> --- a/drivers/gpu/drm/radeon/radeon_connectors.c
> +++ b/drivers/gpu/drm/radeon/radeon_connectors.c
> @@ -777,7 +777,7 @@ static void radeon_fixup_lvds_native_mode(struct drm_=
encoder *encoder,
>                 if (mode->type & DRM_MODE_TYPE_PREFERRED) {
>                         if (mode->hdisplay !=3D native_mode->hdisplay ||
>                             mode->vdisplay !=3D native_mode->vdisplay)
> -                               memcpy(native_mode, mode, sizeof(*mode));
> +                               drm_mode_copy(native_mode, mode);
>                 }
>         }
>
> @@ -786,7 +786,7 @@ static void radeon_fixup_lvds_native_mode(struct drm_=
encoder *encoder,
>                 list_for_each_entry_safe(mode, t, &connector->probed_mode=
s, head) {
>                         if (mode->hdisplay =3D=3D native_mode->hdisplay &=
&
>                             mode->vdisplay =3D=3D native_mode->vdisplay) =
{
> -                               *native_mode =3D *mode;
> +                               drm_mode_copy(native_mode, mode);
>                                 drm_mode_set_crtcinfo(native_mode, CRTC_I=
NTERLACE_HALVE_V);
>                                 DRM_DEBUG_KMS("Determined LVDS native mod=
e details from EDID\n");
>                                 break;
> --
> 2.34.1
>
