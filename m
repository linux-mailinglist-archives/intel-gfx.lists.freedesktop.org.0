Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C533AC4C93
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 12:59:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18DBA10E44D;
	Tue, 27 May 2025 10:59:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pxx9rOcH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B400210E488;
 Tue, 27 May 2025 10:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748343584; x=1779879584;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4F72h990nqGOVtk6LEIOQ8t4Q89O0qF+u2TTviij7xs=;
 b=Pxx9rOcHKp3l65nRrcUA4Rfm7zI4sSzm10ih2qImIGkZ1w7qf897X4+2
 uQmE/TR3eOgafLu+EIHjfSELxqaXHoQR0GQ2/EYewLnY3ljI88XxoQXVy
 Hm2mi5N1pZZHzbYmSqbOFLVpujUAt6550xTt0hymOVUlyIWL834vZKG52
 zm0QI+fkRGgZI9q/6d7zlC1gz1PaT3BymLER0ZeGJWlo8vnx/uSR7wgf4
 rUW7Js0onmy4kmqDodimZWwUEr8P4OwPaJ1XNAYxqwOAzAWrUw1WT70lt
 BlGgEm/4vg2MCqLqbEn8vXTqpXBSDawXTpQd2ZW8tm+fF8AtBtj9DA/QB w==;
X-CSE-ConnectionGUID: p6x05OXlTbylc+QbSXPTIg==
X-CSE-MsgGUID: 0eZumh8yShuDGJAoTTFefA==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="67871820"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="67871820"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 03:59:44 -0700
X-CSE-ConnectionGUID: ynlVS5VHTG6gZ3NNLzTMnw==
X-CSE-MsgGUID: s/KXgi5vToKKPamYdDiIIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="142756906"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.119])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 03:59:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 6/8] drm/i915/sbi: convert to intel_de_*()
Date: Tue, 27 May 2025 13:59:12 +0300
Message-Id: <146f9027f565feb827861f06c1ae218b378edd95.1748343520.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1748343520.git.jani.nikula@intel.com>
References: <cover.1748343520.git.jani.nikula@intel.com>
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

Convert SBI to use the intel_de_*() interface. This allows us to drop
the dependency in i915_drv.h while at it.

The fast timeout for the status wait drops from 100 us to 2 us on i915,
but that should be of no consequence. The slow timeout remains the same.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sbi.c | 22 +++++++++-------------
 1 file changed, 9 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sbi.c b/drivers/gpu/drm/i915/display/intel_sbi.c
index 135f190cf653..78fd8bd9804d 100644
--- a/drivers/gpu/drm/i915/display/intel_sbi.c
+++ b/drivers/gpu/drm/i915/display/intel_sbi.c
@@ -5,8 +5,10 @@
  * LPT/WPT IOSF sideband.
  */
 
-#include "i915_drv.h"
+#include <drm/drm_print.h>
+
 #include "i915_reg.h"
+#include "intel_de.h"
 #include "intel_display_core.h"
 #include "intel_sbi.h"
 
@@ -15,21 +17,17 @@ static int intel_sbi_rw(struct intel_display *display, u16 reg,
 			enum intel_sbi_destination destination,
 			u32 *val, bool is_read)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-	struct intel_uncore *uncore = &i915->uncore;
 	u32 cmd;
 
 	lockdep_assert_held(&display->sbi.lock);
 
-	if (intel_wait_for_register_fw(uncore,
-				       SBI_CTL_STAT, SBI_BUSY, 0,
-				       100, NULL)) {
+	if (intel_de_wait_fw(display, SBI_CTL_STAT, SBI_BUSY, 0, 100, NULL)) {
 		drm_err(display->drm, "timeout waiting for SBI to become ready\n");
 		return -EBUSY;
 	}
 
-	intel_uncore_write_fw(uncore, SBI_ADDR, (u32)reg << 16);
-	intel_uncore_write_fw(uncore, SBI_DATA, is_read ? 0 : *val);
+	intel_de_write_fw(display, SBI_ADDR, (u32)reg << 16);
+	intel_de_write_fw(display, SBI_DATA, is_read ? 0 : *val);
 
 	if (destination == SBI_ICLK)
 		cmd = SBI_CTL_DEST_ICLK | SBI_CTL_OP_CRRD;
@@ -37,11 +35,9 @@ static int intel_sbi_rw(struct intel_display *display, u16 reg,
 		cmd = SBI_CTL_DEST_MPHY | SBI_CTL_OP_IORD;
 	if (!is_read)
 		cmd |= BIT(8);
-	intel_uncore_write_fw(uncore, SBI_CTL_STAT, cmd | SBI_BUSY);
+	intel_de_write_fw(display, SBI_CTL_STAT, cmd | SBI_BUSY);
 
-	if (__intel_wait_for_register_fw(uncore,
-					 SBI_CTL_STAT, SBI_BUSY, 0,
-					 100, 100, &cmd)) {
+	if (intel_de_wait_fw(display, SBI_CTL_STAT, SBI_BUSY, 0, 100, &cmd)) {
 		drm_err(display->drm, "timeout waiting for SBI to complete read\n");
 		return -ETIMEDOUT;
 	}
@@ -52,7 +48,7 @@ static int intel_sbi_rw(struct intel_display *display, u16 reg,
 	}
 
 	if (is_read)
-		*val = intel_uncore_read_fw(uncore, SBI_DATA);
+		*val = intel_de_read_fw(display, SBI_DATA);
 
 	return 0;
 }
-- 
2.39.5

