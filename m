Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AB47772A3
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 10:17:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2677010E4F3;
	Thu, 10 Aug 2023 08:17:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06D6610E4F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 08:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691655451; x=1723191451;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7I5EWFpYYGcw1bQ8qpQRr2wJ8sKiu2OwHkPETFgQZXU=;
 b=Sb/blKhUgWh/KMJ/pxjniSHiasoPMpNvYgaAdrevdKOCaod8GX3EEjiz
 EG5D187KAZOES8wzB9RAz1m6zHkyL4Y6bCNZCbaS8tANTfRwu1UoUSEJ9
 w2t7BopHOt2UXvdeDg6n/p+ntvmOEDZag9KxD3QGcjAQsUOKyTYxhVhn7
 xZdOeVHzKHbuAifP3YaVn096g6dVp+7orV2J7pqGeDa0/Xzt1CLIqNqK9
 v4MjicdpZd8p7+ZT8mKsuy3BpayQ0FadpanBFvzJscXDMfpwxUEOVHJuC
 5incNGFamsAQ7hCb2DespdLi+Bi/0gS5CvOIqhYU7Hvx1L8H3ksW88aha g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="374110868"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="374110868"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 01:17:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="682012135"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="682012135"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga003.jf.intel.com with ESMTP; 10 Aug 2023 01:17:28 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Aug 2023 11:17:27 +0300
Message-Id: <20230810081727.12756-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Implement vblank synchronized MBUS
 join changes
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently we can't change MBUS join status without doing a modeset,
because we are lacking mechanism to synchronize those with vblank.
However then this means that we can't do a fastset, if there is a need
to change MBUS join state. Fix that by implementing such change.
We already call correspondent check and update at pre_plane dbuf update,
so the only thing left is to have a non-modeset version of that.
If active pipes stay the same then fastset is possible and only MBUS
join state/ddb allocation updates would be committed.

v2: Implement additional changes according to BSpec.
    Vblank wait is needed after MBus/Dbuf programming in case if
    no modeset is done and we are switching from single to multiple
    displays, i.e mbus join state switches from "joined" to  "non-joined"
    state. Otherwise vblank wait is not needed according to spec.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 36 ++++++++++++++++----
 1 file changed, 29 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 063929a42a42f..4fbc74e800217 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2614,13 +2614,6 @@ skl_compute_ddb(struct intel_atomic_state *state)
 		if (ret)
 			return ret;
 
-		if (old_dbuf_state->joined_mbus != new_dbuf_state->joined_mbus) {
-			/* TODO: Implement vblank synchronized MBUS joining changes */
-			ret = intel_modeset_all_pipes(state, "MBUS joining change");
-			if (ret)
-				return ret;
-		}
-
 		drm_dbg_kms(&i915->drm,
 			    "Enabled dbuf slices 0x%x -> 0x%x (total dbuf slices 0x%x), mbus joined? %s->%s\n",
 			    old_dbuf_state->enabled_slices,
@@ -3528,6 +3521,35 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
 	gen9_dbuf_slices_update(i915,
 				old_dbuf_state->enabled_slices |
 				new_dbuf_state->enabled_slices);
+
+	/*
+	 * If we are not doing a modeset, that means we must synchronize
+	 * our MBUS configuration changes with vblank.
+	 * According to MBus programming section of BSpec, we must wait for vblank
+	 * on active crtc, which was single display, when switching from single
+	 * display(mbus joined) to additional multiple displays(mbus not joined)
+	 * after Mbus/Dbuf slice programming is done.
+	 */
+	if (!state->modeset && !new_dbuf_state->joined_mbus && old_dbuf_state->joined_mbus) {
+		struct intel_crtc *crtc;
+		struct intel_crtc_state *new_crtc_state, *old_crtc_state;
+		int i;
+
+		for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
+			/*
+			 * Need to wait for vblank only if crtc was active prior to that change,
+			 * i.e this is a scenario when we switch from single display to multiple
+			 * displays, without doing a full modeset and it still stays on, according
+			 * to BSpec only in that case we need to wait for vblank on that previously
+			 * single display. Otherwise no wait is needed. Rest of the cases, are not
+			 * possible without a modeset anyway.
+			 */
+			if (!new_crtc_state->hw.active || !old_crtc_state->hw.active)
+				continue;
+
+			intel_crtc_wait_for_next_vblank(crtc);
+		}
+	}
 }
 
 void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
-- 
2.37.3

