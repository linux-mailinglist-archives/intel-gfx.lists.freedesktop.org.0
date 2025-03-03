Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB43A4BE71
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Mar 2025 12:27:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F8C010E3DE;
	Mon,  3 Mar 2025 11:27:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KbAEPYjo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3130510E3CD;
 Mon,  3 Mar 2025 11:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741001277; x=1772537277;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2hT5r+OOOeuW+S93tOlME7FkJh9Rpbe4ERVra1CO3AM=;
 b=KbAEPYjowOye3leTf6zC+yDTglPtBd0q4Q0rHhLu6WQQ68bprcB3fQ62
 Md9KtlW0WZtAk9Y2Y8oSu0+jVxCzgA3MyCXvivTb7xtpUFEwmV3CxjsrK
 DtTB8OzL29rQDWGmIY4wacK4RkRlPhEiWFPbtKkrcnRw0EeA0+/U5/lmH
 03CREN3pW28MtjZFxxQcnI2vjL77iiLxRgYLV+Dbf7WEpkK9i4pq1AH4d
 vTTvp07MIi0JMc/4OlLVX5TZZYKwA/Lz3Xi6eOGYKB88dfwhBFXGBEOqF
 thVV1FrpnINehciMp2++Of1kDQx71ft0o28QK410idkytHm9WTmpOmm3z w==;
X-CSE-ConnectionGUID: eIo3gaZBTxqPSbzAu4Yr6w==
X-CSE-MsgGUID: jD49LMZqT0GPTTQI962J5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="45524683"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="45524683"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:27:57 -0800
X-CSE-ConnectionGUID: YxZK+TtXQ26lyAJb5jJJWg==
X-CSE-MsgGUID: vSJtEk6lSq6NzfMVoDACnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="148875969"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:27:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	matthew.d.roper@intel.com
Subject: [PATCH v3 8/8] drm/i915/reset: add modeset_stuck callback to
 intel_display_reset_prepare()
Date: Mon,  3 Mar 2025 13:27:10 +0200
Message-Id: <d322e20927326afa47c0df8a4d4776ee77010e6d.1741001054.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741001054.git.jani.nikula@intel.com>
References: <cover.1741001054.git.jani.nikula@intel.com>
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

Drop the dependency on gt by providing a callback for trying to unbreak
stuck modeset. Do intel_gt_set_wedged() via the callback.

It's by no means pretty, but this is perhaps the most straightforward
alternative.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_reset.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_display_reset.h | 5 ++++-
 drivers/gpu/drm/i915/gt/intel_reset.c              | 9 ++++++++-
 3 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index d5ce0ac43377..1f2798404f2c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -20,9 +20,9 @@ bool intel_display_reset_test(struct intel_display *display)
 }
 
 /* returns true if intel_display_reset_finish() needs to be called */
-bool intel_display_reset_prepare(struct intel_display *display)
+bool intel_display_reset_prepare(struct intel_display *display,
+				 modeset_stuck_fn modeset_stuck, void *context)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
 	struct drm_atomic_state *state;
 	int ret;
@@ -33,7 +33,7 @@ bool intel_display_reset_prepare(struct intel_display *display)
 	if (atomic_read(&display->restore.pending_fb_pin)) {
 		drm_dbg_kms(display->drm,
 			    "Modeset potentially stuck, unbreaking through wedging\n");
-		intel_gt_set_wedged(to_gt(dev_priv));
+		modeset_stuck(context);
 	}
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
index f518147199a1..8b3bda134454 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.h
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
@@ -10,8 +10,11 @@
 
 struct intel_display;
 
+typedef void modeset_stuck_fn(void *context);
+
 bool intel_display_reset_test(struct intel_display *display);
-bool intel_display_reset_prepare(struct intel_display *display);
+bool intel_display_reset_prepare(struct intel_display *display,
+				 modeset_stuck_fn modeset_stuck, void *context);
 void intel_display_reset_finish(struct intel_display *display, bool test_only);
 
 #endif /* __INTEL_RESET_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 0f12752d0f24..dbdcfe130ad4 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1400,6 +1400,11 @@ int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
 	return err;
 }
 
+static void display_reset_modeset_stuck(void *gt)
+{
+	intel_gt_set_wedged(gt);
+}
+
 static void intel_gt_reset_global(struct intel_gt *gt,
 				  u32 engine_mask,
 				  const char *reason)
@@ -1429,7 +1434,9 @@ static void intel_gt_reset_global(struct intel_gt *gt,
 			need_display_reset;
 
 		if (reset_display)
-			reset_display = intel_display_reset_prepare(display);
+			reset_display = intel_display_reset_prepare(display,
+								    display_reset_modeset_stuck,
+								    gt);
 
 		intel_gt_reset(gt, engine_mask, reason);
 
-- 
2.39.5

