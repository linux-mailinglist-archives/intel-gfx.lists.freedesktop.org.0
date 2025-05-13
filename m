Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E22D6AB4ADF
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 07:19:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 776EA10E52D;
	Tue, 13 May 2025 05:19:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rv5mKTfT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FF4010E528;
 Tue, 13 May 2025 05:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747113553; x=1778649553;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y3WsSBXuprG00Z8TdgJdUEDCSX3ZP+DPwVis4i79h0Q=;
 b=Rv5mKTfTDnORwvd/Zgpq0CuebJbdEtrovRQiyy3Ww/ZWD8XU4G3JScS+
 odEp2vk7Kr24Q5Y1VIG2msbAQ2QEWA0LlWXwSDKQw/xQPqiY3d1GSNP+Z
 5m0q5PXNGI1epe92zHYiHEl77VDmiED/ZCAx5648Yc9um0wYRuOrmKUQ/
 MtCVoPClIKFOqzQc8vpKwLCWNeVW5ud25qm26qAbTgxh871iF+C4onc79
 QxFscIgA8W3SQJMrbule9p1PuP6vx3uCzn0/yN8UE6fd2r47HhlBcsZJE
 CaEFAjyT2wsMhmsiNjPQGWrGqq7r8uJ9oLiikedKjA+R7fvR+oe03m5ru Q==;
X-CSE-ConnectionGUID: CRs38hMzS1a6A0/TKS+cjw==
X-CSE-MsgGUID: 4BvhQfLCR+qA3weE8fB5Hg==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="51597874"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="51597874"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 22:19:13 -0700
X-CSE-ConnectionGUID: tpIsQCq0RmyepNW69nREbw==
X-CSE-MsgGUID: 9MAMDn2BTkCZ1MvYPTqUQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="137506234"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 12 May 2025 22:19:11 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v5 13/17] drm/i915/vrr: Restructure VRR enablement bit
Date: Tue, 13 May 2025 10:46:56 +0530
Message-ID: <20250513051700.507389-14-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Restructure bits for VRR enablement.

--v2:
- Separate multiple enablement from one patch.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 27 ++++++++++++------------
 1 file changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index b2348ae10a1a..88ac4d93586b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -603,6 +603,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 ctl;
 
 	if (!crtc_state->vrr.enable)
 		return;
@@ -617,17 +618,6 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
 		       TRANS_PUSH_EN);
 
-	if (!intel_vrr_always_use_vrr_tg(display)) {
-		if (crtc_state->cmrr.enable) {
-			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
-				       trans_vrr_ctl(crtc_state));
-		} else {
-			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
-		}
-	}
-
 	if (crtc_state->vrr.dc_balance.enable) {
 		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe),
 			       crtc_state->vrr.dc_balance.vmin - 1);
@@ -644,16 +634,29 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 		intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe),
 			       crtc_state->vrr.dc_balance.vblank_target);
 	}
+
+	ctl = VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
+	if (crtc_state->cmrr.enable)
+		ctl |= VRR_CTL_CMRR_ENABLE;
+
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), ctl);
 }
 
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_display *display = to_intel_display(old_crtc_state);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
+	u32 ctl;
 
 	if (!old_crtc_state->vrr.enable)
 		return;
 
+	ctl = trans_vrr_ctl(old_crtc_state);
+	if (intel_vrr_always_use_vrr_tg(display))
+		ctl |= VRR_CTL_VRR_ENABLE;
+
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), ctl);
+
 	if (old_crtc_state->vrr.dc_balance.enable) {
 		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
 		intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
@@ -664,8 +667,6 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	}
 
 	if (!intel_vrr_always_use_vrr_tg(display)) {
-		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-			       trans_vrr_ctl(old_crtc_state));
 		intel_de_wait_for_clear(display,
 					TRANS_VRR_STATUS(display, cpu_transcoder),
 					VRR_STATUS_VRR_EN_LIVE, 1000);
-- 
2.48.1

