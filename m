Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EABC3A43D29
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 12:15:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6222F10E618;
	Tue, 25 Feb 2025 11:15:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ftwSRVi/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6D8310E62B;
 Tue, 25 Feb 2025 11:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740482108; x=1772018108;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7UmPvtvdZ4/9ijHxLz7/38o3CYorIiYZ5RJxNrsseXo=;
 b=ftwSRVi/HvSMtg1AizaXaxtHIuHAf6xoj5CK3P97afnJQ5k9rHi0W0W+
 xso7IvskJMVw/0KDan8/0ebI/ffbb43UHVg/bN9YTBayaicip433P+EFr
 4vR6k+txd3NQuae1aHP14IujgSNRQXtaXrjRiNu2qVkImz8/PQncZDnwl
 58H6ZHELdlc+o2G8u8AFkQGPc2lR7AkU5ScZhrcNsUc6skAbViWBCkBHu
 8ArCOQHFxmXvZ1kQh6mTFv3orEknEIkNSuvFhmwF3XxBNPdyhoJOLeaGl
 AS12JHQ8q8RX2U6OnO2p9N/qXZWJfdmU2etMyB3DZZpcUhHHAm8LxaYYi A==;
X-CSE-ConnectionGUID: yKLT/eJVTlqMLqXiK/+yuQ==
X-CSE-MsgGUID: OJ3qr8kdQAa+pNhEnb6Ldw==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="41537445"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="41537445"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 03:15:08 -0800
X-CSE-ConnectionGUID: LYPo73FmRtmcNEnbnGm93w==
X-CSE-MsgGUID: xe4L8n2wRw6ZRu5egQhQaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="116846678"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 03:15:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v2 8/8] drm/i915/reset: add modeset_stuck callback to
 intel_display_reset_prepare()
Date: Tue, 25 Feb 2025 13:14:22 +0200
Message-Id: <5807a95e88bc058752a2d5cdc03edd20c4da5884.1740481927.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740481927.git.jani.nikula@intel.com>
References: <cover.1740481927.git.jani.nikula@intel.com>
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
 drivers/gpu/drm/i915/gt/intel_reset.c              | 7 ++++++-
 3 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index aafee2df6501..8ef86c896158 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -19,9 +19,9 @@ bool intel_display_reset_test(struct intel_display *display)
 	return display->params.force_reset_modeset_test;
 }
 
-void intel_display_reset_prepare(struct intel_display *display)
+void intel_display_reset_prepare(struct intel_display *display,
+				 modeset_stuck_fn modeset_stuck, void *context)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
 	struct drm_atomic_state *state;
 	int ret;
@@ -32,7 +32,7 @@ void intel_display_reset_prepare(struct intel_display *display)
 	if (atomic_read(&display->restore.pending_fb_pin)) {
 		drm_dbg_kms(display->drm,
 			    "Modeset potentially stuck, unbreaking through wedging\n");
-		intel_gt_set_wedged(to_gt(dev_priv));
+		modeset_stuck(context);
 	}
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
index 985766cde001..053c3e90ac77 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.h
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
@@ -10,8 +10,11 @@
 
 struct intel_display;
 
+typedef void modeset_stuck_fn(void *context);
+
 bool intel_display_reset_test(struct intel_display *display);
-void intel_display_reset_prepare(struct intel_display *display);
+void intel_display_reset_prepare(struct intel_display *display,
+				 modeset_stuck_fn modeset_stuck, void *context);
 void intel_display_reset_finish(struct intel_display *display, bool test_only);
 
 #endif /* __INTEL_RESET_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 2ca12bbf168f..84a8ca167a4e 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1405,6 +1405,11 @@ static bool gt_reset_clobbers_display(struct intel_gt *gt)
 	return intel_gt_gpu_reset_clobbers_display(gt) && intel_has_gpu_reset(gt);
 }
 
+static void display_reset_modeset_stuck(void *gt)
+{
+	intel_gt_set_wedged(gt);
+}
+
 static void display_reset_prepare(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
@@ -1419,7 +1424,7 @@ static void display_reset_prepare(struct intel_gt *gt)
 	smp_mb__after_atomic();
 	wake_up_bit(&gt->reset.flags, I915_RESET_MODESET);
 
-	intel_display_reset_prepare(display);
+	intel_display_reset_prepare(display, display_reset_modeset_stuck, gt);
 }
 
 static void display_reset_finish(struct intel_gt *gt)
-- 
2.39.5

