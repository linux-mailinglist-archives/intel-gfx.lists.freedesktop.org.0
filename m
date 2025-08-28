Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 448D0B39D03
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 14:21:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B11C510E994;
	Thu, 28 Aug 2025 12:21:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VrZY0RDS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C72710E994;
 Thu, 28 Aug 2025 12:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383702; x=1787919702;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gZ0o80ZeMpBlhVO1puurvyyd6KW/oSYn1Wj1UblGpWw=;
 b=VrZY0RDSYj72oYrLZK3Af6WyDWf3fWZXQ6VO0t6BlGHBNNLf5IWPRqvf
 nt6bfoAL9AIU7uPm72Jsyq3YrSXy9vJ8+6Sp3y+jNcPbF+PeYfKNu2T29
 LP4C/S9+LC0BeI9dGBRT5l0NpZxMh8GgEHgrBwRXBXNEqx0LIvdIjad/w
 FvLWZ1wK/cyIIZNEiroXQfRknMDFoc1lbjx7hMNg92fHLkzCuwObamxnA
 9tqlIk/2kPS3xHmx+9Jyl1EoUKGcI4NXoi4Zy6XKZAJZebdU4HXF+xOdm
 vUCTxWhj/wjSi/eVDKLjK0813gu086Ke6tk1LV4aYl54D4aJzQwBLGlZ5 w==;
X-CSE-ConnectionGUID: YsrPGN3nRNGKCk6Ysan0LQ==
X-CSE-MsgGUID: cbzWpVWxR6qMF7TMQC2S6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="57848648"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="57848648"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:42 -0700
X-CSE-ConnectionGUID: 7uj1wWjuR3OWKg3YKp9mAg==
X-CSE-MsgGUID: BjOThbXzQhGGjeNKz0kKYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="174270695"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 07/20] drm/i915/wm: use generic poll_timeout_us() instead of
 wait_for()
Date: Thu, 28 Aug 2025 15:20:49 +0300
Message-ID: <52c80860ea7b98e84f2386ed6cdd761f03190b1e.1756383233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756383233.git.jani.nikula@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
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

Use an arbitrary constant 500 us sleep instead. The timeout remains at 3
ms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 591acce2a4b1..060aff765994 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -3,6 +3,8 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include <linux/iopoll.h>
+
 #include "soc/intel_dram.h"
 
 #include "i915_drv.h"
@@ -112,6 +114,7 @@ static const struct cxsr_latency *pnv_get_cxsr_latency(struct intel_display *dis
 static void chv_set_memory_dvfs(struct intel_display *display, bool enable)
 {
 	u32 val;
+	int ret;
 
 	vlv_punit_get(display->drm);
 
@@ -124,8 +127,10 @@ static void chv_set_memory_dvfs(struct intel_display *display, bool enable)
 	val |= FORCE_DDR_FREQ_REQ_ACK;
 	vlv_punit_write(display->drm, PUNIT_REG_DDR_SETUP2, val);
 
-	if (wait_for((vlv_punit_read(display->drm, PUNIT_REG_DDR_SETUP2) &
-		      FORCE_DDR_FREQ_REQ_ACK) == 0, 3))
+	ret = poll_timeout_us(val = vlv_punit_read(display->drm, PUNIT_REG_DDR_SETUP2),
+			      (val & FORCE_DDR_FREQ_REQ_ACK) == 0,
+			      500, 3000, false);
+	if (ret)
 		drm_err(display->drm,
 			"timed out waiting for Punit DDR DVFS request\n");
 
@@ -3905,6 +3910,7 @@ static void vlv_wm_get_hw_state(struct intel_display *display)
 	struct vlv_wm_values *wm = &display->wm.vlv;
 	struct intel_crtc *crtc;
 	u32 val;
+	int ret;
 
 	vlv_read_wm_values(display, wm);
 
@@ -3931,8 +3937,10 @@ static void vlv_wm_get_hw_state(struct intel_display *display)
 		val |= FORCE_DDR_FREQ_REQ_ACK;
 		vlv_punit_write(display->drm, PUNIT_REG_DDR_SETUP2, val);
 
-		if (wait_for((vlv_punit_read(display->drm, PUNIT_REG_DDR_SETUP2) &
-			      FORCE_DDR_FREQ_REQ_ACK) == 0, 3)) {
+		ret = poll_timeout_us(val = vlv_punit_read(display->drm, PUNIT_REG_DDR_SETUP2),
+				      (val & FORCE_DDR_FREQ_REQ_ACK) == 0,
+				      500, 3000, false);
+		if (ret) {
 			drm_dbg_kms(display->drm,
 				    "Punit not acking DDR DVFS request, "
 				    "assuming DDR DVFS is disabled\n");
-- 
2.47.2

