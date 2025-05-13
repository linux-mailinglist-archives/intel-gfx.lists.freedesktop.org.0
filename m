Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCEAAB548F
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 14:17:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD12D10E590;
	Tue, 13 May 2025 12:17:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XP4rO1t8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B01710E590;
 Tue, 13 May 2025 12:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747138659; x=1778674659;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AmCblZwCv/3JpYW3CBXrgV9WIs8AWFuMTAtVGOSTGns=;
 b=XP4rO1t8x65RdpcBOimOztYKhGJDoEw++Uj+VqCXlQxnvLFT15VbIim4
 iI/7p+1eyoAKSQu7dTRj514VhKtLh9faJWuYtTJWsP1Fdof5qObaYtSZV
 Qd6wbdCvxjjgh+inbottocUINffiNMvYSL6/XpfZHDDZnlV9Ypa0h8+xE
 Lol9N+qzoFMkzWyj5ed3jj0cYKooIpJGk5DQsYkjS4W57UJDmfTuIv6w8
 qoS6yHklFDiKFKKRHumc+Hdg8kIsMvyPcUweuSsap9xK7BiQpoHLed0tt
 sLQEX6xMBmRmUzuPhG8mZ6OsjfQa5F4L7dw6LZehEHARpYlo6CZSzFFeR A==;
X-CSE-ConnectionGUID: zYsaaMWBRf+jD0IV43FeOw==
X-CSE-MsgGUID: uXr8r7UBQ1OMnfv8htI+yg==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="48235909"
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="48235909"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 05:17:39 -0700
X-CSE-ConnectionGUID: Tvk+Bq78R2K1beEkiga/nA==
X-CSE-MsgGUID: Sn3VgMOHQpG1sxhRQa386w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="138205839"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 05:17:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 6/8] drm/i915/sbi: convert to intel_de_*()
Date: Tue, 13 May 2025 15:17:05 +0300
Message-Id: <a097fd6b31ea3cf478329e65457c11268fdd14e1.1747138550.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747138550.git.jani.nikula@intel.com>
References: <cover.1747138550.git.jani.nikula@intel.com>
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
 drivers/gpu/drm/i915/display/intel_sbi.c | 24 ++++++++++--------------
 1 file changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sbi.c b/drivers/gpu/drm/i915/display/intel_sbi.c
index ced504f26ac1..aea5e12519b9 100644
--- a/drivers/gpu/drm/i915/display/intel_sbi.c
+++ b/drivers/gpu/drm/i915/display/intel_sbi.c
@@ -5,30 +5,28 @@
  * LPT/WPT IOSF sideband.
  */
 
-#include "i915_drv.h"
-#include "intel_sbi.h"
+#include <drm/drm_print.h>
+
 #include "i915_reg.h"
+#include "intel_de.h"
+#include "intel_sbi.h"
 
 /* SBI access */
 static int intel_sbi_rw(struct intel_display *display, u16 reg,
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
@@ -36,11 +34,9 @@ static int intel_sbi_rw(struct intel_display *display, u16 reg,
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
@@ -51,7 +47,7 @@ static int intel_sbi_rw(struct intel_display *display, u16 reg,
 	}
 
 	if (is_read)
-		*val = intel_uncore_read_fw(uncore, SBI_DATA);
+		*val = intel_de_read_fw(display, SBI_DATA);
 
 	return 0;
 }
-- 
2.39.5

