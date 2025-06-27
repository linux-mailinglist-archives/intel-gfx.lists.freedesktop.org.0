Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F302AEB69C
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 13:37:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D43D010E9D5;
	Fri, 27 Jun 2025 11:37:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MzwlUwna";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8602410E9D5;
 Fri, 27 Jun 2025 11:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751024242; x=1782560242;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G2AD9ezFrPp8p3JaDKHUU1zf3+t+Nau0qFZUtRUW2NE=;
 b=MzwlUwnaU2g48xka1g4Ny+KBK0np1+JrKoqnqRORllbbdYj8L5RTxXsE
 di+KawJD9RCDXG26xwyMCpyjXAqgJ6i7XZeLR0kTARsXZH4IXXglsVSmO
 zrVi32HgJ5dYlULlw3jJREqPihootfzEFW1T/knASX8LhVNy6xV4Ah6BC
 wQ0KetWQr7LLwd8xp2M7+bTyrSIN5X9rp1WEziE8OkJajmcg/C5aLTH4f
 PSYYAGtG9A2e+aHOk6LBTrb08UOlkHqSMmLFBpWfF6Peoprk6MPm5qhS7
 Cx1l++lwPnYCwPiAFkutbP8JZZgtOJAPuFO6yIgnJpmLLpg6D39sam2QA A==;
X-CSE-ConnectionGUID: qCta3C0yQMmeKWW3j8Uk2w==
X-CSE-MsgGUID: mgKQLCOPQ6qU+uO2rs1kAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53460022"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53460022"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:22 -0700
X-CSE-ConnectionGUID: Kr+zZQk1T6C2E7s+VFSD7w==
X-CSE-MsgGUID: LbWBDUb7SL6fNGobGDy7nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="157071248"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.146])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 09/18] drm/i915/power-well: use generic read_poll_timeout()
 instead of wait_for() for DKL PHY
Date: Fri, 27 Jun 2025 14:36:23 +0300
Message-Id: <18972d754a7ceb36099de000e01cf773247d4955.1751023767.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1751023767.git.jani.nikula@intel.com>
References: <cover.1751023767.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Prefer generic poll helpers over i915 custom helpers.

The functional change is losing the exponentially growing sleep of
wait_for(), which used to be 10, 20, 40, ..., 640, and 1280 us.

Use an arbitrary constant 100 us sleep instead. The timeout remains at 1
ms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_power_well.c    | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 4a876fa815bd..92f4c81d9d1f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -3,6 +3,8 @@
  * Copyright © 2022 Intel Corporation
  */
 
+#include <linux/iopoll.h>
+
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
@@ -521,6 +523,8 @@ icl_tc_phy_aux_power_well_enable(struct intel_display *display,
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	bool is_tbt = power_well->desc->is_tc_tbt;
 	bool timeout_expected;
+	u32 val;
+	int ret;
 
 	icl_tc_port_assert_ref_held(display, power_well, dig_port);
 
@@ -547,10 +551,12 @@ icl_tc_phy_aux_power_well_enable(struct intel_display *display,
 
 		tc_port = TGL_AUX_PW_TO_TC_PORT(i915_power_well_instance(power_well)->hsw.idx);
 
-		if (wait_for(intel_dkl_phy_read(display, DKL_CMN_UC_DW_27(tc_port)) &
-			     DKL_CMN_UC_DW27_UC_HEALTH, 1))
-			drm_warn(display->drm,
-				 "Timeout waiting TC uC health\n");
+		ret = read_poll_timeout(intel_dkl_phy_read, val,
+					val & DKL_CMN_UC_DW27_UC_HEALTH,
+					100, 1000, false,
+					display, DKL_CMN_UC_DW_27(tc_port));
+		if (ret)
+			drm_warn(display->drm, "Timeout waiting TC uC health\n");
 	}
 }
 
-- 
2.39.5

