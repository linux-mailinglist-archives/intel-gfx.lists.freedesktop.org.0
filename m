Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF68377715D
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 09:28:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 410AA10E4D2;
	Thu, 10 Aug 2023 07:28:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 377BA10E4D2
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 07:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691652514; x=1723188514;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Tehv4HCYt3ne/8DjUVgk+zoUqjyab7GpkNKDcfa7C7c=;
 b=QEJNtcv0LLWruQbAtpwQ3crrGddbommLfGKTbm5thATYPYoRTFOqTNUL
 gvmWjf/u9KupHFQ9QcOlvDLlHNE7XsHzNq3pqrsWHRGzIY4GUWYP5n0Yq
 A5CPCbu4ewrODDWNaOEqVmkvgHYmEEpiaseSBjLEELkUJPQ3+ajeS2MlK
 Gr0nuuA3Y94MvPA3fryPYEzCMpneSnWcMA+LC+ASoV2aGwLYmawo/PJo6
 srbFj44NYbxBxOS1Nf3tXyWFpTdVP4v7vuYhBzBzW6AaXnVd4cmAGQisd
 hDvXzm2wAcu1KXjx3nR0K418BLSU911N/unk3KnCIPjbxoamLX5E0hoA6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="457678542"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="457678542"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 00:28:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="797505636"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="797505636"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga008.fm.intel.com with ESMTP; 10 Aug 2023 00:28:19 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Aug 2023 10:28:18 +0300
Message-Id: <20230810072818.6998-1-stanislav.lisovskiy@intel.com>
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

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 25 ++++++++++++++------
 1 file changed, 18 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 063929a42a42f..19840e6d7318c 100644
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
@@ -3524,6 +3517,24 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_dbuf_state->base.changed);
 
+	/*
+	 * If we are not doing a modeset, that means we must synchronize
+	 * our MBUS configuration changes with vblank for all active crtcs.
+	 */
+	if (!state->modeset) {
+		struct intel_crtc *crtc;
+		struct intel_crtc_state *new_crtc_state;
+		int i;
+
+		for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+
+			if (!new_crtc_state->hw.active)
+				continue;
+
+			intel_crtc_wait_for_next_vblank(crtc);
+		}
+	}
+
 	update_mbus_pre_enable(state);
 	gen9_dbuf_slices_update(i915,
 				old_dbuf_state->enabled_slices |
-- 
2.37.3

