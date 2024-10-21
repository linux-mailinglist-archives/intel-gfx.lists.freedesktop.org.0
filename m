Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F60F9A687D
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:32:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBF3210E4C3;
	Mon, 21 Oct 2024 12:32:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KmHHOug8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F7BB10E4CC;
 Mon, 21 Oct 2024 12:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729513934; x=1761049934;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OBfGZua7aq4y0UKazEUposZIJ/geY85i19WZCqaFJko=;
 b=KmHHOug8QbyBCtYqwBwnQ+YQe+JEqz6SZDJlJE4eWn59tOL4ZItOCVvp
 ywC5/bwEMYjuCSP3Hd9bePSB8evx9Q4sgWOTzEsmnaTcWe42pLBEOZhmB
 H0l4RfCZohIrEO05raIQcs+9YRyTbvBw8MerqHxs8FGkCJn6l68yWkfyZ
 P+aRxA7UQAW5YuSlgXho29I3vEGW0Iu3Wh+EsBSLhTstvZ3J8Kl45s/jw
 9NTfpcHeHRCvttW1LtbfZ8TlPQCWws4w2Sulf/e7YWtTdbNG+U9SbBbrw
 rO62K1S4w4QsQ6Hs+4iWzhl1nXJ9Tdten3kkgZ+/ajJabvaRgw/VFCehA A==;
X-CSE-ConnectionGUID: Dqe0+iXRRqODmj+lTY7FQA==
X-CSE-MsgGUID: 8rnBomg9SE69Mb+40s2OlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46459642"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46459642"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:32:13 -0700
X-CSE-ConnectionGUID: YfAhERo0Rn2+WiVx6LAp7w==
X-CSE-MsgGUID: uyc5CGVRRwCOVOVp/yROLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="79866084"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:32:12 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 09/16] drm/i915/display: Add support for DSC pixel replication
Date: Mon, 21 Oct 2024 18:04:07 +0530
Message-ID: <20241021123414.3993899-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
References: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

With 3 VDSC engines and Ultrajoiner, we may encounter a situation where
hactive is not a multiple of slice count. In this case we need to add
extra pixels to the last slice to distribute pixels evenly across
slices.

Add member to store DSC pixel replication when hactive is not divisible
by slice count. Fill DSS_CTL3 register with the replicated pixel count.
Also add this in dsc state dump.

v2: Use macro REG_FIELD_PREP and HAS_PIXEL_REPLICATION. (Suraj)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  1 +
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 25 +++++++++++++++++--
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |  8 ++++++
 4 files changed, 33 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9e2f0fd0558f..1b772f58998e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5743,6 +5743,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
 	PIPE_CONF_CHECK_I(dsc.dsc_split);
 	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
+	PIPE_CONF_CHECK_I(dsc.replicated_pixels);
 
 	PIPE_CONF_CHECK_BOOL(splitter.enable);
 	PIPE_CONF_CHECK_I(splitter.link_count);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 58f510909f4d..17554f52611c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1239,6 +1239,7 @@ struct intel_crtc_state {
 		/* Compressed Bpp in U6.4 format (first 4 bits for fractional part) */
 		u16 compressed_bpp_x16;
 		u8 slice_count;
+		int replicated_pixels;
 		struct drm_dsc_config config;
 	} dsc;
 
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 777a287210f9..14cc1ef3641e 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -774,6 +774,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 dss_ctl1_val = 0;
 	u32 dss_ctl2_val = 0;
+	u32 dss_ctl3_val = 0;
 	int vdsc_instances_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
 
 	if (!crtc_state->dsc.compression_enable)
@@ -804,8 +805,16 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 		if (intel_crtc_is_bigjoiner_primary(crtc_state))
 			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
 	}
+
+	if (crtc_state->dsc.replicated_pixels)
+		dss_ctl3_val = DSC_PIXEL_REPLICATION(crtc_state->dsc.replicated_pixels);
+
 	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
 	intel_de_write(dev_priv, dss_ctl2_reg(crtc, crtc_state->cpu_transcoder), dss_ctl2_val);
