Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C803420F09C
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 10:37:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26CB089B12;
	Tue, 30 Jun 2020 08:37:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82B9589B12
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 08:37:25 +0000 (UTC)
Received: from mail-pf1-f198.google.com ([209.85.210.198])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1jqBlb-0007u6-71
 for intel-gfx@lists.freedesktop.org; Tue, 30 Jun 2020 08:37:23 +0000
Received: by mail-pf1-f198.google.com with SMTP id o9so8352277pfp.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 01:37:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=wyvtwTjQow+LlW6bkGTLAQabOfLMRU7jhVMj5RXMOZs=;
 b=ix34CBlCy3FvJjnnHa2KNAkpYci3xZQJB6+8O6/WZe8Zwl8plKTXMpCGhsz4prFCbt
 FRIJDWxQOwFIRL5OetTWgJYdAgUKd0LnWSzI7m5h8VV9JttmWmczlNuBrlSoI0N7BGsx
 QNvu/y1+e3tpEt7fpHS80vYZLjvhj7SNEOQD0j1AH/oMKWxvSZyGeZiMOVZOnsD1tCSa
 sEAte+0ZNCKBYwEfbFnmIUvRKOA9jesHqr6IKBglNU4nA0jeme+VVnmnRI+zLfFoyIHZ
 1SK+IWc/RVdXVOuigJpHsmzgDMbtQgqSZg1PwYYjF7/1458RNzgaqIBk6lceM98tn2Wr
 vf3Q==
X-Gm-Message-State: AOAM533iU/OyNuDXvZzKItXPgITP7gSwWIEPLQ8/eRYhnj7QDYQnGpt/
 ro/ahQoSyEBSTj0G9B4BevGsyxPY9UEfRLr1nplPZiUg9qRcECt79b2MPR+QIonAbIH4cKckiTV
 NrCSP2eBqTREknpZ0vqcLZ2lKx2qEzAzBWYQA62fDaSDCBw==
X-Received: by 2002:a63:3f42:: with SMTP id m63mr14401277pga.310.1593506241703; 
 Tue, 30 Jun 2020 01:37:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxeCYUt7m+hJthYXsmq7CfvyghAtFKGBLOf+R4ZQPgCClHnOvstz4fHc9TS1/dfiRgJN8LuLg==
X-Received: by 2002:a63:3f42:: with SMTP id m63mr14401239pga.310.1593506241305; 
 Tue, 30 Jun 2020 01:37:21 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id 4sm1983684pgk.68.2020.06.30.01.37.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jun 2020 01:37:20 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20200610075542.12882-1-kai.heng.feng@canonical.com>
Date: Tue, 30 Jun 2020 16:37:16 +0800
Message-Id: <21A619C1-627F-49CC-B2F4-9B533F351DF3@canonical.com>
References: <20200610075542.12882-1-kai.heng.feng@canonical.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
Subject: Re: [Intel-gfx] [PATCH v6] drm/i915: Init lspcon after HPD in
 intel_dp_detect()
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
Cc: David Airlie <airlied@linux.ie>, Lucas De Marchi <lucas.demarchi@intel.com>,
 open list <linux-kernel@vger.kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


> On Jun 10, 2020, at 15:55, Kai-Heng Feng <kai.heng.feng@canonical.com> wrote:
> 
> On HP 800 G4 DM, if HDMI cable isn't plugged before boot, the HDMI port
> becomes useless and never responds to cable hotplugging:
> [    3.031904] [drm:lspcon_init [i915]] *ERROR* Failed to probe lspcon
> [    3.031945] [drm:intel_ddi_init [i915]] *ERROR* LSPCON init failed on port D
> 
> Seems like the lspcon chip on the system only gets powered after the
> cable is plugged.
> 
> Consilidate lspcon_init() into lspcon_resume() to dynamically init
> lspcon chip, and make HDMI port work.
> 
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>

A gentle ping...

