Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECC167B6A7
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 17:13:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C33B10E013;
	Wed, 25 Jan 2023 16:13:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BC5F10E013;
 Wed, 25 Jan 2023 16:13:43 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id bp15so29696967lfb.13;
 Wed, 25 Jan 2023 08:13:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/jUGk0opY3F9pB6VPUN+WQP4RYW0wbi/e/cjCtEFD1U=;
 b=B+oPfQ5kjZoCazzXDKjigKHEDQoRuP0jz4AvN9jjzz1ENtPP4gAS9WIWdiBt7c8Sug
 +syNcjGSs5/w2WhY8rYGILjBYq+evfqJ6DCTnB+DhC63V0JvxNHhcRNzRGBDUmJCktKS
 BWC3ZI8cbbERZu3ANV8Ew8/TIK6n03jUQy6FCjc6Z1KJH/JuBdfisd9xQCWPU3SqhZO7
 DWFnbYs/QnmElNSgoX4NT/UZuyQxKMOBpy4PhvMiX5DVDlcaFJ+YsU+w4XIA+Ze5I3Tj
 OC8uqdFdkVHNWYc8FNF10TaCrfij+JFs37+BhKr9OiaK34l7Rt6VGu/mHpXAQnLQx2uX
 bY4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/jUGk0opY3F9pB6VPUN+WQP4RYW0wbi/e/cjCtEFD1U=;
 b=XEKmqCArKL5ykvBfA0ifigvPSa1IZ52M9CFzEWslXBfHEt3BTzGgqvM7+4umZlT+gW
 hrs5yplPprUXy4LAv3nqIqcDScxULJC9Tuo3pdrG/Y0RB9iPsTQVXuIu3xzormr5tca2
 ZaK709+MkmXFxT+0CndMXx9mhodfypYAZ9jrfzj7OhBRu6P0JNGFhEcWRebaAi008Gwr
 61kOGbL7wWYQgEXG/EVEqdAUNris55KfgqR9NK1qpPWSshfsSU6Hd+RxUW5Vm/cP2a/g
 Bxrd/C2I9r3hHwcF7Iv06OcCaGogMPPHWh6Rq5D1gULmHoQfyUhD8qntqmOkjamIltme
 gUXw==
X-Gm-Message-State: AFqh2krPvzy3RXw9rsefVd+MJ35zA3HBn647Rhn8DMvaZaMXeTx0ZoVQ
 GU/RTCSRReUP8s4ucmh0eOP0TndozHd/YQi90Mw=
X-Google-Smtp-Source: AMrXdXstjUtapx32ierihURCno9TFhrJB3wJcwo4kpXaQOwwn+0TcV1igAYIHNs8DnXlWDmYlzCleMWvLoLMF5kAi04=
X-Received: by 2002:a05:6512:96d:b0:4c7:6601:e3b1 with SMTP id
 v13-20020a056512096d00b004c76601e3b1mr1507766lft.548.1674663221671; Wed, 25
 Jan 2023 08:13:41 -0800 (PST)
MIME-Version: 1.0
References: <20230125155023.105584-1-christian.koenig@amd.com>
 <20230125155023.105584-2-christian.koenig@amd.com>
In-Reply-To: <20230125155023.105584-2-christian.koenig@amd.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 25 Jan 2023 16:13:14 +0000
Message-ID: <CAM0jSHPoXqLVCkC77JDURw-zSY6=ryDwA43xH9Y+D7uMiZOJVg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/ttm: revert "stop allocating dummy
 resources during BO creation"
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 25 Jan 2023 at 15:50, Christian K=C3=B6nig
<ckoenig.leichtzumerken@gmail.com> wrote:
>
> This reverts commit 00984ad39599bb2a1e6ec5d4e9c75a749f7f45c9.
>
> It seems to still breka i915.

We also need to revert the third patch:

b49323aa35d5 drm/ttm: prevent moving of pinned BOs

It introduces the side effect of no longer calling tt_create(true) in
ttm_bo_validate(), and I'm 99% sure that will break object clearing.
We rely on having a ttm_tt for the initial dummy placement, with
FLAG_ZERO_ALLOC set if clear is needed. Also I'm not sure who even
creates the ttm_tt now, if ttm_bo_validate() doesn't, and we don't
have the dummy move, like with this patch.

>
> Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/ttm/ttm_bo.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
> index 33471e363ff4..9baccb2f6e99 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo.c
> @@ -957,6 +957,7 @@ int ttm_bo_init_reserved(struct ttm_device *bdev, str=
uct ttm_buffer_object *bo,
>                          struct sg_table *sg, struct dma_resv *resv,
>                          void (*destroy) (struct ttm_buffer_object *))
>  {
> +       static const struct ttm_place sys_mem =3D { .mem_type =3D TTM_PL_=
SYSTEM };
>         int ret;
>
>         kref_init(&bo->kref);
> @@ -973,6 +974,12 @@ int ttm_bo_init_reserved(struct ttm_device *bdev, st=
ruct ttm_buffer_object *bo,
>                 bo->base.resv =3D &bo->base._resv;
>         atomic_inc(&ttm_glob.bo_count);
>
> +       ret =3D ttm_resource_alloc(bo, &sys_mem, &bo->resource);
> +       if (unlikely(ret)) {
> +               ttm_bo_put(bo);
> +               return ret;
> +       }
> +
>         /*
>          * For ttm_bo_type_device buffers, allocate
>          * address space from the device.
> --
> 2.34.1
>
