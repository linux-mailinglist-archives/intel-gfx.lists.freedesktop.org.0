Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F5619230D
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 09:43:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89A856E5A4;
	Wed, 25 Mar 2020 08:43:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 052436E5A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 08:43:05 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id p10so1779752wrt.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 01:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1226XugIkgsbJ/YnaqCnLxpEOTRjcVhZuPRLqQem0rE=;
 b=I4QrNwzTlFx7PH2E64H7+5BorFHzMmGc0V26Zr9RUIZwGbmTdQTcE21chg1iZ4qx/a
 vHclWcRkLleQEfJEzvtyZwv28RwuWm4wNX8P1nl7wxVSqGOcn0vFNlGDOFUWdWyWnIOJ
 +VARtE+5TBJf56LYTj5T/SJAFEuf4clS/cQfE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1226XugIkgsbJ/YnaqCnLxpEOTRjcVhZuPRLqQem0rE=;
 b=WN19143Y9pYV4aT7V+rhtH/QXQYv8BeHtmjKAciJ1uIFrB/8mvf10BCerKiCOeK/VC
 zh35IRlgeGgrD0GyTviWBPlXH35x4jPUOeRT216xN9PRESO83bE9veXL5be8NyT6iJV9
 /RNStjoYT4nS8oMsGy9l252ZHWrHpO4o1P+uUdSymkfYdPwQz8Ouy53FpES3EQHdKu0Z
 O6YYoPEIjxWv4/ekqkZERMZUlCp9prqfqGKL/95fahjFL+LewCJRgOB+N+Vd2BO5PwjL
 rooSSC1L2I9eW1tA2FiH8J52hZlpfmU2BBmC5RNk59uZmF/sNJ9pfCsqp3vwTJdKOxDx
 EuYA==
X-Gm-Message-State: ANhLgQ02LEN/D3qIzcaNnse45oRE7gHK4bnKazbSIB+aZu5sYXCXKQSN
 DV43gy4PMpq1DxT3IzKCnFmrkt/2sVAjeOT+
X-Google-Smtp-Source: ADFU+vvf6U65WqkNdhiPexBkC95H5BaFQqImzhF2gVAn66ZpYkeqaIZGVx8pQSnbKB0kH1V417wPMg==
X-Received: by 2002:adf:91c3:: with SMTP id 61mr2155632wri.384.1585125783400; 
 Wed, 25 Mar 2020 01:43:03 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y200sm8200647wmc.20.2020.03.25.01.43.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 01:43:02 -0700 (PDT)
