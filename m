Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D823B2D10
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 12:56:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D21D6EB5B;
	Thu, 24 Jun 2021 10:56:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 517 seconds by postgrey-1.36 at gabe;
 Thu, 24 Jun 2021 10:56:19 UTC
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8171F6EB5B
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 10:56:19 +0000 (UTC)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 842B9532;
 Thu, 24 Jun 2021 12:47:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1624531659;
 bh=ZNycYCdpm5oEjlFfF/sEqNXjEFO/n03c+byQ10Bt5bw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CGN9DVFsEHoPFf+pGvo+BS5Oqq8sbq0BRLQS9wPa02YfsZbZHe42KSDL8SiS8nknQ
 Dlh8v3FIrtFZ+aIelYdI0hq6VcbgqVLgvJq3npv5I27MKCnHAHxEiouigFeN+ZPJ+I
 gY9uoWeAbXhjpnjIo6lsntNy9MnvXU5it7HqZ5l0=
Date: Thu, 24 Jun 2021 13:47:08 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <YNRirARS1AIVncc+@pendragon.ideasonboard.com>
References: <20210624072916.27703-1-tzimmermann@suse.de>
 <20210624072916.27703-17-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210624072916.27703-17-tzimmermann@suse.de>
Subject: Re: [Intel-gfx] [PATCH v3 16/27] drm/rcar-du: Don't set struct
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

On Thu, Jun 24, 2021 at 09:29:05AM +0200, Thomas Zimmermann wrote:
> The field drm_device.irq_enabled is only used by legacy drivers
> with userspace modesetting. Don't set it in rcar-du.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/gpu/drm/rcar-du/rcar_du_drv.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rcar-du/rcar_du_drv.c b/drivers/gpu/drm/rcar-du/rcar_du_drv.c
> index bfbff90588cb..e289a66594a7 100644
> --- a/drivers/gpu/drm/rcar-du/rcar_du_drv.c
> +++ b/drivers/gpu/drm/rcar-du/rcar_du_drv.c
> @@ -593,8 +593,6 @@ static int rcar_du_probe(struct platform_device *pdev)
>  		goto error;
>  	}
>  
> -	rcdu->ddev.irq_enabled = 1;
> -
>  	/*
>  	 * Register the DRM device with the core and the connectors with
>  	 * sysfs.

-- 
Regards,

Laurent Pinchart
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
