Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BC9192336
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 09:51:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC62789394;
	Wed, 25 Mar 2020 08:51:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62FCC89394
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 08:51:26 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id j17so1742124wru.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 01:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=pvmQ1IOR82jDLxQYHGhNiJszbVB0rdeURUERs4+fzpI=;
 b=HrXFdOObW43O+0u43pBYDlRt20xgiwRiXQ7XuKCkI9WeDllYwpbyqSAOgz7B4Uw/yC
 PCkugYboXlZYSSAwEF2toFu6bfpfaqGbIknJJAFxvlSIHMBN8U6DpVuEPlpkStWnijWS
 c8wHjMS4HJYUJH5zvrrhObZdVHhftMO5MFVOg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pvmQ1IOR82jDLxQYHGhNiJszbVB0rdeURUERs4+fzpI=;
 b=QzfNMLp1t8c3KnJivdnUsK4ID+HISvwMO1KUBtq93TOL24OvAdbF9VojlhyKrYhCVc
 1UqsU53iK2qTCiETpoe+p1MqPelOjLc8trjVCSrd/tVXxlWv5c9k9sPhC65qAAwLs3NP
 etDUWm/t9ao2rJ3RlF+/tMWxFkrTlZtFInhepVzd+C75ejb6LpGhEy6c+I/0dwtf1sLw
 2JJaNDOO2GoVwtWIG9j20HjbfwNZjV5iQHaXkSrfZLKzvdeNnur4Q8radbWfliqTt0GC
 APNuX4SJ/EPDR1SlP/Nutk+DOPDQkMStNlfKrd7/Kc/385ofuA+P6X4pUFOAW3ek/2/4
 M5Pg==
X-Gm-Message-State: ANhLgQ1zTHMgfyatAQqTbK5Sr84fW8AODbwU86jOYIOcQpXOX/QTJWmA
 2bKL7Ofjc96J1pzGlja90AadcQ==
X-Google-Smtp-Source: ADFU+vtSfelCOi49OUOveCr+OSLVMwf4hMlB592X//crnp1ZNp21vxd8zKGel1RSxeXt/N/7zY3Ssg==
X-Received: by 2002:adf:9022:: with SMTP id h31mr2142809wrh.223.1585126285023; 
 Wed, 25 Mar 2020 01:51:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n186sm8198575wme.25.2020.03.25.01.51.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 01:51:24 -0700 (PDT)
Date: Wed, 25 Mar 2020 09:51:22 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200325085122.GS2363188@phenom.ffwll.local>
References: <cover.1584714939.git.jani.nikula@intel.com>
 <436b6dde60dcba235085c8bb216c841267519fa6.1584714939.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <436b6dde60dcba235085c8bb216c841267519fa6.1584714939.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 07/13] drm/i915/dsi: use struct drm_device
 based logging
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 20, 2020 at 04:36:32PM +0200, Jani Nikula wrote:
> Convert all the DRM_* logging macros to the struct drm_device based
> macros to provide device specific logging.
> 
> No functional changes.

Not done with the cocci from Wambui? Please add usual blurb if done with
cocci's help.

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c       | 10 +++++++---
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 11 +++++------
>  drivers/gpu/drm/i915/display/vlv_dsi.c       |  3 ++-
>  3 files changed, 14 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 17cee6f80d8b..1ca1f377419c 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -186,16 +186,19 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host *host,
>  static int dsi_send_pkt_payld(struct intel_dsi_host *host,
>  			      struct mipi_dsi_packet pkt)
>  {
> +	struct intel_dsi *intel_dsi = host->intel_dsi;
> +	struct drm_i915_private *i915 = to_i915(intel_dsi->base.base.dev);
> +
>  	/* payload queue can accept *256 bytes*, check limit */
>  	if (pkt.payload_length > MAX_PLOAD_CREDIT * 4) {
> -		DRM_ERROR("payload size exceeds max queue limit\n");
> +		drm_err(&i915->drm, "payload size exceeds max queue limit\n");
>  		return -1;
>  	}
>  
>  	/* load data into command payload queue */
>  	if (!add_payld_to_queue(host, pkt.payload,
>  				pkt.payload_length)) {
> -		DRM_ERROR("adding payload to queue failed\n");
> +		drm_err(&i915->drm, "adding payload to queue failed\n");
>  		return -1;
>  	}
>  
> @@ -1417,6 +1420,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
>  				    struct intel_crtc_state *pipe_config,
>  				    struct drm_connector_state *conn_state)
>  {
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	struct intel_dsi *intel_dsi = container_of(encoder, struct intel_dsi,
>  						   base);
>  	struct intel_connector *intel_connector = intel_dsi->attached_connector;
> @@ -1446,7 +1450,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
>  	pipe_config->clock_set = true;
>  
>  	if (gen11_dsi_dsc_compute_config(encoder, pipe_config))
> -		DRM_DEBUG_KMS("Attempting to use DSC failed\n");
> +		drm_dbg_kms(&i915->drm, "Attempting to use DSC failed\n");
>  
>  	pipe_config->port_clock = afe_clk(encoder, pipe_config) / 5;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> index 574dcfec9577..3c9c05478a03 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> @@ -453,8 +453,7 @@ static inline void i2c_acpi_find_adapter(struct intel_dsi *intel_dsi,
>  
>  static const u8 *mipi_exec_i2c(struct intel_dsi *intel_dsi, const u8 *data)
>  {
> -	struct drm_device *drm_dev = intel_dsi->base.base.dev;
> -	struct device *dev = &drm_dev->pdev->dev;
> +	struct drm_i915_private *i915 = to_i915(intel_dsi->base.base.dev);
>  	struct i2c_adapter *adapter;
>  	struct i2c_msg msg;
>  	int ret;
> @@ -471,7 +470,7 @@ static const u8 *mipi_exec_i2c(struct intel_dsi *intel_dsi, const u8 *data)
>  
>  	adapter = i2c_get_adapter(intel_dsi->i2c_bus_num);
>  	if (!adapter) {
> -		DRM_DEV_ERROR(dev, "Cannot find a valid i2c bus for xfer\n");
> +		drm_err(&i915->drm, "Cannot find a valid i2c bus for xfer\n");
>  		goto err_bus;
>  	}
>  
> @@ -489,9 +488,9 @@ static const u8 *mipi_exec_i2c(struct intel_dsi *intel_dsi, const u8 *data)
>  
>  	ret = i2c_transfer(adapter, &msg, 1);
>  	if (ret < 0)
> -		DRM_DEV_ERROR(dev,
> -			      "Failed to xfer payload of size (%u) to reg (%u)\n",
> -			      payload_size, reg_offset);

One left to fix in i915 per my count, unfortunately tons more of
DRM_DEV_ERROR all over drm :-/

> +		drm_err(&i915->drm,
> +			"Failed to xfer payload of size (%u) to reg (%u)\n",
> +			payload_size, reg_offset);
>  
>  	kfree(payload_data);
>  err_alloc:
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index f4c362dc6e15..456909ee37a7 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -875,10 +875,11 @@ static void intel_dsi_disable(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *old_crtc_state,
>  			      const struct drm_connector_state *old_conn_state)
>  {
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>  	enum port port;
>  
> -	DRM_DEBUG_KMS("\n");
> +	drm_dbg_kms(&i915->drm, "\n");
>  
>  	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_OFF);
>  	intel_panel_disable_backlight(old_conn_state);

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
