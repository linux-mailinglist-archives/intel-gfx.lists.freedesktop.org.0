Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 041649F09C2
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 11:40:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2A1810EFA8;
	Fri, 13 Dec 2024 10:40:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZUQQHVJQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97EE010EFA8;
 Fri, 13 Dec 2024 10:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734086414; x=1765622414;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rYEmAJXzRVyPoyJ80i+Il4CHnnlD7Xdz082IPWK++s4=;
 b=ZUQQHVJQF6oAt967OL1u5HdKm9aH/QqeMj9nJBR+1MPRwlEt1XuMgcWs
 Ww6/6VdKOrwM90L+H5GqcoShzKXq+veeGkVw0SaYpN4zivZqStObr6051
 HyhkfnmRprxXQM6FYRhzA2TOUZ7Y6ilKXY1J0zpDpkuoD4F1dE4fon8w2
 rCaqCo6lSc7HmjBM9OytMku+fNvbrkh01s7T3GEd91gqDWLRzbNJ7oM9r
 uLb46+4MEOW5Nsai1sCPQ405R20NeTebwM28Onndg5IG2sf6V+A69YLcc
 X172KUaZ8B6UsEzh+ZG4i9qsoS8pY04QV6b1GP2awi9A3/PqpGfGfvhJ2 w==;
X-CSE-ConnectionGUID: 04OSyVbgR9SgaLSzU7b2Cw==
X-CSE-MsgGUID: d9nvM9QwRTOMfyvx0Qy4pA==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="45945142"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="45945142"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:40:13 -0800
X-CSE-ConnectionGUID: XH/9sQ/dSc+j4ZqpHR5mKA==
X-CSE-MsgGUID: TbAsz1rKT9WDT4Q1N409OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="127313610"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:40:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com,
 nagavenkata.srikanth.v@intel.com, Lyude Paul <lyude@redhat.com>
Subject: [RFC v0 01/13] drm/mst: remove mgr parameter and debug logging from
 drm_dp_get_vc_payload_bw()
Date: Fri, 13 Dec 2024 12:39:45 +0200
Message-Id: <303656864ecaca8e03503a4cddbc5035dacbae9f.1734085515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1734085515.git.jani.nikula@intel.com>
References: <cover.1734085515.git.jani.nikula@intel.com>
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

The struct drm_dp_mst_topology_mgr *mgr parameter is only used for debug
logging in case the passed in link rate or lane count are zero. There's
no further error checking as such, and the function returns 0.

There should be no case where the parameters are zero. The returned
value is generally used as a divisor, and if we were hitting this, we'd
be seeing division by zero.

Just remove the debug logging altogether, along with the mgr parameter,
so that the function can be used in non-MST contexts without the
topology manager.

Cc: Imre Deak <imre.deak@intel.com>
Cc: Lyude Paul <lyude@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/display/drm_dp_mst_topology.c  | 10 ++--------
 drivers/gpu/drm/i915/display/intel_dp_mst.c    |  3 +--
 drivers/gpu/drm/nouveau/dispnv50/disp.c        |  3 +--
 drivers/gpu/drm/tests/drm_dp_mst_helper_test.c |  4 +---
 include/drm/display/drm_dp_mst_helper.h        |  3 +--
 5 files changed, 6 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
index 687c70308d82..89623ff7f8ea 100644
--- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
@@ -3572,8 +3572,7 @@ static int drm_dp_send_up_ack_reply(struct drm_dp_mst_topology_mgr *mgr,
 }
 
 /**
- * drm_dp_get_vc_payload_bw - get the VC payload BW for an MST link
- * @mgr: The &drm_dp_mst_topology_mgr to use
+ * drm_dp_get_vc_payload_bw - get the VC payload BW for an MTP link
  * @link_rate: link rate in 10kbits/s units
  * @link_lane_count: lane count
  *
@@ -3584,17 +3583,12 @@ static int drm_dp_send_up_ack_reply(struct drm_dp_mst_topology_mgr *mgr,
  *
  * Returns the BW / timeslot value in 20.12 fixed point format.
  */
