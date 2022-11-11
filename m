Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA42A6251CE
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 04:40:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D23EA10E747;
	Fri, 11 Nov 2022 03:40:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D01B10E745
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 03:40:00 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id a15so3166935ljb.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 19:40:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=K+ov3P7MSKDC3zDq2K3swKKLzF2ZxWS9fJDHSnP7Go4=;
 b=LKNNmdDsVXvTCl8Wcq1POX6SybDvycSSR4CE8r7wAkIe2ZYVfHNLHpXN/JAN90tQ/y
 xHokgLfGCeEhZzKQdFKQk3kjeXJ4X2lcC6Ns627hli68sFlGpuH6IuqhOiOxaI8T2eXW
 QRD61HydTcyb6eGWmPAKULpN+vJr8cl/RiL5M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=K+ov3P7MSKDC3zDq2K3swKKLzF2ZxWS9fJDHSnP7Go4=;
 b=SKLZp1bBYZvNBPW5tKM/Qdz/BTpEMsE3UUJvY1YYbv3QK1Cit36W+/kAvFRXaEIJSU
 V95CQBNBoibSSAN9spjnxcrafRYWE6H3q7ZGt2xZbi+w3jUIi0F15vQK5sOEnniVSqG+
 tBT42hz7owdc7b5Yuj7SyXNQCe384/Bwjlu158Z26HEcCotN3fS9QVqNeLQ1H+ySTUDn
 KmeedshuUVfbrYV/dqPYEJdLyj3wWZSBBUIav48erhCJWj+LGSufSgPisdsrecRs5sXz
 m1BoSmXlkIYxQgVdY2hXPjXEVPo9cC4eapCrsKMVwBNdMYvR9pJRtsMdzEFWAQKywxlM
 lRtQ==
X-Gm-Message-State: ANoB5pkP+VkgFKuXzSFeQ3xkPI4QbDoZ2vk+h623iX5mGEq7jF6aFdKX
 DaJiiitMykVu+V1tA2rnp69Fm1RKcjLOow==
X-Google-Smtp-Source: AA0mqf66MdQVgieh96Qk4XnmGy0R7HXhiZ745Sqy+Xq8to5JbNhd+s8FU93ymIdU14XkeraHJ1awdQ==
X-Received: by 2002:a05:651c:220f:b0:277:1d5b:74b with SMTP id
 y15-20020a05651c220f00b002771d5b074bmr30531ljq.522.1668137998161; 
 Thu, 10 Nov 2022 19:39:58 -0800 (PST)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com.
 [209.85.208.175]) by smtp.gmail.com with ESMTPSA id
 bi36-20020a05651c232400b002771057e0e5sm189181ljb.76.2022.11.10.19.39.57
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Nov 2022 19:39:57 -0800 (PST)
Received: by mail-lj1-f175.google.com with SMTP id u11so3184534ljk.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 19:39:57 -0800 (PST)
X-Received: by 2002:a17:906:4e48:b0:73d:dfb2:d188 with SMTP id
 g8-20020a1709064e4800b0073ddfb2d188mr421713ejw.426.1668137986539; Thu, 10 Nov
 2022 19:39:46 -0800 (PST)
MIME-Version: 1.0
References: <20221110201349.351294-1-dmitry.osipenko@collabora.com>
 <20221110201349.351294-6-dmitry.osipenko@collabora.com>
In-Reply-To: <20221110201349.351294-6-dmitry.osipenko@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 11 Nov 2022 12:39:35 +0900
X-Gmail-Original-Message-ID: <CAAFQd5CsBEJkS=4nsH+4bQjCPNxwmw47Op4jnkydA+ivEfiPeA@mail.gmail.com>
Message-ID: <CAAFQd5CsBEJkS=4nsH+4bQjCPNxwmw47Op4jnkydA+ivEfiPeA@mail.gmail.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v1 5/6] media: videobuf2: Assert held
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
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Tomi Valkeinen <tomba@kernel.org>,
 linux-kernel@vger.kernel.org, Liam Mark <lmark@codeaurora.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Amol Maheshwari <amahesh@qti.qualcomm.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 11, 2022 at 5:15 AM Dmitry Osipenko
