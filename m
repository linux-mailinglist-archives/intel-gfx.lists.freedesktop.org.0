Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 942D455306B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 13:06:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7161310FF0F;
	Tue, 21 Jun 2022 11:06:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92AE010FD3D;
 Fri, 27 May 2022 15:56:52 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: alyssa) with ESMTPSA id 3D3D51F463CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1653667011;
 bh=n5RHKvs6olD8LksjT484qw9Rh0JisRhUIQ7ggPkOqx4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q6kTO5Ap+i5kmaF5um389IzxbauaGndK+JrcD4hEezqh4whcGeSqpoC5zDuWw57KI
 8fh+bDAIu8408A79BVtUamQIZPLFV90q8BABnbTh44p5m/jr3XQRDvEP68ncgCedK7
 iWk55rkqi/komv0pBkw1cQB5acBLw5+u+DvpIejXBAgHDD4NeyeS1JVK49uoVmHCS2
 mbrHXxwVcX6JnH811NUonPSSXnHqfm2ChKbnZSgvS/P41yiK/z0a3BBHsiTV5+ccK9
 oLlgD/Myd6w2UL6nCNj7WWOM5ohWFrt2ikdxXL5RtRt+P5YoENL4mecu8Xj8kkWW7F
 NZnyFvgN0M2lA==
Date: Fri, 27 May 2022 11:56:36 -0400
From: Alyssa Rosenzweig <alyssa@collabora.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Message-ID: <YpD0tCuCd7HzwWg6@maud>
References: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
 <20220526235040.678984-5-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220526235040.678984-5-dmitry.osipenko@collabora.com>
X-Mailman-Approved-At: Tue, 21 Jun 2022 11:06:26 +0000
Subject: Re: [Intel-gfx] [PATCH v6 04/22] drm/panfrost: Fix shrinker list
 corruption by madvise IOCTL
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
 Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <digetx@gmail.com>,
 kernel@collabora.com, Sumit Semwal <sumit.semwal@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Rob Herring <robh@kernel.org>,
 Daniel Stone <daniel@fooishbar.org>, Steven Price <steven.price@arm.com>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 virtualization@lists.linux-foundation.org, Chia-I Wu <olvaffe@gmail.com>,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Daniel Almeida <daniel.almeida@collabora.com>, amd-gfx@lists.freedesktop.org,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Gert Wollny <gert.wollny@collabora.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Qiang Yu <yuq825@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>, Robin Murphy <robin.murphy@arm.com>,
 Christian K??nig <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Acked-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>

On Fri, May 27, 2022 at 02:50:22AM +0300, Dmitry Osipenko wrote:
> Calling madvise IOCTL twice on BO causes memory shrinker list corruption
> and crashes kernel because BO is already on the list and it's added to
> the list again, while BO should be removed from from the list before it's
> re-added. Fix it.
> 
> Cc: stable@vger.kernel.org
> Fixes: 013b65101315 ("drm/panfrost: Add madvise and shrinker support")
> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> ---
>  drivers/gpu/drm/panfrost/panfrost_drv.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
> index 087e69b98d06..b1e6d238674f 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_drv.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
> @@ -433,8 +433,8 @@ static int panfrost_ioctl_madvise(struct drm_device *dev, void *data,
>  
>  	if (args->retained) {
>  		if (args->madv == PANFROST_MADV_DONTNEED)
> -			list_add_tail(&bo->base.madv_list,
> -				      &pfdev->shrinker_list);
> +			list_move_tail(&bo->base.madv_list,
> +				       &pfdev->shrinker_list);
>  		else if (args->madv == PANFROST_MADV_WILLNEED)
>  			list_del_init(&bo->base.madv_list);
>  	}
> -- 
> 2.35.3
> 
