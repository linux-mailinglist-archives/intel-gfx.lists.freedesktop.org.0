Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 025085F5966
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 19:55:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFDE810E1EE;
	Wed,  5 Oct 2022 17:55:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF7E410E1EE
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 17:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664992506; x=1696528506;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=q+/KZ+FN0VHelde7ZoSzHO8/Z+HkELzbcH0BJrd82ec=;
 b=Ep7mEE+emehGAmUNM+VfIGNhwzdQVj3T9xJo3pOpW6l7iqgBPd6MhcMA
 lknZnPnyZu8NIWxRQme2MMftAgRzr5PNhZQKZRN+o+y1dBadvsH7aHtI7
 y+Wy8IzELUUYD8paAfgdJaWneDx4F46ypQQmFeaTxEGIhptvG77eTLOrK
 HaS0n58RM8Ffxk2B5Fbrx4WADp0zjDgtX2HCLPl8HTeowB6U/58AH05G8
 KM7HGhSkJoGlLok2I04NMxaxfpC09zt4fHI3rK9DJbDGVCv3ec4dPB3IN
 PI5ps2HMDMnhrJsUNhOOveI1QCcwaQu2W546ouzo3fODj+6YCQ1DH1lii g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="304210416"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="304210416"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 10:52:55 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="687055870"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="687055870"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 10:52:54 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Oct 2022 20:52:50 +0300
Message-Id: <20221005175251.3586272-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Take display INIT power for GPU
 reset/restore
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

Restoring the display during a GPU reset is in practice a display
(system) resume sequence, so take the required INIT power for this. So
far this didn't cause a problem as old platforms (where the reset
clobbers display) have only an always-on power well and for new
platforms __intel_display_resume() will take the power domain
internally.

The next patch will add the missing suspending/resuming of encoders
step, which requires the INIT power domain, so for consistency take it
around the whole resume sequence.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8c3bd9ba0d748..8d2cb4904f965 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -943,6 +943,7 @@ void intel_display_finish_reset(struct drm_i915_private *i915)
 {
 	struct drm_modeset_acquire_ctx *ctx = &i915->reset_ctx;
 	struct drm_atomic_state *state;
+	intel_wakeref_t wakeref;
 	int ret;
 
 	if (!HAS_DISPLAY(i915))
@@ -956,6 +957,8 @@ void intel_display_finish_reset(struct drm_i915_private *i915)
 	if (!state)
 		goto unlock;
 
+	wakeref = intel_display_power_get(i915, POWER_DOMAIN_INIT);
+
 	/* reset doesn't touch the display */
 	if (!gpu_reset_clobbers_display(i915)) {
 		/* for testing only restore the display */
@@ -981,6 +984,8 @@ void intel_display_finish_reset(struct drm_i915_private *i915)
 		intel_hpd_poll_disable(i915);
 	}
 
+	intel_display_power_put(i915, POWER_DOMAIN_INIT, wakeref);
+
 	drm_atomic_state_put(state);
 unlock:
 	drm_modeset_drop_locks(ctx);
-- 
2.37.1

