Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF3799C28A
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 10:07:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D16210E3BB;
	Mon, 14 Oct 2024 08:07:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dQopCRBf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E86910E3BA;
 Mon, 14 Oct 2024 08:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728893276; x=1760429276;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+6nBvh3PTL/Ki+8aYXaxc1tE/WXXfRtcWfWmSffBh8U=;
 b=dQopCRBfpY1+QBYAA9N0PFnK6Au3qEVREnBWqX/aQsqbKzqEIprTRd0F
 u8CD4qKS71m7jLHPK585ncBjNkkb64nzzjCk6NXcM6E1Kex2EYV7wiPek
 yhHTpWmcYsNwNr03dTHLI9cYDy71GJ39NJLKf/POSrvVKlTXKqjPOKDZa
 3ClXyK49eQ81uP/ge2Vg3V0jQTpIKFRX/HN2QuOWD+cAbR8nCJHOzeTn/
 jLB0PjgewuiPGJ2SIj7X+NCXxEDwSgcyHYP2saPKMG0o26oSzBxT9jIiE
 wN8lzHEetgl2o6Qgmuu7WXpV2Cf6UWaufUrk4emSZTAVzSqZ0Si48W7K2 A==;
X-CSE-ConnectionGUID: dpNBf8DrQPq1qdYg7D2lzQ==
X-CSE-MsgGUID: dvV1OJVfQqWB5SYNo3bDYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="38784422"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="38784422"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 01:07:56 -0700
X-CSE-ConnectionGUID: 5fX9DczHTD6ZmIaaxrCexA==
X-CSE-MsgGUID: fmqvIAm/Qfqno1rW+2PDDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="100834878"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 01:07:55 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/9] drm/i915/vdsc: Add register bits for VDSC2 engine
Date: Mon, 14 Oct 2024 13:39:54 +0530
Message-ID: <20241014081000.2844245-4-ankit.k.nautiyal@intel.com>
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

Add bits to enable third VDSC engine VDSC2.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 21 +++++++++++++++----
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |  4 ++++
 3 files changed, 22 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8bd63da8516c..e6d37d28c5c1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -912,6 +912,7 @@ struct intel_csc_matrix {
 enum intel_dsc_split_state {
 	INTEL_DSC_SPLIT_DISABLED,
 	INTEL_DSC_SPLIT_2_STREAMS,
+	INTEL_DSC_SPLIT_3_STREAMS,
 };
 
 void intel_io_mmio_fw_write(void *ctx, i915_reg_t reg, u32 val);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 33cd3d7e9b94..d4e2eed81122 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -380,6 +380,8 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state)
 {
 	switch (crtc_state->dsc.dsc_split) {
+	case INTEL_DSC_SPLIT_3_STREAMS:
+		return 3;
 	case INTEL_DSC_SPLIT_2_STREAMS:
 		return 2;
 	case INTEL_DSC_SPLIT_DISABLED:
@@ -782,6 +784,12 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 		dss_ctl2_val |= VDSC1_ENABLE;
 		dss_ctl1_val |= JOINER_ENABLE;
 	}
+
+	if (vdsc_instances_per_pipe > 2) {
+		dss_ctl2_val |= VDSC2_ENABLE;
+		dss_ctl2_val |= SMALL_JOINER_CONFIG_3_ENGINES;
+	}
+
 	if (crtc_state->joiner_pipes) {
 		if (intel_crtc_ultrajoiner_enable_needed(crtc_state))
 			dss_ctl1_val |= ULTRA_JOINER_ENABLE;
@@ -983,11 +991,15 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	if (!crtc_state->dsc.compression_enable)
 		goto out;
 
-	if ((dss_ctl1 & JOINER_ENABLE) &&
-	    (dss_ctl2 & VDSC1_ENABLE))
-		crtc_state->dsc.dsc_split = INTEL_DSC_SPLIT_2_STREAMS;
-	else
+	if (dss_ctl1 & JOINER_ENABLE) {
+		if (dss_ctl2 & (VDSC2_ENABLE | SMALL_JOINER_CONFIG_3_ENGINES))
+			crtc_state->dsc.dsc_split = INTEL_DSC_SPLIT_3_STREAMS;
+
+		else if (dss_ctl2 & VDSC1_ENABLE)
+			crtc_state->dsc.dsc_split = INTEL_DSC_SPLIT_2_STREAMS;
+	} else {
 		crtc_state->dsc.dsc_split = INTEL_DSC_SPLIT_DISABLED;
+	}
 
 	intel_dsc_get_pps_config(crtc_state);
 out:
@@ -997,6 +1009,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 static const char * const dsc_split_str[] = {
 	[INTEL_DSC_SPLIT_DISABLED] = "INTEL_DSC_SPLIT_DISABLED",
 	[INTEL_DSC_SPLIT_2_STREAMS] = "INTEL_DSC_SPLIT_2_STREAMS",
+	[INTEL_DSC_SPLIT_3_STREAMS] = "INTEL_DSC_SPLIT_3_STREAMS",
 };
 
 static const char *dsc_split_name(enum intel_dsc_split_state dsc_split)
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index d7a72b95ee7e..941f4ff6b940 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -22,6 +22,10 @@
 
 #define DSS_CTL2				_MMIO(0x67404)
 #define  VDSC0_ENABLE				REG_BIT(31)
+#define  VDSC2_ENABLE				REG_BIT(30)
+#define  SMALL_JOINER_CONFIG_3_ENGINES		REG_BIT(23)
+#define  ODD_PIXEL_REMOVAL			REG_BIT(18)
+#define  ODD_PIXEL_REMOVAL_CONFIG_EOL		REG_BIT(17)
 #define  VDSC1_ENABLE				REG_BIT(15)
 #define  RIGHT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
 #define  RIGHT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
-- 
2.45.2

