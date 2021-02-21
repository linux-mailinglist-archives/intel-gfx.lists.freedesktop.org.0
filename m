Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 079FC320C7E
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Feb 2021 19:21:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15AEF6E075;
	Sun, 21 Feb 2021 18:21:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 556 seconds by postgrey-1.36 at gabe;
 Sun, 21 Feb 2021 18:21:37 UTC
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 247B06E075;
 Sun, 21 Feb 2021 18:21:37 +0000 (UTC)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 59FA7EF;
 Sun, 21 Feb 2021 19:21:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1613931694;
 bh=GrTgQ2aab5eBCzMDahXFKzsgqhR0cCzd4d93CPbsd74=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S7py4GN1+mpKFxaItm5BBufzjOGkqLdjNQ2MgSfbxdQj+51l9D2t3BC2YyeQEmWI7
 XeNseMhQGrt8folLYb5Ub+y60aver4uMxtfEEWxsp3I0QdkeEcogpgL/qx0R3cZL50
 Jf4yp7Vzr3b+VPBGRGqLdh/UMEIwSFyVwm8rczfQ=
Date: Sun, 21 Feb 2021 20:21:08 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Lyude Paul <lyude@redhat.com>
Message-ID: <YDKklI3grZjn3dde@pendragon.ideasonboard.com>
References: <20210219215326.2227596-1-lyude@redhat.com>
 <20210219215326.2227596-16-lyude@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219215326.2227596-16-lyude@redhat.com>
Subject: Re: [Intel-gfx] [PATCH 15/30] drm/dp: Add backpointer to drm_device
 in drm_dp_aux
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 nouveau@lists.freedesktop.org, Oleg Vasilev <oleg.vasilev@intel.com>,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Sam Ravnborg <sam@ravnborg.org>, Emil Velikov <emil.velikov@collabora.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Michal Simek <michal.simek@xilinx.com>,
 amd-gfx@lists.freedesktop.org, Jonathan Hunter <jonathanh@nvidia.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 "Jerry \(Fangzhi\) Zuo" <Jerry.Zuo@amd.com>,
 Luben Tuikov <luben.tuikov@amd.com>, Ben Skeggs <bskeggs@redhat.com>,
 Swapnil Jakhade <sjakhade@cadence.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Harry Wentland <harry.wentland@amd.com>, Icenowy Zheng <icenowy@aosc.io>,
 Jonas Karlman <jonas@kwiboo.se>, Leo Li <sunpeng.li@amd.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 intel-gfx@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 Yuti Amonkar <yamonkar@cadence.com>,
 "open list:DRM DRIVERS FOR NVIDIA TEGRA" <linux-tegra@vger.kernel.org>,
 Mikita Lipski <mikita.lipski@amd.com>,
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Chris Park <Chris.Park@amd.com>,
 Eryk Brol <eryk.brol@amd.com>, Hyun Kwon <hyun.kwon@xilinx.com>,
 open list <linux-kernel@vger.kernel.org>, Julia Lawall <Julia.Lawall@inria.fr>,
 Torsten Duwe <duwe@lst.de>, Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>, Joe Perches <joe@perches.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Lyude,

Thank you for the patch.

On Fri, Feb 19, 2021 at 04:53:11PM -0500, Lyude Paul wrote:
> This is something that we've wanted for a while now: the ability to
> actually look up the respective drm_device for a given drm_dp_aux struct.
> This will also allow us to transition over to using the drm_dbg_*() helpers
> for debug message printing, as we'll finally have a drm_device to reference
> for doing so.

Isn't it better to use the existing dev field ? If you have multiple DP
outputs for one DRM device, using the DRM device name in debug messages
won't tell which output the message corresponds to.

