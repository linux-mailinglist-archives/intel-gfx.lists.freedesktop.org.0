Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 895AF7D4484
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 03:09:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD5AB10E29A;
	Tue, 24 Oct 2023 01:09:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08C0B10E29A
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 01:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698109741; x=1729645741;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mUqKZ4oy4ikmHaLatq5dJ86CWFyJCISQluLQDqInInI=;
 b=glicsHp4dq9Fq2sTE7kNhqSX5miwOFr41xaKa9LKCVyg53qH0YAb8Bqi
 LntVAbVXBTmwVMobM3FgEo9DIG/d8fw4JsHH7cFA/CQ2AIIhJXenySV56
 SJwghmwo8v+ecIqGWG43JcNPKScmGUFwo4eCL8joBsN6KAyGuFCKYqDWx
 zmQLZSunGSepOao/63Nspsk1DT+KBcn0KEM1mtrsnz5ZpgdCgAPm8oLDT
 7CSEXXN4md6PXAwvr5qqC761HLtF0yh24i6YJBqBizXYXv0Fg7f+bA0Xd
 cd9nSThgnTJZ9WUT6GD2YaIF8tusse7BkNMLbaqLk9g0wJaSC3xxDfzeH w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="366304323"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="366304323"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931870005"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="931870005"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:08:57 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 04:08:57 +0300
Message-Id: <20231024010925.3949910-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231024010925.3949910-1-imre.deak@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/29] drm/dp_mst: Fix fractional DSC bpp
 handling
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
Cc: David Francis <David.Francis@amd.com>,
 Manasi Navare <manasi.d.navare@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Mikita Lipski <mikita.lipski@amd.com>, Harry Wentland <harry.wentland@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The current code does '(bpp << 4) / 16' in the MST PBN
calculation, but that is just the same as 'bpp' so the
DSC codepath achieves absolutely nothing. Fix it up so that
the fractional part of the bpp value is actually used instead
of truncated away. 64*1006 has enough zero lsbs that we can
just shift that down in the dividend and thus still manage
to stick to a 32bit divisor.

And while touching this, let's just make the whole thing more
straightforward by making the passed in bpp value .4 binary
fixed point always, instead of having to pass in different
things based on whether DSC is enabled or not.

v2:
- Fix DSC kunit test cases.

Cc: Manasi Navare <manasi.d.navare@intel.com>
Cc: Lyude Paul <lyude@redhat.com>
Cc: Harry Wentland <harry.wentland@amd.com>
Cc: David Francis <David.Francis@amd.com>
Cc: Mikita Lipski <mikita.lipski@amd.com>
Cc: Alex Deucher <alexander.deucher@amd.com>
Fixes: dc48529fb14e ("drm/dp_mst: Add PBN calculation for DSC modes")
Reviewed-by: Lyude Paul <lyude@redhat.com> (v1)
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
[Imre: Fix kunit test cases]
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |  2 +-
 .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |  2 +-
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 20 +++++--------------
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  5 ++---
 drivers/gpu/drm/nouveau/dispnv50/disp.c       |  3 +--
 .../gpu/drm/tests/drm_dp_mst_helper_test.c    |  6 +++---
 include/drm/display/drm_dp_mst_helper.h       |  2 +-
 7 files changed, 14 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index 45b8fd61a0440..2f37e409a1cfb 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -6918,7 +6918,7 @@ static int dm_encoder_helper_atomic_check(struct drm_encoder *encoder,
 								    max_bpc);
 		bpp = convert_dc_color_depth_into_bpc(color_depth) * 3;
 		clock = adjusted_mode->clock;
-		dm_new_connector_state->pbn = drm_dp_calc_pbn_mode(clock, bpp, false);
+		dm_new_connector_state->pbn = drm_dp_calc_pbn_mode(clock, bpp << 4);
 	}
 
 	dm_new_connector_state->vcpi_slots =
diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
index d3b13d362edac..9a58e1a4c5f49 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
@@ -1642,7 +1642,7 @@ enum dc_status dm_dp_mst_is_port_support_mode(
 	} else {
 		/* check if mode could be supported within full_pbn */
 		bpp = convert_dc_color_depth_into_bpc(stream->timing.display_color_depth) * 3;
-		pbn = drm_dp_calc_pbn_mode(stream->timing.pix_clk_100hz / 10, bpp, false);
+		pbn = drm_dp_calc_pbn_mode(stream->timing.pix_clk_100hz / 10, bpp << 4);
 
 		if (pbn > aconnector->mst_output_port->full_pbn)
 			return DC_FAIL_BANDWIDTH_VALIDATE;
diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
index 0e0d0e76de065..772b00ebd57bd 100644
--- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
@@ -4718,13 +4718,12 @@ EXPORT_SYMBOL(drm_dp_check_act_status);
 
 /**
  * drm_dp_calc_pbn_mode() - Calculate the PBN for a mode.
- * @clock: dot clock for the mode
- * @bpp: bpp for the mode.
- * @dsc: DSC mode. If true, bpp has units of 1/16 of a bit per pixel
+ * @clock: dot clock
+ * @bpp: bpp as .4 binary fixed point
  *
  * This uses the formula in the spec to calculate the PBN value for a mode.
  */
-int drm_dp_calc_pbn_mode(int clock, int bpp, bool dsc)
+int drm_dp_calc_pbn_mode(int clock, int bpp)
 {
 	/*
 	 * margin 5300ppm + 300ppm ~ 0.6% as per spec, factor is 1.006
@@ -4735,18 +4734,9 @@ int drm_dp_calc_pbn_mode(int clock, int bpp, bool dsc)
 	 * peak_kbps *= (1006/1000)
 	 * peak_kbps *= (64/54)
 	 * peak_kbps *= 8    convert to bytes
-	 *
-	 * If the bpp is in units of 1/16, further divide by 16. Put this
-	 * factor in the numerator rather than the denominator to avoid
-	 * integer overflow
 	 */
-
-	if (dsc)
-		return DIV_ROUND_UP_ULL(mul_u32_u32(clock * (bpp / 16), 64 * 1006),
-					8 * 54 * 1000 * 1000);
-
-	return DIV_ROUND_UP_ULL(mul_u32_u32(clock * bpp, 64 * 1006),
-				8 * 54 * 1000 * 1000);
+	return DIV_ROUND_UP_ULL(mul_u32_u32(clock * bpp, 64 * 1006 >> 4),
+				1000 * 8 * 54 * 1000);
 }
 EXPORT_SYMBOL(drm_dp_calc_pbn_mode);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 7b4628f4f1240..80b3df6d51fc8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -106,8 +106,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 			continue;
 
 		crtc_state->pbn = drm_dp_calc_pbn_mode(adjusted_mode->crtc_clock,
-						       dsc ? bpp << 4 : bpp,
-						       dsc);
+						       bpp << 4);
 
 		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
 						      connector->port,
@@ -975,7 +974,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		return ret;
 
 	if (mode_rate > max_rate || mode->clock > max_dotclk ||
-	    drm_dp_calc_pbn_mode(mode->clock, min_bpp, false) > port->full_pbn) {
+	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn) {
 		*status = MODE_CLOCK_HIGH;
 		return 0;
 	}
diff --git a/drivers/gpu/drm/nouveau/dispnv50/disp.c b/drivers/gpu/drm/nouveau/dispnv50/disp.c
index a0ac8c258d9ff..ebeff52058e13 100644
--- a/drivers/gpu/drm/nouveau/dispnv50/disp.c
+++ b/drivers/gpu/drm/nouveau/dispnv50/disp.c
@@ -982,8 +982,7 @@ nv50_msto_atomic_check(struct drm_encoder *encoder,
 		const int clock = crtc_state->adjusted_mode.clock;
 
 		asyh->or.bpc = connector->display_info.bpc;
-		asyh->dp.pbn = drm_dp_calc_pbn_mode(clock, asyh->or.bpc * 3,
-						    false);
+		asyh->dp.pbn = drm_dp_calc_pbn_mode(clock, asyh->or.bpc * 3 << 4);
 	}
 
 	mst_state = drm_atomic_get_mst_topology_state(state, &mstm->mgr);
diff --git a/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c b/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c
index 545beea33e8c7..e3c818dfc0e6d 100644
--- a/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c
+++ b/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c
@@ -42,13 +42,13 @@ static const struct drm_dp_mst_calc_pbn_mode_test drm_dp_mst_calc_pbn_mode_cases
 		.clock = 332880,
 		.bpp = 24,
 		.dsc = true,
-		.expected = 50
+		.expected = 1191
 	},
 	{
 		.clock = 324540,
 		.bpp = 24,
 		.dsc = true,
-		.expected = 49
+		.expected = 1161
 	},
 };
 
@@ -56,7 +56,7 @@ static void drm_test_dp_mst_calc_pbn_mode(struct kunit *test)
 {
 	const struct drm_dp_mst_calc_pbn_mode_test *params = test->param_value;
 
-	KUNIT_EXPECT_EQ(test, drm_dp_calc_pbn_mode(params->clock, params->bpp, params->dsc),
+	KUNIT_EXPECT_EQ(test, drm_dp_calc_pbn_mode(params->clock, params->bpp << 4),
 			params->expected);
 }
 
diff --git a/include/drm/display/drm_dp_mst_helper.h b/include/drm/display/drm_dp_mst_helper.h
index 4429d3b1745b6..655862b3d2a49 100644
--- a/include/drm/display/drm_dp_mst_helper.h
+++ b/include/drm/display/drm_dp_mst_helper.h
@@ -842,7 +842,7 @@ struct edid *drm_dp_mst_get_edid(struct drm_connector *connector,
 int drm_dp_get_vc_payload_bw(const struct drm_dp_mst_topology_mgr *mgr,
 			     int link_rate, int link_lane_count);
 
-int drm_dp_calc_pbn_mode(int clock, int bpp, bool dsc);
+int drm_dp_calc_pbn_mode(int clock, int bpp);
 
 void drm_dp_mst_update_slots(struct drm_dp_mst_topology_state *mst_state, uint8_t link_encoding_cap);
 
-- 
2.39.2

