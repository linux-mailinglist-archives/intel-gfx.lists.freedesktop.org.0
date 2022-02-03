Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AFF4A8BC8
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 19:38:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5ECF89C52;
	Thu,  3 Feb 2022 18:38:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 412D789C28
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 18:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643913533; x=1675449533;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=v92dBltVHf83JteSFdzjq1dW7ouJaUOcYt1F8IsFGKw=;
 b=VfV1x3ejkYbNDXYAQcTG3ITmsb+iQgB6n30AwNI5l+Hlm2Q4dozRsp+6
 eGrgxk3IafZYcxSepaDH2R16baLM+wrTlIQpzpKV7py4iIfbcztGngg2N
 JwZUrAj07UMVI/BlzXvfi3G3z/554j4y8ZRBT/JalGQSZoErPZWuw+FRC
 PSrpyoL8y+AltNvdGXhjieqAb98cgnYH7gsnia10e58evJ/0xi7YMdsc8
 CG8XjftwQBSiBJQC2sIvp8ERZ7s8q7H4PmByd/M4eJZ43vSBBD8AGOtbS
 m9Vx61RyyGmVD3+xVIrSK2/811V4w/g9QJ9PwBdgx7HXLfP7Bo2aKmRwp Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="308948998"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="308948998"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 10:38:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="676871429"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 03 Feb 2022 10:38:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Feb 2022 20:38:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Feb 2022 20:38:22 +0200
Message-Id: <20220203183823.22890-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/10] drm/i915: Return both master and slave
 pipes from enabled_bigjoiner_pipes()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Return both the master and slave pipe bitmasks from
enabled_bigjoiner_pipes(). We'll have use for both during
readout soon.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 25 +++++++++++---------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6df498fc720a..34b6b4ab3a1b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4064,11 +4064,14 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
 	return tmp & TRANS_DDI_FUNC_ENABLE;
 }
 
-static u8 enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv)
+static void enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv,
+				    u8 *master_pipes, u8 *slave_pipes)
 {
-	u8 master_pipes = 0, slave_pipes = 0;
 	struct intel_crtc *crtc;
 
+	*master_pipes = 0;
+	*slave_pipes = 0;
+
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
 					 bigjoiner_pipes(dev_priv)) {
 		enum intel_display_power_domain power_domain;
@@ -4083,9 +4086,9 @@ static u8 enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv)
 				continue;
 
 			if (tmp & MASTER_BIG_JOINER_ENABLE)
-				master_pipes |= BIT(pipe);
+				*master_pipes |= BIT(pipe);
 			else
-				slave_pipes |= BIT(pipe);
+				*slave_pipes |= BIT(pipe);
 		}
 
 		if (DISPLAY_VER(dev_priv) < 13)
@@ -4096,18 +4099,16 @@ static u8 enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv)
 			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
 
 			if (tmp & UNCOMPRESSED_JOINER_MASTER)
-				master_pipes |= BIT(pipe);
+				*master_pipes |= BIT(pipe);
 			if (tmp & UNCOMPRESSED_JOINER_SLAVE)
-				slave_pipes |= BIT(pipe);
+				*slave_pipes |= BIT(pipe);
 		}
 	}
 
 	/* Bigjoiner pipes should always be consecutive master and slave */
-	drm_WARN(&dev_priv->drm, slave_pipes != master_pipes << 1,
+	drm_WARN(&dev_priv->drm, *slave_pipes != *master_pipes << 1,
 		 "Bigjoiner misconfigured (master pipes 0x%x, slave pipes 0x%x)\n",
-		 master_pipes, slave_pipes);
-
-	return slave_pipes;
+		 *master_pipes, *slave_pipes);
 }
 
 static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
@@ -4126,6 +4127,7 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	u8 panel_transcoder_mask = hsw_panel_transcoders(dev_priv);
 	enum transcoder cpu_transcoder;
+	u8 master_pipes, slave_pipes;
 	u8 enabled_transcoders = 0;
 
 	/*
@@ -4177,7 +4179,8 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 		enabled_transcoders |= BIT(cpu_transcoder);
 
 	/* bigjoiner slave -> consider the master pipe's transcoder as well */
-	if (enabled_bigjoiner_pipes(dev_priv) & BIT(crtc->pipe)) {
+	enabled_bigjoiner_pipes(dev_priv, &master_pipes, &slave_pipes);
+	if (slave_pipes & BIT(crtc->pipe)) {
 		cpu_transcoder = (enum transcoder) crtc->pipe - 1;
 		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
 			enabled_transcoders |= BIT(cpu_transcoder);
-- 
2.34.1