Date: Wed, 25 Mar 2020 09:43:00 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200325084300.GQ2363188@phenom.ffwll.local>
References: <cover.1584714939.git.jani.nikula@intel.com>
 <fbc5396e6a512195b38c24b113aeebe23755c716.1584714939.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fbc5396e6a512195b38c24b113aeebe23755c716.1584714939.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 06/13] drm/i915/hdmi: use struct drm_device
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
Cc: intel-gfx@lists.freedesktop.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 20, 2020 at 04:36:31PM +0200, Jani Nikula wrote:
> Convert all the DRM_* logging macros to the struct drm_device based
> macros to provide device specific logging.
> 
> No functional changes.
> 
> Generated using the following semantic patch, originally written by
> Wambui Karuga <wambui.karugax@gmail.com>, with manual fixups on top:
> 
> @@
> identifier fn, T;
> @@
> 
> fn(...,struct drm_i915_private *T,...) {
> <+...
> (
> -DRM_INFO(
> +drm_info(&T->drm,
> ...)
> |
> -DRM_NOTE(
> +drm_notice(&T->drm,
> ...)
> |
> -DRM_ERROR(
> +drm_err(&T->drm,
> ...)
> |
> -DRM_WARN(
> +drm_warn(&T->drm,
> ...)
> |
> -DRM_DEBUG_DRIVER(
> +drm_dbg(&T->drm,
> ...)
> |
> -DRM_DEBUG_KMS(
> +drm_dbg_kms(&T->drm,
> ...)
> |
> -DRM_DEBUG_ATOMIC(
> +drm_dbg_atomic(&T->drm,
> ...)
> )
> ...+>
> }
> 
> @@
> identifier fn, T;
> @@
> 
> fn(...) {
> ...
> struct drm_i915_private *T = ...;
> <+...
> (
> -DRM_INFO(
> +drm_info(&T->drm,
> ...)
> |
> -DRM_NOTE(
> +drm_notice(&T->drm,
> ...)
> |
> -DRM_ERROR(
> +drm_err(&T->drm,
> ...)
> |
> -DRM_WARN(
> +drm_warn(&T->drm,
> ...)
> |
> -DRM_DEBUG_DRIVER(
> +drm_dbg(&T->drm,
> ...)
> |
> -DRM_DEBUG_KMS(
> +drm_dbg_kms(&T->drm,
> ...)
> |
> -DRM_DEBUG_ATOMIC(
> +drm_dbg_atomic(&T->drm,
> ...)
> )
> ...+>
> }
> 
> Cc: Wambui Karuga <wambui.karugax@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 189 ++++++++++++++--------
>  1 file changed, 121 insertions(+), 68 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 39930232b253..395dc192baa0 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -691,6 +691,7 @@ void intel_read_infoframe(struct intel_encoder *encoder,
>  			  union hdmi_infoframe *frame)
>  {
>  	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>  	u8 buffer[VIDEO_DIP_DATA_SIZE];
>  	int ret;
>  
> @@ -707,13 +708,15 @@ void intel_read_infoframe(struct intel_encoder *encoder,
>  	/* see comment above for the reason for this offset */
>  	ret = hdmi_infoframe_unpack(frame, buffer + 1, sizeof(buffer) - 1);
>  	if (ret) {
> -		DRM_DEBUG_KMS("Failed to unpack infoframe type 0x%02x\n", type);
> +		drm_dbg_kms(&i915->drm,
> +			    "Failed to unpack infoframe type 0x%02x\n", type);
>  		return;
>  	}
>  
>  	if (frame->any.type != type)
> -		DRM_DEBUG_KMS("Found the wrong infoframe type 0x%x (expected 0x%02x)\n",
> -			      frame->any.type, type);
> +		drm_dbg_kms(&i915->drm,
> +			    "Found the wrong infoframe type 0x%x (expected 0x%02x)\n",
> +			    frame->any.type, type);
>  }
>  
>  static bool
> @@ -853,7 +856,8 @@ intel_hdmi_compute_drm_infoframe(struct intel_encoder *encoder,
>  
>  	ret = drm_hdmi_infoframe_set_hdr_metadata(frame, conn_state);
>  	if (ret < 0) {
> -		DRM_DEBUG_KMS("couldn't set HDR metadata in infoframe\n");
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "couldn't set HDR metadata in infoframe\n");
>  		return false;
>  	}
>  
> @@ -893,8 +897,9 @@ static void g4x_set_infoframes(struct intel_encoder *encoder,
>  		if (!(val & VIDEO_DIP_ENABLE))
>  			return;
>  		if (port != (val & VIDEO_DIP_PORT_MASK)) {
> -			DRM_DEBUG_KMS("video DIP still enabled on port %c\n",
> -				      (val & VIDEO_DIP_PORT_MASK) >> 29);
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "video DIP still enabled on port %c\n",
> +				    (val & VIDEO_DIP_PORT_MASK) >> 29);
>  			return;
>  		}
>  		val &= ~(VIDEO_DIP_ENABLE | VIDEO_DIP_ENABLE_AVI |
> @@ -906,8 +911,9 @@ static void g4x_set_infoframes(struct intel_encoder *encoder,
>  
>  	if (port != (val & VIDEO_DIP_PORT_MASK)) {
>  		if (val & VIDEO_DIP_ENABLE) {
> -			DRM_DEBUG_KMS("video DIP already enabled on port %c\n",
> -				      (val & VIDEO_DIP_PORT_MASK) >> 29);
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "video DIP already enabled on port %c\n",
> +				    (val & VIDEO_DIP_PORT_MASK) >> 29);
>  			return;
>  		}
>  		val &= ~VIDEO_DIP_PORT_MASK;
> @@ -1264,8 +1270,8 @@ void intel_dp_dual_mode_set_tmds_output(struct intel_hdmi *hdmi, bool enable)
>  	if (hdmi->dp_dual_mode.type < DRM_DP_DUAL_MODE_TYPE2_DVI)
>  		return;
>  
> -	DRM_DEBUG_KMS("%s DP dual mode adaptor TMDS output\n",
> -		      enable ? "Enabling" : "Disabling");
> +	drm_dbg_kms(&dev_priv->drm, "%s DP dual mode adaptor TMDS output\n",
> +		    enable ? "Enabling" : "Disabling");
>  
>  	drm_dp_dual_mode_set_tmds_output(hdmi->dp_dual_mode.type,
>  					 adapter, enable);
> @@ -1346,13 +1352,14 @@ int intel_hdmi_hdcp_write_an_aksv(struct intel_digital_port *intel_dig_port,
>  	ret = intel_hdmi_hdcp_write(intel_dig_port, DRM_HDCP_DDC_AN, an,
>  				    DRM_HDCP_AN_LEN);
>  	if (ret) {
> -		DRM_DEBUG_KMS("Write An over DDC failed (%d)\n", ret);
> +		drm_dbg_kms(&i915->drm, "Write An over DDC failed (%d)\n",
> +			    ret);
>  		return ret;
>  	}
>  
>  	ret = intel_gmbus_output_aksv(adapter);
>  	if (ret < 0) {
> -		DRM_DEBUG_KMS("Failed to output aksv (%d)\n", ret);
> +		drm_dbg_kms(&i915->drm, "Failed to output aksv (%d)\n", ret);
>  		return ret;
>  	}
>  	return 0;
> @@ -1361,11 +1368,14 @@ int intel_hdmi_hdcp_write_an_aksv(struct intel_digital_port *intel_dig_port,
>  static int intel_hdmi_hdcp_read_bksv(struct intel_digital_port *intel_dig_port,
>  				     u8 *bksv)
>  {
> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
> +
>  	int ret;
>  	ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_BKSV, bksv,
>  				   DRM_HDCP_KSV_LEN);
>  	if (ret)
> -		DRM_DEBUG_KMS("Read Bksv over DDC failed (%d)\n", ret);
> +		drm_dbg_kms(&i915->drm, "Read Bksv over DDC failed (%d)\n",
> +			    ret);
>  	return ret;
>  }
>  
> @@ -1373,11 +1383,14 @@ static
>  int intel_hdmi_hdcp_read_bstatus(struct intel_digital_port *intel_dig_port,
>  				 u8 *bstatus)
>  {
> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
> +
>  	int ret;
>  	ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_BSTATUS,
>  				   bstatus, DRM_HDCP_BSTATUS_LEN);
>  	if (ret)
> -		DRM_DEBUG_KMS("Read bstatus over DDC failed (%d)\n", ret);
> +		drm_dbg_kms(&i915->drm, "Read bstatus over DDC failed (%d)\n",
> +			    ret);
>  	return ret;
>  }
>  
> @@ -1385,12 +1398,14 @@ static
>  int intel_hdmi_hdcp_repeater_present(struct intel_digital_port *intel_dig_port,
>  				     bool *repeater_present)
>  {
> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>  	int ret;
>  	u8 val;
>  
>  	ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_BCAPS, &val, 1);
>  	if (ret) {
> -		DRM_DEBUG_KMS("Read bcaps over DDC failed (%d)\n", ret);
> +		drm_dbg_kms(&i915->drm, "Read bcaps over DDC failed (%d)\n",
> +			    ret);
>  		return ret;
>  	}
>  	*repeater_present = val & DRM_HDCP_DDC_BCAPS_REPEATER_PRESENT;
> @@ -1401,11 +1416,14 @@ static
>  int intel_hdmi_hdcp_read_ri_prime(struct intel_digital_port *intel_dig_port,
>  				  u8 *ri_prime)
>  {
> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
> +
>  	int ret;
>  	ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_RI_PRIME,
>  				   ri_prime, DRM_HDCP_RI_LEN);
>  	if (ret)
> -		DRM_DEBUG_KMS("Read Ri' over DDC failed (%d)\n", ret);
> +		drm_dbg_kms(&i915->drm, "Read Ri' over DDC failed (%d)\n",
> +			    ret);
>  	return ret;
>  }
>  
> @@ -1413,12 +1431,14 @@ static
>  int intel_hdmi_hdcp_read_ksv_ready(struct intel_digital_port *intel_dig_port,
>  				   bool *ksv_ready)
>  {
> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>  	int ret;
>  	u8 val;
>  
>  	ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_BCAPS, &val, 1);
>  	if (ret) {
> -		DRM_DEBUG_KMS("Read bcaps over DDC failed (%d)\n", ret);
> +		drm_dbg_kms(&i915->drm, "Read bcaps over DDC failed (%d)\n",
> +			    ret);
>  		return ret;
>  	}
>  	*ksv_ready = val & DRM_HDCP_DDC_BCAPS_KSV_FIFO_READY;
> @@ -1429,11 +1449,13 @@ static
>  int intel_hdmi_hdcp_read_ksv_fifo(struct intel_digital_port *intel_dig_port,
>  				  int num_downstream, u8 *ksv_fifo)
>  {
> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>  	int ret;
>  	ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_KSV_FIFO,
>  				   ksv_fifo, num_downstream * DRM_HDCP_KSV_LEN);
>  	if (ret) {
> -		DRM_DEBUG_KMS("Read ksv fifo over DDC failed (%d)\n", ret);
> +		drm_dbg_kms(&i915->drm,
> +			    "Read ksv fifo over DDC failed (%d)\n", ret);
>  		return ret;
>  	}
>  	return 0;
> @@ -1443,6 +1465,7 @@ static
>  int intel_hdmi_hdcp_read_v_prime_part(struct intel_digital_port *intel_dig_port,
>  				      int i, u32 *part)
>  {
> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>  	int ret;
>  
>  	if (i >= DRM_HDCP_V_PRIME_NUM_PARTS)
> @@ -1451,7 +1474,8 @@ int intel_hdmi_hdcp_read_v_prime_part(struct intel_digital_port *intel_dig_port,
>  	ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_V_PRIME(i),
>  				   part, DRM_HDCP_V_PRIME_PART_LEN);
>  	if (ret)
> -		DRM_DEBUG_KMS("Read V'[%d] over DDC failed (%d)\n", i, ret);
> +		drm_dbg_kms(&i915->drm, "Read V'[%d] over DDC failed (%d)\n",
> +			    i, ret);
>  	return ret;
>  }
>  
> @@ -1474,12 +1498,14 @@ static int kbl_repositioning_enc_en_signal(struct intel_connector *connector)
>  
>  	ret = intel_ddi_toggle_hdcp_signalling(&intel_dig_port->base, false);
>  	if (ret) {
> -		DRM_ERROR("Disable HDCP signalling failed (%d)\n", ret);
> +		drm_err(&dev_priv->drm,
> +			"Disable HDCP signalling failed (%d)\n", ret);
>  		return ret;
>  	}
>  	ret = intel_ddi_toggle_hdcp_signalling(&intel_dig_port->base, true);
>  	if (ret) {
> -		DRM_ERROR("Enable HDCP signalling failed (%d)\n", ret);
> +		drm_err(&dev_priv->drm,
> +			"Enable HDCP signalling failed (%d)\n", ret);
>  		return ret;
>  	}
>  
> @@ -1500,8 +1526,8 @@ int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
>  
>  	ret = intel_ddi_toggle_hdcp_signalling(&intel_dig_port->base, enable);
>  	if (ret) {
> -		DRM_ERROR("%s HDCP signalling failed (%d)\n",
> -			  enable ? "Enable" : "Disable", ret);
> +		drm_err(&dev_priv->drm, "%s HDCP signalling failed (%d)\n",
> +			enable ? "Enable" : "Disable", ret);
>  		return ret;
>  	}
>  
> @@ -1538,8 +1564,10 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
>  	/* Wait for Ri prime match */
>  	if (wait_for(intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
>  		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
> -		DRM_ERROR("Ri' mismatch detected, link check failed (%x)\n",
> -			  intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)));
> +		drm_err(&i915->drm,
> +			"Ri' mismatch detected, link check failed (%x)\n",
> +			intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
> +							port)));
>  		return false;
>  	}
>  	return true;
> @@ -1588,16 +1616,18 @@ static int get_hdcp2_msg_timeout(u8 msg_id, bool is_paired)
>  }
>  
>  static inline
> -int hdcp2_detect_msg_availability(struct intel_digital_port *intel_digital_port,
> +int hdcp2_detect_msg_availability(struct intel_digital_port *intel_dig_port,
>  				  u8 msg_id, bool *msg_ready,
>  				  ssize_t *msg_sz)
>  {
> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>  	u8 rx_status[HDCP_2_2_HDMI_RXSTATUS_LEN];
>  	int ret;
>  
> -	ret = intel_hdmi_hdcp2_read_rx_status(intel_digital_port, rx_status);
> +	ret = intel_hdmi_hdcp2_read_rx_status(intel_dig_port, rx_status);
>  	if (ret < 0) {
> -		DRM_DEBUG_KMS("rx_status read failed. Err %d\n", ret);
> +		drm_dbg_kms(&i915->drm, "rx_status read failed. Err %d\n",
> +			    ret);
>  		return ret;
>  	}
>  
> @@ -1617,6 +1647,7 @@ static ssize_t
>  intel_hdmi_hdcp2_wait_for_msg(struct intel_digital_port *intel_dig_port,
>  			      u8 msg_id, bool paired)
>  {
> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>  	bool msg_ready = false;
>  	int timeout, ret;
>  	ssize_t msg_sz = 0;
> @@ -1631,8 +1662,8 @@ intel_hdmi_hdcp2_wait_for_msg(struct intel_digital_port *intel_dig_port,
>  			 !ret && msg_ready && msg_sz, timeout * 1000,
>  			 1000, 5 * 1000);
>  	if (ret)
> -		DRM_DEBUG_KMS("msg_id: %d, ret: %d, timeout: %d\n",
> -			      msg_id, ret, timeout);
> +		drm_dbg_kms(&i915->drm, "msg_id: %d, ret: %d, timeout: %d\n",
> +			    msg_id, ret, timeout);
>  
>  	return ret ? ret : msg_sz;
>  }
> @@ -1651,6 +1682,7 @@ static
>  int intel_hdmi_hdcp2_read_msg(struct intel_digital_port *intel_dig_port,
>  			      u8 msg_id, void *buf, size_t size)
>  {
> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>  	struct intel_hdmi *hdmi = &intel_dig_port->hdmi;
>  	struct intel_hdcp *hdcp = &hdmi->attached_connector->hdcp;
>  	unsigned int offset;
> @@ -1666,15 +1698,17 @@ int intel_hdmi_hdcp2_read_msg(struct intel_digital_port *intel_dig_port,
>  	 * available buffer.
>  	 */
>  	if (ret > size) {
> -		DRM_DEBUG_KMS("msg_sz(%zd) is more than exp size(%zu)\n",
> -			      ret, size);
> +		drm_dbg_kms(&i915->drm,
> +			    "msg_sz(%zd) is more than exp size(%zu)\n",
> +			    ret, size);
>  		return -1;
>  	}
>  
>  	offset = HDCP_2_2_HDMI_REG_RD_MSG_OFFSET;
>  	ret = intel_hdmi_hdcp_read(intel_dig_port, offset, buf, ret);
>  	if (ret)
> -		DRM_DEBUG_KMS("Failed to read msg_id: %d(%zd)\n", msg_id, ret);
> +		drm_dbg_kms(&i915->drm, "Failed to read msg_id: %d(%zd)\n",
> +			    msg_id, ret);
>  
>  	return ret;
>  }
> @@ -1870,11 +1904,12 @@ static void intel_enable_hdmi_audio(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *pipe_config,
>  				    const struct drm_connector_state *conn_state)
>  {
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
>  
> -	drm_WARN_ON(encoder->base.dev, !pipe_config->has_hdmi_sink);
> -	DRM_DEBUG_DRIVER("Enabling HDMI audio on pipe %c\n",
> -			 pipe_name(crtc->pipe));
> +	drm_WARN_ON(&i915->drm, !pipe_config->has_hdmi_sink);
> +	drm_dbg_kms(&i915->drm, "Enabling HDMI audio on pipe %c\n",
> +		    pipe_name(crtc->pipe));
>  	intel_audio_codec_enable(encoder, pipe_config, conn_state);
>  }
>  
> @@ -2289,10 +2324,12 @@ static bool
>  intel_hdmi_ycbcr420_config(struct drm_connector *connector,
>  			   struct intel_crtc_state *config)
>  {
> +	struct drm_i915_private *i915 = to_i915(connector->dev);
>  	struct intel_crtc *intel_crtc = to_intel_crtc(config->uapi.crtc);
>  
>  	if (!connector->ycbcr_420_allowed) {
> -		DRM_ERROR("Platform doesn't support YCBCR420 output\n");
> +		drm_err(&i915->drm,
> +			"Platform doesn't support YCBCR420 output\n");
>  		return false;
>  	}
>  
> @@ -2300,7 +2337,8 @@ intel_hdmi_ycbcr420_config(struct drm_connector *connector,
>  
>  	/* YCBCR 420 output conversion needs a scaler */
>  	if (skl_update_scaler_crtc(config)) {
> -		DRM_DEBUG_KMS("Scaler allocation for output failed\n");
> +		drm_dbg_kms(&i915->drm,
> +			    "Scaler allocation for output failed\n");
>  		return false;
>  	}
>  
> @@ -2341,6 +2379,7 @@ static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
>  static int intel_hdmi_compute_clock(struct intel_encoder *encoder,
>  				    struct intel_crtc_state *crtc_state)
>  {
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
> @@ -2365,13 +2404,15 @@ static int intel_hdmi_compute_clock(struct intel_encoder *encoder,
>  	if (crtc_state->pipe_bpp > bpc * 3)
>  		crtc_state->pipe_bpp = bpc * 3;
>  
> -	DRM_DEBUG_KMS("picking %d bpc for HDMI output (pipe bpp: %d)\n",
> -		      bpc, crtc_state->pipe_bpp);
> +	drm_dbg_kms(&i915->drm,
> +		    "picking %d bpc for HDMI output (pipe bpp: %d)\n",
> +		    bpc, crtc_state->pipe_bpp);
>  
>  	if (hdmi_port_clock_valid(intel_hdmi, crtc_state->port_clock,
>  				  false, crtc_state->has_hdmi_sink) != MODE_OK) {
> -		DRM_DEBUG_KMS("unsupported HDMI clock (%d kHz), rejecting mode\n",
> -			      crtc_state->port_clock);
> +		drm_dbg_kms(&i915->drm,
> +			    "unsupported HDMI clock (%d kHz), rejecting mode\n",
> +			    crtc_state->port_clock);
>  		return -EINVAL;
>  	}
>  
> @@ -2434,7 +2475,8 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  
>  	if (drm_mode_is_420_only(&connector->display_info, adjusted_mode)) {
>  		if (!intel_hdmi_ycbcr420_config(connector, pipe_config)) {
> -			DRM_ERROR("Can't support YCBCR420 output\n");
> +			drm_err(&dev_priv->drm,
> +				"Can't support YCBCR420 output\n");
>  			return -EINVAL;
>  		}
>  	}
> @@ -2477,22 +2519,22 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  	intel_hdmi_compute_gcp_infoframe(encoder, pipe_config, conn_state);
>  
>  	if (!intel_hdmi_compute_avi_infoframe(encoder, pipe_config, conn_state)) {
> -		DRM_DEBUG_KMS("bad AVI infoframe\n");
> +		drm_dbg_kms(&dev_priv->drm, "bad AVI infoframe\n");
>  		return -EINVAL;
>  	}
>  
>  	if (!intel_hdmi_compute_spd_infoframe(encoder, pipe_config, conn_state)) {
> -		DRM_DEBUG_KMS("bad SPD infoframe\n");
> +		drm_dbg_kms(&dev_priv->drm, "bad SPD infoframe\n");
>  		return -EINVAL;
>  	}
>  
>  	if (!intel_hdmi_compute_hdmi_infoframe(encoder, pipe_config, conn_state)) {
> -		DRM_DEBUG_KMS("bad HDMI infoframe\n");
> +		drm_dbg_kms(&dev_priv->drm, "bad HDMI infoframe\n");
>  		return -EINVAL;
>  	}
>  
>  	if (!intel_hdmi_compute_drm_infoframe(encoder, pipe_config, conn_state)) {
> -		DRM_DEBUG_KMS("bad DRM infoframe\n");
> +		drm_dbg_kms(&dev_priv->drm, "bad DRM infoframe\n");
>  		return -EINVAL;
>  	}
>  
> @@ -2542,7 +2584,8 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector, bool has_edid)
>  		 */
>  		if (has_edid && !connector->override_edid &&
>  		    intel_bios_is_port_dp_dual_mode(dev_priv, port)) {
> -			DRM_DEBUG_KMS("Assuming DP dual mode adaptor presence based on VBT\n");
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "Assuming DP dual mode adaptor presence based on VBT\n");
>  			type = DRM_DP_DUAL_MODE_TYPE1_DVI;
>  		} else {
>  			type = DRM_DP_DUAL_MODE_NONE;
> @@ -2556,9 +2599,10 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector, bool has_edid)
>  	hdmi->dp_dual_mode.max_tmds_clock =
>  		drm_dp_dual_mode_max_tmds_clock(type, adapter);
>  
> -	DRM_DEBUG_KMS("DP dual mode adaptor (%s) detected (max TMDS clock: %d kHz)\n",
> -		      drm_dp_get_dual_mode_type_name(type),
> -		      hdmi->dp_dual_mode.max_tmds_clock);
> +	drm_dbg_kms(&dev_priv->drm,
> +		    "DP dual mode adaptor (%s) detected (max TMDS clock: %d kHz)\n",
> +		    drm_dp_get_dual_mode_type_name(type),
> +		    hdmi->dp_dual_mode.max_tmds_clock);
>  }
>  
>  static bool
> @@ -2578,7 +2622,8 @@ intel_hdmi_set_edid(struct drm_connector *connector)
>  	edid = drm_get_edid(connector, i2c);
>  
>  	if (!edid && !intel_gmbus_is_forced_bit(i2c)) {
> -		DRM_DEBUG_KMS("HDMI GMBUS EDID read failed, retry using GPIO bit-banging\n");
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "HDMI GMBUS EDID read failed, retry using GPIO bit-banging\n");
>  		intel_gmbus_force_bit(i2c, true);
>  		edid = drm_get_edid(connector, i2c);
>  		intel_gmbus_force_bit(i2c, false);
> @@ -2610,8 +2655,8 @@ intel_hdmi_detect(struct drm_connector *connector, bool force)
>  	struct intel_encoder *encoder = &hdmi_to_dig_port(intel_hdmi)->base;
>  	intel_wakeref_t wakeref;
>  
> -	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
> -		      connector->base.id, connector->name);
> +	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
> +		    connector->base.id, connector->name);
>  
>  	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_GMBUS);
>  
> @@ -2642,8 +2687,10 @@ intel_hdmi_detect(struct drm_connector *connector, bool force)
>  static void
>  intel_hdmi_force(struct drm_connector *connector)
>  {
> -	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
> -		      connector->base.id, connector->name);
> +	struct drm_i915_private *i915 = to_i915(connector->dev);
> +
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]\n",
> +		    connector->base.id, connector->name);
>  
>  	intel_hdmi_unset_edid(connector);
>  
> @@ -2785,6 +2832,7 @@ intel_hdmi_get_i2c_adapter(struct drm_connector *connector)
>  
>  static void intel_hdmi_create_i2c_symlink(struct drm_connector *connector)
>  {
> +	struct drm_i915_private *i915 = to_i915(connector->dev);
>  	struct i2c_adapter *adapter = intel_hdmi_get_i2c_adapter(connector);
>  	struct kobject *i2c_kobj = &adapter->dev.kobj;
>  	struct kobject *connector_kobj = &connector->kdev->kobj;
> @@ -2792,7 +2840,7 @@ static void intel_hdmi_create_i2c_symlink(struct drm_connector *connector)
>  
>  	ret = sysfs_create_link(connector_kobj, i2c_kobj, i2c_kobj->name);
>  	if (ret)
> -		DRM_ERROR("Failed to create i2c symlink (%d)\n", ret);
> +		drm_err(&i915->drm, "Failed to create i2c symlink (%d)\n", ret);
>  }
>  
>  static void intel_hdmi_remove_i2c_symlink(struct drm_connector *connector)
> @@ -2921,9 +2969,10 @@ bool intel_hdmi_handle_sink_scrambling(struct intel_encoder *encoder,
>  	if (!sink_scrambling->supported)
>  		return true;
>  
> -	DRM_DEBUG_KMS("[CONNECTOR:%d:%s] scrambling=%s, TMDS bit clock ratio=1/%d\n",
> -		      connector->base.id, connector->name,
> -		      yesno(scrambling), high_tmds_clock_ratio ? 40 : 10);
> +	drm_dbg_kms(&dev_priv->drm,
> +		    "[CONNECTOR:%d:%s] scrambling=%s, TMDS bit clock ratio=1/%d\n",
> +		    connector->base.id, connector->name,
> +		    yesno(scrambling), high_tmds_clock_ratio ? 40 : 10);
>  
>  	/* Set TMDS bit clock ratio to 1/40 or 1/10, and enable/disable scrambling */
>  	return drm_scdc_set_high_tmds_clock_ratio(adapter,
> @@ -3065,8 +3114,9 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
>  
>  	ddc_pin = intel_bios_alternate_ddc_pin(encoder);
>  	if (ddc_pin) {
> -		DRM_DEBUG_KMS("Using DDC pin 0x%x for port %c (VBT)\n",
> -			      ddc_pin, port_name(port));
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Using DDC pin 0x%x for port %c (VBT)\n",
> +			    ddc_pin, port_name(port));
>  		return ddc_pin;
>  	}
>  
> @@ -3083,8 +3133,9 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
>  	else
>  		ddc_pin = g4x_port_to_ddc_pin(dev_priv, port);
>  
> -	DRM_DEBUG_KMS("Using DDC pin 0x%x for port %c (platform default)\n",
> -		      ddc_pin, port_name(port));
> +	drm_dbg_kms(&dev_priv->drm,
> +		    "Using DDC pin 0x%x for port %c (platform default)\n",
> +		    ddc_pin, port_name(port));
>  
>  	return ddc_pin;
>  }
> @@ -3141,8 +3192,9 @@ void intel_hdmi_init_connector(struct intel_digital_port *intel_dig_port,
>  	enum port port = intel_encoder->port;
>  	struct cec_connector_info conn_info;
>  
> -	DRM_DEBUG_KMS("Adding HDMI connector on [ENCODER:%d:%s]\n",
> -		      intel_encoder->base.base.id, intel_encoder->base.name);
> +	drm_dbg_kms(&dev_priv->drm,
> +		    "Adding HDMI connector on [ENCODER:%d:%s]\n",
> +		    intel_encoder->base.base.id, intel_encoder->base.name);
>  
>  	if (INTEL_GEN(dev_priv) < 12 && drm_WARN_ON(dev, port == PORT_A))
>  		return;
> @@ -3186,7 +3238,8 @@ void intel_hdmi_init_connector(struct intel_digital_port *intel_dig_port,
>  		int ret = intel_hdcp_init(intel_connector,
>  					  &intel_hdmi_hdcp_shim);
>  		if (ret)
> -			DRM_DEBUG_KMS("HDCP init failed, skipping.\n");
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "HDCP init failed, skipping.\n");
>  	}
>  
>  	/* For G4X desktop chip, PEG_BAND_GAP_DATA 3:0 must first be written
> @@ -3205,7 +3258,7 @@ void intel_hdmi_init_connector(struct intel_digital_port *intel_dig_port,
>  		cec_notifier_conn_register(dev->dev, port_identifier(port),
>  					   &conn_info);
>  	if (!intel_hdmi->cec_notifier)
> -		DRM_DEBUG_KMS("CEC notifier get failed\n");
> +		drm_dbg_kms(&dev_priv->drm, "CEC notifier get failed\n");
>  }
>  
>  static enum intel_hotplug_state

Hm I guess the foo_to_i915 idea doesn't scale, we'd need C++ and add
->to_i915 to all of them somehow (but not even sure C++ is that powerful
with it's abstraction, definitely last time around I looked at it and that
was 20 years ago :-)

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
