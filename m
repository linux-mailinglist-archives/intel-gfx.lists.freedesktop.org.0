Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BC4A4BE6B
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Mar 2025 12:27:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4056810E3DA;
	Mon,  3 Mar 2025 11:27:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B8nomngo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 757E310E3D4;
 Mon,  3 Mar 2025 11:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741001257; x=1772537257;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yaiQCOBap9VDsufdipZ6H1mKzctN98fO1ZY+O7kIKWA=;
 b=B8nomngoNc9ivcPdaPMZDditwtAMpHIcirHGxKZZ3JLvbnY20dmfz/mt
 7KzTH8TzQKbLK+bJwBt91F5PI4lz9ImsESVopkMe0J5Vw4AgekStx1h6D
 GwYh02OyhiZ1P9xFY6d+a90piB4m4Gwy3rLYOJJ+slaV5XvKoPx82JnAs
 tlAkaFnOj58Yd90v+3BO7lw58e9ccDFpmK3koz/NZnl4d0W8hg4lElT+Q
 3o0GPmJcMGhnQFI0/3I5NCNr64ajsxTzAPyYnRZCu9RkY4frqBhfFkVCY
 hKfSjxMMrbuOp/e7NZZNYsm5FRjDv7j4/KqSu4m2wmdBceDJWlvR7l3On g==;
X-CSE-ConnectionGUID: zdONTeJdR8+7A7KMHlm1jg==
X-CSE-MsgGUID: 8WC0RhnNT9mZM31h6aVYrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="42125206"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="42125206"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:27:37 -0800
X-CSE-ConnectionGUID: hhG5x4gHROGUr/dUiKJWng==
X-CSE-MsgGUID: gIO4f6nWRo6WWdTkKF1t6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="118010225"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:27:36 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	matthew.d.roper@intel.com
Subject: [PATCH v3 4/8] drm/i915/reset: add intel_display_reset_test()
Date: Mon,  3 Mar 2025 13:27:06 +0200
Message-Id: <487dec72f753302cd565c3a8164afa7fc1e12ed7.1741001054.git.jani.nikula@intel.com>
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

Add a helper for checking if we want to test display reset regardless of
whether it's strictly necessary. This will come in handy in follow-up
work where we want to check this from gt reset side.

v2: Drop superfluous newline

Cc: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_reset.c | 7 ++++++-
 drivers/gpu/drm/i915/display/intel_display_reset.h | 3 +++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index cef9536c461c..121679b4230f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -22,6 +22,11 @@ static bool gpu_reset_clobbers_display(struct intel_display *display)
 		intel_has_gpu_reset(to_gt(i915)));
 }
 
+bool intel_display_reset_test(struct intel_display *display)
+{
+	return display->params.force_reset_modeset_test;
+}
+
 void intel_display_reset_prepare(struct intel_display *display)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
@@ -33,7 +38,7 @@ void intel_display_reset_prepare(struct intel_display *display)
 		return;
 
 	/* reset doesn't touch the display */
-	if (!display->params.force_reset_modeset_test &&
+	if (!intel_display_reset_test(display) &&
 	    !gpu_reset_clobbers_display(display))
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
index 9a1fe99bfcd4..c1dd2e8d0914 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.h
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
@@ -6,8 +6,11 @@
 #ifndef __INTEL_RESET_H__
 #define __INTEL_RESET_H__
 
+#include <linux/types.h>
+
 struct intel_display;
 
+bool intel_display_reset_test(struct intel_display *display);
 void intel_display_reset_prepare(struct intel_display *display);
 void intel_display_reset_finish(struct intel_display *display);
 
-- 
2.39.5

