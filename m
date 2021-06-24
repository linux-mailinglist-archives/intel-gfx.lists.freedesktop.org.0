Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D983B2D28
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 13:01:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7C3C6EAB7;
	Thu, 24 Jun 2021 11:01:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC2B76EAB7
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 11:01:19 +0000 (UTC)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 571A61254;
 Thu, 24 Jun 2021 12:48:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1624531713;
 bh=fIk5wMEN1B7CMPOBGbKPIoyHWGb/NJbW3Q+hz7HFjMM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OoLj5b8l/ofOHdX9hMnRB54xFpHcmL5qCdyqf0btt+Wqy//1J8rGXdoC24H1uq8n1
 048gJuhXofMiwBWBvQAq72XeLSOhwF8Jn/QOm5PZoqoyR+V/AZX9s6u3YYgXawYOjf
 yqs50G3bJBKCjDvGArnYQnXaHNQWu9PnXSCiArt0=
Date: Thu, 24 Jun 2021 13:48:03 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <YNRi4yR6lQTix7ar@pendragon.ideasonboard.com>
References: <20210624072916.27703-1-tzimmermann@suse.de>
 <20210624072916.27703-25-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210624072916.27703-25-tzimmermann@suse.de>
Subject: Re: [Intel-gfx] [PATCH v3 24/27] drm/vkms: Don't set struct
 drm_device.irq_enabled
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
Cc: hamohammed.sa@gmail.com, heiko@sntech.de, emma@anholt.net, airlied@linux.ie,
 nouveau@lists.freedesktop.org, alexandre.torgue@foss.st.com,
 dri-devel@lists.freedesktop.org, michal.simek@xilinx.com,
 melissa.srw@gmail.com, linux-tegra@vger.kernel.org, thierry.reding@gmail.com,
 amd-gfx@lists.freedesktop.org, benjamin.gaignard@linaro.org,
 linux@armlinux.org.uk, mihail.atanassov@arm.com, festevam@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-samsung-soc@vger.kernel.org,
 jy0922.shim@samsung.com, krzysztof.kozlowski@canonical.com,
 linux-rockchip@lists.infradead.org, linux-mediatek@lists.infradead.org,
 wens@csie.org, jernej.skrabec@gmail.com, jonathanh@nvidia.com,
 xinliang.liu@linaro.org, kong.kongxinwei@hisilicon.com,
 james.qian.wang@arm.com, linux-imx@nxp.com, intel-gfx@lists.freedesktop.org,
 linux-graphics-maintainer@vmware.com, linux-sunxi@lists.linux.dev,
 bskeggs@redhat.com, chunkuang.hu@kernel.org, p.zabel@pengutronix.de,
 puck.chen@hisilicon.com, s.hauer@pengutronix.de, mripard@kernel.org,
 inki.dae@samsung.com, rodrigosiqueiramelo@gmail.com, john.stultz@linaro.org,
 laurentiu.palcu@oss.nxp.com, matthias.bgg@gmail.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 hyun.kwon@xilinx.com, tomba@kernel.org, jyri.sarha@iki.fi,
 yannick.fertre@foss.st.com, Xinhui.Pan@amd.com, sw0312.kim@samsung.com,
 hjc@rock-chips.com, christian.koenig@amd.com, kyungmin.park@samsung.com,
 kieran.bingham+renesas@ideasonboard.com, philippe.cornu@foss.st.com,
 alexander.deucher@amd.com, tiantao6@hisilicon.com, shawnguo@kernel.org,
 zackr@vmware.com, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Thomas,

Thank you for the patch.

On Thu, Jun 24, 2021 at 09:29:13AM +0200, Thomas Zimmermann wrote:
> The field drm_device.irq_enabled is only used by legacy drivers
> with userspace modesetting. Don't set it in vkms.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/gpu/drm/vkms/vkms_drv.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/vkms/vkms_drv.c b/drivers/gpu/drm/vkms/vkms_drv.c
> index 027ffe759440..496de38ad983 100644
> --- a/drivers/gpu/drm/vkms/vkms_drv.c
> +++ b/drivers/gpu/drm/vkms/vkms_drv.c
> @@ -163,8 +163,6 @@ static int vkms_create(struct vkms_config *config)
>  		goto out_devres;
>  	}
>  
> -	vkms_device->drm.irq_enabled = true;
> -
>  	ret = drm_vblank_init(&vkms_device->drm, 1);
>  	if (ret) {
>  		DRM_ERROR("Failed to vblank\n");

-- 
Regards,

Laurent Pinchart
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
