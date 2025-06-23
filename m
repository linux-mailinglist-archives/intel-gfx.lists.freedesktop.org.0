Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5290FAE3E33
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jun 2025 13:44:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E574A10E369;
	Mon, 23 Jun 2025 11:44:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M5CM3SLa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8CD510E365;
 Mon, 23 Jun 2025 11:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750679041; x=1782215041;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E3nzED7leMRr0OImbhNDsZA8GoyYAmbPRvg8tLwLiRM=;
 b=M5CM3SLa2CoC1mZb9lh/gf3RSm+qBRUP8pimBDDv17EqzG1YlP7zZka6
 tm6pzKTCp7GfSBtA1UyuoDk0Cy3G1BudrCHiRCNKU9HzX/KcbHSe6BDRK
 lUzZtxZ60LSGYeeo2VLFX2ZFtpYNjZRgXp5zcRpPVWLen//f8P4EuKxL2
 wOm21TB+hF+NXbmtXUgtFbrjlt/hsc0zMCtAYo5Wk752+7o2fsPRFr0cY
 Y4nUmRyHhxnsau30EWSdlWv7qY+KXEa2p9tEoedr0r1HfjSirkLSMqou4
 e7a0PUNiVdhF84PeOuuewCrC63S3vlMGciAahf+netF77ftU3xAxkrPxI w==;
X-CSE-ConnectionGUID: xFWSCWdISvmmXhvmtRWDyQ==
X-CSE-MsgGUID: ywBWf/4MQ4WSTkcvxiFcYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="52969408"
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="52969408"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 04:44:00 -0700
X-CSE-ConnectionGUID: 4mwjYONwRWWWEln6xnauyQ==
X-CSE-MsgGUID: IbYEo4KoSDGd9LDI/rRViw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="152093783"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.248])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 04:43:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI 1/6] drm/i915/pcode: drop fast wait from snb_pcode_write_timeout()
Date: Mon, 23 Jun 2025 14:43:44 +0300
Message-Id: <ba86280f53cea2d020308db35f1ecbd615d07d8a.1750678991.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750678991.git.jani.nikula@intel.com>
References: <cover.1750678991.git.jani.nikula@intel.com>
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

Only use the ms granularity wait in snb_pcode_write_timeout(), primarily
to better align with the xe driver, which also only has the millisecond
wait.

Use an arbitrary 250 us fast wait before the specified ms wait, and have
snb_pcode_write() default to 1 ms.

This means snb_pcode_write() and snb_pcode_write_timeout() will always
be sleeping functions. There should not be any atomic users for pcode
writes though, and any display code using pcode via xe has already been
non-atomic. The uncore wait will do a might_sleep() annotation that
should catch any problems.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c              | 5 ++---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 3 +--
 drivers/gpu/drm/i915/intel_pcode.c                      | 5 ++---
 drivers/gpu/drm/i915/intel_pcode.h                      | 5 ++---
 drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h    | 6 ++----
 5 files changed, 9 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 3f68098f27c9..8c5c9ebb75c1 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2148,7 +2148,7 @@ static void bxt_set_cdclk(struct intel_display *display,
 		 */
 		ret = snb_pcode_write_timeout(&dev_priv->uncore,
 					      HSW_PCODE_DE_WRITE_FREQ_REQ,
-					      0x80000000, 150, 2);
+					      0x80000000, 2);
 
 	if (ret) {
 		drm_err(display->drm,
@@ -2188,8 +2188,7 @@ static void bxt_set_cdclk(struct intel_display *display,
 		 */
 		ret = snb_pcode_write_timeout(&dev_priv->uncore,
 					      HSW_PCODE_DE_WRITE_FREQ_REQ,
-					      cdclk_config->voltage_level,
-					      150, 2);
+					      cdclk_config->voltage_level, 2);
 	}
 	if (ret) {
 		drm_err(display->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index cba96f920fd2..825602d959ac 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -486,8 +486,7 @@ static void icl_tc_cold_exit(struct intel_display *display)
 	int ret, tries = 0;
 
 	while (1) {
-		ret = snb_pcode_write_timeout(&i915->uncore, ICL_PCODE_EXIT_TCCOLD, 0,
-					      250, 1);
+		ret = snb_pcode_write(&i915->uncore, ICL_PCODE_EXIT_TCCOLD, 0);
 		if (ret != -EAGAIN || ++tries == 3)
 			break;
 		msleep(1);
diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
index 3db2ba439bb5..b7e9b4ee1425 100644
--- a/drivers/gpu/drm/i915/intel_pcode.c
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -110,13 +110,12 @@ int snb_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val, u32 *val1)
 }
 
 int snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val,
-			    int fast_timeout_us, int slow_timeout_ms)
+			    int timeout_ms)
 {
 	int err;
 
 	mutex_lock(&uncore->i915->sb_lock);
-	err = __snb_pcode_rw(uncore, mbox, &val, NULL,
-			     fast_timeout_us, slow_timeout_ms, false);
+	err = __snb_pcode_rw(uncore, mbox, &val, NULL, 250, timeout_ms, false);
 	mutex_unlock(&uncore->i915->sb_lock);
 
 	if (err) {
diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/intel_pcode.h
index 8d2198e29422..401ce27f72d4 100644
--- a/drivers/gpu/drm/i915/intel_pcode.h
+++ b/drivers/gpu/drm/i915/intel_pcode.h
@@ -11,10 +11,9 @@
 struct intel_uncore;
 
 int snb_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val, u32 *val1);
-int snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val,
-			    int fast_timeout_us, int slow_timeout_ms);
+int snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val, int timeout_ms);
 #define snb_pcode_write(uncore, mbox, val) \
-	snb_pcode_write_timeout(uncore, mbox, val, 500, 0)
+	snb_pcode_write_timeout((uncore), (mbox), (val), 1)
 
 int skl_pcode_request(struct intel_uncore *uncore, u32 mbox, u32 request,
 		      u32 reply_mask, u32 reply, int timeout_base_ms);
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
index a473aa6697d0..32da708680c2 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
@@ -10,11 +10,9 @@
 #include "xe_pcode.h"
 
 static inline int
-snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val,
-			int fast_timeout_us, int slow_timeout_ms)
+snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val, int timeout_ms)
 {
-	return xe_pcode_write_timeout(__compat_uncore_to_tile(uncore), mbox, val,
-				      slow_timeout_ms ?: 1);
+	return xe_pcode_write_timeout(__compat_uncore_to_tile(uncore), mbox, val, timeout_ms);
 }
 
 static inline int
-- 
2.39.5

