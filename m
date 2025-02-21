Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C08A3E933
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2025 01:39:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7349110E9FC;
	Fri, 21 Feb 2025 00:39:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ezF24ATQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 277C810E1D2;
 Fri, 21 Feb 2025 00:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740098339; x=1771634339;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BkFRu1D+mgWUo4LkjEQ5E8iuEbI8wBKJsdAHnm8GI3M=;
 b=ezF24ATQE70xuq5l9nkLWAuN5fq+HZWPLapyHxxCpWhje3KUdiugl5VR
 SoNT4w5IG/5Ev+cEioWGlR7w7sx5Yyq3Z/p76I304URDoiIj8CQvyKp/Y
 USBJZAoPTssm0lXPZYgOi63+ARU1xPx+Qrr41cZSTrRJFwo1UoYwgRp77
 l4AP/Xt8CzI6qp6H7aVdcmpD5mxL1AlpSQnVC2MAyOBMuOlUVJhu1bF34
 1s5lz0J4SuHqtPzhgVMu6yX5dNBTOXG8VSwpq2Mi6GzHo6pzT9jXiS8Ln
 Z9lgk4ARi1JQXE8DxMQqNlbkonUYIHVbxkoF/5sutnmji5gzgZ1JPqt6f Q==;
X-CSE-ConnectionGUID: ku779RPGTc6gk24/gjw0HA==
X-CSE-MsgGUID: MmPeKKf2RaSv2h1QeM/xkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="44688688"
X-IronPort-AV: E=Sophos;i="6.13,303,1732608000"; d="scan'208";a="44688688"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 16:38:59 -0800
X-CSE-ConnectionGUID: VXO9NkPXTHmEea3+hY+FHA==
X-CSE-MsgGUID: tpldQxaZQF+P7iqIw0Ih4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120446843"
Received: from mdroper-desk1.fm.intel.com ([10.1.39.133])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 16:38:58 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: matthew.d.roper@intel.com
Subject: [PATCH 2/4] drm/i915/gt: Replace TIMESTAMP_OVERRIDE readout
Date: Thu, 20 Feb 2025 16:38:46 -0800
Message-ID: <20250221003843.443559-8-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250221003843.443559-6-matthew.d.roper@intel.com>
References: <20250221003843.443559-6-matthew.d.roper@intel.com>
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

The whole GT CS clock initialization area is poorly documented in the
specs and a lot of this code seems to have been inherited from the
Windows driver team long ago.  There's nothing in the specs that
specifically explains using the display reference frequency, as taken
from TIMESTAMP_OVERRIDE register, to determine the GT command streamer
clock.  But if the goal is just to get the display reference clock, we
already have existing display code that takes care of that in a more
straightforward manner (i.e., by either reading the strap register or
using a per-platform constant).  Let's drop the usage of
TIMESTAMP_OVERRIDE (which is a bit questionable to begin with since this
is a display debug register) and replace it with a call to our existing
display function.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    | 31 ++++++-------------
 1 file changed, 9 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index 6e63505fe478..adc21c3322da 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
@@ -11,23 +11,6 @@
 #include "intel_gt_regs.h"
 #include "soc/intel_dram.h"
 
-static u32 read_reference_ts_freq(struct intel_uncore *uncore)
-{
-	u32 ts_override = intel_uncore_read(uncore, GEN9_TIMESTAMP_OVERRIDE);
-	u32 base_freq, frac_freq;
-
-	base_freq = ((ts_override & GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DIVIDER_MASK) >>
-		     GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DIVIDER_SHIFT) + 1;
-	base_freq *= 1000000;
-
-	frac_freq = ((ts_override &
-		      GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DENOMINATOR_MASK) >>
-		     GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DENOMINATOR_SHIFT);
-	frac_freq = 1000000 / (frac_freq + 1);
-
-	return base_freq + frac_freq;
-}
-
 static u32 gen11_get_crystal_clock_freq(struct intel_uncore *uncore,
 					u32 rpm_config_reg)
 {
@@ -64,12 +47,14 @@ static u32 gen11_read_clock_frequency(struct intel_uncore *uncore)
 	 * We do not, and we assume nobody else does.
 	 *
 	 * First figure out the reference frequency. There are 2 ways
-	 * we can compute the frequency, either through the
-	 * TIMESTAMP_OVERRIDE register or through RPM_CONFIG. CTC_MODE
-	 * tells us which one we should use.
+	 * we can compute the frequency, either from the display reference
+	 * clock or through RPM_CONFIG. CTC_MODE tells us which one we should
+	 * use.
 	 */
 	if ((ctc_reg & CTC_SOURCE_PARAMETER_MASK) == CTC_SOURCE_DIVIDE_LOGIC) {
-		freq = read_reference_ts_freq(uncore);
+		struct intel_display *display = &uncore->i915->display;
+
+		freq = intel_display_get_refclk(display) * 1000;
 	} else {
 		u32 c0 = intel_uncore_read(uncore, RPM_CONFIG0);
 
@@ -93,7 +78,9 @@ static u32 gen9_read_clock_frequency(struct intel_uncore *uncore)
 	u32 freq = 0;
 
 	if ((ctc_reg & CTC_SOURCE_PARAMETER_MASK) == CTC_SOURCE_DIVIDE_LOGIC) {
-		freq = read_reference_ts_freq(uncore);
+		struct intel_display *display = &uncore->i915->display;
+
+		freq = intel_display_get_refclk(display) * 1000;
 	} else {
 		freq = IS_GEN9_LP(uncore->i915) ? 19200000 : 24000000;
 
-- 
2.48.1

