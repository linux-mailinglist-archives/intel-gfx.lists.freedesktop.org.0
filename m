Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3497AA6D35
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 10:59:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F10310E8CD;
	Fri,  2 May 2025 08:59:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RLmajM0W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0E3210E8CA;
 Fri,  2 May 2025 08:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746176370; x=1777712370;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oEqfKCwF1tlSqGmgAD4BEtI5L2Vv6JiC4XGWVjNMabQ=;
 b=RLmajM0W/ui54hteb0CTTp9+f+DXkrU4Y4umKn/EQ6al6lD05cCj9OOY
 0vBjrFzTAP0AZcQ0KFbYKw0/Acxu7uisYJcz31Ua1YmTsC3Z6y6GC0SrM
 Eb10p4yOSCdHZznizGX+HFfQrTKD4ixrcyg9/qnoivwf8Pytxky3jl/2D
 MAizbddO2Nr+Y2ZFqSgB5OlrRV0P1UoZ8uCPCtS48wgKZB4iYu0uM8efw
 IRETAIwE/p2K5Nmq6sBXvLhhEyD0h5S4JCBQrVAVZCecLQpQppJGdH0IJ
 a64UutUGTdMxZpLbjRD0K4yiLU/TO0DMMiDM64Jq1fUobRuSgg3fci/jy g==;
X-CSE-ConnectionGUID: NKqzZip5T7+niqhsSGV2WQ==
X-CSE-MsgGUID: AsMCu8qCRGSXoUR5I4jVNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47943195"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="47943195"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:30 -0700
X-CSE-ConnectionGUID: c3ZG9/lxQg2VI8l6xQ0aDg==
X-CSE-MsgGUID: RvJUsqPIR2eZtO2I+9x8Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="134346718"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.55])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:28 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 05/11] drm/i915/psr: Add interface to check if AUXLess ALPM is
 needed by PSR
Date: Fri,  2 May 2025 11:58:56 +0300
Message-ID: <20250502085902.154740-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250502085902.154740-1-jouni.hogander@intel.com>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Currently we spread ugly PSR details into ALPM code to check if AUXLess
ALPM is needed. Prepare to hide these details to PSR code by adding new
interface for checking if AUXLess ALPM is needed.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h |  2 ++
 2 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2d78d64b8db8d..8d8fe1c34479d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -4227,3 +4227,17 @@ bool intel_psr_needs_alpm(struct intel_dp *intel_dp, const struct intel_crtc_sta
 	return intel_dp_is_edp(intel_dp) && (crtc_state->has_sel_update ||
 					     crtc_state->has_panel_replay);
 }
+
+/**
+ * intel_psr_needs_alpm_aux_less - Check if PSR needs ALPM AUXLess
+ * @intel_dp: Intel DP
+ * @crtc_state: CRTC status
+ *
+ * This returns true if PSR needs AUXLess ALPM. I.e. if it's Panel Replay in
+ * eDP.
+ */
+bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
+				   const struct intel_crtc_state *crtc_state)
+{
+	return intel_dp_is_edp(intel_dp) && crtc_state->has_panel_replay;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 73c3fa40844bc..0cf53184f13f9 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -77,5 +77,7 @@ int intel_psr_min_vblank_delay(const struct intel_crtc_state *crtc_state);
 void intel_psr_connector_debugfs_add(struct intel_connector *connector);
 void intel_psr_debugfs_register(struct intel_display *display);
 bool intel_psr_needs_alpm(struct intel_dp *intel_dp, const struct intel_crtc_state *crtc_state);
+bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
+				   const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_PSR_H__ */
-- 
2.43.0

