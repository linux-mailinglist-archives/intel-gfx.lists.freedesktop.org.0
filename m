Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A679D9ABF4C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 08:51:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48A7310E758;
	Wed, 23 Oct 2024 06:51:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CKkvRk5E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1D3C10E75C;
 Wed, 23 Oct 2024 06:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729666256; x=1761202256;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eiHmzIxzkculnuc6dVIOGIGRHJlIW53uRG7zMScLR0w=;
 b=CKkvRk5EgHEALnO+G/OrRHcGWC+Xgd6wUEER71sWXEEyuUWhxCHI7ixj
 QCDTSL04b6YwFeBi+FITaCZ1HdDjYzTySCOxc1AKK5HH85a9HeaWI0NPV
 C/rFTTHrJ3M7yqoYs5f68Xsd8VTq+DMWBilV1c6gJhC8eyDK6jLaSey17
 ZPzA/VLqa7NoiZ61GRgJQb/lBUko2hZRqOZgDzuthdVnVQTgKggTSbA1V
 eLFquFYwnCrUUoz+1VKgheNIMcFLKhAGTYrJEPEkzFLgHLIrVM5+3YR6z
 ca25R4fGkJcuUGsZ6KW14vQzhwY0zouPG08jO1pkPPWILSEcEdc/zbcE3 w==;
X-CSE-ConnectionGUID: ILPxfvf2QYWOyX5LMkE3eg==
X-CSE-MsgGUID: 7lbNNwwIQHK/br/jyuVpCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="32097478"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="32097478"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:50:56 -0700
X-CSE-ConnectionGUID: 6tpnV13AT+WIq7QpmkcH8Q==
X-CSE-MsgGUID: rkCISqgrRfCuDc7karWYnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="84691586"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:50:54 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 09/16] drm/i915/display: Add support for DSC pixel replication
Date: Wed, 23 Oct 2024 12:22:50 +0530
Message-ID: <20241023065257.190035-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
References: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 27 ++++++++++++++++---
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |  8 ++++++
 4 files changed, 34 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3dfff0a8c386..aa9e44970752 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5743,6 +5743,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
 	PIPE_CONF_CHECK_I(dsc.num_streams);
 	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
+	PIPE_CONF_CHECK_I(dsc.replicated_pixels);
 
 	PIPE_CONF_CHECK_BOOL(splitter.enable);
 	PIPE_CONF_CHECK_I(splitter.link_count);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 5611a4dd6a6f..282aab2d1b5d 100644
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
index 4143109aaab6..8b1639a94438 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -765,6 +765,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 dss_ctl1_val = 0;
 	u32 dss_ctl2_val = 0;
+	u32 dss_ctl3_val = 0;
 	int vdsc_instances_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
 
 	if (!crtc_state->dsc.compression_enable)
@@ -795,8 +796,16 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
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
@@ -809,6 +818,10 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
 	    old_crtc_state->joiner_pipes) {
 		intel_de_write(dev_priv, dss_ctl1_reg(crtc, old_crtc_state->cpu_transcoder), 0);
 		intel_de_write(dev_priv, dss_ctl2_reg(crtc, old_crtc_state->cpu_transcoder), 0);
+
+		if (HAS_PIXEL_REPLICATION(dev_priv))
+			intel_de_write(dev_priv,
+				       BMG_PIPE_DSS_CTL3(old_crtc_state->cpu_transcoder), 0);
 	}
 }
 
@@ -966,7 +979,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
-	u32 dss_ctl1, dss_ctl2;
+	u32 dss_ctl1, dss_ctl2, dss_ctl3 = 0;
 
 	if (!intel_dsc_source_support(crtc_state))
 		return;
@@ -980,6 +993,9 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg(crtc, cpu_transcoder));
 	dss_ctl2 = intel_de_read(dev_priv, dss_ctl2_reg(crtc, cpu_transcoder));
 
+	if (HAS_PIXEL_REPLICATION(dev_priv))
+		dss_ctl3 = intel_de_read(dev_priv, BMG_PIPE_DSS_CTL3(crtc_state->cpu_transcoder));
+
 	crtc_state->dsc.compression_enable = dss_ctl2 & VDSC0_ENABLE;
 	if (!crtc_state->dsc.compression_enable)
 		goto out;
@@ -995,6 +1011,10 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 		crtc_state->dsc.num_streams = 0;
 	}
 
+	if (dss_ctl3 & DSC_PIXEL_REPLICATION_MASK)
+		crtc_state->dsc.replicated_pixels =
+			dss_ctl3 & DSC_PIXEL_REPLICATION_MASK;
+
 	intel_dsc_get_pps_config(crtc_state);
 out:
 	intel_display_power_put(dev_priv, power_domain, wakeref);
@@ -1004,10 +1024,11 @@ static void intel_vdsc_dump_state(struct drm_printer *p, int indent,
 				  const struct intel_crtc_state *crtc_state)
 {
 	drm_printf_indent(p, indent,
-			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: %d, num_streams: %d\n",
+			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: %d, num_streams: %d, replicated pixels: %d\n",
 			  FXP_Q4_ARGS(crtc_state->dsc.compressed_bpp_x16),
 			  crtc_state->dsc.slice_count,
-			  crtc_state->dsc.num_streams);
+			  crtc_state->dsc.num_streams,
+			  crtc_state->dsc.replicated_pixels);
 }
 
 void intel_vdsc_state_dump(struct drm_printer *p, int indent,
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

