Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 419A6AEB69A
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 13:37:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74FE110E9D9;
	Fri, 27 Jun 2025 11:37:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YF0YsKit";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D104810E9D9;
 Fri, 27 Jun 2025 11:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751024233; x=1782560233;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U/+jKXo4keirX0kLzINz6bmqM/T/2DJwjrpWOl5SGEg=;
 b=YF0YsKithFg2mWCMEQupnLhgcfEjsq+a9WRsLPhpg9fEDJkYC2s1H8w3
 2g1sJE3DxQFPqYRWjIf33iaAS5gDuc7MxObc9RImRE78FbbjZ0G71EiQo
 BnT2gR1fOuz4AbwjAkMXNBn5veFkn5TbqCS3hGbsECf+hjIq/P/IxYK5p
 qWY08O73XQWMEz3hMatRGD3VVo6AehbnNLc5MURg9KfgdE5Q85kzFwOMk
 cc9DdKfGnwmWYWxzuYOKJ+y5ev6H5m3f5haEQMSRz05fg9ShqFqfx7HSU
 mQhMr2glljC7qRL4+y39dElNdOoTQuPvBDKnqiTXk1KIYBeG+A88eFnRK Q==;
X-CSE-ConnectionGUID: EKjr+X69Srm0adJttriHVw==
X-CSE-MsgGUID: q+P+/2ApSAuManFMc20HWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53460016"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53460016"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:13 -0700
X-CSE-ConnectionGUID: NNYtUCdFS36O+CaHrBTlWA==
X-CSE-MsgGUID: CD/HSdiMSmG7ZsZHJasbcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="157071205"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.146])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 07/18] drm/i915/cdclk: use generic read_poll_timeout() instead
 of wait_for()
Date: Fri, 27 Jun 2025 14:36:21 +0300
Message-Id: <1fa256e230e3d3bed6331b79cd0c45fad8336b07.1751023767.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1751023767.git.jani.nikula@intel.com>
References: <cover.1751023767.git.jani.nikula@intel.com>
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
 drivers/gpu/drm/i915/display/intel_cdclk.c | 41 +++++++++++++---------
 1 file changed, 24 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 228aa64c1349..9cb6cd59b438 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -22,6 +22,7 @@
  */
 
 #include <linux/debugfs.h>
+#include <linux/iopoll.h>
 #include <linux/time.h>
 
 #include <drm/drm_fixed.h>
@@ -672,6 +673,7 @@ static void vlv_set_cdclk(struct intel_display *display,
 	int cdclk = cdclk_config->cdclk;
 	u32 val, cmd = cdclk_config->voltage_level;
 	intel_wakeref_t wakeref;
+	int ret;
 
 	switch (cdclk) {
 	case 400000:
@@ -702,12 +704,13 @@ static void vlv_set_cdclk(struct intel_display *display,
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
+	ret = read_poll_timeout(vlv_punit_read, val,
+				(val & DSPFREQSTAT_MASK) == (cmd << DSPFREQSTAT_SHIFT),
+				500, 50 * 1000, false,
+				display->drm, PUNIT_REG_DSPSSPM);
+	if (ret)
+		drm_err(display->drm, "timed out waiting for CDCLK change\n");
 
 	if (cdclk == 400000) {
 		u32 divider;
@@ -721,11 +724,12 @@ static void vlv_set_cdclk(struct intel_display *display,
 		val |= divider;
 		vlv_cck_write(display->drm, CCK_DISPLAY_CLOCK_CONTROL, val);
 
-		if (wait_for((vlv_cck_read(display->drm, CCK_DISPLAY_CLOCK_CONTROL) &
-			      CCK_FREQUENCY_STATUS) == (divider << CCK_FREQUENCY_STATUS_SHIFT),
-			     50))
-			drm_err(display->drm,
-				"timed out waiting for CDclk change\n");
+		ret = read_poll_timeout(vlv_cck_read, val,
+					(val & CCK_FREQUENCY_STATUS) == (divider << CCK_FREQUENCY_STATUS_SHIFT),
+					500, 50 * 1000, false,
+					display->drm, CCK_DISPLAY_CLOCK_CONTROL);
+		if (ret)
+			drm_err(display->drm, "timed out waiting for CDCLK change\n");
 	}
 
 	/* adjust self-refresh exit latency value */
@@ -761,6 +765,7 @@ static void chv_set_cdclk(struct intel_display *display,
 	int cdclk = cdclk_config->cdclk;
 	u32 val, cmd = cdclk_config->voltage_level;
 	intel_wakeref_t wakeref;
+	int ret;
 
 	switch (cdclk) {
 	case 333333:
@@ -786,12 +791,14 @@ static void chv_set_cdclk(struct intel_display *display,
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
+	ret = read_poll_timeout(vlv_punit_read, val,
+				(val & DSPFREQSTAT_MASK_CHV) == (cmd << DSPFREQSTAT_SHIFT_CHV),
+				500, 50 * 1000, false,
+				display->drm, PUNIT_REG_DSPSSPM);
+
+	if (ret)
+		drm_err(display->drm, "timed out waiting for CDCLK change\n");
 
 	vlv_punit_put(display->drm);
 
-- 
2.39.5