-fixed20_12 drm_dp_get_vc_payload_bw(const struct drm_dp_mst_topology_mgr *mgr,
-				    int link_rate, int link_lane_count)
+fixed20_12 drm_dp_get_vc_payload_bw(int link_rate, int link_lane_count)
 {
 	int ch_coding_efficiency =
 		drm_dp_bw_channel_coding_efficiency(drm_dp_is_uhbr_rate(link_rate));
 	fixed20_12 ret;
 
-	if (link_rate == 0 || link_lane_count == 0)
-		drm_dbg_kms(mgr->dev, "invalid link rate/lane count: (%d / %d)\n",
-			    link_rate, link_lane_count);
-
 	/* See DP v2.0 2.6.4.2, 2.7.6.3 VCPayload_Bandwidth_for_OneTimeSlotPer_MTP_Allocation */
 	ret.full = DIV_ROUND_DOWN_ULL(mul_u32_u32(link_rate * link_lane_count,
 						  ch_coding_efficiency),
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 123c4ece6268..822500d4d2af 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -244,8 +244,7 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 		crtc_state->fec_enable = !intel_dp_is_uhbr(crtc_state);
 	}
 
-	mst_state->pbn_div = drm_dp_get_vc_payload_bw(&intel_dp->mst_mgr,
-						      crtc_state->port_clock,
+	mst_state->pbn_div = drm_dp_get_vc_payload_bw(crtc_state->port_clock,
 						      crtc_state->lane_count);
 
 	max_dpt_bpp = intel_dp_mst_max_dpt_bpp(crtc_state, dsc);
diff --git a/drivers/gpu/drm/nouveau/dispnv50/disp.c b/drivers/gpu/drm/nouveau/dispnv50/disp.c
index eed579a6c858..36c3c99852e5 100644
--- a/drivers/gpu/drm/nouveau/dispnv50/disp.c
+++ b/drivers/gpu/drm/nouveau/dispnv50/disp.c
@@ -992,8 +992,7 @@ nv50_msto_atomic_check(struct drm_encoder *encoder,
 	if (!mst_state->pbn_div.full) {
 		struct nouveau_encoder *outp = mstc->mstm->outp;
 
-		mst_state->pbn_div = drm_dp_get_vc_payload_bw(&mstm->mgr,
-							      outp->dp.link_bw, outp->dp.link_nr);
+		mst_state->pbn_div = drm_dp_get_vc_payload_bw(outp->dp.link_bw, outp->dp.link_nr);
 	}
 
 	slots = drm_dp_atomic_find_time_slots(state, &mstm->mgr, mstc->port, asyh->dp.pbn);
diff --git a/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c b/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c
index 89cd9e4f4d32..ad29593d28cf 100644
--- a/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c
+++ b/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c
@@ -199,10 +199,8 @@ static const struct drm_dp_mst_calc_pbn_div_test drm_dp_mst_calc_pbn_div_dp1_4_c
 static void drm_test_dp_mst_calc_pbn_div(struct kunit *test)
 {
 	const struct drm_dp_mst_calc_pbn_div_test *params = test->param_value;
-	/* mgr->dev is only needed by drm_dbg_kms(), but it's not called for the test cases. */
-	struct drm_dp_mst_topology_mgr *mgr = test->priv;
 
-	KUNIT_EXPECT_EQ(test, drm_dp_get_vc_payload_bw(mgr, params->link_rate, params->lane_count).full,
+	KUNIT_EXPECT_EQ(test, drm_dp_get_vc_payload_bw(params->link_rate, params->lane_count).full,
 			params->expected.full);
 }
 
diff --git a/include/drm/display/drm_dp_mst_helper.h b/include/drm/display/drm_dp_mst_helper.h
index a80ba457a858..e39de161c938 100644
--- a/include/drm/display/drm_dp_mst_helper.h
+++ b/include/drm/display/drm_dp_mst_helper.h
@@ -867,8 +867,7 @@ struct edid *drm_dp_mst_get_edid(struct drm_connector *connector,
 				 struct drm_dp_mst_topology_mgr *mgr,
 				 struct drm_dp_mst_port *port);
 
-fixed20_12 drm_dp_get_vc_payload_bw(const struct drm_dp_mst_topology_mgr *mgr,
-				    int link_rate, int link_lane_count);
+fixed20_12 drm_dp_get_vc_payload_bw(int link_rate, int link_lane_count);
 
 int drm_dp_calc_pbn_mode(int clock, int bpp);
 
-- 
2.39.5

