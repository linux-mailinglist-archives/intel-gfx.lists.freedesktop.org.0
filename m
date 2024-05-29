Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1EA8D3338
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 11:39:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71AF010F572;
	Wed, 29 May 2024 09:39:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fqLuDMMM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C84A10EF88
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 09:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716975551; x=1748511551;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=31zHeYzB9e4MOX3QXKl+EaJqX6IRbPiJouZRBRxmz34=;
 b=fqLuDMMMcx5Nj/AAJoxNjoTHT/ctaRZwGZZM91a9QrH8/Q6LLhGRzrf3
 RC6x70fGNicdnu3Aq7qo5hH2/32MYYEwE9kC9Phi0FavaV+Mxl+E9OLPt
 jiINmti550ulIiiiKvYTe64sDtzpXqVzCKVvnj4iKw/PcFvQMLfwPXOyv
 acLcnZHMNDMUkbd4CTn+UASPtiNXpY2Vt8l0KLYdUQReWo4mgq54Xlm1u
 8TeWnR+aEW+bhLDPQnJY62HEWQ70DEDCjp64Nokd0xlO/UmqcKcs9A0M4
 5xmhC2nZtZaLisUtQBxHfkbsygMpHOZMfibstuVPAByMGM/nPom+6wGj0 Q==;
X-CSE-ConnectionGUID: PWsgI7+yQZyo/k8olab46g==
X-CSE-MsgGUID: SzCxn1j0QRa8VNN4y4kBqQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="16316832"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="16316832"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:39:11 -0700
X-CSE-ConnectionGUID: WnpZNUlUR1uQsN3Cuk/vGA==
X-CSE-MsgGUID: vJLrftzeQbCXWxMjgZuQdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="40273893"
Received: from romanove-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.36.185])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:39:10 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 5/6] drm/i915/psr: Allow setting
 I915_PSR_DEBUG_SU_REGION_ET_DISABLE via debugfs
Date: Wed, 29 May 2024 12:38:48 +0300
Message-Id: <20240529093849.1016172-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240529093849.1016172-1-jouni.hogander@intel.com>
References: <20240529093849.1016172-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Currently setting I915_PSR_DEBUG_SU_REGION_ET_DISABLE (0x20) via psr_debug
debugfs interface is not allowed. This patch allows it.

v3:
  - ensure psr is disabled/enabled if enable_psr2_su_region_et changes
  - remove extra space
v2: ensure that fastset is performed when the bit changes

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 605ca6b6321d..16fa70c3ae45 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2773,12 +2773,15 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 		 * - PSR disabled in new state
 		 * - All planes will go inactive
 		 * - Changing between PSR versions
+		 * - Region Early Transport changing
 		 * - Display WA #1136: skl, bxt
 		 */
 		needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);
 		needs_to_disable |= !new_crtc_state->has_psr;
 		needs_to_disable |= !new_crtc_state->active_planes;
 		needs_to_disable |= new_crtc_state->has_sel_update != psr->sel_update_enabled;
+		needs_to_disable |= new_crtc_state->enable_psr2_su_region_et !=
+			psr->su_region_et_enabled;
 		needs_to_disable |= DISPLAY_VER(i915) < 11 &&
 			new_crtc_state->wm_level_disabled;
 
@@ -3014,10 +3017,12 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	const u32 mode = val & I915_PSR_DEBUG_MODE_MASK;
-	u32 old_mode;
+	const u32 disable_bits = val & I915_PSR_DEBUG_SU_REGION_ET_DISABLE;
+	u32 old_mode, old_disable_bits;
 	int ret;
 
-	if (val & ~(I915_PSR_DEBUG_IRQ | I915_PSR_DEBUG_MODE_MASK) ||
+	if (val & ~(I915_PSR_DEBUG_IRQ | I915_PSR_DEBUG_SU_REGION_ET_DISABLE |
+		    I915_PSR_DEBUG_MODE_MASK) ||
 	    mode > I915_PSR_DEBUG_ENABLE_SEL_FETCH) {
 		drm_dbg_kms(&dev_priv->drm, "Invalid debug mask %llx\n", val);
 		return -EINVAL;
@@ -3028,6 +3033,8 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 		return ret;
 
 	old_mode = intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK;
+	old_disable_bits = intel_dp->psr.debug &
+		I915_PSR_DEBUG_SU_REGION_ET_DISABLE;
 	intel_dp->psr.debug = val;
 
 	/*
@@ -3039,7 +3046,7 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 
 	mutex_unlock(&intel_dp->psr.lock);
 
-	if (old_mode != mode)
+	if (old_mode != mode || old_disable_bits != disable_bits)
 		ret = intel_psr_fastset_force(dev_priv);
 
 	return ret;
-- 
2.34.1

