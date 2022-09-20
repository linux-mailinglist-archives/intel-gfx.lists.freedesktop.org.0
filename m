Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCF95BE853
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 16:14:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3077A10E6CB;
	Tue, 20 Sep 2022 14:14:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com
 [IPv6:2607:f8b0:4864:20::b33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FFED10E6CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 14:14:03 +0000 (UTC)
Received: by mail-yb1-xb33.google.com with SMTP id e81so3515501ybb.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 07:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date;
 bh=A5SHHtL7QW2l54muzkKKvK4LNnKVv9lnQOHGxIBuRuE=;
 b=I0YUoX79VzdB1su5c8YsyhJqRmH5BNT4YqtIql7uMHjv4tNfOgHifd92qluReG4d/X
 i+jYW3HyitXzOX4IonS8R0ZONlFkR1k7gzgwSfoZiyoaclz0ttvaXwLoZb7ZtxANBu5Y
 3z526ei+ptSUlr9B43I+BPqd8EpQylJ4cBJQM2NB3es8UnHI+rMDDmASlishpV745ZiR
 FmF+Tn/kij0Q3tHjPuP7PPUW7rGa0WojF+SdtI5DCR6jLM2zwity5aoAXKaUhJv2tGwk
 A1NAE6VKh7Q2gKgry+vltVNnOPdcodRj2m1ez7wQy3SuDN63Pt0F5Dl77GROsIrV6LU3
 c7sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date;
 bh=A5SHHtL7QW2l54muzkKKvK4LNnKVv9lnQOHGxIBuRuE=;
 b=oMmP0q6Gnl7ky9ogw1uxe4/3cczmH34vEBetg+pp+0mQgetceSqWhVFtAAnmodG55L
 7G0NxoNR65IbNWVOUQi4GeDMB1MmR6cOA+4zJvOcaEimHYIPwcM+9G99PQfFTqL9Oh3m
 5pwch4WeA7YJOlRfBzrKjLHFLoHOP8PUBxep99mYYLwpwuDgTmtzI4kh23lfQMOkRfZ4
 y+q3uLeQa8by0gaUyiw9h0GGhBXIzi4Eh1XL7yDeG5rSQkVVCxLB+gcuzRon1JzQtcm+
 25x2nYamJkSU4omk783DtALB1DlzJVAU6br4MPriUFD19l3bCBpS4TJpioM2cS9BTQN7
 4Iig==
X-Gm-Message-State: ACrzQf2dqudCTcxs0Lisl6pGTBWQtnSW+u5nRkhPOfjFvtDYUwSCErZi
 wG4FlqI9UxSmxiebxMpgpPtndSlPglnsTqge7PVcyw==
X-Google-Smtp-Source: AMsMyM5ptp/xJcYbBs/zLcmhTWf9yaT5sYYL81f6HBIkVW4YVsWA9kHYXFc60Kp909nkSHb5MmXRrVuHNeF6LJJFSRY=
X-Received: by 2002:a25:af52:0:b0:6b3:de78:452a with SMTP id
 c18-20020a25af52000000b006b3de78452amr10092889ybj.157.1663683242012; Tue, 20
 Sep 2022 07:14:02 -0700 (PDT)
MIME-Version: 1.0
References: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
 <20220913192757.37727-16-dmitry.osipenko@collabora.com>
In-Reply-To: <20220913192757.37727-16-dmitry.osipenko@collabora.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 20 Sep 2022 19:43:49 +0530
Message-ID: <CAO_48GFtLjR657nO+yh9KwsrWbNmGVsf7srHj19biO+NauYt4w@mail.gmail.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v5 15/21] dma-buf: Move dma_buf_vmap() to
 dynamic locking specification
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
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <digetx@gmail.com>,
 kernel@collabora.com, Marek Szyprowski <m.szyprowski@samsung.com>,
 Stefano Stabellini <sstabellini@kernel.org>, Leon Romanovsky <leon@kernel.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-rdma@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Daniel Stone <daniel@fooishbar.org>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 virtualization@lists.linux-foundation.org, Chia-I Wu <olvaffe@gmail.com>,
 linux-media@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Juergen Gross <jgross@suse.com>,
 Daniel Almeida <daniel.almeida@collabora.com>, amd-gfx@lists.freedesktop.org,
 Tomi Valkeinen <tomba@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Gert Wollny <gert.wollny@collabora.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
 Qiang Yu <yuq825@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 Amol Maheshwari <amahesh@qti.qualcomm.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dmitry,

Thanks very much for the series.

On Wed, 14 Sept 2022 at 00:59, Dmitry Osipenko
<dmitry.osipenko@collabora.com> wrote:
>
> Move dma_buf_vmap/vunmap_unlocked() functions to the dynamic locking
> specification by asserting that the reservation lock is held.
Thanks for the patch; just a minor nit - I think you mean dma_buf_vmap
/ vunmap() here, and not _unlocked?

Best,
Sumit.


>
> Acked-by: Christian K=C3=B6nig <christian.koenig@amd.com>
> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> ---
>  drivers/dma-buf/dma-buf.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> index 50db7571dc4b..80fd6ccc88c6 100644
> --- a/drivers/dma-buf/dma-buf.c
> +++ b/drivers/dma-buf/dma-buf.c
> @@ -1450,6 +1450,8 @@ int dma_buf_vmap(struct dma_buf *dmabuf, struct ios=
ys_map *map)
>         if (WARN_ON(!dmabuf))
>                 return -EINVAL;
>
> +       dma_resv_assert_held(dmabuf->resv);
> +
>         if (!dmabuf->ops->vmap)
>                 return -EINVAL;
>
> @@ -1510,6 +1512,8 @@ void dma_buf_vunmap(struct dma_buf *dmabuf, struct =
iosys_map *map)
>         if (WARN_ON(!dmabuf))
>                 return;
>
> +       dma_resv_assert_held(dmabuf->resv);
> +
>         BUG_ON(iosys_map_is_null(&dmabuf->vmap_ptr));
>         BUG_ON(dmabuf->vmapping_counter =3D=3D 0);
>         BUG_ON(!iosys_map_is_equal(&dmabuf->vmap_ptr, map));
> --
> 2.37.3
>


--
Thanks and regards,

Sumit Semwal (he / him)
Tech Lead - LCG, Vertical Technologies
Linaro.org =E2=94=82 Open source software for ARM SoCs
