Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCECF8CFE9B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 13:11:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F205110EA59;
	Mon, 27 May 2024 11:11:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gjf6VRWt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15F2010E895
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 11:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716808264; x=1748344264;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xJF4PHtvWcBYx7OElMjjog4C7XVU9n00RMa71GxDfSs=;
 b=Gjf6VRWtjTuyOY170TmrQQBS2BBfnM47WAXHpJWom02VpLXEFjZcI6j5
 e90uyBst4oG+lZ6ejWm1uHRT4bVtCIVK11w1JQx1N2FXbZ1NAbuHKNexT
 81w3iHuFgqrcx1Ipo0T2na2QZGpZI/fNbaELcEqAedlNVwXeEbGt2qfsN
 CjtIHB5v/30rs84szC5LOyIiPXi6QpNcnyAzlhL62cia7hQ2tIC0TvNQf
 h4dnbishBuH0sKJbdS1E1/z4nBN/u2+7Xgwl0HcRWYK7c5kLy8DWWS+4A
 4LcQlpKpHYhab4dbr9MwmlQ53YxSMqQlbtRZV9UBsRbJSA6Du1Qkz+Xz+ Q==;
X-CSE-ConnectionGUID: XEp49AkBTRasjx2gqL+BJQ==
X-CSE-MsgGUID: ybfmFCOXQh2V9TXAL21uEQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="24246615"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="24246615"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:11:04 -0700
X-CSE-ConnectionGUID: wYA5hR+OTQu24lA2ABey+Q==
X-CSE-MsgGUID: KKdFrWPXRrOSZlYhHiDYZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="72152913"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:11:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 01/11] drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_CTL
Date: Mon, 27 May 2024 14:10:43 +0300
Message-Id: <7261777d02eeb94093ed3510989c6809c66d50da.1716808214.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716808214.git.jani.nikula@intel.com>
References: <cover.1716808214.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the HSW_TVIDEO_DIP_CTL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 3 ++-
 drivers/gpu/drm/i915/display/intel_hdmi.c   | 7 ++++---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h             | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c | 6 +++---
 5 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c0a3b6d50681..4fa977f1e6c4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4353,7 +4353,8 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
 			     const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	i915_reg_t reg = HSW_TVIDEO_DIP_CTL(crtc_state->cpu_transcoder);
+	i915_reg_t reg = HSW_TVIDEO_DIP_CTL(dev_priv,
+					    crtc_state->cpu_transcoder);
 	u32 dip_enable = VIDEO_DIP_ENABLE_AVI_HSW | VIDEO_DIP_ENABLE_GCP_HSW |
 			 VIDEO_DIP_ENABLE_VS_HSW | VIDEO_DIP_ENABLE_GMP_HSW |
 			 VIDEO_DIP_ENABLE_SPD_HSW | VIDEO_DIP_ENABLE_DRM_GLK;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 9ac670a40bc1..4557acdd8b3c 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -507,7 +507,7 @@ void hsw_write_infoframe(struct intel_encoder *encoder,
 	const u32 *data = frame;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-	i915_reg_t ctl_reg = HSW_TVIDEO_DIP_CTL(cpu_transcoder);
+	i915_reg_t ctl_reg = HSW_TVIDEO_DIP_CTL(dev_priv, cpu_transcoder);
 	int data_size;
 	int i;
 	u32 val = intel_de_read(dev_priv, ctl_reg);
@@ -562,7 +562,7 @@ static u32 hsw_infoframes_enabled(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	u32 val = intel_de_read(dev_priv,
-				HSW_TVIDEO_DIP_CTL(pipe_config->cpu_transcoder));
+				HSW_TVIDEO_DIP_CTL(dev_priv, pipe_config->cpu_transcoder));
 	u32 mask;
 
 	mask = (VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_AVI_HSW |
@@ -1216,7 +1216,8 @@ static void hsw_set_infoframes(struct intel_encoder *encoder,
 			       const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	i915_reg_t reg = HSW_TVIDEO_DIP_CTL(crtc_state->cpu_transcoder);
+	i915_reg_t reg = HSW_TVIDEO_DIP_CTL(dev_priv,
+					    crtc_state->cpu_transcoder);
 	u32 val = intel_de_read(dev_priv, reg);
 
 	assert_hdmi_transcoder_func_disabled(dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 1d048fa98561..8b26354d6e53 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -641,7 +641,7 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
 
 	if (lspcon->hdr_supported) {
 		tmp = intel_de_read(dev_priv,
-				    HSW_TVIDEO_DIP_CTL(pipe_config->cpu_transcoder));
+				    HSW_TVIDEO_DIP_CTL(dev_priv, pipe_config->cpu_transcoder));
 		mask = VIDEO_DIP_ENABLE_GMP_HSW;
 
 		if (tmp & mask)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 29f69ad8f704..0331fdd61f33 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3475,7 +3475,7 @@
 #define _ICL_VIDEO_DIP_PPS_ECC_A	0x603D4
 #define _ICL_VIDEO_DIP_PPS_ECC_B	0x613D4
 
-#define HSW_TVIDEO_DIP_CTL(trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_CTL_A)
+#define HSW_TVIDEO_DIP_CTL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_CTL_A)
 #define HSW_TVIDEO_DIP_GCP(trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GCP_A)
 #define HSW_TVIDEO_DIP_AVI_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_AVI_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_VS_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VS_DATA_A + (i) * 4)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index b4d5592b18df..027cd273d775 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -509,9 +509,9 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_MULT(TRANSCODER_A));
 	MMIO_D(TRANS_MULT(TRANSCODER_B));
 	MMIO_D(TRANS_MULT(TRANSCODER_C));
-	MMIO_D(HSW_TVIDEO_DIP_CTL(TRANSCODER_A));
-	MMIO_D(HSW_TVIDEO_DIP_CTL(TRANSCODER_B));
-	MMIO_D(HSW_TVIDEO_DIP_CTL(TRANSCODER_C));
+	MMIO_D(HSW_TVIDEO_DIP_CTL(dev_priv, TRANSCODER_A));
+	MMIO_D(HSW_TVIDEO_DIP_CTL(dev_priv, TRANSCODER_B));
+	MMIO_D(HSW_TVIDEO_DIP_CTL(dev_priv, TRANSCODER_C));
 	MMIO_D(SFUSE_STRAP);
 	MMIO_D(SBI_ADDR);
 	MMIO_D(SBI_DATA);
-- 
2.39.2

