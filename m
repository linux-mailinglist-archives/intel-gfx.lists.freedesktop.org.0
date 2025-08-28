Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF1EB39D05
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 14:21:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E128210E990;
	Thu, 28 Aug 2025 12:21:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EsdUvUHB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2E7F10E997;
 Thu, 28 Aug 2025 12:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383706; x=1787919706;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QGdlqQDCbsVW7zDcKBCppjGreB6moPwNbP866bhxwjE=;
 b=EsdUvUHBsDUUF8iSBNRaSpRoTiVUt5hZUfCyI2pgr+5P4oE6/Z0AYYr8
 uw5fHL6G6963Gxrihkpnl2Zp/FLX5jXgFsrHXAHMcP6ZZ6a5+CoWrEK9h
 z4kvTYaizN+x4JGBB2erOQDErFt78w3vGT1QF/mY8j8Yw6mNC1yQ3Vuyj
 D/cdYRzldJNBsJm9EU1qN+9fCqpTHtJbAsovoLzf0n99w+OxDwM9LIpoP
 BYf/uVhutE/hCeUtf/qm134sldnQwCL+QhVkiJJKy8DmM2U/Fiq7uFwUR
 sUiAX2UG7XJqDAUDAX/O8yAoNfQK03w3auz6Kygb2AX5gZ/3Pkzrm6r34 A==;
X-CSE-ConnectionGUID: kagsPvanRjCJBvYD4tDZ/w==
X-CSE-MsgGUID: X3WdM39mRxC0QMVwafIH8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="57848655"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="57848655"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:46 -0700
X-CSE-ConnectionGUID: OZKhzFElRSmF48/NJcIydQ==
X-CSE-MsgGUID: 59Q90OdUTQCIkg2l1utEUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="174270728"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 08/20] drm/i915/cdclk: use generic poll_timeout_us() instead
 of wait_for()
Date: Thu, 28 Aug 2025 15:20:50 +0300
Message-ID: <6d50031411d5517508867d4b595ce90a2b44073b.1756383233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756383233.git.jani.nikula@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
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

Prefer generic poll helpers over i915 custom helpers.

The functional change is losing the exponentially growing sleep of
wait_for(), which used to be 10, 20, 40, ..., 640, and 1280 us.

Use an arbitrary constant 500 us sleep instead. The timeout remains at
50 ms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 37 ++++++++++++----------
 1 file changed, 20 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index d7ba3970e1e9..9725eebe5706 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -22,6 +22,7 @@
  */
 
 #include <linux/debugfs.h>
+#include <linux/iopoll.h>
 #include <linux/time.h>
 
 #include <drm/drm_fixed.h>
@@ -673,6 +674,7 @@ static void vlv_set_cdclk(struct intel_display *display,
 	int cdclk = cdclk_config->cdclk;
 	u32 val, cmd = cdclk_config->voltage_level;
 	intel_wakeref_t wakeref;
+	int ret;
 
 	switch (cdclk) {
 	case 400000:
@@ -703,12 +705,12 @@ static void vlv_set_cdclk(struct intel_display *display,
 	val &= ~DSPFREQGUAR_MASK;
 	val |= (cmd << DSPFREQGUAR_SHIFT);
 	vlv_punit_write(display->drm, PUNIT_REG_DSPSSPM, val);
-	if (wait_for((vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM) &
-		      DSPFREQSTAT_MASK) == (cmd << DSPFREQSTAT_SHIFT),
-		     50)) {
-		drm_err(display->drm,
-			"timed out waiting for CDclk change\n");
-	}
+
+	ret = poll_timeout_us(val = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM),
+			      (val & DSPFREQSTAT_MASK) == (cmd << DSPFREQSTAT_SHIFT),
+			      500, 50 * 1000, false);
+	if (ret)
+		drm_err(display->drm, "timed out waiting for CDCLK change\n");
 
 	if (cdclk == 400000) {
 		u32 divider;
@@ -722,11 +724,11 @@ static void vlv_set_cdclk(struct intel_display *display,
 		val |= divider;
 		vlv_cck_write(display->drm, CCK_DISPLAY_CLOCK_CONTROL, val);
 
-		if (wait_for((vlv_cck_read(display->drm, CCK_DISPLAY_CLOCK_CONTROL) &
-			      CCK_FREQUENCY_STATUS) == (divider << CCK_FREQUENCY_STATUS_SHIFT),
-			     50))
-			drm_err(display->drm,
-				"timed out waiting for CDclk change\n");
+		ret = poll_timeout_us(val = vlv_cck_read(display->drm, CCK_DISPLAY_CLOCK_CONTROL),
+				      (val & CCK_FREQUENCY_STATUS) == (divider << CCK_FREQUENCY_STATUS_SHIFT),
+				      500, 50 * 1000, false);
+		if (ret)
+			drm_err(display->drm, "timed out waiting for CDCLK change\n");
 	}
 
 	/* adjust self-refresh exit latency value */
@@ -762,6 +764,7 @@ static void chv_set_cdclk(struct intel_display *display,
 	int cdclk = cdclk_config->cdclk;
 	u32 val, cmd = cdclk_config->voltage_level;
 	intel_wakeref_t wakeref;
+	int ret;
 
 	switch (cdclk) {
 	case 333333:
@@ -787,12 +790,12 @@ static void chv_set_cdclk(struct intel_display *display,
 	val &= ~DSPFREQGUAR_MASK_CHV;
 	val |= (cmd << DSPFREQGUAR_SHIFT_CHV);
 	vlv_punit_write(display->drm, PUNIT_REG_DSPSSPM, val);
-	if (wait_for((vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM) &
-		      DSPFREQSTAT_MASK_CHV) == (cmd << DSPFREQSTAT_SHIFT_CHV),
-		     50)) {
-		drm_err(display->drm,
-			"timed out waiting for CDclk change\n");
-	}
+
+	ret = poll_timeout_us(val = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM),
+			      (val & DSPFREQSTAT_MASK_CHV) == (cmd << DSPFREQSTAT_SHIFT_CHV),
+			      500, 50 * 1000, false);
+	if (ret)
+		drm_err(display->drm, "timed out waiting for CDCLK change\n");
 
 	vlv_punit_put(display->drm);
 
-- 
2.47.2

