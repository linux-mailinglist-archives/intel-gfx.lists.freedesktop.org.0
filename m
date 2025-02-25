Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CCBA43D27
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 12:15:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE8C810E62A;
	Tue, 25 Feb 2025 11:15:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Epl+Vmk3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13ABF10E629;
 Tue, 25 Feb 2025 11:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740482103; x=1772018103;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+yznEIjkRDoGawKFQgeBXbdwYg02GRIdb4ibf+kwIu4=;
 b=Epl+Vmk3xrQtzifEePwEO2k5rfjYBUTRX5EHb7ENefUnNe/y2B5z0PZh
 h5zC/4SpkTDLST4V1Lr4NHmZgiefczLg10Jin2sZEgkzhl/sU5wS0NAex
 BGa2LVDRPAnDG4A4hp0ul/EnR8O4j6JdPz4eJ2xnZKeUxTjAKQ5pKRro2
 reI+dtKgoJ0IR1vMzqhDySCFK+Nqvy9FeU3ljiiJCWkNdDChXbOGzCkJt
 DfuJvM1tfsGf2ziJ0E3DmCmhGSmcWEZZgMEJStlzZUS5CAWQ/6fG212GW
 GFB9Iq8/jX465gQxKPkFOSQWOmF71jZUXBnmEVarmWxGAsmhARmjQRurw w==;
X-CSE-ConnectionGUID: z3wbXzk9QBGcWkOsiCpceA==
X-CSE-MsgGUID: vHv2Cn1fRZ+3j4d+7iPuSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="41537423"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="41537423"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 03:15:03 -0800
X-CSE-ConnectionGUID: UXpG3ZQfT0SJ/yYvOvv12Q==
X-CSE-MsgGUID: 4xujz7/ZQkCSJU3go/+6Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="116846672"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 03:15:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v2 7/8] drm/i915/reset: pass test only parameter to
 intel_display_reset_finish()
Date: Tue, 25 Feb 2025 13:14:21 +0200
Message-Id: <11e61dca26781cee507f14e0beb7edcc06e86906.1740481927.git.jani.nikula@intel.com>
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

Deduplicate the gpu_reset_clobbers_display() part by passing the
information in from gt side.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_reset.c | 12 ++----------
 drivers/gpu/drm/i915/display/intel_display_reset.h |  2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c              |  2 +-
 3 files changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index 362436cd280f..aafee2df6501 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -14,14 +14,6 @@
 #include "intel_hotplug.h"
 #include "intel_pps.h"
 
-static bool gpu_reset_clobbers_display(struct intel_display *display)
-{
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	return (INTEL_INFO(i915)->gpu_reset_clobbers_display &&
-		intel_has_gpu_reset(to_gt(i915)));
-}
-
 bool intel_display_reset_test(struct intel_display *display)
 {
 	return display->params.force_reset_modeset_test;
@@ -80,7 +72,7 @@ void intel_display_reset_prepare(struct intel_display *display)
 	state->acquire_ctx = ctx;
 }
 
-void intel_display_reset_finish(struct intel_display *display)
+void intel_display_reset_finish(struct intel_display *display, bool test_only)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
@@ -95,7 +87,7 @@ void intel_display_reset_finish(struct intel_display *display)
 		goto unlock;
 
 	/* reset doesn't touch the display */
-	if (!gpu_reset_clobbers_display(display)) {
+	if (test_only) {
 		/* for testing only restore the display */
 		ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
 		if (ret) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
index c1dd2e8d0914..985766cde001 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.h
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
@@ -12,6 +12,6 @@ struct intel_display;
 
 bool intel_display_reset_test(struct intel_display *display);
 void intel_display_reset_prepare(struct intel_display *display);
-void intel_display_reset_finish(struct intel_display *display);
+void intel_display_reset_finish(struct intel_display *display, bool test_only);
 
 #endif /* __INTEL_RESET_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 62590ed91cf2..2ca12bbf168f 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1431,7 +1431,7 @@ static void display_reset_finish(struct intel_gt *gt)
 	if (!test_bit(I915_RESET_MODESET, &gt->reset.flags))
 		return;
 
-	intel_display_reset_finish(display);
+	intel_display_reset_finish(display, !gt_reset_clobbers_display(gt));
 
 	clear_bit_unlock(I915_RESET_MODESET, &gt->reset.flags);
 }
-- 
2.39.5

