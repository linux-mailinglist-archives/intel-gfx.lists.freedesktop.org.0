Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2B089C93B
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 18:00:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A474112746;
	Mon,  8 Apr 2024 16:00:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="dIB0h2Zl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05CB8112744
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 16:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1712592024;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xzT0TmTCc3PocC0E+JBIML1F0GfPUfaU3FMisghLLDg=;
 b=dIB0h2ZlzMrT6vIZiu0DLXlghDp8pTF4ahjlnotnoXOqSZrJLM/F3DVjEmonDoRJzc+JFO
 73PTlZuvy6A2e9kHxC+ZXWqIJOrn5e2AR1CS18vx7u+fzdvfmxJ1U5t8sWk9M6Tz3lX2Lj
 FJMzKttsMktiDldmMD9uGcltd7RyHxw=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-376-D6R3dS39OvOoy-ExYmghnQ-1; Mon, 08 Apr 2024 12:00:20 -0400
X-MC-Unique: D6R3dS39OvOoy-ExYmghnQ-1
Received: by mail-ed1-f71.google.com with SMTP id
 4fb4d7f45d1cf-56e67c53f23so500535a12.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Apr 2024 09:00:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712592018; x=1713196818;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=xzT0TmTCc3PocC0E+JBIML1F0GfPUfaU3FMisghLLDg=;
 b=qaRQkjxLkPxdEhnxTh0IZ7YEXxrQMbaz2aDT+aRw47jsM+6ts5qicAGEmEHp5LwaPk
 9jFzWshPiYCgirvdM7Oy99CEsz0GDzIGqQJumCUgjP1aSsOqtlowa6oGQgkiSHiIw/1D
 lbjhEjK7Fx0AU40hJH8dimVOMR455yJc4c0ZgK+bTw592FM47nry04dcSTDaAeCGDkl1
 C9hcJL1x3ALgti9HeFEeBwnFGcfmrcvw2SM3biJtuWrxVxCNIGxhwHXzO3EfYUDS8j+b
 fs2+EeJ2E1uK24ktsBZg6zPxP2tEglK8JG1pYaBw9cMnXY9H+FekZsjAahRtNBANvGiM
 q/MA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWim9unEnbrBdZmKiGSQdquhnEp2VASrEg/6rnBRRVMGmYFrrKNgObE8PK8W4Izw+MIPBqezRSxAs9k2nXSZfQzKhMsjZO1mMmtsDneR95b
X-Gm-Message-State: AOJu0Yw1SbfD0L644sjKnSSgChnGXGghiVyTro/2PO4wXh5cI+C9AWKK
 dXmesLoZz0UHjkIKpC4zxAXt+dbbgMICnKsdCEB6jSJplB7RF2I1eTVOD4eblCiHZro4p6f+p3P
 KH806RoZ8rQNOWaSXioVCcWltesEjwyqh6R/xTbI8dPoZm+M5Leh5BtgDTkK1I1kxNFFZ4XOIrY
 kw71XLTmBtDG+RnYQ/BDrsEbw0lBIaxe42okOicAxj
X-Received: by 2002:a50:8a81:0:b0:56d:fca8:d209 with SMTP id
 j1-20020a508a81000000b0056dfca8d209mr6746749edj.10.1712592018032; 
 Mon, 08 Apr 2024 09:00:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHo52vVJrQ0FGG8nNa/HY0uMoIxU2eMhB6fe+Tht1BFvEDfqO+atzRfiaR0I7oU7XLBMwQMR60tv+ZHmsFspzo=
X-Received: by 2002:a50:8a81:0:b0:56d:fca8:d209 with SMTP id
 j1-20020a508a81000000b0056dfca8d209mr6746732edj.10.1712592017681; Mon, 08 Apr
 2024 09:00:17 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1712345787.git.jani.nikula@intel.com>
 <15935837a0c15f861bb2a688cc53514f47153ef3.1712345787.git.jani.nikula@intel.com>
 <xdp2oca3z7aaxohhxmlethruxuwnmz5jdcbshooyrte5fzndfy@agmh33pvzbvs>