> ---
> v6:
> - Rebase on latest for-linux-next.
> 
> v5:
> - Consolidate lspcon_resume() with lspcon_init().
> - Move more logic into lspcon code.
> 
> v4:
> - Trust VBT in intel_infoframe_init().
> - Init lspcon in intel_dp_detect().
> 
> v3:
> - Make sure it's handled under long HPD case.
> 
> v2: 
> - Move lspcon_init() inside of intel_dp_hpd_pulse().
> 
> drivers/gpu/drm/i915/display/intel_ddi.c    | 19 +------
> drivers/gpu/drm/i915/display/intel_dp.c     | 10 ++--
> drivers/gpu/drm/i915/display/intel_hdmi.c   |  3 +-
> drivers/gpu/drm/i915/display/intel_lspcon.c | 63 ++++++++++++---------
> drivers/gpu/drm/i915/display/intel_lspcon.h |  3 +-
> 5 files changed, 43 insertions(+), 55 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index aa22465bb56e..af755b1aa24b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4805,7 +4805,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
> {
> 	struct intel_digital_port *intel_dig_port;
> 	struct intel_encoder *encoder;
> -	bool init_hdmi, init_dp, init_lspcon = false;
> +	bool init_hdmi, init_dp;
> 	enum phy phy = intel_port_to_phy(dev_priv, port);
> 
> 	init_hdmi = intel_bios_port_supports_dvi(dev_priv, port) ||
> @@ -4819,7 +4819,6 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
> 		 * is initialized before lspcon.
> 		 */
> 		init_dp = true;
> -		init_lspcon = true;
> 		init_hdmi = false;
> 		drm_dbg_kms(&dev_priv->drm, "VBT says port %c has lspcon\n",
> 			    port_name(port));
> @@ -4904,22 +4903,6 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
> 			goto err;
> 	}
> 
> -	if (init_lspcon) {
> -		if (lspcon_init(intel_dig_port))
> -			/* TODO: handle hdmi info frame part */
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "LSPCON init success on port %c\n",
> -				    port_name(port));
> -		else
> -			/*
> -			 * LSPCON init faied, but DP init was success, so
> -			 * lets try to drive as DP++ port.
> -			 */
> -			drm_err(&dev_priv->drm,
> -				"LSPCON init failed on port %c\n",
> -				port_name(port));
> -	}
> -
> 	if (INTEL_GEN(dev_priv) >= 11) {
> 		if (intel_phy_is_tc(dev_priv, phy))
> 			intel_dig_port->connected = intel_tc_port_connected;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index ed9e53c373a7..398a104158a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5962,15 +5962,14 @@ static enum drm_connector_status
> intel_dp_detect_dpcd(struct intel_dp *intel_dp)
> {
> 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> -	struct intel_lspcon *lspcon = dp_to_lspcon(intel_dp);
> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> 	u8 *dpcd = intel_dp->dpcd;
> 	u8 type;
> 
> 	if (WARN_ON(intel_dp_is_edp(intel_dp)))
> 		return connector_status_connected;
> 
> -	if (lspcon->active)
> -		lspcon_resume(lspcon);
> +	lspcon_resume(dig_port);
> 
> 	if (!intel_dp_get_dpcd(intel_dp))
> 		return connector_status_disconnected;
> @@ -7056,14 +7055,13 @@ void intel_dp_encoder_reset(struct drm_encoder *encoder)
> {
> 	struct drm_i915_private *dev_priv = to_i915(encoder->dev);
> 	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(encoder));
> -	struct intel_lspcon *lspcon = dp_to_lspcon(intel_dp);
> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> 	intel_wakeref_t wakeref;
> 
> 	if (!HAS_DDI(dev_priv))
> 		intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
> 
> -	if (lspcon->active)
> -		lspcon_resume(lspcon);
> +	lspcon_resume(dig_port);
> 
> 	intel_dp->reset_link_params = true;
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 010f37240710..643ad2127931 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -3155,7 +3155,8 @@ void intel_infoframe_init(struct intel_digital_port *intel_dig_port)
> 		intel_dig_port->set_infoframes = g4x_set_infoframes;
> 		intel_dig_port->infoframes_enabled = g4x_infoframes_enabled;
> 	} else if (HAS_DDI(dev_priv)) {
> -		if (intel_dig_port->lspcon.active) {
> +		if (intel_bios_is_lspcon_present(dev_priv,
> +						 intel_dig_port->base.port)) {
> 			intel_dig_port->write_infoframe = lspcon_write_infoframe;
> 			intel_dig_port->read_infoframe = lspcon_read_infoframe;
> 			intel_dig_port->set_infoframes = lspcon_set_infoframes;
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
> index 6ff7b226f0a1..e3dde4c25604 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -525,44 +525,17 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
> 	return 0;
> }
> 
> -void lspcon_resume(struct intel_lspcon *lspcon)
> -{
> -	enum drm_lspcon_mode expected_mode;
> -
> -	if (lspcon_wake_native_aux_ch(lspcon)) {
> -		expected_mode = DRM_LSPCON_MODE_PCON;
> -		lspcon_resume_in_pcon_wa(lspcon);
> -	} else {
> -		expected_mode = DRM_LSPCON_MODE_LS;
> -	}
> -
> -	if (lspcon_wait_mode(lspcon, expected_mode) == DRM_LSPCON_MODE_PCON)
> -		return;
> -
> -	if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON))
> -		DRM_ERROR("LSPCON resume failed\n");
> -	else
> -		DRM_DEBUG_KMS("LSPCON resume success\n");
> -}
> -
> void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon)
> {
> 	lspcon_wait_mode(lspcon, DRM_LSPCON_MODE_PCON);
> }
> 
> -bool lspcon_init(struct intel_digital_port *intel_dig_port)
> +static bool lspcon_init(struct intel_digital_port *intel_dig_port)
> {
> 	struct intel_dp *dp = &intel_dig_port->dp;
> 	struct intel_lspcon *lspcon = &intel_dig_port->lspcon;
> -	struct drm_device *dev = intel_dig_port->base.base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> 	struct drm_connector *connector = &dp->attached_connector->base;
> 
> -	if (!HAS_LSPCON(dev_priv)) {
> -		DRM_ERROR("LSPCON is not supported on this platform\n");
> -		return false;
> -	}
> -
> 	lspcon->active = false;
> 	lspcon->mode = DRM_LSPCON_MODE_INVALID;
> 
> @@ -586,3 +559,37 @@ bool lspcon_init(struct intel_digital_port *intel_dig_port)
> 	DRM_DEBUG_KMS("Success: LSPCON init\n");
> 	return true;
> }
> +
> +void lspcon_resume(struct intel_digital_port *intel_dig_port)
> +{
> +	struct intel_lspcon *lspcon = &intel_dig_port->lspcon;
> +	struct drm_device *dev = intel_dig_port->base.base.dev;
> +	struct drm_i915_private *dev_priv = to_i915(dev);
> +	enum drm_lspcon_mode expected_mode;
> +
> +	if (!intel_bios_is_lspcon_present(dev_priv, intel_dig_port->base.port))
> +		return;
> +
> +	if (!lspcon->active) {
> +		if (!lspcon_init(intel_dig_port)) {
> +			DRM_ERROR("LSPCON init failed on port %c\n",
> +				  port_name(intel_dig_port->base.port));
> +			return;
> +		}
> +	}
> +
> +	if (lspcon_wake_native_aux_ch(lspcon)) {
> +		expected_mode = DRM_LSPCON_MODE_PCON;
> +		lspcon_resume_in_pcon_wa(lspcon);
> +	} else {
> +		expected_mode = DRM_LSPCON_MODE_LS;
> +	}
> +
> +	if (lspcon_wait_mode(lspcon, expected_mode) == DRM_LSPCON_MODE_PCON)
> +		return;
> +
> +	if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON))
> +		DRM_ERROR("LSPCON resume failed\n");
> +	else
> +		DRM_DEBUG_KMS("LSPCON resume success\n");
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
> index 37cfddf8a9c5..169db35db13e 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
> @@ -15,8 +15,7 @@ struct intel_digital_port;
> struct intel_encoder;
> struct intel_lspcon;
> 
> -bool lspcon_init(struct intel_digital_port *intel_dig_port);
> -void lspcon_resume(struct intel_lspcon *lspcon);
> +void lspcon_resume(struct intel_digital_port *intel_dig_port);
> void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);
> void lspcon_write_infoframe(struct intel_encoder *encoder,
> 			    const struct intel_crtc_state *crtc_state,
> -- 
> 2.17.1
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
