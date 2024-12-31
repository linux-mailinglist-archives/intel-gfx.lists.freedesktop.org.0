Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2C49FF0AD
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2024 17:28:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A6C010E68E;
	Tue, 31 Dec 2024 16:27:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hLhvOtD7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00E9210E689;
 Tue, 31 Dec 2024 16:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735662478; x=1767198478;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uGhSHGh43HX58HqiFPHiL2rCMqHgAPv4xHBMzvDCX84=;
 b=hLhvOtD7zgt1957JqtmoVAfqA2jIBLS0pg/mee3NimRUs8BrsYWseLol
 FWU+jqhxrJaNmy0d29Jvmqbgqy0YbL+4XDF+GYlSfR/Zzwf2vIwtY8SKt
 4pRGSjZVymt/dOyLe1I+DS5eu7h3pE4FU2WGkaptj726tQQv/P5IJnLLl
 EAGS5PhbfEAmI81fkAsn8tfsvCKuvAtEP1Wqh8/tFBFFkp5HUjFaQlhb5
 gw/QbGd4FRveeWso/D9gYBOKqDRM7TUAtf+bP/W+Asbg9ZnSmrLV7CqrF
 CdYzzx8xfTUg4zvues9ntYMECRiN2Rvo8xCRRUIpStx0vCerWpekfXO/s A==;
X-CSE-ConnectionGUID: Rw3Ozjz3S0eb+DLmhlBpsw==
X-CSE-MsgGUID: P9HqMRsWRpWM/+l08wRZZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="35251982"
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; d="scan'208";a="35251982"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 08:27:58 -0800
X-CSE-ConnectionGUID: Zq3ZLM86R0WrYjFai5AZJg==
X-CSE-MsgGUID: ky4NtR6hSmyd+g5eGoRyqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; d="scan'208";a="100924949"
Received: from iklimasz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 08:27:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Gustavo Sousa <gustavo.sousa@intel.com>,
 ville.syrjala@linux.intel.com
Subject: [PATCH 2/4] drm/i915/pmdemand: make struct intel_pmdemand_state opaque
Date: Tue, 31 Dec 2024 18:27:38 +0200
Message-Id: <bc5f418785ecd51454761e9a55f21340470a92e3.1735662324.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735662324.git.jani.nikula@intel.com>
References: <cover.1735662324.git.jani.nikula@intel.com>
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

Only intel_pmdemand.c should look inside the struct
intel_pmdemand_state. Indeed, this is already the case. Finish the job
and make struct intel_pmdemand_state opaque, preventing any direct pokes
at the guts of it in the future.

Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 28 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_pmdemand.h | 34 +++----------------
 2 files changed, 32 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index 69b40b3735b3..500faf639290 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -15,6 +15,34 @@
 #include "intel_pmdemand.h"
 #include "skl_watermark.h"
 
+struct pmdemand_params {
+	u16 qclk_gv_bw;
+	u8 voltage_index;
+	u8 qclk_gv_index;
+	u8 active_pipes;
+	u8 active_dbufs;	/* pre-Xe3 only */
+	/* Total number of non type C active phys from active_phys_mask */
+	u8 active_phys;
+	u8 plls;
+	u16 cdclk_freq_mhz;
+	/* max from ddi_clocks[] */
+	u16 ddiclk_max;
+	u8 scalers;		/* pre-Xe3 only */
+};
+
+struct intel_pmdemand_state {
+	struct intel_global_state base;
+
+	/* Maintain a persistent list of port clocks across all crtcs */
+	int ddi_clocks[I915_MAX_PIPES];
+
+	/* Maintain a persistent list of non type C phys mask */
+	u16 active_combo_phys_mask;
+
+	/* Parameters to be configured in the pmdemand registers */
+	struct pmdemand_params params;
+};
+
 struct intel_pmdemand_state *to_intel_pmdemand_state(struct intel_global_state *obj_state)
 {
 	return container_of(obj_state, struct intel_pmdemand_state, base);
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/drm/i915/display/intel_pmdemand.h
index 89296364ec3b..34f68912fe04 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.h
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
@@ -6,42 +6,16 @@
 #ifndef __INTEL_PMDEMAND_H__
 #define __INTEL_PMDEMAND_H__
 
-#include "intel_display_limits.h"
-#include "intel_global_state.h"
+#include <linux/types.h>
 
+enum pipe;
 struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc_state;
 struct intel_encoder;
+struct intel_global_state;
 struct intel_plane_state;
-
-struct pmdemand_params {
-	u16 qclk_gv_bw;
-	u8 voltage_index;
-	u8 qclk_gv_index;
-	u8 active_pipes;
-	u8 active_dbufs;	/* pre-Xe3 only */
-	/* Total number of non type C active phys from active_phys_mask */
-	u8 active_phys;
-	u8 plls;
-	u16 cdclk_freq_mhz;
-	/* max from ddi_clocks[] */
-	u16 ddiclk_max;
-	u8 scalers;		/* pre-Xe3 only */
-};
-
-struct intel_pmdemand_state {
-	struct intel_global_state base;
-
-	/* Maintain a persistent list of port clocks across all crtcs */
-	int ddi_clocks[I915_MAX_PIPES];
-
-	/* Maintain a persistent list of non type C phys mask */
-	u16 active_combo_phys_mask;
-
-	/* Parameters to be configured in the pmdemand registers */
-	struct pmdemand_params params;
-};
+struct intel_pmdemand_state;
 
 struct intel_pmdemand_state *to_intel_pmdemand_state(struct intel_global_state *obj_state);
 
-- 
2.39.5

