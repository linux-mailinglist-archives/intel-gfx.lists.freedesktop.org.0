Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 760B1781099
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 18:41:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C17310E0CF;
	Fri, 18 Aug 2023 16:41:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7323910E0BF
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 16:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692376910; x=1723912910;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EUhH1rYBou5l1L1uw1FrI4aLuOu3tE1sa5d51D/TfYU=;
 b=g/m06K9S97JLd8iqInlelz7EmAaw9IiZSRUIy/EdAd1IiPuRq74GlFLf
 nTGEpfdr/3LmsQiGbWQ23yBoQzkVZ75ebhEVyv0EyjvGmuQBlaUW/KZhu
 dQojcYI9ca9qMBa/Nfx0k4sNmJw+naZd0v3g5rf7xeuJIzE4/PIRdCetA
 qLJPu0ItHGCABAm4Sccn/83TaEY6O/p3/A+fb3odr4WbfdKkwdtj8tcSH
 Klh3KSOkPTVxmIAOoB/KezgKxvBYFwoNgUfCDTKdSURTFMpKKbi1OjP+4
 NG3uJMfxtSUeq3/vcKkyqlfbCyAvTGec97SYFVLbMmUzU3ZdZO91b8P0w Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="370600418"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="370600418"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 09:41:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="728653642"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="728653642"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga007.jf.intel.com with ESMTP; 18 Aug 2023 09:41:48 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Aug 2023 19:41:42 +0300
Message-Id: <20230818164142.27045-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230818164142.27045-1-stanislav.lisovskiy@intel.com>
References: <20230818164142.27045-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Implement vblank synchronized
 MBUS join changes
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

v3: Split mbus and dbox programming into to pre/post plane update parts,
    how it should be done according to BSpec.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 --
 drivers/gpu/drm/i915/display/skl_watermark.c | 36 +++++++++++++++-----
 2 files changed, 27 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8c81206ce90d7..249ba955cce2a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7041,9 +7041,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	}
 
 	intel_encoders_update_prepare(state);
-
 	intel_dbuf_pre_plane_update(state);
-	intel_mbus_dbox_update(state);
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (new_crtc_state->do_async_flip)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index af99f2abd8446..b5c5fa9ecf43c 100644
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
@@ -3524,8 +3517,15 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_dbuf_state->base.changed);
 
-	if (hweight8(new_dbuf_state->active_pipes) <= hweight8(old_dbuf_state->active_pipes))
+	/*
+	 * Switching from multiple to single display scenario.
+	 * Also we put here "<=" instead of "<" for suboptimal cases, when
+	 * we switch from single => single display, enabling mbus join.
+	 */
+	if (hweight8(new_dbuf_state->active_pipes) <= hweight8(old_dbuf_state->active_pipes)) {
 		intel_dbuf_mbus_update(state);
+		intel_mbus_dbox_update(state);
+	}
 
 	gen9_dbuf_slices_update(i915,
 				old_dbuf_state->enabled_slices |
@@ -3547,8 +3547,26 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_dbuf_state->base.changed);
 
-	if (hweight8(new_dbuf_state->active_pipes) > hweight8(old_dbuf_state->active_pipes))
+	/*
+	 * Switching from single to multiple display scenario
+	 */
+	if (hweight8(new_dbuf_state->active_pipes) > hweight8(old_dbuf_state->active_pipes)) {
+		struct intel_crtc *crtc;
+		struct intel_crtc_state *old_crtc_state;
+		int i;
 		intel_dbuf_mbus_update(state);
+		intel_mbus_dbox_update(state);
+
+		for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state, i) {
+			/*
+			 * According to BSpec we should wait vblank on previously single display
+			 */
+			if (!old_crtc_state->hw.active)
+				continue;
+
+			intel_crtc_wait_for_next_vblank(crtc);
+		}
+	}
 
 	gen9_dbuf_slices_update(i915,
 				new_dbuf_state->enabled_slices);
-- 
2.37.3

