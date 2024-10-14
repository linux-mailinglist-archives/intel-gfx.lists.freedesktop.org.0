Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBAB99C28D
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 10:08:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F12DF10E3C6;
	Mon, 14 Oct 2024 08:08:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NBZPQ5eW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10A7E10E3C2;
 Mon, 14 Oct 2024 08:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728893280; x=1760429280;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=csrd13xMZX2S/lZSyNSkBA2f07yM3r0EcUcBCvG4EdQ=;
 b=NBZPQ5eWhXWKmYKB/BVje9NTYyuwALOY28fgJI8eheMJC7JxxmBzkFsL
 3fSMPsMXUTVsP35VTbjEt5GOxMS8x1rAzklKGiVJExbWBbvuIZgqZhsQH
 k9QEYSpbb73u+9e17EwWNec3J4JAHw/dupuX4w7NZCpo6HHD6f5rZgoSq
 vj4e3wF/mtKHvhC5U3zw4dKI89CDP9XSwCFyGF8Pf2eFHq3K1L7+d7VMq
 hgcvZLjJTQib6dB+K7sJF8HV2rqN+sSjtUPTEOn8K5GZZccP3TLMVld6x
 cxKp+FOVDR3NbYOJpF9USJ3t2G9aXSaATItgdguOW6WmFhjNQkS2bfSt+ w==;
X-CSE-ConnectionGUID: rLysAwoSQSah03wF6vfJzQ==
X-CSE-MsgGUID: dZ/afmvTRZW0mSXXwXXFVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="38784441"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="38784441"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 01:08:00 -0700
X-CSE-ConnectionGUID: HpdN1lxtQzCUvJK3Eg+Ovw==
X-CSE-MsgGUID: n8VBgMNvTBWwKEqho1V1uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="100834901"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 01:07:59 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 6/9] drm/i915/display: Add DSC pixel replication
Date: Mon, 14 Oct 2024 13:39:57 +0530
Message-ID: <20241014081000.2844245-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241014081000.2844245-1-ankit.k.nautiyal@intel.com>
References: <20241014081000.2844245-1-ankit.k.nautiyal@intel.com>
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
hdisplay is not a multiple of slice count. In this case we need to add
extra pixels to the last slice to distribute pixels evenly across
slices.

Add member to store DSC pixel replication when hdisplay is not divisible
by slice_width. Fill DSS_CTL3 register with the pixel replication count.

TODO:
1. Scaler:
If the DSC is enabled and pixel replication is occurring, then the
scaler window size and position must fit within the pipe active size
plus the pixel replication.

2. PIPE_SRC:
Horizontal Src size must always be programmed to the same value as the
Horizontal Active except when panel fitting is enabled or DSC pixel
replication is enabled.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  1 +
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 22 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |  8 +++++++
 4 files changed, 31 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 86c7ac600122..5846f16f0ee9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5725,6 +5725,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
 	PIPE_CONF_CHECK_I(dsc.dsc_split);
 	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
+	PIPE_CONF_CHECK_I(dsc.pixel_replication_count);
 
 	PIPE_CONF_CHECK_BOOL(splitter.enable);
 	PIPE_CONF_CHECK_I(splitter.link_count);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e6d37d28c5c1..41a4e062e047 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1245,6 +1245,7 @@ struct intel_crtc_state {
 		/* Compressed Bpp in U6.4 format (first 4 bits for fractional part) */
 		u16 compressed_bpp_x16;
 		u8 slice_count;
+		int pixel_replication_count;
 		struct drm_dsc_config config;
 	} dsc;
 
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 982dc326b4a1..f58dac630bb8 100644
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
+	if (crtc_state->dsc.pixel_replication_count)
+		dss_ctl3_val = DSC_PIXEL_REPLICATION(crtc_state->dsc.pixel_replication_count);
+
 	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
 	intel_de_write(dev_priv, dss_ctl2_reg(crtc, crtc_state->cpu_transcoder), dss_ctl2_val);
+
+	if (IS_BATTLEMAGE(dev_priv) && dss_ctl3_val)
+		intel_de_write(dev_priv,
+			       BMG_PIPE_DSS_CTL3(crtc_state->cpu_transcoder), dss_ctl3_val);
 }
 
 void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
@@ -818,6 +827,10 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
 	    old_crtc_state->joiner_pipes) {
 		intel_de_write(dev_priv, dss_ctl1_reg(crtc, old_crtc_state->cpu_transcoder), 0);
 		intel_de_write(dev_priv, dss_ctl2_reg(crtc, old_crtc_state->cpu_transcoder), 0);
+
+		if (IS_BATTLEMAGE(dev_priv))
+			intel_de_write(dev_priv,
+				       BMG_PIPE_DSS_CTL3(old_crtc_state->cpu_transcoder), 0);
 	}
 }
 
@@ -975,7 +988,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
-	u32 dss_ctl1, dss_ctl2;
+	u32 dss_ctl1, dss_ctl2, dss_ctl3;
 
 	if (!intel_dsc_source_support(crtc_state))
 		return;
@@ -989,6 +1002,9 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg(crtc, cpu_transcoder));
 	dss_ctl2 = intel_de_read(dev_priv, dss_ctl2_reg(crtc, cpu_transcoder));
 
+	if (IS_BATTLEMAGE(dev_priv))
+		dss_ctl3 = intel_de_read(dev_priv, BMG_PIPE_DSS_CTL3(crtc_state->cpu_transcoder));
+
 	crtc_state->dsc.compression_enable = dss_ctl2 & VDSC0_ENABLE;
 	if (!crtc_state->dsc.compression_enable)
 		goto out;
@@ -1003,6 +1019,10 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 		crtc_state->dsc.dsc_split = INTEL_DSC_SPLIT_DISABLED;
 	}
 
+	if (dss_ctl3 & DSC_PIXEL_REPLICATION_MASK)
+		crtc_state->dsc.pixel_replication_count =
+			dss_ctl3 & DSC_PIXEL_REPLICATION_MASK;
+
 	intel_dsc_get_pps_config(crtc_state);
 out:
 	intel_display_power_put(dev_priv, power_domain, wakeref);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index efaeb5e0aea3..a588ce61cba7 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -52,6 +52,14 @@
 							   _ICL_PIPE_DSS_CTL2_PB, \
 							   _ICL_PIPE_DSS_CTL2_PC)
 
+#define _BMG_PIPE_DSS_CTL3_PB			0x782F0
+#define _BMG_PIPE_DSS_CTL3_PC			0x784F0
+#define BMG_PIPE_DSS_CTL3(pipe)			_MMIO_PIPE((pipe) - PIPE_B, \
+							   _BMG_PIPE_DSS_CTL3_PB, \
+							   _BMG_PIPE_DSS_CTL3_PC)
+#define  DSC_PIXEL_REPLICATION_MASK		REG_GENMASK(15, 0)
+#define  DSC_PIXEL_REPLICATION(count)		((count) << 0)
+
 /* Icelake Display Stream Compression Registers */
 #define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
 #define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
-- 
2.45.2

