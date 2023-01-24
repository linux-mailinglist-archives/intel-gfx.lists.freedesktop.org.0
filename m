Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8890B67938A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 09:55:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BE3410E639;
	Tue, 24 Jan 2023 08:55:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8174010E630;
 Tue, 24 Jan 2023 08:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674550519; x=1706086519;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=SYvybLfrGK2fw35ORWZhEgLKKSptkdp3/FLobAKi6xY=;
 b=BqUKFPjque29ytyapb/CmSn8sSSu6iN6XOnrf6d5yvgBfqK+/75YfpH/
 dGKKLo0ou4lvGgmfejFfWuiLU/mE21MdLFES+ymb+KUqW7LMogr3alrds
 56Y6QdgUrxX+9FKbCZEm5NAi2L+tq+WvfXhdCdsadsKDbnf7jbMZ0VvXH
 vgabA/BXiZ3LfP/qcI2mT2WjhCiVkM4yfIAhaIl1H6nWWOwIC8ilszFSk
 WYY/j/b1qQyy+ONfBysX5gSmhoIfsuM8EzRA7t819tO9ILl8vX2s+y07X
 A6KogbDTvj8oQDGIzMHJHwhNivIClIX5V9YBH2YUZjxwtYyU8Y3oWIY2F Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="412483452"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="412483452"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 00:55:18 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="750756504"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="750756504"
