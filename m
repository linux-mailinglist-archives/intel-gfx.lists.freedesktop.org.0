Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1765CA00A0F
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 14:53:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B58F110E8C6;
	Fri,  3 Jan 2025 13:53:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AcZBtvDW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D867310E8C2;
 Fri,  3 Jan 2025 13:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735912385; x=1767448385;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D9ydSsKS1/UNT9aU5cDIMojG+Uf3Gh8RXn8eUwnowTk=;
 b=AcZBtvDWQjaAGtTYQ+a2DR+9MJEXCcr8FZHBwdzOXNYOBU6iCyzxMznq
 xhh7QHz431ouTAOvAwvR56kfuuCRde3FEKFJZpj7PPoK0YAmuxBePaolO
 r+7q50CXmnpRlAs9zvTIuGgMzRmrhzSFy+7ydF8EZlSq83Q6835V2+Laz
 hrisVRNYQ44bSN3NWsLXJpoJGajEhci7wazA3FJB4HaRZ/kvrseQ8k5p/
 uOlrECV2xCQl29vt0AfnqGGNcxbeyJsGNisaT+191bgNmQf7HPk24kEUk
 ctAiCkREbnN35AGRQQkcsD3cpWBuaFBcf60UkJMSmzSnr94Af7WtFEqMq A==;
X-CSE-ConnectionGUID: ZChzLJ6jQVySVJS0G0Jm6Q==
X-CSE-MsgGUID: YqIEWTGYRGuGxdq+n2hGYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="47573809"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="47573809"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:05 -0800
X-CSE-ConnectionGUID: c9CjcxonTfO1jByV3GQPbA==
X-CSE-MsgGUID: zNZzEwfUTLS8/z/lkEB1Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="132716700"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 04/16] drm/i915/mst: change return value of
 mst_stream_find_vcpi_slots_for_bpp()
Date: Fri,  3 Jan 2025 15:52:27 +0200
Message-Id: <7b3671a548c893b1bb62151d41f90bb8ce842ccc.1735912293.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735912293.git.jani.nikula@intel.com>
References: <cover.1735912293.git.jani.nikula@intel.com>
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

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 52 +++++++--------------
 1 file changed, 18 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index ffca0d338bb2..a9df57364424 100644
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
@@ -389,7 +379,6 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	int slots = -EINVAL;
 	int i, num_bpc;
 	u8 dsc_bpc[3] = {};
 	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
@@ -437,14 +426,9 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 	min_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(display, min_compressed_bpp,
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

