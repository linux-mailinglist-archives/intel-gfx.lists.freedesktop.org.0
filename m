Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C45A6A958
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Mar 2025 16:04:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19C3B10E645;
	Thu, 20 Mar 2025 15:04:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M0egnsct";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20FD410E644;
 Thu, 20 Mar 2025 15:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742483058; x=1774019058;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2ddsg6ZPFy7gXLDGdOVc7DwflaLQATsIsB731bWJh6s=;
 b=M0egnsctmZKI1m7QeFwEGvtkLXQ76PR/jWyQhiXVDd/SInBovGL3JO0E
 9uJ4cvLVSXXDHSvtjxwHzJvT7f0MJKDSUGRPv4wdEPz1WORATUl2hktGW
 Spenab141Yk1MfRqq9ntBIUwnR3QWyKW8ckHfWg+BjDlVqlwkoP62srK8
 zI+HVjnF83Jbr8w2ZWsysDQz6iWKlrhEcXf2MWViSC/mRlh/SAnrSsTr2
 mz3wSw9TL2/FUKrywbkY1m4lH5JK5wrJVQKOvkq+nDjx4sXUbP7ETV2rb
 +L7UzhJcXP58+SJWxIcvEYo1asxhsaTAtLBFMRaRGs1KSUXyxT1AmaRrU w==;
X-CSE-ConnectionGUID: w2P1g7HARzi1Ogq8H4OJog==
X-CSE-MsgGUID: Q5aKFT6yRumLqNxgz4EMeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="43852652"
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="43852652"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 08:04:18 -0700
X-CSE-ConnectionGUID: p/imoNWnRzW61IzRhbqk/w==
X-CSE-MsgGUID: CeYit1XLSBeNmC82kyZ5lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,262,1736841600"; d="scan'208";a="123578265"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 08:04:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI 3/6] drm/i915/display: use display runtime PM interfaces for for
 atomic state
Date: Thu, 20 Mar 2025 17:03:57 +0200
Message-Id: <2682fa92089ab87429eef4d45f931839f0d32077.1742483007.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742483007.git.jani.nikula@intel.com>
References: <cover.1742483007.git.jani.nikula@intel.com>
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

Convert intel_atomic_commit() and intel_atomic_commit_tail() to use
display runtime PM interfaces. Also convert the wakeref member type to
struct ref_tracker *, which is the same as intel_wakeref_t, but without
the typedef.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 12 ++++++------
 drivers/gpu/drm/i915/display/intel_display_types.h |  2 +-
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3afb85fe8536..b852ffe94a10 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -73,6 +73,7 @@
 #include "intel_de.h"
 #include "intel_display_driver.h"
 #include "intel_display_power.h"
+#include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
@@ -7229,7 +7230,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	struct drm_i915_private __maybe_unused *dev_priv = to_i915(display->drm);
 	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
 	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] = {};
@@ -7443,7 +7444,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	 * toggling overhead at and above 60 FPS.
 	 */
 	intel_display_power_put_async_delay(display, POWER_DOMAIN_DC_OFF, wakeref, 17);
-	intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
+	intel_display_rpm_put(display, state->wakeref);
 
 	/*
 	 * Defer the cleanup of the old state to a separate worker to not
@@ -7515,10 +7516,9 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 {
 	struct intel_display *display = to_intel_display(dev);
 	struct intel_atomic_state *state = to_intel_atomic_state(_state);
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	int ret = 0;
 
-	state->wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
+	state->wakeref = intel_display_rpm_get(display);
 
 	/*
 	 * The intel_legacy_cursor_update() fast path takes care
@@ -7552,7 +7552,7 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 	if (ret) {
 		drm_dbg_atomic(display->drm,
 			       "Preparing state failed with %i\n", ret);
-		intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
+		intel_display_rpm_put(display, state->wakeref);
 		return ret;
 	}
 
@@ -7562,7 +7562,7 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 
 	if (ret) {
 		drm_atomic_helper_unprepare_planes(dev, &state->base);
-		intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
+		intel_display_rpm_put(display, state->wakeref);
 		return ret;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 99a6fd2900b9..7d9cc430a6b8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -581,7 +581,7 @@ struct dpll {
 struct intel_atomic_state {
 	struct drm_atomic_state base;
 
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 
 	struct __intel_global_objs_state *global_objs;
 	int num_global_objs;
-- 
2.39.5

