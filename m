Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01085AB4AE2
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 07:19:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 904A710E52B;
	Tue, 13 May 2025 05:19:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="husITLSe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9633B10E527;
 Tue, 13 May 2025 05:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747113558; x=1778649558;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JKp+sPt790Q79vr0am7lp4vmGDcDFFPTPgnpTC8wsDg=;
 b=husITLSeLpCWN3GS35w49BH4k9pxM38yVH+Yse7Uxpm4ByUYdSompWEM
 uEqTAu37gZOcHlQSN2i7U0sOYhffb7INoNqwvL1q99WxOPTnMUNfciVN1
 aLvNSaTGAK9nxlnvfJdfsY7kONWY0zrGi3AGzbasF6FsjHQpuAPomvk9t
 yz3WFPe5Vp8OyNMIYjXNpn4MXg2ynGRo6+RKyRCR4TmIfZTN2vopPb2nc
 CfGKM8CSvWCXFDwKeuSmB7wfOafDYXMm5VmxoAP8AkJI9bgEBCHd5uQoa
 QqUzhoKoLcoJP25usiRSuAx0fk6sBKQhSmoSJULtseTAm0GqaCUiIr9cc A==;
X-CSE-ConnectionGUID: PVMjiHtcS1ONy3++K1s9bQ==
X-CSE-MsgGUID: tkHkn0+IRxK/6KND4dR45A==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="51597886"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="51597886"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 22:19:18 -0700
X-CSE-ConnectionGUID: 2u8Ocp/+RC+J1ahcbRwcjw==
X-CSE-MsgGUID: srFnO92vR4y4TQhIoBa06Q==
X-Ironport-Invalid-End-Of-Message: True
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="137506286"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 12 May 2025 22:19:16 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v5 16/17] drm/i915/display: Add function to configure
 PIPEDMC_EVT_CTL
Date: Tue, 13 May 2025 10:46:59 +0530
Message-ID: <20250513051700.507389-17-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
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

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h |  2 ++
 drivers/gpu/drm/i915/display/intel_vrr.c | 11 +++++++++--
 3 files changed, 31 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 593f5140475b..077bb6bb0bb4 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -534,6 +534,26 @@ void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
 		     PIPEDMC_BLOCK_PKGC_SW_BLOCK_PKGC_ALWAYS : 0);
 }
 
+void intel_dmc_configure_dc_balance_ctl_regs(struct intel_display *display,
+					     enum pipe pipe, bool enable)
+{
+	u32 val;
+
+	if (enable)
+		val = DMC_EVT_CTL_ENABLE | DMC_EVT_CTL_RECURRING |
+			REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
+				       DMC_EVT_CTL_TYPE_EDGE_0_1) |
+			REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
+				       DMC_EVT_CTL_EVENT_ID_ADAPTIVE_DC_BALANCE_TRIGGER);
+	else
+		val = REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
+				     DMC_EVT_CTL_EVENT_ID_FALSE) |
+		      REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
+				     DMC_EVT_CTL_TYPE_EDGE_0_1);
+
+	intel_de_write(display, PIPEDMC_EVT_CTL_3(pipe), val);
+}
+
 /**
  * intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank() - start of PKG
  * C-state exit
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 48869f19079a..a998c3614e1c 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -22,6 +22,8 @@ void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe);
 void intel_dmc_disable_pipe(struct intel_display *display, enum pipe pipe);
 void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
 			  bool block);
+void intel_dmc_configure_dc_balance_ctl_regs(struct intel_display *display,
+					     enum pipe pipe, bool enable);
 void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel_display *display,
 							    enum pipe pipe, bool enable);
 void intel_dmc_fini(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index cd14d7efb863..5ca71df79430 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -620,7 +620,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
 	u32 ctl;
 
 	if (!crtc_state->vrr.enable)
@@ -659,22 +661,27 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), ctl);
 
-	if (crtc_state->vrr.dc_balance.enable)
+	if (crtc_state->vrr.dc_balance.enable) {
+		intel_dmc_configure_dc_balance_ctl_regs(display, pipe, true);
 		intel_pipedmc_dcb_enable(NULL, crtc);
+	}
 }
 
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_display *display = to_intel_display(old_crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 	u32 ctl;
 
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

