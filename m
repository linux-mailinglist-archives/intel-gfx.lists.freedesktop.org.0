Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC2876978C
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 15:27:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07C7510E2A5;
	Mon, 31 Jul 2023 13:27:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 549 seconds by postgrey-1.36 at gabe;
 Fri, 28 Jul 2023 18:40:47 UTC
Received: from soltyk.jannau.net (soltyk.jannau.net [144.76.91.90])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC03310E775;
 Fri, 28 Jul 2023 18:40:47 +0000 (UTC)
Received: by soltyk.jannau.net (Postfix, from userid 1000)
 id EBA2B2701FE; Fri, 28 Jul 2023 20:31:35 +0200 (CEST)
Date: Fri, 28 Jul 2023 20:31:35 +0200
From: Janne Grunau <j@jannau.net>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Message-ID: <ZMQJh6BIM2mQ9fCo@jannau.net>
References: <20230709202511.287794-1-dmitry.baryshkov@linaro.org>
 <20230709202511.287794-3-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230709202511.287794-3-dmitry.baryshkov@linaro.org>
X-Mailman-Approved-At: Mon, 31 Jul 2023 13:27:17 +0000
Subject: Re: [Intel-gfx] [PATCH v6 2/3] drm/bridge_connector: stop filtering
 events in drm_bridge_connector_hpd_cb()
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
Cc: dri-devel@lists.freedesktop.org,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, intel-gfx@lists.freedesktop.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-arm-msm@vger.kernel.org,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, linux-usb@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, freedreno@lists.freedesktop.org,
 David Airlie <airlied@gmail.com>, Bjorn Andersson <andersson@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023-07-09 23:25:10 +0300, Dmitry Baryshkov wrote:
> In some cases the bridge drivers would like to receive hotplug events
> even in the case new status is equal to the old status. In the DP case
> this is used to deliver "attention" messages to the DP host. Stop
> filtering the events in the drm_bridge_connector_hpd_cb() and let
> drivers decide whether they would like to receive the event or not.

Worth mentioning in the commit message that all current bridges which 
set .hpd_notify appear to be safe w.r.t multiple calls with the same 
status. meson_encoder_hdmi.c will do unnecessary work when called 
repeatedly with status connected. Not sure if it is worth adressing 
since I don't expect multiple calls with connector_status_connected to 
occur for this particular bridge.

Reviewed-By: Janne Grunau <j@jannau.net>

> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/gpu/drm/drm_bridge_connector.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_bridge_connector.c b/drivers/gpu/drm/drm_bridge_connector.c
> index 19ae4a177ac3..84d8d310ef04 100644
> --- a/drivers/gpu/drm/drm_bridge_connector.c
> +++ b/drivers/gpu/drm/drm_bridge_connector.c
> @@ -113,16 +113,11 @@ static void drm_bridge_connector_hpd_cb(void *cb_data,
>  	struct drm_bridge_connector *drm_bridge_connector = cb_data;
>  	struct drm_connector *connector = &drm_bridge_connector->base;
>  	struct drm_device *dev = connector->dev;
> -	enum drm_connector_status old_status;
>  
>  	mutex_lock(&dev->mode_config.mutex);
> -	old_status = connector->status;
>  	connector->status = status;
>  	mutex_unlock(&dev->mode_config.mutex);
>  
> -	if (old_status == status)
> -		return;
> -
>  	drm_bridge_connector_hpd_notify(connector, status);
>  
>  	drm_kms_helper_hotplug_event(dev);
> -- 
> 2.39.2
> 