In-Reply-To: <xdp2oca3z7aaxohhxmlethruxuwnmz5jdcbshooyrte5fzndfy@agmh33pvzbvs>
From: Josh Boyer <jwboyer@redhat.com>
Date: Mon, 8 Apr 2024 12:00:05 -0400
Message-ID: <CANyg3HgrEDfDav_ZuHxSe38v3H4w3Kr0ON4wZCFPEpqzNnE4LA@mail.gmail.com>
Subject: Re: [PATCH 2/6] drm/i915/dmc: define firmware URL locally
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
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

On Fri, Apr 5, 2024 at 4:29=E2=80=AFPM Lucas De Marchi <lucas.demarchi@inte=
l.com> wrote:
>
> On Fri, Apr 05, 2024 at 10:37:39PM +0300, Jani Nikula wrote:
> >Avoid the dependency on intel_uc_fw.h, and allow removal of xe compat
> >intel_uc_fw.h. If there needs to be duplication of the URL, at least
> >have the duplication in a sensible way.
> >
> >Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> >Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
> but see below. +Josh
>
> >---
> > drivers/gpu/drm/i915/display/intel_dmc.c             |  4 +++-
> > drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h    |  1 -
> > drivers/gpu/drm/xe/compat-i915-headers/intel_uc_fw.h | 11 -----------
> > 3 files changed, 3 insertions(+), 13 deletions(-)
> > delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_uc_fw.h
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/=
i915/display/intel_dmc.c
> >index 3fa851b5c7a6..e61e9c1b8947 100644
> >--- a/drivers/gpu/drm/i915/display/intel_dmc.c
> >+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> >@@ -38,6 +38,8 @@
> >  * low-power state and comes back to normal.
> >  */
> >
> >+#define INTEL_DMC_FIRMWARE_URL "https://git.kernel.org/pub/scm/linux/ke=
rnel/git/firmware/linux-firmware.git"
>
> repo recently moved to gitlab, but as far as I know the one on
> kernel.org will still work. Do we want to change it?
>
> https://gitlab.com/kernel-firmware/linux-firmware

I don't think there's a need to change it right now.  I can't see us
removing the kernel.org linux-firmware tree.  Given it's firmware, I
don't think the defined macro is really trying to point to a
contribution site either so pointing to gitlab probably isn't
worthwhile.

josh

> thanks
> Lucas De Marchi
>
> >+
> > enum intel_dmc_id {
> >       DMC_FW_MAIN =3D 0,
> >       DMC_FW_PIPEA,
> >@@ -953,7 +955,7 @@ static void dmc_load_work_fn(struct work_struct *wor=
k)
> >                          " Disabling runtime power management.\n",
> >                          dmc->fw_path);
> >               drm_notice(&i915->drm, "DMC firmware homepage: %s",
> >-                         INTEL_UC_FIRMWARE_URL);
> >+                         INTEL_DMC_FIRMWARE_URL);
> >       }
> >
> >       release_firmware(fw);
> >diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers=
/gpu/drm/xe/compat-i915-headers/i915_drv.h
> >index a01d1b869c2d..837e95e3604e 100644
> >--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> >+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> >@@ -26,7 +26,6 @@
> > #include "i915_utils.h"
> > #include "intel_gt_types.h"
> > #include "intel_step.h"
> >-#include "intel_uc_fw.h"
> > #include "intel_uncore.h"
> > #include "intel_runtime_pm.h"
> > #include <linux/pm_runtime.h>
> >diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uc_fw.h b/driv=
ers/gpu/drm/xe/compat-i915-headers/intel_uc_fw.h
> >deleted file mode 100644
> >index 009745328992..000000000000
> >--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uc_fw.h
> >+++ /dev/null
> >@@ -1,11 +0,0 @@
> >-/* SPDX-License-Identifier: MIT */
> >-/*
> >- * Copyright =C2=A9 2023 Intel Corporation
> >- */
> >-
> >-#ifndef _INTEL_UC_FW_H_
> >-#define _INTEL_UC_FW_H_
> >-
> >-#define INTEL_UC_FIRMWARE_URL "https://git.kernel.org/pub/scm/linux/ker=
nel/git/firmware/linux-firmware.git"
> >-
> >-#endif
> >--
> >2.39.2
> >
>

