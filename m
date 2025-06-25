Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8A4AE82E2
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 14:39:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7997810E702;
	Wed, 25 Jun 2025 12:39:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MsP+qHcW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C186D10E6FA;
 Wed, 25 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750855194; x=1782391194;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=muwLptfjrCJhPci2Yf2tOgbu2vMvUMnrlvCUUG0JOgQ=;
 b=MsP+qHcWBJSk658yylANRXpmOmuLOLz/a6tKrpLMqFkM6cIwA5ouWKnV
 qBIvm/3KinUwjbd0y27pyg8YK4HXcByEXDNzLSNsj9ZpYqrBcNR6h5/L/
 W/AFqJUsNU4QykBZ6lMOnF6iFHFhUKisg9D1CCYOYXeHEWsyP+dLreZsB
 m/0tJ4tNEDKiMtsg4+gEogN3cTYVas9Br9KBd0skuk4iI91eaS2C5yVi8
 cFaafyAGa74zGhSxzEWvSa3XQFHhAag+KfArYKz7fVAdxRc5O2q5uuc5o
 BlGsJFdO+7RHuxJQBKAkKmRKL9thxj7iCcdyV7TXVQ+jpEH+ybMn+VuNc Q==;
X-CSE-ConnectionGUID: N5ffxmTdQyGyvlR31X+vvQ==
X-CSE-MsgGUID: Ppr/n4hQSi6b6Xg5cLaMBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="53259037"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="53259037"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 05:39:54 -0700
X-CSE-ConnectionGUID: tDbK6bmlSUWDGBS7D/MDyg==
X-CSE-MsgGUID: PB5q2I8cQ1ez71k13CjNiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="151969449"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 05:39:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 2/3] drm/i915/power: relocate {SKL,ICL}_PW_CTL_IDX_TO_PG()
Date: Wed, 25 Jun 2025 15:39:37 +0300
Message-Id: <18e40b77eeb3517a056f1e567672163ec568ec55.1750855148.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750855147.git.jani.nikula@intel.com>
References: <cover.1750855147.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Move the {SKL,ICL}_PW_CTL_IDX_TO_PG() macros from intel_display_regs.h
to intel_display_power_well.c. The mapping from index to PG can be
hidden there.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_power_well.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_display_regs.h   | 12 ------------
 2 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 5c9ca8141fcc..9d60dfc4939d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -34,6 +34,19 @@
 #include "vlv_iosf_sb_reg.h"
 #include "vlv_sideband.h"
 
+/*
+ * PG0 is HW controlled, so doesn't have a corresponding power well control knob
+ * SKL_DISP_PW1_IDX..SKL_DISP_PW2_IDX -> PG1..PG2
+ */
+#define  SKL_PW_CTL_IDX_TO_PG(pw_idx)		\
+	((pw_idx) - SKL_PW_CTL_IDX_PW_1 + SKL_PG1)
+/*
+ * PG0 is HW controlled, so doesn't have a corresponding power well control knob
+ * ICL_DISP_PW1_IDX..ICL_DISP_PW4_IDX -> PG1..PG4
+ */
+#define  ICL_PW_CTL_IDX_TO_PG(pw_idx)		\
+	((pw_idx) - ICL_PW_CTL_IDX_PW_1 + SKL_PG1)
+
 struct i915_power_well_regs {
 	i915_reg_t bios;
 	i915_reg_t driver;
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index fdac72fcebee..7bd09d981cd2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -2206,18 +2206,6 @@ enum skl_power_gate {
 
 #define SKL_FUSE_STATUS				_MMIO(0x42000)
 #define  SKL_FUSE_DOWNLOAD_STATUS		(1 << 31)
-/*
- * PG0 is HW controlled, so doesn't have a corresponding power well control knob
- * SKL_DISP_PW1_IDX..SKL_DISP_PW2_IDX -> PG1..PG2
- */
-#define  SKL_PW_CTL_IDX_TO_PG(pw_idx)		\
-	((pw_idx) - SKL_PW_CTL_IDX_PW_1 + SKL_PG1)
-/*
- * PG0 is HW controlled, so doesn't have a corresponding power well control knob
- * ICL_DISP_PW1_IDX..ICL_DISP_PW4_IDX -> PG1..PG4
- */
-#define  ICL_PW_CTL_IDX_TO_PG(pw_idx)		\
-	((pw_idx) - ICL_PW_CTL_IDX_PW_1 + SKL_PG1)
 #define  SKL_FUSE_PG_DIST_STATUS(pg)		(1 << (27 - (pg)))
 
 /* Per-pipe DDI Function Control */
-- 
2.39.5

