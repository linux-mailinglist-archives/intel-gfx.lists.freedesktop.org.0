Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85450AE5E85
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 09:51:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2618B10E511;
	Tue, 24 Jun 2025 07:51:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PBmPLUd6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5839110E512;
 Tue, 24 Jun 2025 07:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750751500; x=1782287500;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F1iGku85d3qboDpSYS1pFXlnZ5aO3guTWc1P5Mb3TVo=;
 b=PBmPLUd66rH5vz1Owoinbpt76cN6s7mPWkiFBLPoBaemMlzXzN2OoFvY
 X9l/F9d9xJNIEmzSGfv1ym+e7Uty72ij2yphNNaxJXE3jkSictxiGFTNl
 TFjr90a+8qIAsTMBAkeOAqWuQB+fTskZBFuOO8KdYrfRGBk539P0dtTMk
 IlJiTUOZBqC20o/KmsXnyrOFpKppE9QmtkL0fIQViqfwllx3HAz7AXq7D
 tRcXnccyfFn5sRNb/v2hcuwdJ56G8XfQsZWjE8Z0yFmhJTzECOKpO/t3b
 +THU3AbakNySqmQwgKeNCjIpk+2VoixefggQDOMv5xA1D9FY1rG//VtGk w==;
X-CSE-ConnectionGUID: vrxlatUFRBqTk/V35Pg3Nw==
X-CSE-MsgGUID: uynLfM7NSyGg+PRF22c3IQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="78398285"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="78398285"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 00:51:40 -0700
X-CSE-ConnectionGUID: bDua1haUSfOLJLr2QnQzUA==
X-CSE-MsgGUID: yVi9o7qPSnmqJemJD7Uayg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="175446498"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa002.fm.intel.com with ESMTP; 24 Jun 2025 00:51:38 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, ankit.k.nautiyal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH v7 16/18] drm/i915/display: Add function to configure
 PIPEDMC_EVT_CTL
Date: Tue, 24 Jun 2025 13:19:46 +0530
Message-ID: <20250624074948.671761-17-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
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

Configure PIPEDMC_EVT_CTL_3 register with required event flags.

--v2:
- Initialize with redundant flags. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h |  2 ++
 drivers/gpu/drm/i915/display/intel_vrr.c |  8 ++++++--
 3 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 1726c0ab18c2..3b81a7b48035 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -810,6 +810,23 @@ void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
 		     PIPEDMC_BLOCK_PKGC_SW_BLOCK_PKGC_ALWAYS : 0);
 }
 
+void intel_dmc_configure_dc_balance_ctl_regs(struct intel_display *display,
+					     enum pipe pipe, bool enable)
+{
+	u32 val = REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
+				 DMC_EVT_CTL_TYPE_EDGE_0_1);
+
+	if (enable)
+		val |= DMC_EVT_CTL_ENABLE | DMC_EVT_CTL_RECURRING |
+			REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
+				       PIPEDMC_EVENT_ADAPTIVE_DCB_TRIGGER);
+	else
+		val |= REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
+				      DMC_EVENT_FALSE);
+
+	intel_de_write(display, PIPEDMC_EVT_CTL_3(pipe), val);
+}
+
 /**
  * intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank() - start of PKG
  * C-state exit
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index d45d51bedb87..032f3e3072ec 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -24,6 +24,8 @@ void intel_dmc_enable_pipe(const struct intel_crtc_state *crtc_state);
 void intel_dmc_disable_pipe(const struct intel_crtc_state *crtc_state);
 void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
 			  bool block);
+void intel_dmc_configure_dc_balance_ctl_regs(struct intel_display *display,
+					     enum pipe pipe, bool enable);
 void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel_display *display,
 							    enum pipe pipe, bool enable);
 void intel_dmc_fini(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 8d7d19b86376..5eb4a7e97291 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -685,8 +685,10 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	if (crtc_state->cmrr.enable)
 		ctl |= VRR_CTL_CMRR_ENABLE;
 
-	if (crtc_state->vrr.dc_balance.enable)
+	if (crtc_state->vrr.dc_balance.enable) {
+		intel_dmc_configure_dc_balance_ctl_regs(display, pipe, true);
 		intel_pipedmc_dcb_enable(NULL, crtc);
+	}
 
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), ctl);
 }
@@ -702,8 +704,10 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->vrr.enable)
 		return;
 
-	if (old_crtc_state->vrr.dc_balance.enable)
+	if (old_crtc_state->vrr.dc_balance.enable) {
 		intel_pipedmc_dcb_disable(NULL, crtc);
+		intel_dmc_configure_dc_balance_ctl_regs(display, pipe, false);
+	}
 
 	ctl = trans_vrr_ctl(old_crtc_state);
 	if (intel_vrr_always_use_vrr_tg(display))
-- 
2.48.1

