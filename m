Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40469738CF2
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 19:21:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CC4310E33D;
	Wed, 21 Jun 2023 17:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com
 [IPv6:2607:f8b0:4864:20::b2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CE6E10E33D
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 17:21:19 +0000 (UTC)
Received: by mail-yb1-xb2e.google.com with SMTP id
 3f1490d57ef6-bacf685150cso5934504276.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 10:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1687368078; x=1689960078;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fSAk//p3tdpjYImZmcR5EhVEtjoOajC1V7uGVNMF2Bg=;
 b=q/QuiXaZ88rtUbd3QeAHuuJ5YdEG8Dj33lwUpfxAKx2j6K8dza966+C6Vx9qTjeHAC
 dvjLDPex73PhJtmsc00qVmNWc81PBSoK5/DqmDEkoQRwZg7wdCgDYwv6KNw7NQHQg0ss
 QCxMpM2hyzH5EJ0IKPpWTrAOr75BDqkN90Q3p4Z+NGub6vJjdVMSx+/dWrdARkm/qa+K
 j6nLL7mAq/4hVfWhFluDu/adCBBVVG4zebIR3JHTZ/osWCH9Wbr92Ycmird8V3zgA09l
 iM+oXXoIN7YX8PqJDsa+yxmqavyepFXWWbCVfvkQEus4wkvqcgdDn/f+isiJhlvZC9Fa
 qF2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687368078; x=1689960078;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=fSAk//p3tdpjYImZmcR5EhVEtjoOajC1V7uGVNMF2Bg=;
 b=Bdr7WxEb9/aJE3XZ6slhLrw3f+J7krI47OBZ/3we1EExdT61bR0EzQh6Wn019EEQJE
 04vwRem1IekpoSxwCx9GGuu26WOrfENN8I5nFJKuHFc4LaPxJf0VzZR8pFh9vgiL3Pgl
 PUSWAoQTmw1zt03Y/2Y6E5uWSZvr3IxZM6GJJP5ysthIWw+fZoDK67ZErAKsBknvkpyl
 xxRRpr9TjJplBZuUxNnG8FuDTa8j1ye5QNV2LnJYhJG5ADbpGLjlddsViiBxa1Ayksbh
 S4DvZoqwwRFJnt/p/r81miVOh5aMDECRz9XO0AndKpqMTvDuqsF4mXG8juouTPetl0ju
 7wvw==
X-Gm-Message-State: AC+VfDxTZRn8sa09vPTYWE8TwhqAhaVs21z4ttzyJ1CKtmUhyToBLd2t
 /S+IA0uQByovWkOGWvZRQKwMB96rs+eoXmQMndN1Rg==
X-Google-Smtp-Source: ACHHUZ6QsXC3OAIyOliYBKtqphS99pcdIqKPy8YCP9uA7AvPGJKpRGqoCdEsBhlAqNN17J1t3eSvc6iLsH8DsBI66fE=
X-Received: by 2002:a25:d3c6:0:b0:bcb:f3cc:e965 with SMTP id
 e189-20020a25d3c6000000b00bcbf3cce965mr12582408ybf.11.1687368078014; Wed, 21
 Jun 2023 10:21:18 -0700 (PDT)
MIME-Version: 1.0
References: <20230529223935.2672495-1-dmitry.osipenko@collabora.com>
 <20230529223935.2672495-3-dmitry.osipenko@collabora.com>
In-Reply-To: <20230529223935.2672495-3-dmitry.osipenko@collabora.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 21 Jun 2023 10:21:07 -0700
Message-ID: <CABdmKX2RU2iYyUssBpwS17zA1dfegjzdo4pxp0r8cOCWcY9=kg@mail.gmail.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v4 2/6] dma-buf/heaps: Don't assert held
 reservation lock for dma-buf mmapping
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
Cc: dri-devel@lists.freedesktop.org, John Stultz <jstultz@google.com>,
 Gerd Hoffmann <kraxel@redhat.com>, kernel@collabora.com,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-media@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Arnd Bergmann <arnd@arndb.de>, intel-gfx@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Tomi Valkeinen <tomba@kernel.org>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 29, 2023 at 3:46=E2=80=AFPM Dmitry Osipenko
<dmitry.osipenko@collabora.com> wrote:
>
> Don't assert held dma-buf reservation lock on memory mapping of exported
> buffer.
>
> We're going to change dma-buf mmap() locking policy such that exporters
> will have to handle the lock. The previous locking policy caused deadlock
> problem for DRM drivers in a case of self-imported dma-bufs once these
> drivers are moved to use reservation lock universally. The problem
> solved by moving the lock down to exporters. This patch prepares dma-buf
> heaps for the locking policy update.
>
Hi Dmitry,

I see that in patch 6 of this series calls to
dma_resv_lock/dma_resv_unlock have been added to the
drm_gem_shmem_helper functions and some exporters. But I'm curious why
no dma_resv_lock/dma_resv_unlock calls were added to these two dma-buf
heap exporters for mmap?

Thanks,
T.J.

> Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>
> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> ---
>  drivers/dma-buf/heaps/cma_heap.c    | 3 ---
>  drivers/dma-buf/heaps/system_heap.c | 3 ---
>  2 files changed, 6 deletions(-)
>
> diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma=
_heap.c
> index 1131fb943992..28fb04eccdd0 100644
> --- a/drivers/dma-buf/heaps/cma_heap.c
> +++ b/drivers/dma-buf/heaps/cma_heap.c
> @@ -13,7 +13,6 @@
>  #include <linux/dma-buf.h>
>  #include <linux/dma-heap.h>
>  #include <linux/dma-map-ops.h>
> -#include <linux/dma-resv.h>
>  #include <linux/err.h>
>  #include <linux/highmem.h>
>  #include <linux/io.h>
> @@ -183,8 +182,6 @@ static int cma_heap_mmap(struct dma_buf *dmabuf, stru=
ct vm_area_struct *vma)
>  {
>         struct cma_heap_buffer *buffer =3D dmabuf->priv;
>
> -       dma_resv_assert_held(dmabuf->resv);
> -
>         if ((vma->vm_flags & (VM_SHARED | VM_MAYSHARE)) =3D=3D 0)
>                 return -EINVAL;
>
> diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/=
system_heap.c
> index e8bd10e60998..fcf836ba9c1f 100644
> --- a/drivers/dma-buf/heaps/system_heap.c
> +++ b/drivers/dma-buf/heaps/system_heap.c
> @@ -13,7 +13,6 @@
>  #include <linux/dma-buf.h>
>  #include <linux/dma-mapping.h>
>  #include <linux/dma-heap.h>
> -#include <linux/dma-resv.h>
>  #include <linux/err.h>
>  #include <linux/highmem.h>
>  #include <linux/mm.h>
> @@ -202,8 +201,6 @@ static int system_heap_mmap(struct dma_buf *dmabuf, s=
truct vm_area_struct *vma)
>         struct sg_page_iter piter;
>         int ret;
>
> -       dma_resv_assert_held(dmabuf->resv);
> -
>         for_each_sgtable_page(table, &piter, vma->vm_pgoff) {
>                 struct page *page =3D sg_page_iter_page(&piter);
>
> --
> 2.40.1
>
