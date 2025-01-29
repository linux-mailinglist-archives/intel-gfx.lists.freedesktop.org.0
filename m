Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A684A21F88
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 15:47:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7453110E809;
	Wed, 29 Jan 2025 14:46:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LQnlED/M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E96A10E80C;
 Wed, 29 Jan 2025 14:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738162016; x=1769698016;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OagL8z8uTy1WL6+iLhlFS234e5w9uWNJsTSiP/esuJk=;
 b=LQnlED/M9owRCHeA449QALn7NO599rYkoVc8ZAsm0DDgTAYFmIkQ8ckz
 6XRn+pg0GdRspIkZIdK7cHW4r2dbw035f7rRt7ofQHiYFXmqCVtlFQOTD
 zAPooK8dv6Lg62+pVgud1ildEvxclNCbGJ4TC3pt2Xg01Q3cGwNo5PDWw
 9czt20SPCKCG1ndGMAtNGwzlEvqB/sJw6d/zdd//2Zu7K1rILcA61QUo7
 AZII+EDP598Qr4hdX5bYAvLFblzCQCmYlg2ju8YglCiNqxDnyl4Z16aW1
 uCToxrGSpYBRyhy1fyfesTRlzFF7nyUFk3veusWGJr8/211QKu1PBLK3C Q==;
X-CSE-ConnectionGUID: cfECmW4UQceqUgWPUOopcQ==
X-CSE-MsgGUID: IEPW2lMLSzeTtPkZqVyTsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="64040603"
X-IronPort-AV: E=Sophos;i="6.13,243,1732608000"; d="scan'208";a="64040603"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 06:46:56 -0800
X-CSE-ConnectionGUID: HmBS77xmScSfc5TmZUBfnw==
X-CSE-MsgGUID: CVgCg99YRiCxir7Fb09rbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113057001"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.235])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 06:46:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH 2/6] drm/i915/dp: change the order of
 intel_dp_mtp_tu_compute_config() params
Date: Wed, 29 Jan 2025 16:46:34 +0200
Message-Id: <ea9669edc5973cdbca92aeb4e168850015e9d1bb.1738161945.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738161945.git.jani.nikula@intel.com>
References: <cover.1738161945.git.jani.nikula@intel.com>
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

Pointers first, bpp params in min, max, step. This is slightly more
natural to follow.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 8 +++-----
 drivers/gpu/drm/i915/display/intel_dp_mst.h | 3 +--
 3 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d367f9c2fa23..c387de69d55e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2643,9 +2643,9 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 		if (!ret && intel_dp_is_uhbr(pipe_config))
 			ret = intel_dp_mtp_tu_compute_config(intel_dp,
 							     pipe_config,
+							     conn_state,
 							     pipe_config->pipe_bpp,
 							     pipe_config->pipe_bpp,
-							     conn_state,
 							     0, false);
 		if (ret)
 			dsc_needed = true;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 2acc26aad6a0..98d7cdddfead 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -211,9 +211,8 @@ static int intel_dp_mst_dsc_get_slice_count(const struct intel_connector *connec
 
 int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *crtc_state,
-				   int max_bpp, int min_bpp,
 				   struct drm_connector_state *conn_state,
-				   int step, bool dsc)
+				   int min_bpp, int max_bpp, int step, bool dsc)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct drm_atomic_state *state = crtc_state->uapi.state;
@@ -380,9 +379,8 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 	mst_state->pbn_div = drm_dp_get_vc_payload_bw(crtc_state->port_clock,
 						      crtc_state->lane_count);
 
-	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state,
-					      max_bpp, min_bpp,
-					      conn_state, step, dsc);
+	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state, conn_state,
+					      min_bpp, max_bpp, step, dsc);
 }
 
 static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/drm/i915/display/intel_dp_mst.h
index c6bdc1d190a4..a713a1c10154 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
@@ -33,8 +33,7 @@ bool intel_dp_mst_verify_dpcd_state(struct intel_dp *intel_dp);
 
 int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *crtc_state,
-				   int max_bpp, int min_bpp,
 				   struct drm_connector_state *conn_state,
-				   int step, bool dsc);
+				   int min_bpp, int max_bpp, int step, bool dsc);
 
 #endif /* __INTEL_DP_MST_H__ */
-- 
2.39.5