> Note that there is one limitation with this - because some DP AUX adapters
> exist as platform devices which are initialized independently of their
> respective DRM devices, one cannot rely on drm_dp_aux->drm_dev to always be
> non-NULL until drm_dp_aux_register() has been called. We make sure to point
> this out in the documentation for struct drm_dp_aux.
> 
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> ---
>  drivers/gpu/drm/amd/amdgpu/atombios_dp.c                 | 1 +
>  .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c  | 1 +
>  drivers/gpu/drm/bridge/analogix/analogix-anx6345.c       | 1 +
>  drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c       | 1 +
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c       | 1 +
>  drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c      | 1 +
>  drivers/gpu/drm/bridge/tc358767.c                        | 1 +
>  drivers/gpu/drm/bridge/ti-sn65dsi86.c                    | 1 +
>  drivers/gpu/drm/drm_dp_aux_dev.c                         | 6 ++++++
>  drivers/gpu/drm/drm_dp_mst_topology.c                    | 1 +
>  drivers/gpu/drm/i915/display/intel_dp_aux.c              | 1 +
>  drivers/gpu/drm/msm/edp/edp.h                            | 3 +--
>  drivers/gpu/drm/msm/edp/edp_aux.c                        | 5 +++--
>  drivers/gpu/drm/msm/edp/edp_ctrl.c                       | 2 +-
>  drivers/gpu/drm/nouveau/nouveau_connector.c              | 1 +
>  drivers/gpu/drm/radeon/atombios_dp.c                     | 1 +
>  drivers/gpu/drm/tegra/dpaux.c                            | 1 +
>  drivers/gpu/drm/xlnx/zynqmp_dp.c                         | 1 +
>  include/drm/drm_dp_helper.h                              | 9 ++++++++-
>  19 files changed, 33 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/amd/amdgpu/atombios_dp.c b/drivers/gpu/drm/amd/amdgpu/atombios_dp.c
> index a3ba9ca11e98..6d35da65e09f 100644
> --- a/drivers/gpu/drm/amd/amdgpu/atombios_dp.c
> +++ b/drivers/gpu/drm/amd/amdgpu/atombios_dp.c
> @@ -188,6 +188,7 @@ void amdgpu_atombios_dp_aux_init(struct amdgpu_connector *amdgpu_connector)
>  {
>  	amdgpu_connector->ddc_bus->rec.hpd = amdgpu_connector->hpd.hpd;
>  	amdgpu_connector->ddc_bus->aux.transfer = amdgpu_atombios_dp_aux_transfer;
> +	amdgpu_connector->ddc_bus->aux.drm_dev = amdgpu_connector->base.dev;
>  	drm_dp_aux_init(&amdgpu_connector->ddc_bus->aux);
>  	amdgpu_connector->ddc_bus->has_aux = true;
>  }
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
> index 41b09ab22233..163641b44339 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
> @@ -431,6 +431,7 @@ void amdgpu_dm_initialize_dp_connector(struct amdgpu_display_manager *dm,
>  			  link_index);
>  	aconnector->dm_dp_aux.aux.transfer = dm_dp_aux_transfer;
>  	aconnector->dm_dp_aux.ddc_service = aconnector->dc_link->ddc;
> +	aconnector->dm_dp_aux.aux.drm_dev = dm->ddev;
>  
>  	drm_dp_aux_init(&aconnector->dm_dp_aux.aux);
>  	drm_dp_cec_register_connector(&aconnector->dm_dp_aux.aux,
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> index aa6cda458eb9..e33cd077595a 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> @@ -537,6 +537,7 @@ static int anx6345_bridge_attach(struct drm_bridge *bridge,
>  	/* Register aux channel */
>  	anx6345->aux.name = "DP-AUX";
>  	anx6345->aux.dev = &anx6345->client->dev;
> +	anx6345->aux.drm_dev = bridge->dev;
>  	anx6345->aux.transfer = anx6345_aux_transfer;
>  
>  	err = drm_dp_aux_register(&anx6345->aux);
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
> index f20558618220..5e6a0ed39199 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
> @@ -905,6 +905,7 @@ static int anx78xx_bridge_attach(struct drm_bridge *bridge,
>  	/* Register aux channel */
>  	anx78xx->aux.name = "DP-AUX";
>  	anx78xx->aux.dev = &anx78xx->client->dev;
> +	anx78xx->aux.drm_dev = bridge->dev;
>  	anx78xx->aux.transfer = anx78xx_aux_transfer;
>  
>  	err = drm_dp_aux_register(&anx78xx->aux);
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index f115233b1cb9..550814ca2139 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1765,6 +1765,7 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
>  	dp->aux.name = "DP-AUX";
>  	dp->aux.transfer = analogix_dpaux_transfer;
>  	dp->aux.dev = dp->dev;
> +	dp->aux.drm_dev = drm_dev;
>  
>  	ret = drm_dp_aux_register(&dp->aux);
>  	if (ret)
> diff --git a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c
> index d966a33743b5..fe821ad628ec 100644
> --- a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c
> +++ b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c
> @@ -1674,6 +1674,7 @@ static int cdns_mhdp_attach(struct drm_bridge *bridge,
>  
>  	dev_dbg(mhdp->dev, "%s\n", __func__);
>  
> +	mhdp->aux.drm_dev = bridge->dev;
>  	ret = drm_dp_aux_register(&mhdp->aux);
>  	if (ret < 0)
>  		return ret;
> diff --git a/drivers/gpu/drm/bridge/tc358767.c b/drivers/gpu/drm/bridge/tc358767.c
> index da89922721ed..23a6f90b694b 100644
> --- a/drivers/gpu/drm/bridge/tc358767.c
> +++ b/drivers/gpu/drm/bridge/tc358767.c
> @@ -1414,6 +1414,7 @@ static int tc_bridge_attach(struct drm_bridge *bridge,
>  	if (flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR)
>  		return 0;
>  
> +	tc->aux.drm_dev = drm;
>  	ret = drm_dp_aux_register(&tc->aux);
>  	if (ret < 0)
>  		return ret;
> diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi86.c b/drivers/gpu/drm/bridge/ti-sn65dsi86.c
> index 88df4dd0f39d..8e24272bbf00 100644
> --- a/drivers/gpu/drm/bridge/ti-sn65dsi86.c
> +++ b/drivers/gpu/drm/bridge/ti-sn65dsi86.c
> @@ -362,6 +362,7 @@ static int ti_sn_bridge_attach(struct drm_bridge *bridge,
>  		return -EINVAL;
>  	}
>  
> +	pdata->aux.drm_dev = bridge->dev;
>  	ret = drm_dp_aux_register(&pdata->aux);
>  	if (ret < 0) {
>  		drm_err(bridge->dev, "Failed to register DP AUX channel: %d\n", ret);
> diff --git a/drivers/gpu/drm/drm_dp_aux_dev.c b/drivers/gpu/drm/drm_dp_aux_dev.c
> index e25181bf2c48..06b374cae956 100644
> --- a/drivers/gpu/drm/drm_dp_aux_dev.c
> +++ b/drivers/gpu/drm/drm_dp_aux_dev.c
> @@ -278,6 +278,12 @@ void drm_dp_aux_unregister_devnode(struct drm_dp_aux *aux)
>  	if (!aux_dev) /* attach must have failed */
>  		return;
>  
> +	/*
> +	 * As some AUX adapters may exist as platform devices which outlive their respective DRM
> +	 * devices, we clear drm_dev to ensure that we never accidentally reference a stale pointer
> +	 */
> +	aux->drm_dev = NULL;
> +
>  	mutex_lock(&aux_idr_mutex);
>  	idr_remove(&aux_idr, aux_dev->index);
>  	mutex_unlock(&aux_idr_mutex);
> diff --git a/drivers/gpu/drm/drm_dp_mst_topology.c b/drivers/gpu/drm/drm_dp_mst_topology.c
> index 932c4641ec3e..cf4f2f85711e 100644
> --- a/drivers/gpu/drm/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/drm_dp_mst_topology.c
> @@ -2349,6 +2349,7 @@ drm_dp_mst_add_port(struct drm_device *dev,
>  	port->aux.is_remote = true;
>  
>  	/* initialize the MST downstream port's AUX crc work queue */
> +	port->aux.drm_dev = dev;
>  	drm_dp_remote_aux_init(&port->aux);
>  
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index eaebf123310a..0571c0794226 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -675,6 +675,7 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>  	else
>  		intel_dp->get_aux_send_ctl = g4x_get_aux_send_ctl;
>  
> +	intel_dp->aux.drm_dev = &dev_priv->drm;
>  	drm_dp_aux_init(&intel_dp->aux);
>  
>  	/* Failure to allocate our preferred name is not critical */
> diff --git a/drivers/gpu/drm/msm/edp/edp.h b/drivers/gpu/drm/msm/edp/edp.h
> index eb34243dad53..8590f2ce274d 100644
> --- a/drivers/gpu/drm/msm/edp/edp.h
> +++ b/drivers/gpu/drm/msm/edp/edp.h
> @@ -46,8 +46,7 @@ void edp_bridge_destroy(struct drm_bridge *bridge);
>  struct drm_connector *msm_edp_connector_init(struct msm_edp *edp);
>  
>  /* AUX */
> -void *msm_edp_aux_init(struct device *dev, void __iomem *regbase,
> -			struct drm_dp_aux **drm_aux);
> +void *msm_edp_aux_init(struct msm_edp *edp, void __iomem *regbase, struct drm_dp_aux **drm_aux);
>  void msm_edp_aux_destroy(struct device *dev, struct edp_aux *aux);
>  irqreturn_t msm_edp_aux_irq(struct edp_aux *aux, u32 isr);
>  void msm_edp_aux_ctrl(struct edp_aux *aux, int enable);
> diff --git a/drivers/gpu/drm/msm/edp/edp_aux.c b/drivers/gpu/drm/msm/edp/edp_aux.c
> index df10a0196d94..e3d85c622cfb 100644
> --- a/drivers/gpu/drm/msm/edp/edp_aux.c
> +++ b/drivers/gpu/drm/msm/edp/edp_aux.c
> @@ -184,9 +184,9 @@ static ssize_t edp_aux_transfer(struct drm_dp_aux *drm_aux,
>  	return ret;
>  }
>  
> -void *msm_edp_aux_init(struct device *dev, void __iomem *regbase,
> -	struct drm_dp_aux **drm_aux)
> +void *msm_edp_aux_init(struct msm_edp *edp, void __iomem *regbase, struct drm_dp_aux **drm_aux)
>  {
> +	struct device *dev = &edp->pdev->dev;
>  	struct edp_aux *aux = NULL;
>  	int ret;
>  
> @@ -201,6 +201,7 @@ void *msm_edp_aux_init(struct device *dev, void __iomem *regbase,
>  
>  	aux->drm_aux.name = "msm_edp_aux";
>  	aux->drm_aux.dev = dev;
> +	aux->drm_aux.drm_dev = edp->dev;
>  	aux->drm_aux.transfer = edp_aux_transfer;
>  	ret = drm_dp_aux_register(&aux->drm_aux);
>  	if (ret) {
> diff --git a/drivers/gpu/drm/msm/edp/edp_ctrl.c b/drivers/gpu/drm/msm/edp/edp_ctrl.c
> index 0d9657cc70db..57af3d8b6699 100644
> --- a/drivers/gpu/drm/msm/edp/edp_ctrl.c
> +++ b/drivers/gpu/drm/msm/edp/edp_ctrl.c
> @@ -1153,7 +1153,7 @@ int msm_edp_ctrl_init(struct msm_edp *edp)
>  	}
>  
>  	/* Init aux and phy */
> -	ctrl->aux = msm_edp_aux_init(dev, ctrl->base, &ctrl->drm_aux);
> +	ctrl->aux = msm_edp_aux_init(edp, ctrl->base, &ctrl->drm_aux);
>  	if (!ctrl->aux || !ctrl->drm_aux) {
>  		pr_err("%s:failed to init aux\n", __func__);
>  		return -ENOMEM;
> diff --git a/drivers/gpu/drm/nouveau/nouveau_connector.c b/drivers/gpu/drm/nouveau/nouveau_connector.c
> index bfce762adcf0..d1b49508ecb9 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_connector.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_connector.c
> @@ -1355,6 +1355,7 @@ nouveau_connector_create(struct drm_device *dev,
>  	case DRM_MODE_CONNECTOR_DisplayPort:
>  	case DRM_MODE_CONNECTOR_eDP:
>  		nv_connector->aux.dev = connector->kdev;
> +		nv_connector->aux.drm_dev = dev;
>  		nv_connector->aux.transfer = nouveau_connector_aux_xfer;
>  		snprintf(aux_name, sizeof(aux_name), "sor-%04x-%04x",
>  			 dcbe->hasht, dcbe->hashm);
> diff --git a/drivers/gpu/drm/radeon/atombios_dp.c b/drivers/gpu/drm/radeon/atombios_dp.c
> index 15b00a347560..c50c504bad50 100644
> --- a/drivers/gpu/drm/radeon/atombios_dp.c
> +++ b/drivers/gpu/drm/radeon/atombios_dp.c
> @@ -232,6 +232,7 @@ void radeon_dp_aux_init(struct radeon_connector *radeon_connector)
>  
>  	radeon_connector->ddc_bus->rec.hpd = radeon_connector->hpd.hpd;
>  	radeon_connector->ddc_bus->aux.dev = radeon_connector->base.kdev;
> +	radeon_connector->ddc_bus->aux.drm_dev = radeon_connector->base.dev;
>  	if (ASIC_IS_DCE5(rdev)) {
>  		if (radeon_auxch)
>  			radeon_connector->ddc_bus->aux.transfer = radeon_dp_aux_transfer_native;
> diff --git a/drivers/gpu/drm/tegra/dpaux.c b/drivers/gpu/drm/tegra/dpaux.c
> index ea56c6ec25e4..7d7cc90b6fc9 100644
> --- a/drivers/gpu/drm/tegra/dpaux.c
> +++ b/drivers/gpu/drm/tegra/dpaux.c
> @@ -719,6 +719,7 @@ int drm_dp_aux_attach(struct drm_dp_aux *aux, struct tegra_output *output)
>  	unsigned long timeout;
>  	int err;
>  
> +	aux->drm_dev = output->connector.dev;
>  	err = drm_dp_aux_register(aux);
>  	if (err < 0)
>  		return err;
> diff --git a/drivers/gpu/drm/xlnx/zynqmp_dp.c b/drivers/gpu/drm/xlnx/zynqmp_dp.c
> index 99158ee67d02..8272eee03adc 100644
> --- a/drivers/gpu/drm/xlnx/zynqmp_dp.c
> +++ b/drivers/gpu/drm/xlnx/zynqmp_dp.c
> @@ -1069,6 +1069,7 @@ static int zynqmp_dp_aux_init(struct zynqmp_dp *dp)
>  
>  	dp->aux.name = "ZynqMP DP AUX";
>  	dp->aux.dev = dp->dev;
> +	dp->aux.drm_dev = dp->drm;
>  	dp->aux.transfer = zynqmp_dp_aux_transfer;
>  
>  	return drm_dp_aux_register(&dp->aux);
> diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
> index b35a1c1339e8..45ec74862212 100644
> --- a/include/drm/drm_dp_helper.h
> +++ b/include/drm/drm_dp_helper.h
> @@ -1833,13 +1833,19 @@ struct drm_dp_aux_cec {
>   * @name: user-visible name of this AUX channel and the I2C-over-AUX adapter
>   * @ddc: I2C adapter that can be used for I2C-over-AUX communication
>   * @dev: pointer to struct device that is the parent for this AUX channel
> + * @drm_dev: pointer to the &drm_device that owns this AUX channel. Beware, this may be %NULL
> + * before drm_dp_aux_register() has been called.
>   * @crtc: backpointer to the crtc that is currently using this AUX channel
>   * @hw_mutex: internal mutex used for locking transfers
>   * @crc_work: worker that captures CRCs for each frame
>   * @crc_count: counter of captured frame CRCs
>   * @transfer: transfers a message representing a single AUX transaction
>   *
> - * The @dev field should be set to a pointer to the device that implements the AUX channel.
> + * The @dev field should be set to a pointer to the device that implements the AUX channel. As well,
> + * the @drm_dev field should be set to the &drm_device that will be using this AUX channel as early
> + * as possible. For many graphics drivers this should happen before drm_dp_aux_init(), however it's
> + * perfectly fine to set this field later so long as it's assigned before calling
> + * drm_dp_aux_register().
>   *
>   * The @name field may be used to specify the name of the I2C adapter. If set to %NULL, dev_name()
>   * of @dev will be used.
> @@ -1866,6 +1872,7 @@ struct drm_dp_aux {
>  	const char *name;
>  	struct i2c_adapter ddc;
>  	struct device *dev;
> +	struct drm_device *drm_dev;
>  	struct drm_crtc *crtc;
>  	struct mutex hw_mutex;
>  	struct work_struct crc_work;

-- 
Regards,

Laurent Pinchart
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
