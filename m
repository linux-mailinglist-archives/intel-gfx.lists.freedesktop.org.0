Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9872180E6E
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 04:24:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B54836E0D0;
	Wed, 11 Mar 2020 03:24:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11C636E0D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 03:24:51 +0000 (UTC)
Received: from mail-pf1-f197.google.com ([209.85.210.197])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1jBrzE-0007Mj-OP
 for intel-gfx@lists.freedesktop.org; Wed, 11 Mar 2020 03:24:48 +0000
Received: by mail-pf1-f197.google.com with SMTP id f14so437480pfk.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 20:24:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=oRt0r5cQTWUQ10ZviHACsht2XJOWhlaJ3TIQeyqnNOc=;
 b=OQ7dfQuT8ulDfbli+W0jOPLJJ3PtBVsBhLDc330Vs28bEvvEpykJGxB4fYTu2NceXR
 96Y5wdKNUSHRVFwPQI6pbRL/eEpmTGzwRNWlrLFksHTQyvd3asRaNhA9Q2H4mpYwOERU
 bq2oE8l7fMaMNN4Y6rBOMeEMUH8/e1sHnFkG3gGjUNoktIX4vuF1Y8bjh5dUnblicuFW
 BzhuLZijZNbm9y8LtFvDc9zAPYK4uFjYT+7kmMcdxDq3YqXg0+TJeSLUAG0EEFSfMd7z
 qUidgrPrJAHb0svGPKaVoPMdRPB1pDqNEXcD+OEJFHVfpfC13Y3uNM3qkM6s7nHUK1+Y
 ojSg==
X-Gm-Message-State: ANhLgQ2bdCQmQsycn9ssN7VhupbFESRtJj5aPMMojKT56wRjijEPRjcT
 01A+d+U5CC5j/nEybPqpw0jYNslYKAJn5d21P/uOMZKFs1op49d+D4j9i+nr9MvMaZux6U8+zMq
 g1FOHb0yI5kzja1sWo30/lcNcAalchR5wBxW4FDkF22kcbw==
X-Received: by 2002:a17:90a:32c1:: with SMTP id
 l59mr1218855pjb.36.1583897087299; 
 Tue, 10 Mar 2020 20:24:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtb3Z/ZhpW29byvyayNnkOxyFhRWMBPu8qji7cSAN4BTEGvxgPVg080tlWXF4JQh+s6ylKB9w==
X-Received: by 2002:a17:90a:32c1:: with SMTP id
 l59mr1218820pjb.36.1583897086766; 
 Tue, 10 Mar 2020 20:24:46 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id h24sm7942000pfn.49.2020.03.10.20.24.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Mar 2020 20:24:46 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20200214175646.25532-1-kai.heng.feng@canonical.com>
Date: Wed, 11 Mar 2020 11:24:37 +0800
Message-Id: <6AA2A997-76BB-4BF9-B292-67A5F0C4770B@canonical.com>
References: <20200214175646.25532-1-kai.heng.feng@canonical.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, ville.syrjala@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com
X-Mailer: Apple Mail (2.3608.60.0.2.5)
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915: Init lspcon after HPD in
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
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> On Feb 15, 2020, at 01:56, Kai-Heng Feng <kai.heng.feng@canonical.com> wrote:
> 
> On HP 800 G4 DM, if HDMI cable isn't plugged before boot, the HDMI port
> becomes useless and never responds to cable hotplugging:
> [    3.031904] [drm:lspcon_init [i915]] *ERROR* Failed to probe lspcon
> [    3.031945] [drm:intel_ddi_init [i915]] *ERROR* LSPCON init failed on port D
> 
> Seems like the lspcon chip on the system in question only gets powered
> after the cable is plugged.
> 
> So let's call lspcon_init() dynamically to properly initialize the
> lspcon chip and make HDMI port work.
> 
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>

A gentle ping.

> ---
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
> drivers/gpu/drm/i915/display/intel_ddi.c  | 17 +----------------
> drivers/gpu/drm/i915/display/intel_dp.c   | 13 ++++++++++++-
> drivers/gpu/drm/i915/display/intel_hdmi.c |  2 +-
> 3 files changed, 14 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 33f1dc3d7c1a..ca717434b406 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4741,7 +4741,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
> 		&dev_priv->vbt.ddi_port_info[port];
> 	struct intel_digital_port *intel_dig_port;
> 	struct intel_encoder *encoder;
> -	bool init_hdmi, init_dp, init_lspcon = false;
> +	bool init_hdmi, init_dp;
> 	enum phy phy = intel_port_to_phy(dev_priv, port);
> 
> 	init_hdmi = port_info->supports_dvi || port_info->supports_hdmi;
> @@ -4754,7 +4754,6 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
> 		 * is initialized before lspcon.
> 		 */
> 		init_dp = true;
> -		init_lspcon = true;
> 		init_hdmi = false;
> 		DRM_DEBUG_KMS("VBT says port %c has lspcon\n", port_name(port));
> 	}
> @@ -4833,20 +4832,6 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
> 			goto err;
> 	}
> 
> -	if (init_lspcon) {
> -		if (lspcon_init(intel_dig_port))
> -			/* TODO: handle hdmi info frame part */
> -			DRM_DEBUG_KMS("LSPCON init success on port %c\n",
> -				port_name(port));
> -		else
> -			/*
> -			 * LSPCON init faied, but DP init was success, so
> -			 * lets try to drive as DP++ port.
> -			 */
> -			DRM_ERROR("LSPCON init failed on port %c\n",
> -				port_name(port));
> -	}
> -
> 	intel_infoframe_init(intel_dig_port);
> 
> 	return;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index c7424e2a04a3..43117aa86292 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5663,8 +5663,19 @@ intel_dp_detect(struct drm_connector *connector,
> 	/* Can't disconnect eDP */
> 	if (intel_dp_is_edp(intel_dp))
> 		status = edp_detect(intel_dp);
> -	else if (intel_digital_port_connected(encoder))
> +	else if (intel_digital_port_connected(encoder)) {
> +		if (intel_bios_is_lspcon_present(dev_priv, dig_port->base.port) &&
> +		    !dig_port->lspcon.active) {
> +			if (lspcon_init(dig_port))
> +				DRM_DEBUG_KMS("LSPCON init success on port %c\n",
> +					      port_name(dig_port->base.port));
> +			else
> +				DRM_DEBUG_KMS("LSPCON init failed on port %c\n",
> +					      port_name(dig_port->base.port));
> +		}
> +
> 		status = intel_dp_detect_dpcd(intel_dp);
> +	}
> 	else
> 		status = connector_status_disconnected;
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 93ac0f296852..27a5aa8cefc9 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -3100,7 +3100,7 @@ void intel_infoframe_init(struct intel_digital_port *intel_dig_port)
> 		intel_dig_port->set_infoframes = g4x_set_infoframes;
> 		intel_dig_port->infoframes_enabled = g4x_infoframes_enabled;
> 	} else if (HAS_DDI(dev_priv)) {
> -		if (intel_dig_port->lspcon.active) {
> +		if (intel_bios_is_lspcon_present(dev_priv, intel_dig_port->base.port)) {
> 			intel_dig_port->write_infoframe = lspcon_write_infoframe;
> 			intel_dig_port->read_infoframe = lspcon_read_infoframe;
> 			intel_dig_port->set_infoframes = lspcon_set_infoframes;
> -- 
> 2.17.1
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