Received: from pesir-mobl.ger.corp.intel.com (HELO localhost) ([10.252.57.197])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 00:55:15 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>
In-Reply-To: <20230117233905.1662645-1-dmitry.baryshkov@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230117233905.1662645-1-dmitry.baryshkov@linaro.org>
Date: Tue, 24 Jan 2023 10:55:12 +0200
Message-ID: <87v8kw71n3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/probe_helper: sort out poll_running
 vs poll_enabled
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
Cc: Neil Armstrong <neil.armstrong@linaro.org>, intel-gfx@lists.freedesktop.org,
 Chen-Yu Tsai <wenst@chromium.org>, dri-devel@lists.freedesktop.org,
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, freedreno@lists.freedesktop.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 18 Jan 2023, Dmitry Baryshkov <dmitry.baryshkov@linaro.org> wrote:
> There are two flags attemting to guard connector polling:
> poll_enabled and poll_running. While poll_enabled semantics is clearly
> defined and fully adhered (mark that drm_kms_helper_poll_init() was
> called and not finalized by the _fini() call), the poll_running flag
> doesn't have such clearliness.
>
> This flag is used only in drm_helper_probe_single_connector_modes() to
> guard calling of drm_kms_helper_poll_enable, it doesn't guard the
> drm_kms_helper_poll_fini(), etc. Change it to only be set if the polling
> is actually running. Tie HPD enablement to this flag.
>
> This fixes the following warning reported after merging the HPD series:
>
> Hot plug detection already enabled
> WARNING: CPU: 2 PID: 9 at drivers/gpu/drm/drm_bridge.c:1257 drm_bridge_hpd_enable+0x94/0x9c [drm]
> Modules linked in: videobuf2_memops snd_soc_simple_card snd_soc_simple_card_utils fsl_imx8_ddr_perf videobuf2_common snd_soc_imx_spdif adv7511 etnaviv imx8m_ddrc imx_dcss mc cec nwl_dsi gov
> CPU: 2 PID: 9 Comm: kworker/u8:0 Not tainted 6.2.0-rc2-15208-g25b283acd578 #6
> Hardware name: NXP i.MX8MQ EVK (DT)
> Workqueue: events_unbound deferred_probe_work_func
> pstate: 60000005 (nZCv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> pc : drm_bridge_hpd_enable+0x94/0x9c [drm]
> lr : drm_bridge_hpd_enable+0x94/0x9c [drm]
> sp : ffff800009ef3740
> x29: ffff800009ef3740 x28: ffff000009331f00 x27: 0000000000001000
> x26: 0000000000000020 x25: ffff800001148ed8 x24: ffff00000a8fe000
> x23: 00000000fffffffd x22: ffff000005086348 x21: ffff800001133ee0
> x20: ffff00000550d800 x19: ffff000005086288 x18: 0000000000000006
> x17: 0000000000000000 x16: ffff8000096ef008 x15: 97ffff2891004260
> x14: 2a1403e194000000 x13: 97ffff2891004260 x12: 2a1403e194000000
> x11: 7100385f29400801 x10: 0000000000000aa0 x9 : ffff800008112744
> x8 : ffff000000250b00 x7 : 0000000000000003 x6 : 0000000000000011
> x5 : 0000000000000000 x4 : ffff0000bd986a48 x3 : 0000000000000001
> x2 : 0000000000000000 x1 : 0000000000000000 x0 : ffff000000250000
> Call trace:
>  drm_bridge_hpd_enable+0x94/0x9c [drm]
>  drm_bridge_connector_enable_hpd+0x2c/0x3c [drm_kms_helper]
>  drm_kms_helper_poll_enable+0x94/0x10c [drm_kms_helper]
>  drm_helper_probe_single_connector_modes+0x1a8/0x510 [drm_kms_helper]
>  drm_client_modeset_probe+0x204/0x1190 [drm]
>  __drm_fb_helper_initial_config_and_unlock+0x5c/0x4a4 [drm_kms_helper]
>  drm_fb_helper_initial_config+0x54/0x6c [drm_kms_helper]
>  drm_fbdev_client_hotplug+0xd0/0x140 [drm_kms_helper]
>  drm_fbdev_generic_setup+0x90/0x154 [drm_kms_helper]
>  dcss_kms_attach+0x1c8/0x254 [imx_dcss]
>  dcss_drv_platform_probe+0x90/0xfc [imx_dcss]
>  platform_probe+0x70/0xcc
>  really_probe+0xc4/0x2e0
>  __driver_probe_device+0x80/0xf0
>  driver_probe_device+0xe0/0x164
>  __device_attach_driver+0xc0/0x13c
>  bus_for_each_drv+0x84/0xe0
>  __device_attach+0xa4/0x1a0
>  device_initial_probe+0x1c/0x30
>  bus_probe_device+0xa4/0xb0
>  deferred_probe_work_func+0x90/0xd0
>  process_one_work+0x200/0x474
>  worker_thread+0x74/0x43c
>  kthread+0xfc/0x110
>  ret_from_fork+0x10/0x20
> ---[ end trace 0000000000000000 ]---
>
> Reported-by: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
> Fixes: c8268795c9a9 ("drm/probe-helper: enable and disable HPD on connectors")
> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Tested-by: Chen-Yu Tsai <wenst@chromium.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>
> Changes since v1:
> - Fixed drm_kms_helper_enable_hpd() to call enable_hpd() instead of
>   disable_hpd().
>
> ---
>  drivers/gpu/drm/drm_probe_helper.c | 110 +++++++++++++++++------------
>  1 file changed, 63 insertions(+), 47 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_probe_helper.c b/drivers/gpu/drm/drm_probe_helper.c
> index 7973f2589ced..04754bb7b131 100644
> --- a/drivers/gpu/drm/drm_probe_helper.c
> +++ b/drivers/gpu/drm/drm_probe_helper.c
> @@ -222,6 +222,45 @@ drm_connector_mode_valid(struct drm_connector *connector,
>  	return ret;
>  }
>  
> +static void drm_kms_helper_disable_hpd(struct drm_device *dev)
> +{
> +	struct drm_connector *connector;
> +	struct drm_connector_list_iter conn_iter;
> +
> +	drm_connector_list_iter_begin(dev, &conn_iter);
> +	drm_for_each_connector_iter(connector, &conn_iter) {
> +		const struct drm_connector_helper_funcs *funcs =
> +			connector->helper_private;
> +
> +		if (funcs && funcs->disable_hpd)
> +			funcs->disable_hpd(connector);
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +}
> +
> +static bool drm_kms_helper_enable_hpd(struct drm_device *dev)
> +{
> +	bool poll = false;
> +	struct drm_connector *connector;
> +	struct drm_connector_list_iter conn_iter;
> +
> +	drm_connector_list_iter_begin(dev, &conn_iter);
> +	drm_for_each_connector_iter(connector, &conn_iter) {
> +		const struct drm_connector_helper_funcs *funcs =
> +			connector->helper_private;
> +
> +		if (funcs && funcs->enable_hpd)
> +			funcs->enable_hpd(connector);
> +
> +		if (connector->polled & (DRM_CONNECTOR_POLL_CONNECT |
> +					 DRM_CONNECTOR_POLL_DISCONNECT))
> +			poll = true;
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +
> +	return poll;
> +}
> +
>  #define DRM_OUTPUT_POLL_PERIOD (10*HZ)
>  /**
>   * drm_kms_helper_poll_enable - re-enable output polling.
> @@ -241,26 +280,14 @@ drm_connector_mode_valid(struct drm_connector *connector,
>  void drm_kms_helper_poll_enable(struct drm_device *dev)
>  {
>  	bool poll = false;
> -	struct drm_connector *connector;
> -	struct drm_connector_list_iter conn_iter;
>  	unsigned long delay = DRM_OUTPUT_POLL_PERIOD;
>  
> -	if (!dev->mode_config.poll_enabled || !drm_kms_helper_poll)
> +	if (!dev->mode_config.poll_enabled ||
> +	    !drm_kms_helper_poll ||
> +	    dev->mode_config.poll_running)
>  		return;
>  
> -	drm_connector_list_iter_begin(dev, &conn_iter);
> -	drm_for_each_connector_iter(connector, &conn_iter) {
> -		const struct drm_connector_helper_funcs *funcs =
> -			connector->helper_private;
> -
> -		if (funcs && funcs->enable_hpd)
> -			funcs->enable_hpd(connector);
> -
> -		if (connector->polled & (DRM_CONNECTOR_POLL_CONNECT |
> -					 DRM_CONNECTOR_POLL_DISCONNECT))
> -			poll = true;
> -	}
> -	drm_connector_list_iter_end(&conn_iter);
> +	poll = drm_kms_helper_enable_hpd(dev);

I'd really like to see these non-functional abstractions to functions
separated from the actual functional fix. There's too much going on in
the same patch here.

BR,
Jani.

>  
>  	if (dev->mode_config.delayed_event) {
>  		/*
> @@ -279,6 +306,8 @@ void drm_kms_helper_poll_enable(struct drm_device *dev)
>  
>  	if (poll)
>  		schedule_delayed_work(&dev->mode_config.output_poll_work, delay);
> +
> +	dev->mode_config.poll_running = true;
>  }
>  EXPORT_SYMBOL(drm_kms_helper_poll_enable);
>  
> @@ -567,10 +596,7 @@ int drm_helper_probe_single_connector_modes(struct drm_connector *connector,
>  	}
>  
>  	/* Re-enable polling in case the global poll config changed. */
> -	if (drm_kms_helper_poll != dev->mode_config.poll_running)
> -		drm_kms_helper_poll_enable(dev);
> -
> -	dev->mode_config.poll_running = drm_kms_helper_poll;
> +	drm_kms_helper_poll_enable(dev);
>  
>  	if (connector->status == connector_status_disconnected) {
>  		DRM_DEBUG_KMS("[CONNECTOR:%d:%s] disconnected\n",
> @@ -710,8 +736,12 @@ static void output_poll_execute(struct work_struct *work)
>  	changed = dev->mode_config.delayed_event;
>  	dev->mode_config.delayed_event = false;
>  
> -	if (!drm_kms_helper_poll)
> +	if (!drm_kms_helper_poll &&
> +	    dev->mode_config.poll_running) {
> +		drm_kms_helper_disable_hpd(dev);
> +		dev->mode_config.poll_running = false;
>  		goto out;
> +	}
>  
>  	if (!mutex_trylock(&dev->mode_config.mutex)) {
>  		repoll = true;
> @@ -808,30 +838,6 @@ bool drm_kms_helper_is_poll_worker(void)
>  }
>  EXPORT_SYMBOL(drm_kms_helper_is_poll_worker);
>  
> -static void drm_kms_helper_poll_disable_fini(struct drm_device *dev, bool fini)
> -{
> -	struct drm_connector *connector;
> -	struct drm_connector_list_iter conn_iter;
> -
> -	if (!dev->mode_config.poll_enabled)
> -		return;
> -
> -	if (fini)
> -		dev->mode_config.poll_enabled = false;
> -
> -	drm_connector_list_iter_begin(dev, &conn_iter);
> -	drm_for_each_connector_iter(connector, &conn_iter) {
> -		const struct drm_connector_helper_funcs *funcs =
> -			connector->helper_private;
> -
> -		if (funcs && funcs->disable_hpd)
> -			funcs->disable_hpd(connector);
> -	}
> -	drm_connector_list_iter_end(&conn_iter);
> -
> -	cancel_delayed_work_sync(&dev->mode_config.output_poll_work);
> -}
> -
>  /**
>   * drm_kms_helper_poll_disable - disable output polling
>   * @dev: drm_device
> @@ -848,7 +854,12 @@ static void drm_kms_helper_poll_disable_fini(struct drm_device *dev, bool fini)
>   */
>  void drm_kms_helper_poll_disable(struct drm_device *dev)
>  {
> -	drm_kms_helper_poll_disable_fini(dev, false);
> +	if (dev->mode_config.poll_running)
> +		drm_kms_helper_disable_hpd(dev);
> +
> +	cancel_delayed_work_sync(&dev->mode_config.output_poll_work);
> +
> +	dev->mode_config.poll_running = false;
>  }
>  EXPORT_SYMBOL(drm_kms_helper_poll_disable);
>  
> @@ -886,7 +897,12 @@ EXPORT_SYMBOL(drm_kms_helper_poll_init);
>   */
>  void drm_kms_helper_poll_fini(struct drm_device *dev)
>  {
> -	drm_kms_helper_poll_disable_fini(dev, true);
> +	if (!dev->mode_config.poll_enabled)
> +		return;
> +
> +	drm_kms_helper_poll_disable(dev);
> +
> +	dev->mode_config.poll_enabled = false;
>  }
>  EXPORT_SYMBOL(drm_kms_helper_poll_fini);

-- 
Jani Nikula, Intel Open Source Graphics Center
