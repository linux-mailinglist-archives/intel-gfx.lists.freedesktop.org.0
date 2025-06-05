Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3E1ACEDA1
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jun 2025 12:29:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5582910E932;
	Thu,  5 Jun 2025 10:29:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ARarAwkv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C54B10E932;
 Thu,  5 Jun 2025 10:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749119390; x=1780655390;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nW9M0zP0yfBRS0vfQHNP02Qg+QClOajr9U5JOW+DhTc=;
 b=ARarAwkvLSCJsdGYRe3ioWMfvqcOyQP0JreKMCbANPsFCbgL9m458G0y
 LgzFV5P6xJwhwxqTrEDsRTHRYwv1oeQwAQh/OBmCTiEqE+ciitUJMnzpj
 XKmtWNvRMriWVRHufkDj1+JPT6pK7ESy30sgzl5dr4TlgItgyU3qXgYDC
 IniK6vH2XeBiS6oDY3jMvacZzUCqba8V0rOx+g57TyawcwALgPwP4bPkK
 9kpR/znXwEVeXLG+dnX0f7P8YFMeNE6bpzYxdCFHTUW8oV+zRwIzW8n+D
 AfYmkhcV7zSULt2/oJYAehHR6nd7jPnBtUJK281+vyCVBRbtY9ytkm8w4 Q==;
X-CSE-ConnectionGUID: gHGFVMBNTHe9rJDASdZZZg==
X-CSE-MsgGUID: q8xUy16WRnGLTRV9f6n3nQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="51378082"
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="51378082"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 03:29:50 -0700
X-CSE-ConnectionGUID: ZJ/nx7wuTWeytPwnkVrX7Q==
X-CSE-MsgGUID: pRvyNU/2S9u1kfwQS4Gwbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="168639734"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.67])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 03:29:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com,
	rodrigo.vivi@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 1/6] drm/i915/pcode: drop fast wait from
 snb_pcode_write_timeout()
Date: Thu,  5 Jun 2025 13:29:33 +0300
Message-Id: <4d995c8a8ce8398fdd3d95d50fbc1b5c599471f1.1749119274.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749119274.git.jani.nikula@intel.com>
References: <cover.1749119274.git.jani.nikula@intel.com>
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c              | 5 ++---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 3 +--
 drivers/gpu/drm/i915/intel_pcode.c                      | 5 ++---
 drivers/gpu/drm/i915/intel_pcode.h                      | 5 ++---
 drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h    | 6 ++----
 5 files changed, 9 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index f0c673e40ce5..7ad506da7d3d 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2147,7 +2147,7 @@ static void bxt_set_cdclk(struct intel_display *display,
 		 */
 		ret = snb_pcode_write_timeout(&dev_priv->uncore,
 					      HSW_PCODE_DE_WRITE_FREQ_REQ,
-					      0x80000000, 150, 2);
+					      0x80000000, 2);
 
 	if (ret) {
 		drm_err(display->drm,
@@ -2187,8 +2187,7 @@ static void bxt_set_cdclk(struct intel_display *display,
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
index 02e3c22be21e..e60f60ddbff7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -485,8 +485,7 @@ static void icl_tc_cold_exit(struct intel_display *display)
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

