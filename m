Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1C758F0CE
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 18:54:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6E1C11B1B8;
	Wed, 10 Aug 2022 16:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com
 [IPv6:2001:4860:4864:20::31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3DFD14B451
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 16:54:20 +0000 (UTC)
Received: by mail-oa1-x31.google.com with SMTP id
 586e51a60fabf-f2a4c51c45so18455679fac.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 09:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc;
 bh=qFnJPiXDvt/QHoeruEwgeFRhpkmY0PFXPqpe6g3wZZU=;
 b=LGhbnsxjx1/X15rJRc0TYcL1bz4qxZfDA2Evnfl2dumzGeP5+uqclcPWWmr/pf+jWb
 a4q19+5rDTQRmTrwwOl5SL5ABIXsJEwP49UKG1Mnw7/1TubflBVQvJ/UKCoMuxwMVJ78
 CjY+vhp6n/JsSPT0OQ9Vmb/wDzQpj3whSVHBc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
 bh=qFnJPiXDvt/QHoeruEwgeFRhpkmY0PFXPqpe6g3wZZU=;
 b=5LYSRyo6wPK42yortRaoy0hxYTex0LshgyeJZwO16qF5wPh/lfZPsDNq+Lf8RH5vHE
 7rkX0GVPRkFIxOHxD8JSag5JaIZM0GsOO8DmtUDyY1+8Tp/wsGLKKcXuFspqBT5N43ij
 dVK1xnfq7SEewBU2ZEsPFTooArL8SlIzhyWobFRg27Ucb8e6R9dSWrCsP6SthLbnlNmx
 uejfd+SBDi5kyuW6iE16HBLhzrfHaVyGP/duRzbF0ovMbmFdmh2VDlZTIAk0aL/OH2Ab
 7kenO3vDKiERlGIWzK6Pd3R18FgRp2Hw4nw1C13bLi+hnXSbLBHXTJUtBOc2tDmia+AE
 OAmg==
X-Gm-Message-State: ACgBeo1Q054Sp4l4TwOJej4Meqk8BTRe7+L3ijp5CABPd+w6B9ZgUJk7
 wjx56hGoRVgFS1ntoTm3A1g07r4g2GD1fkVaqksj0g==
X-Google-Smtp-Source: AA6agR5BxNAMgR0BbKjTGtTiiGxByAbsJkt0nZFvCCcqLD64Pb/P4Ac5rjVwhlwBfdom5d2UrFzbBCj6QDIiYW0WqaE=
X-Received: by 2002:a05:6870:a90a:b0:10d:9e83:98a6 with SMTP id
 eq10-20020a056870a90a00b0010d9e8398a6mr1769155oab.228.1660150458375; Wed, 10
 Aug 2022 09:54:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220712102849.1562-1-christian.koenig@amd.com>
In-Reply-To: <20220712102849.1562-1-christian.koenig@amd.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 10 Aug 2022 18:54:07 +0200
Message-ID: <CAKMK7uFnMSKXcU+v_g-Sh62O5MB1uY=K2H-Fq7-5UYtmmjCZ_w@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] dma-buf: revert "return only unsignaled
 fences in dma_fence_unwrap_for_each v3"
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 12 Jul 2022 at 12:28, Christian K=C3=B6nig
<ckoenig.leichtzumerken@gmail.com> wrote:
>
> This reverts commit 8f61973718485f3e89bc4f408f929048b7b47c83.
>
> It turned out that this is not correct. Especially the sync_file info
> IOCTL needs to see even signaled fences to correctly report back their
> status to userspace.
>
> Instead add the filter in the merge function again where it makes sense.
>
> Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/dma-fence-unwrap.c | 3 ++-
>  include/linux/dma-fence-unwrap.h   | 6 +-----
>  2 files changed, 3 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/dma-buf/dma-fence-unwrap.c b/drivers/dma-buf/dma-fen=
ce-unwrap.c
> index 502a65ea6d44..7002bca792ff 100644
> --- a/drivers/dma-buf/dma-fence-unwrap.c
> +++ b/drivers/dma-buf/dma-fence-unwrap.c
> @@ -72,7 +72,8 @@ struct dma_fence *__dma_fence_unwrap_merge(unsigned int=
 num_fences,
>         count =3D 0;
>         for (i =3D 0; i < num_fences; ++i) {
>                 dma_fence_unwrap_for_each(tmp, &iter[i], fences[i])
> -                       ++count;
> +                       if (!dma_fence_is_signaled(tmp))
> +                               ++count;
>         }
>
>         if (count =3D=3D 0)
> diff --git a/include/linux/dma-fence-unwrap.h b/include/linux/dma-fence-u=
nwrap.h
> index 390de1ee9d35..66b1e56fbb81 100644
> --- a/include/linux/dma-fence-unwrap.h
> +++ b/include/linux/dma-fence-unwrap.h
> @@ -43,14 +43,10 @@ struct dma_fence *dma_fence_unwrap_next(struct dma_fe=
nce_unwrap *cursor);
>   * Unwrap dma_fence_chain and dma_fence_array containers and deep dive i=
nto all
>   * potential fences in them. If @head is just a normal fence only that o=
ne is
>   * returned.
> - *
> - * Note that signalled fences are opportunistically filtered out, which
> - * means the iteration is potentially over no fence at all.
>   */
>  #define dma_fence_unwrap_for_each(fence, cursor, head)                 \
>         for (fence =3D dma_fence_unwrap_first(head, cursor); fence;      =
 \
> -            fence =3D dma_fence_unwrap_next(cursor))                    =
 \
> -               if (!dma_fence_is_signaled(fence))
> +            fence =3D dma_fence_unwrap_next(cursor))

Not sure it's worth it, but could we still filter but keep the fence
if there's an error?

I'm honestly also not entirely sure whether error propagation is a
terrific idea, since every single use-case I've seen in i915 was a
mis-design and not good at all. So burning it all down and declaring
the testcases invalid might be the right thing to do here.
-Daniel

>
>  struct dma_fence *__dma_fence_unwrap_merge(unsigned int num_fences,
>                                            struct dma_fence **fences,
> --
> 2.25.1
>


--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
