Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF4652EB16
	for <lists+intel-gfx@lfdr.de>; Fri, 20 May 2022 13:46:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F95110FA03;
	Fri, 20 May 2022 11:46:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com
 [IPv6:2607:f8b0:4864:20::730])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C1EC10FA03
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 May 2022 11:46:05 +0000 (UTC)
Received: by mail-qk1-x730.google.com with SMTP id bs17so6735712qkb.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 May 2022 04:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=o8qV9BmOmMAtbp4jMhBfC/l41jRF/L79sUjfsyuOhxo=;
 b=mcmBzzF8dsQwldUC6vIfziHSrSW5lkmAdhNLP3u3YmEwT1jJaY+xq+YGNGA0TRhGbB
 uaAtjRPeMOACHuAFEkl+fBbdkse5PRfi6PO830pdMX6lTplqcAdVB1zLD5C4Vt5g9Q/Y
 8pljC6lX/VOBMHCK3RTH7Iiq1b3+ZcY3tWRs5oU6Q30ABOJZkgePjTCBkYjVFwHbYDL6
 7nEAq2gWAUQX0K3Pw1711AQISsOJRkx9jeZbAE+CC+dzTUVnix6TJYXSZ5bXhaByPnbx
 BCe1p8dQUe1r5OZlgU7OoSP8JbLJ/04TtIcSwhOQJ6ljrRyR9AzwDlksWdOX5ipScBKh
 LxwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=o8qV9BmOmMAtbp4jMhBfC/l41jRF/L79sUjfsyuOhxo=;
 b=1aK6q7muXidHAGRxX3IrC+kgvNFjL/28PCOlWgNrmWUHx7yK8941w6u1UeMNVnMPI7
 Y8wnb25yOSQSvqHS7fFA7Gr1vENiscAwimPMYn83Yw/g06U64l4KPN1rUzVorsdUUmqo
 G6T7QnAwDB30lIXwS0IibiqASVhDWfkmzIt9Jimpxr10uNf70jNDVwJ+xRNS+cv0MVIL
 2PmeGBFqtENuPRKBo6MECdAiMI4dQgvDYcnLXxSVACdK64s4acvW9NXcHCshzKKaltdW
 7RjefvPwIIqxysxik9Rjdv3L4QAFE9imGkm3Cs39uZIiskPwVEuoh3uuBEzWX9rf89ge
 e0gg==
X-Gm-Message-State: AOAM533cgn6VEJNJx3D5GODR6OL5SZF1M5nSMY9LFsetgmEgrQlXHl4B
 w7rczTAkN9uf7yHfjuf4DK6F00lG1xOg8ZYlWLE=
X-Google-Smtp-Source: ABdhPJxqgXggSyA9rumz9kbsU1dZh8VlJMbPfrGlmv5TbxB17cA7ZxviA5IWC7lKUWdNSganXIlIkTyXD1/d/CQGM9c=
X-Received: by 2002:a05:620a:f0d:b0:67e:1961:b061 with SMTP id
 v13-20020a05620a0f0d00b0067e1961b061mr5968663qkl.82.1653047164660; Fri, 20
 May 2022 04:46:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220506131109.20942-1-juhapekka.heikkila@gmail.com>
 <CAM0jSHN4v2c7jFPbP25duzPDjj5hGZtSqBAGhs5caht5PwR5mA@mail.gmail.com>
 <2a7e926b-eab7-c096-b4ae-b3d5c2d3bf85@gmail.com>
In-Reply-To: <2a7e926b-eab7-c096-b4ae-b3d5c2d3bf85@gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 20 May 2022 12:45:38 +0100
Message-ID: <CAM0jSHMUg5i3m1BzfK+tB5aR992HtjVgP+o97YPBk++K5a7ADg@mail.gmail.com>
To: =?UTF-8?Q?Juha=2DPekka_Heikkil=C3=A4?= <juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Add smem fallback
 allocation for dpt
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 20 May 2022 at 12:23, Juha-Pekka Heikkil=C3=A4
<juhapekka.heikkila@gmail.com> wrote:
>
>
>
> Matthew Auld kirjoitti 11.5.2022 klo 13.41:
> > On Fri, 6 May 2022 at 14:11, Juha-Pekka Heikkila
> > <juhapekka.heikkila@gmail.com> wrote:
> >>
> >> Add fallback smem allocation for dpt if stolen memory allocation faile=
d.
> >>
> >> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_dpt.c | 16 ++++++++++++----
> >>   1 file changed, 12 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/dr=
m/i915/display/intel_dpt.c
> >> index fb0e7e79e0cd..10008699656e 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> >> @@ -10,6 +10,7 @@
> >>   #include "intel_display_types.h"
> >>   #include "intel_dpt.h"
> >>   #include "intel_fb.h"
> >> +#include "gem/i915_gem_internal.h"
> >
> > Nit: Keep these ordered.
> >
> >>
> >>   struct i915_dpt {
> >>          struct i915_address_space vm;
> >> @@ -128,6 +129,10 @@ struct i915_vma *intel_dpt_pin(struct i915_addres=
s_space *vm)
> >>          void __iomem *iomem;
> >>          struct i915_gem_ww_ctx ww;
> >>          int err;
> >> +       u64 pin_flags =3D 0;
> >
> > Nit: Christmas tree-ish. Move this above the err.
> >
> >> +
> >> +       if (!i915_gem_object_is_lmem(dpt->obj))
> >> +               pin_flags |=3D PIN_MAPPABLE;
> >
> > If we do this then we don't need the second patch ;)
> >
> > I guess the second patch was meant to make this is_stolen? Maybe just
> > move the second patch to be the first in the series?
> >
>
> Hi Matthew, thanks for the comments. I think I'm still missing some
> essential part. Without marking PIN_MAPPABLE when !lmem I was hitting
> WARN_ON() in gem code when doing this pinning.

What was the WARN_ON? Got a paste?