+
+	if (HAS_PIXEL_REPLICATION(dev_priv) && dss_ctl3_val)
+		intel_de_write(dev_priv,
+			       BMG_PIPE_DSS_CTL3(crtc_state->cpu_transcoder), dss_ctl3_val);
 }
 
 void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
@@ -818,6 +827,10 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
 	    old_crtc_state->joiner_pipes) {
 		intel_de_write(dev_priv, dss_ctl1_reg(crtc, old_crtc_state->cpu_transcoder), 0);
 		intel_de_write(dev_priv, dss_ctl2_reg(crtc, old_crtc_state->cpu_transcoder), 0);
+
+		if (HAS_PIXEL_REPLICATION(dev_priv))
+			intel_de_write(dev_priv,
+				       BMG_PIPE_DSS_CTL3(old_crtc_state->cpu_transcoder), 0);
 	}
 }
 
@@ -975,7 +988,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
-	u32 dss_ctl1, dss_ctl2;
+	u32 dss_ctl1, dss_ctl2, dss_ctl3 = 0;
 
 	if (!intel_dsc_source_support(crtc_state))
 		return;
@@ -989,6 +1002,9 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg(crtc, cpu_transcoder));
 	dss_ctl2 = intel_de_read(dev_priv, dss_ctl2_reg(crtc, cpu_transcoder));
 
+	if (HAS_PIXEL_REPLICATION(dev_priv))
+		dss_ctl3 = intel_de_read(dev_priv, BMG_PIPE_DSS_CTL3(crtc_state->cpu_transcoder));
+
 	crtc_state->dsc.compression_enable = dss_ctl2 & VDSC0_ENABLE;
 	if (!crtc_state->dsc.compression_enable)
 		goto out;
@@ -1003,6 +1019,10 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 		crtc_state->dsc.dsc_split = 0;
 	}
 
+	if (dss_ctl3 & DSC_PIXEL_REPLICATION_MASK)
+		crtc_state->dsc.replicated_pixels =
+			dss_ctl3 & DSC_PIXEL_REPLICATION_MASK;
+
 	intel_dsc_get_pps_config(crtc_state);
 out:
 	intel_display_power_put(dev_priv, power_domain, wakeref);
@@ -1012,9 +1032,10 @@ static void intel_vdsc_dump_state(struct drm_printer *p, int indent,
 				  const struct intel_crtc_state *crtc_state)
 {
 	drm_printf_indent(p, indent,
-			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: %d, split: %d\n",
+			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: %d, replicated pixels: %d split: %d\n",
 			  FXP_Q4_ARGS(crtc_state->dsc.compressed_bpp_x16),
 			  crtc_state->dsc.slice_count,
+			  crtc_state->dsc.replicated_pixels,
 			  crtc_state->dsc.dsc_split);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index 2d478a84b07c..f07fad6239bc 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -50,6 +50,14 @@
 							   _ICL_PIPE_DSS_CTL2_PB, \
 							   _ICL_PIPE_DSS_CTL2_PC)
 
+#define _BMG_PIPE_DSS_CTL3_PB			0x782f0
+#define _BMG_PIPE_DSS_CTL3_PC			0x784f0
+#define BMG_PIPE_DSS_CTL3(pipe)			_MMIO_PIPE((pipe) - PIPE_B, \
+							   _BMG_PIPE_DSS_CTL3_PB, \
+							   _BMG_PIPE_DSS_CTL3_PC)
+#define  DSC_PIXEL_REPLICATION_MASK		REG_GENMASK(15, 0)
+#define  DSC_PIXEL_REPLICATION(count)		(REG_FIELD_PREP(DSC_PIXEL_REPLICATION_MASK, (count)))
+
 /* Icelake Display Stream Compression Registers */
 #define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
 #define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
-- 
2.45.2

