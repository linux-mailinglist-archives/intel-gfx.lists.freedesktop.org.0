Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5A14400AF
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 18:55:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BC136E156;
	Fri, 29 Oct 2021 16:55:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com
 [IPv6:2607:f8b0:4864:20::834])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29FAC6E156
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 16:55:09 +0000 (UTC)
Received: by mail-qt1-x834.google.com with SMTP id 19so8102307qtt.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 09:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=joflpicBAB7x7HEkual3/B/zNzrhu9XST9+ZQZ8Ga8k=;
 b=Gpi4+M03rFOWKBXDKA833xXYWg8iXiuc8DiADHionYUuE1rRmH1RpWGHYCy1lQV0z2
 zx+mtk5DlHYIxvomXny+VIh394MRzDj7ZZ6noiPOyrC8vdiAX75z3lxsv9574v2B53HO
 VSpj4WB3ZbWZB0PDz2wJWy4L6U54KaXT+GOaanNmiV+A5SajGv76SUL0RjEUKourYxhW
 RIHgH06P632nXPNiQ8NT0LOFveTgiYdL2YbvODwi6I1bhwRbpjr2lqFL4UA87rQ/yB/L
 4H+2BMz8P2YPGoxxqQFaeote08GJp0ZWi2o/KvfeCCwq07bPhiObSJvun5LC8adPhdl5
 Pqqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=joflpicBAB7x7HEkual3/B/zNzrhu9XST9+ZQZ8Ga8k=;
 b=8Jby94h83ynDGxsc0YpuUtsrgWfz9eSjt2gLvfBxnTL6hMPIzXpQ52rICsZDoWPZjP
 4maEyCYokAk/7bO7pOnci5gZKd40sXQ6X6yeGw1v+BpkOFLQ4D565pgAyiJDNVBLk9pw
 pwoBYBtqaNqzUlJS6+CFjmdsdtTLVNS4nShKb9/Zr3CLZTp3gAFvf/HgcQ0EwfJfB8Pu
 qGafMFW/6Nk0Bl0zGrP2Vc6yc64rQV0F7ZNYg5uRW/tNoxDM2hfp8/BzhYHKfzZtaqeH
 xaLJkQAhslcEeYwIRuIoJ10L+PaLjPqVhg4IuzAFLuR8zDbd+xAzarXe3jXlIBVTfX+y
 8NcQ==
X-Gm-Message-State: AOAM5311VLd+DXI5aUac5onYySg9PH74t+JNJEeI9XO9Ouv9q94o4FG9
 slJrA75tiRo8FIP6qcxulpQPfYm5YOWL6PzPp68=
X-Google-Smtp-Source: ABdhPJwh5g3ZYsN6Mj77g+H2toNJJ5NGDJfquvkEyFaJcUjGgxa2mGDdjNfe87ep6qfOPxuiH20Hmw5sEEHHG8NEwas=
X-Received: by 2002:ac8:65c2:: with SMTP id t2mr12937442qto.156.1635526508268; 
 Fri, 29 Oct 2021 09:55:08 -0700 (PDT)
MIME-Version: 1.0
References: <20211026225105.2783797-1-imre.deak@intel.com>
 <20211026225105.2783797-5-imre.deak@intel.com>
In-Reply-To: <20211026225105.2783797-5-imre.deak@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 29 Oct 2021 17:54:41 +0100
Message-ID: <CAM0jSHMJutLab04876We-B6JxYaSxqC66o+dwr0mkSTLSQK_hw@mail.gmail.com>
To: Imre Deak <imre.deak@intel.com>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>, 
 Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>, 
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/adlp/fb: Fix remapping of
 linear CCS AUX surfaces
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

On Tue, 26 Oct 2021 at 23:51, Imre Deak <imre.deak@intel.com> wrote:
>
> During remapping CCS FBs the CCS AUX surface mapped size and offset->x,y
> coordinate calculations assumed a tiled layout. This works as long as
> the CCS surface height is aligned to 64 lines (ensuring a 4k bytes CCS
> surface tile layout).  However this alignment is not required by the HW
> (and the driver doesn't enforces it either).
>
> Add the remapping logic required to remap the pages of CCS surfaces
> without the above alignment, assuming the natural linear layout of the
> CCS surface (vs. tiled main surface layout).
>
> Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Fixes: 3d1adc3d64cf ("drm/i915/adlp: Add support for remapping CCS FBs")
> Signed-off-by: Imre Deak <imre.deak@intel.com>

<snip>

> diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915=
/i915_vma_types.h
> index 80e93bf00f2e5..4ee6e54799f48 100644
> --- a/drivers/gpu/drm/i915/i915_vma_types.h
> +++ b/drivers/gpu/drm/i915/i915_vma_types.h
> @@ -97,11 +97,20 @@ enum i915_cache_level;
>
>  struct intel_remapped_plane_info {
>         /* in gtt pages */
> -       u32 offset;
> -       u16 width;
> -       u16 height;
> -       u16 src_stride;
> -       u16 dst_stride;
> +       u32 offset:31;
> +       u32 linear:1;
> +       union {
> +               /* in gtt pages for !linear */
> +               struct {
> +                       u16 width;
> +                       u16 height;
> +                       u16 src_stride;
> +                       u16 dst_stride;
> +               };
> +
> +               /* in gtt pages for linear */
> +               u32 size;
> +       };

Looks OK to me. Only concern is whether packed bitfields might give
different results, depending on the compiler or something. If you look
at the craziness in assert_i915_gem_gtt_types for example, it's very
particular about the size/layout.

>  } __packed;
>
>  struct intel_remapped_info {
> --
> 2.27.0
>
