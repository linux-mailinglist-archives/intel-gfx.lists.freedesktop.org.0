Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0B7A43D23
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 12:14:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16A7710E622;
	Tue, 25 Feb 2025 11:14:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lyI52ev2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8527010E622;
 Tue, 25 Feb 2025 11:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740482089; x=1772018089;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n1BGVYj5ewQvRIVr7u3Pv8TDbsr319OjVEqtbTvDerM=;
 b=lyI52ev2pifNSLTQp8vJDruuB5Nfy3UsSwetUFVSKsjangQdTeRLJOKq
 c/LMG+hbZ+Nm2zCcIWpzr8iLngAE55CmdkODfVGhsmk6e+QgwLaXRRZop
 9ev2ofGHFfajbmdb8DS3FGx8v6UP6Q4jTaVYKsqLexiKyibQDY26du+RB
 cHuJL47qmR+wZbcJb8OWmx3So6hXsqk2Qkj86SPgJhUs/FxQSsD1A0Kyx
 BEGAmCRRL+Yv5XosFxwdchdKqtbWkhdda63dUisk081yzAFG/tznR83TP
 OZ40cpiH3P5l3rFl/uKgpo6q9uxnhW4CJQBZ04hVuObvKu65JgsFN6m+l g==;
X-CSE-ConnectionGUID: T2pbNUPRTKmNGUkxzFrkYA==
X-CSE-MsgGUID: gc7juorqQ7+4enO5XMMK/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="44106539"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="44106539"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 03:14:48 -0800
X-CSE-ConnectionGUID: K+bLyaiBQiiBsiX4Kkeamg==
X-CSE-MsgGUID: LmzLzp4zRzOKnUbcuBlL2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121612177"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 03:14:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v2 4/8] drm/i915/reset: add intel_display_reset_test()
Date: Tue, 25 Feb 2025 13:14:18 +0200
Message-Id: <1e92734af3c4ab75b487e5f8ef891acee53de9bf.1740481927.git.jani.nikula@intel.com>
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

Add a helper for checking if we want to test display reset regardless of
whether it's strictly necessary. This will come in handy in follow-up
work where we want to check this from gt reset side.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_reset.c | 8 ++++++--
 drivers/gpu/drm/i915/display/intel_display_reset.h | 3 +++
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index cef9536c461c..b7962f90c21c 100644
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
 
@@ -41,7 +46,6 @@ void intel_display_reset_prepare(struct intel_display *display)
 	set_bit(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags);
 	smp_mb__after_atomic();
 	wake_up_bit(&to_gt(dev_priv)->reset.flags, I915_RESET_MODESET);
-
 	if (atomic_read(&display->restore.pending_fb_pin)) {
 		drm_dbg_kms(display->drm,
 			    "Modeset potentially stuck, unbreaking through wedging\n");
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

