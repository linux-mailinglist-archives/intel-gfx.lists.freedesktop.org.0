Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFAD5A0112
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 20:06:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 526CD18BF8B;
	Wed, 24 Aug 2022 18:06:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCEA71123F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 08:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660724017; x=1692260017;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=t48/MqJvYo+2RcURzZRiYab/KaRC29AokLiLXyKTKYc=;
 b=kZEcnfBnqlkpunDHQgYJ12bWmWJuGWNRT/OOjlPnFUpscqeVqQmbhE3i
 Qq3OkXd6haw8+d/HDxKN+veUQHgMY4ZRGvxlDbj4w6GINotAvmur0zV5E
 QIXuLN6/Vt04NyGlDq2YWCVap6hARuW/GYg1j5nav2D+zv+/UNFSiIv/6
 fwe2uyHKa7NecQGcDbMS4SGL9k2ljN2PGeWk91wuUM/XTNi/r7E96Dpsm
 qZE6KHY31n5XsQ5Nsw8R5DnjsGOqL3cd5oUhyumRl/KqskCxxtVGNsaCX
 JOKJxOo1Cs898oGPqLxoK0Ty+Gv1odYCmDajr0dURJaZahARL8cOTx+XR Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="378726793"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="378726793"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 01:13:37 -0700
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="696689467"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 01:13:36 -0700
Date: Wed, 17 Aug 2022 11:14:19 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YvyjW2Hvb0EUrnFi@intel.com>
References: <cover.1660664162.git.jani.nikula@intel.com>
 <8b3765f1e1dc4d436b312016f72647e03ba49f94.1660664162.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8b3765f1e1dc4d436b312016f72647e03ba49f94.1660664162.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [RESEND 3/3] drm/i915/dsi: use VBT backlight and
 CABC port definitions directly
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 16, 2022 at 06:37:22PM +0300, Jani Nikula wrote:
> Drop the intermediate values stored in intel_dsi and use the VBT values
> directly, now that they're conveniently stored in panel->vbt.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c             |  4 ----
>  drivers/gpu/drm/i915/display/intel_dsi.h           |  3 ---
>  .../gpu/drm/i915/display/intel_dsi_dcs_backlight.c | 14 ++++++++------
>  drivers/gpu/drm/i915/display/vlv_dsi.c             |  4 ----
>  4 files changed, 8 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 885c74f60366..c089e392a041 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -2073,13 +2073,9 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>  	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
>  		intel_connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
>  
> -	intel_dsi->dcs_backlight_ports = intel_connector->panel.vbt.dsi.bl_ports;
> -
>  	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
>  		intel_connector->panel.vbt.dsi.cabc_ports &= intel_dsi->ports;
>  
> -	intel_dsi->dcs_cabc_ports = intel_connector->panel.vbt.dsi.cabc_ports;
> -
>  	for_each_dsi_port(port, intel_dsi->ports) {
>  		struct intel_dsi_host *host;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
> index eafef0a87fea..ce80bd8be519 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.h
> @@ -89,9 +89,6 @@ struct intel_dsi {
>  	u8 escape_clk_div;
>  	u8 dual_link;
>  
> -	u16 dcs_backlight_ports;
> -	u16 dcs_cabc_ports;
> -
>  	/* RGB or BGR */
>  	bool bgr_enabled;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> index 1bc7118c56a2..20e466d843ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> @@ -53,7 +53,7 @@ static u32 dcs_get_backlight(struct intel_connector *connector, enum pipe unused
>  	enum port port;
>  	size_t len = panel->backlight.max > U8_MAX ? 2 : 1;
>  
> -	for_each_dsi_port(port, intel_dsi->dcs_backlight_ports) {
> +	for_each_dsi_port(port, panel->vbt.dsi.bl_ports) {
>  		dsi_device = intel_dsi->dsi_hosts[port]->device;
>  		mipi_dsi_dcs_read(dsi_device, MIPI_DCS_GET_DISPLAY_BRIGHTNESS,
>  				  &data, len);
> @@ -80,7 +80,7 @@ static void dcs_set_backlight(const struct drm_connector_state *conn_state, u32
>  		data[1] = level;
>  	}
>  
> -	for_each_dsi_port(port, intel_dsi->dcs_backlight_ports) {
> +	for_each_dsi_port(port, panel->vbt.dsi.bl_ports) {
>  		dsi_device = intel_dsi->dsi_hosts[port]->device;
>  		mode_flags = dsi_device->mode_flags;
>  		dsi_device->mode_flags &= ~MIPI_DSI_MODE_LPM;
> @@ -93,12 +93,13 @@ static void dcs_set_backlight(const struct drm_connector_state *conn_state, u32
>  static void dcs_disable_backlight(const struct drm_connector_state *conn_state, u32 level)
>  {
>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(to_intel_encoder(conn_state->best_encoder));
> +	struct intel_panel *panel = &to_intel_connector(conn_state->connector)->panel;
>  	struct mipi_dsi_device *dsi_device;
>  	enum port port;
>  
>  	dcs_set_backlight(conn_state, 0);
>  
> -	for_each_dsi_port(port, intel_dsi->dcs_cabc_ports) {
> +	for_each_dsi_port(port, panel->vbt.dsi.cabc_ports) {
>  		u8 cabc = POWER_SAVE_OFF;
>  
>  		dsi_device = intel_dsi->dsi_hosts[port]->device;
> @@ -106,7 +107,7 @@ static void dcs_disable_backlight(const struct drm_connector_state *conn_state,
>  				   &cabc, sizeof(cabc));
>  	}
>  
> -	for_each_dsi_port(port, intel_dsi->dcs_backlight_ports) {
> +	for_each_dsi_port(port, panel->vbt.dsi.bl_ports) {
>  		u8 ctrl = 0;
>  
>  		dsi_device = intel_dsi->dsi_hosts[port]->device;
> @@ -127,10 +128,11 @@ static void dcs_enable_backlight(const struct intel_crtc_state *crtc_state,
>  				 const struct drm_connector_state *conn_state, u32 level)
>  {
>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(to_intel_encoder(conn_state->best_encoder));
> +	struct intel_panel *panel = &to_intel_connector(conn_state->connector)->panel;
>  	struct mipi_dsi_device *dsi_device;
>  	enum port port;
>  
> -	for_each_dsi_port(port, intel_dsi->dcs_backlight_ports) {
> +	for_each_dsi_port(port, panel->vbt.dsi.bl_ports) {
>  		u8 ctrl = 0;
>  
>  		dsi_device = intel_dsi->dsi_hosts[port]->device;
> @@ -146,7 +148,7 @@ static void dcs_enable_backlight(const struct intel_crtc_state *crtc_state,
>  				   &ctrl, sizeof(ctrl));
>  	}
>  
> -	for_each_dsi_port(port, intel_dsi->dcs_cabc_ports) {
> +	for_each_dsi_port(port, panel->vbt.dsi.cabc_ports) {
>  		u8 cabc = POWER_SAVE_MEDIUM;
>  
>  		dsi_device = intel_dsi->dsi_hosts[port]->device;
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index 35136d26e517..784ae52059d1 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1936,13 +1936,9 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>  	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
>  		intel_connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
>  
> -	intel_dsi->dcs_backlight_ports = intel_connector->panel.vbt.dsi.bl_ports;
> -
>  	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
>  		intel_connector->panel.vbt.dsi.cabc_ports &= intel_dsi->ports;
>  
> -	intel_dsi->dcs_cabc_ports = intel_connector->panel.vbt.dsi.cabc_ports;
> -
>  	/* Create a DSI host (and a device) for each port. */
>  	for_each_dsi_port(port, intel_dsi->ports) {
>  		struct intel_dsi_host *host;
> -- 
> 2.34.1
> 
