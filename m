Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7171899C08A
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 09:00:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F01CD10E288;
	Mon, 14 Oct 2024 07:00:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lg9Rw21j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F3E010E287;
 Mon, 14 Oct 2024 07:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728889222; x=1760425222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d3mchzl4WAi0+ukvTom8j7EZCCG4Qgw1QYqUHiIl26E=;
 b=Lg9Rw21jfTnpmREVXYvnpF/4o8UUEvk+cO5NDhseAvxaJ8hzhDWSGgHU
 O1FiYwHEUw9AQxRjpwrtaDgmkvy5tWc9AQZ4izc3AMDFNLlJDT7TQxL9Q
 UBspwRjm7acCPZoBeeNfhxKV7lfk+/sbng/UUYE7sFwJiha9JmBhhkD7k
 QM8fMpAZG9vi2Yk3HaYW6OX8W8sM2AF6ItrDcpciznjYbVvX7MRalolJl
 1SCzxGrsX8EDpkTbrztmyF+5VyfpduxqAXpPmjGAFAGA/7+9RUHuUZuVM
 VMudMiPuO3U+NUwsG0p2vCjUf/NoS8m6xMLqQRQpmeJ1+D4hFKAXkeoOU A==;
X-CSE-ConnectionGUID: HsqydXL/QLiGQqrLOehZkQ==
X-CSE-MsgGUID: +ZJzInobSlGQHc8y4E3+LQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39337974"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39337974"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 00:00:22 -0700
X-CSE-ConnectionGUID: VLYSxZ2fS7W9wPQeqaJmGg==
X-CSE-MsgGUID: rSY15fqTQ2myLmZMSO1syA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="78310820"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 00:00:21 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/9] drm/i915/vdsc: Add register bits for VDSC2 engine
Date: Mon, 14 Oct 2024 12:32:20 +0530
Message-ID: <20241014070226.2729008-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241014070226.2729008-1-ankit.k.nautiyal@intel.com>
References: <20241014070226.2729008-1-ankit.k.nautiyal@intel.com>
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
index f446429e8fdb..da5f73203358 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -912,6 +912,7 @@ struct intel_csc_matrix {
 enum intel_dsc_split_state {
 	INTEL_DSC_SPLIT_DISABLED,
 	INTEL_DSC_SPLIT_2_STREAMS,
+	INTEL_DSC_SPLIT_3_STREAMS,
 };
 
 struct intel_crtc_state {
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

