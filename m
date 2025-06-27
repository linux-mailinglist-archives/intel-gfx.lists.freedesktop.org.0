Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5737AEB698
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 13:37:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1879810E9E3;
	Fri, 27 Jun 2025 11:37:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="htDWQmdF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F6B510E9E0;
 Fri, 27 Jun 2025 11:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751024227; x=1782560227;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9n+vn8hm9LDBCmMecbA7EclpKXcatKa4MZ5felM4S4c=;
 b=htDWQmdFfet1CiKsqRyXgbG2Y94caL0YU1uNvNCi3urGidaOR6IfBogX
 kWPDPMVcKFeJWUb9OPB0ERXg9RcGIWUb54hh+ZCOX6kjBXBhrCpAWdeh1
 sLFF7i9abdKqzXiCTem69+O372zzGM1w60VYD+03M4O/PAZRpZhgzCFH+
 qNNwwAmTDHLPl7B0HuRsCvHbhl8rRi/tw00cfmL+SWhpqWFyGXRRa8PAl
 daBlewy6u6ah4/IbYIDdy+uFD1i5rPEvihOgQ6COgluFLIGFljhCRUnr0
 +ufUrN25vmsyGJCw/5EKwQnjo2sJBRnm6i57bm2Q1TI+RcaA/fpsYMzpE A==;
X-CSE-ConnectionGUID: JeqeEiBrRBWe7nxQJ9D/UQ==
X-CSE-MsgGUID: Yo6NyeFYTMOz22Xk13eUFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53416364"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53416364"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:07 -0700
X-CSE-ConnectionGUID: ERF+UmjGS3ikjzaBK3h3Xw==
X-CSE-MsgGUID: RUMBra3ORfqVdjG7lpdZ+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="153311062"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.146])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 06/18] drm/i915/wm: use generic read_poll_timeout() instead of
 wait_for()
Date: Fri, 27 Jun 2025 14:36:20 +0300
Message-Id: <5121d14847c72893ce3f5a5553c7e70c6bcb8519.1751023767.git.jani.nikula@intel.com>
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

Use an arbitrary constant 500 us sleep instead. The timeout remains at 3
ms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 1f9db5118777..6a8aa7fcfc2d 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -3,6 +3,8 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include <linux/iopoll.h>
+
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "i9xx_wm.h"
@@ -109,6 +111,7 @@ static const struct cxsr_latency *pnv_get_cxsr_latency(struct intel_display *dis
 static void chv_set_memory_dvfs(struct intel_display *display, bool enable)
 {
 	u32 val;
+	int ret;
 
 	vlv_punit_get(display->drm);
 
@@ -121,8 +124,11 @@ static void chv_set_memory_dvfs(struct intel_display *display, bool enable)
 	val |= FORCE_DDR_FREQ_REQ_ACK;
 	vlv_punit_write(display->drm, PUNIT_REG_DDR_SETUP2, val);
 
-	if (wait_for((vlv_punit_read(display->drm, PUNIT_REG_DDR_SETUP2) &
-		      FORCE_DDR_FREQ_REQ_ACK) == 0, 3))
+	ret = read_poll_timeout(vlv_punit_read, val,
+				(val & FORCE_DDR_FREQ_REQ_ACK) == 0,
+				500, 3000, false,
+				display->drm, PUNIT_REG_DDR_SETUP2);
+	if (ret)
 		drm_err(display->drm,
 			"timed out waiting for Punit DDR DVFS request\n");
 
@@ -3902,6 +3908,7 @@ static void vlv_wm_get_hw_state(struct intel_display *display)
 	struct vlv_wm_values *wm = &display->wm.vlv;
 	struct intel_crtc *crtc;
 	u32 val;
+	int ret;
 
 	vlv_read_wm_values(display, wm);
 
@@ -3928,8 +3935,11 @@ static void vlv_wm_get_hw_state(struct intel_display *display)
 		val |= FORCE_DDR_FREQ_REQ_ACK;
 		vlv_punit_write(display->drm, PUNIT_REG_DDR_SETUP2, val);
 
-		if (wait_for((vlv_punit_read(display->drm, PUNIT_REG_DDR_SETUP2) &
-			      FORCE_DDR_FREQ_REQ_ACK) == 0, 3)) {
+		ret = read_poll_timeout(vlv_punit_read, val,
+					(val & FORCE_DDR_FREQ_REQ_ACK) == 0,
+					500, 3000, false,
+					display->drm, PUNIT_REG_DDR_SETUP2);
+		if (ret) {
 			drm_dbg_kms(display->drm,
 				    "Punit not acking DDR DVFS request, "
 				    "assuming DDR DVFS is disabled\n");
-- 
2.39.5

