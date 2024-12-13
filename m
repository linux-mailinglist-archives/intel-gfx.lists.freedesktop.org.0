Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EB19F09CF
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 11:40:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F93610EFAC;
	Fri, 13 Dec 2024 10:40:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bv1iRse7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2989110EFAC;
 Fri, 13 Dec 2024 10:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734086437; x=1765622437;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7cKJpK3p3HM1Z5+OKZ5GgqIrZ4RGHpE7iuH1PeCrvJw=;
 b=bv1iRse7Ndqk5TT5X4BayNzND21Drb8h4vTNcfV8RdIiMg8X7YbF9oqu
 OHnb0zwayPflzHDBKCJg/81bjChfneHgBAOBZdfhkFnjBGkf9XUBQjVQb
 rEtoh5NZa2mDM8SzhZ8GkQgFqz4yRL+bztPgrFFjcwxsidsvhy3vMc+Zv
 6IQMw30RzqMcOdRbtINTO/XKIlMKHH0SfuUMNJ2JgcwUBT855ukbmvPth
 /ZLuprTI1WZD11fRGp1Er2uu9SX9kC5l8+cXd1O7Q3snSx0tBC5QiviK4
 wz2bBIuxhP44+iUqluqKNZ/qTHa09FkxZbji1u1BAtMmYEHzxJVIrq6L1 g==;
X-CSE-ConnectionGUID: +toAJMzsQ4SECTDg5dWuFA==
X-CSE-MsgGUID: 917STsFZTFy3pC0rjYNhWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="34671022"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="34671022"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:40:37 -0800
X-CSE-ConnectionGUID: NUXNEmHwQ3mKtF9111reRA==
X-CSE-MsgGUID: +w5KMKpMSNuUlsGU0kpAYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="97287441"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:40:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com,
 nagavenkata.srikanth.v@intel.com
Subject: [RFC v0 05/13] drm/i915/mst: change return value of
 mst_stream_find_vcpi_slots_for_bpp()
Date: Fri, 13 Dec 2024 12:39:49 +0200
Message-Id: <f27451cc3de3ff029a317c4d69bb3e5507700c49.1734085515.git.jani.nikula@intel.com>
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

The callers of mst_stream_find_vcpi_slots_for_bpp() don't need the
returned slots for anything. On the contrary, they need to jump through
hoops to just distinguish between success and failure. Just return 0
instead of slots from mst_stream_find_vcpi_slots_for_bpp() for success,
and simplify the callers.

There's a pointless ret local variable that we can drop in the process.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 52 +++++++--------------
 1 file changed, 18 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 322c8a1c8b0e..5218b1f7679a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -226,7 +226,6 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 	int bpp, slots = -EINVAL;
 	int dsc_slice_count = 0;
 	int max_dpt_bpp;
-	int ret = 0;
 
 	mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst_mgr);
 	if (IS_ERR(mst_state))
@@ -340,23 +339,21 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 		}
 	}
 
-	/* We failed to find a proper bpp/timeslots, return error */
-	if (ret)
-		slots = ret;
-
 	if (slots < 0) {
 		drm_dbg_kms(display->drm, "failed finding vcpi slots:%d\n",
 			    slots);
-	} else {
-		if (!dsc)
-			crtc_state->pipe_bpp = bpp;
-		else
-			crtc_state->dsc.compressed_bpp_x16 = fxp_q4_from_int(bpp);
-		drm_dbg_kms(display->drm, "Got %d slots for pipe bpp %d dsc %d\n",
-			    slots, bpp, dsc);
+		return slots;
 	}
 
-	return slots;
+	if (!dsc)
+		crtc_state->pipe_bpp = bpp;
+	else
+		crtc_state->dsc.compressed_bpp_x16 = fxp_q4_from_int(bpp);
+
+	drm_dbg_kms(display->drm, "Got %d slots for pipe bpp %d dsc %d\n",
+		    slots, bpp, dsc);
+
+	return 0;
 }
 
 static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
@@ -364,22 +361,15 @@ static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
 					  struct drm_connector_state *conn_state,
 					  struct link_config_limits *limits)
 {
-	int slots = -EINVAL;
-
 	/*
 	 * FIXME: allocate the BW according to link_bpp, which in the case of
 	 * YUV420 is only half of the pipe bpp value.
 	 */
-	slots = mst_stream_find_vcpi_slots_for_bpp(intel_dp, crtc_state,
-						   fxp_q4_to_int(limits->link.max_bpp_x16),
-						   fxp_q4_to_int(limits->link.min_bpp_x16),
-						   limits,
-						   conn_state, 2 * 3, false);
-
-	if (slots < 0)
-		return slots;
-
-	return 0;
+	return mst_stream_find_vcpi_slots_for_bpp(intel_dp, crtc_state,
+						  fxp_q4_to_int(limits->link.max_bpp_x16),
+						  fxp_q4_to_int(limits->link.min_bpp_x16),
+						  limits,
+						  conn_state, 2 * 3, false);
 }
 
 static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
@@ -390,7 +380,6 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	int slots = -EINVAL;
 	int i, num_bpc;
 	u8 dsc_bpc[3] = {};
 	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
@@ -452,14 +441,9 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 	min_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915, min_compressed_bpp,
 							    crtc_state->pipe_bpp);
 
-	slots = mst_stream_find_vcpi_slots_for_bpp(intel_dp, crtc_state, max_compressed_bpp,
-						   min_compressed_bpp, limits,
-						   conn_state, 1, true);
-
-	if (slots < 0)
-		return slots;
-
-	return 0;
+	return mst_stream_find_vcpi_slots_for_bpp(intel_dp, crtc_state, max_compressed_bpp,
+						  min_compressed_bpp, limits,
+						  conn_state, 1, true);
 }
 
 static int mst_stream_update_slots(struct intel_dp *intel_dp,
-- 
2.39.5

