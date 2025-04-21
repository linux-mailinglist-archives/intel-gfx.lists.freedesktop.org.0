Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D04CA953BB
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Apr 2025 17:51:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A91D210E47F;
	Mon, 21 Apr 2025 15:51:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J3X4hdyo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31B4F10E481;
 Mon, 21 Apr 2025 15:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745250675; x=1776786675;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pc0ALEMyOAHTl3eqJjOQco79Iw5X5G6WZAy9EkRYN8A=;
 b=J3X4hdyooCTkN8TI37SN+ibsZIus+XqbSTtANKUT2NN3BF7lWkO97+zk
 T1Tv+G3r0MXLKtUx/ozRPNtAG3JRUkIHC56NHmO3DkgSq/jvgGLE55OPo
 zG0nRmDwkbikWLB3/2YXdqkjg8E/2z4ia6mXMPUAzV9ocvhnAQtuo3AIT
 7mhuqbdirExTFfshItSXGT3OMrhkNcyzfgI4q3gbU5O94fEPP05vulv8g
 Yg/iHTmoS4TQ83d+o0fSkmGJnAAjwbgKW9OYKjRQntxU03g/AxHcg9JU1
 GDJtaw+ECdj7UKhgBYA6iyjHfFinwdDn/0+ku/ckWQjMN0CXa0E97oeXI Q==;
X-CSE-ConnectionGUID: Nii8YZxQSzeay++rr4s5vQ==
X-CSE-MsgGUID: uIhJZJ7mRGCe+tytnEwrqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="57434070"
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="57434070"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 08:51:15 -0700
X-CSE-ConnectionGUID: TldunpM8TSqRQ6vdvuajWA==
X-CSE-MsgGUID: dVybJ9taScafSt1dSj1s9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="162725595"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 21 Apr 2025 08:51:13 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH v2 05/13] drm/i915/vrr: Add compute config for DC balance
 params
Date: Mon, 21 Apr 2025 21:18:52 +0530
Message-ID: <20250421154900.2095202-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add compute config for DC balance params. This will be required
to calculate correct balance requirement for DMC firmware.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index c4fb78d86ab0..383024dc2784 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -16,6 +16,9 @@
 
 #define FIXED_POINT_PRECISION		100
 #define CMRR_PRECISION_TOLERANCE	10
+#define DCB_CORRECTION_SENSITIVITY	30
+#define DCB_CORRECTION_AGGRESSIVENESS	1000
+#define DCB_BLANK_TARGET		50
 
 bool intel_vrr_is_capable(struct intel_connector *connector)
 {
@@ -409,6 +412,24 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.vsync_end);
 	}
+
+	if (crtc_state->vrr.dc_balance.enable && HAS_DC_BALANCE(display)) {
+		crtc_state->vrr.dc_balance.vmax = crtc_state->vrr.vmax;
+		crtc_state->vrr.dc_balance.vmin = crtc_state->vrr.vmin;
+		crtc_state->vrr.dc_balance.max_increase =
+			crtc_state->vrr.vmax - crtc_state->vrr.vmin;
+		crtc_state->vrr.dc_balance.max_decrease =
+			crtc_state->vrr.vmax - crtc_state->vrr.vmin;
+		crtc_state->vrr.dc_balance.guardband =
+		DIV_ROUND_UP(crtc_state->vrr.dc_balance.vmax * DCB_CORRECTION_SENSITIVITY,
+			     100);
+		crtc_state->vrr.dc_balance.slope =
+			DIV_ROUND_UP(DCB_CORRECTION_AGGRESSIVENESS * 10,
+				     crtc_state->vrr.dc_balance.guardband);
+		crtc_state->vrr.dc_balance.vblank_target =
+		DIV_ROUND_UP((crtc_state->vrr.vmax - crtc_state->vrr.vmin) * DCB_BLANK_TARGET,
+			     100);
+	}
 }
 
 void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
-- 
2.48.1