<dmitry.osipenko@collabora.com> wrote:
>
> When userspace mmaps dma-buf's fd, the dma-buf reservation lock must be
> held. Add locking sanity checks to the dma-buf mmaping callbacks to ensure
> that the locking assumptions won't regress in the future.
>
> Suggested-by: Daniel Vetter <daniel@ffwll.ch>
> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> ---
>  drivers/media/common/videobuf2/videobuf2-dma-contig.c | 3 +++
>  drivers/media/common/videobuf2/videobuf2-dma-sg.c     | 3 +++
>  drivers/media/common/videobuf2/videobuf2-vmalloc.c    | 3 +++
>  3 files changed, 9 insertions(+)
>

Acked-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

> diff --git a/drivers/media/common/videobuf2/videobuf2-dma-contig.c b/drivers/media/common/videobuf2/videobuf2-dma-contig.c
> index 555bd40fa472..7f45a62969f2 100644
> --- a/drivers/media/common/videobuf2/videobuf2-dma-contig.c
> +++ b/drivers/media/common/videobuf2/videobuf2-dma-contig.c
> @@ -11,6 +11,7 @@
>   */
>
>  #include <linux/dma-buf.h>
> +#include <linux/dma-resv.h>
>  #include <linux/module.h>
>  #include <linux/refcount.h>
>  #include <linux/scatterlist.h>
> @@ -455,6 +456,8 @@ static int vb2_dc_dmabuf_ops_vmap(struct dma_buf *dbuf, struct iosys_map *map)
>  static int vb2_dc_dmabuf_ops_mmap(struct dma_buf *dbuf,
>         struct vm_area_struct *vma)
>  {
> +       dma_resv_assert_held(dbuf->resv);
> +
>         return vb2_dc_mmap(dbuf->priv, vma);
>  }
>
> diff --git a/drivers/media/common/videobuf2/videobuf2-dma-sg.c b/drivers/media/common/videobuf2/videobuf2-dma-sg.c
> index 36981a5b5c53..b7f39ee49ed8 100644
> --- a/drivers/media/common/videobuf2/videobuf2-dma-sg.c
> +++ b/drivers/media/common/videobuf2/videobuf2-dma-sg.c
> @@ -10,6 +10,7 @@
>   * the Free Software Foundation.
>   */
>
> +#include <linux/dma-resv.h>
>  #include <linux/module.h>
>  #include <linux/mm.h>
>  #include <linux/refcount.h>
> @@ -495,6 +496,8 @@ static int vb2_dma_sg_dmabuf_ops_vmap(struct dma_buf *dbuf,
>  static int vb2_dma_sg_dmabuf_ops_mmap(struct dma_buf *dbuf,
>         struct vm_area_struct *vma)
>  {
> +       dma_resv_assert_held(dbuf->resv);
> +
>         return vb2_dma_sg_mmap(dbuf->priv, vma);
>  }
>
> diff --git a/drivers/media/common/videobuf2/videobuf2-vmalloc.c b/drivers/media/common/videobuf2/videobuf2-vmalloc.c
> index 41db707e43a4..f9b665366365 100644
> --- a/drivers/media/common/videobuf2/videobuf2-vmalloc.c
> +++ b/drivers/media/common/videobuf2/videobuf2-vmalloc.c
> @@ -10,6 +10,7 @@
>   * the Free Software Foundation.
>   */
>
> +#include <linux/dma-resv.h>
>  #include <linux/io.h>
>  #include <linux/module.h>
>  #include <linux/mm.h>
> @@ -316,6 +317,8 @@ static int vb2_vmalloc_dmabuf_ops_vmap(struct dma_buf *dbuf,
>  static int vb2_vmalloc_dmabuf_ops_mmap(struct dma_buf *dbuf,
>         struct vm_area_struct *vma)
>  {
> +       dma_resv_assert_held(dbuf->resv);
> +
>         return vb2_vmalloc_mmap(dbuf->priv, vma);
>  }
>
> --
> 2.37.3
>
