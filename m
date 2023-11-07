Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D743C7E3483
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 05:23:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95DC310E4A4;
	Tue,  7 Nov 2023 04:23:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DEE310E4A4
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 04:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699331025; x=1730867025;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ppjlOPE//91YCz7C3ZQbRi1JJ+4U1j72zYFJYE6XX4I=;
 b=khODHmFsdNw+SLsSQTuXnyso+G0kok/baKR3wiQsMMSv6ira8cK+q256
 IL6qXIE3FD4Nc5IezQvcsajqiAWqDrf0aCrrCWHEZBPFFlVsK0ybpLJqV
 6QOH11D/4D+VO/I7z/+Yy2TR6bNaD60tQLcTsoW5AWE8ISArSCJg2xrl1
 52vVjBnl9XucEOAu0lPAFeU9jMzwGJIKiQ9vsZ8wkxn2kNaFxgUl/cCba
 wRci9XGDKDQv6s1Es916Z74Z3TRt3UqBAAdc3J9kcCmqe4+iHM17P1jHO
 QBK8Om0lERHGvNA/eY+JIrCFjk1slK3jRwZjJNgXeWr5KI/l0SCUnEwoG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="475667576"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="475667576"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 20:23:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="712435804"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="712435804"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 20:23:43 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Nov 2023 09:47:39 +0530
Message-Id: <20231107041740.3718419-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231107041740.3718419-1-ankit.k.nautiyal@intel.com>
References: <20231107041740.3718419-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/dp_mst: Use helpers to get dsc
 min/max input bpc
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

Use helpers for source min/max input bpc with DSC.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  2 --
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 ++++-------
 3 files changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5adab761f2e8..abc718f1a878 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1566,7 +1566,6 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 	return -EINVAL;
 }
 
-static
 u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
 {
 	if (!HAS_DSC(i915))
@@ -1946,7 +1945,6 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 					   dsc_max_bpp, dsc_min_bpp, pipe_bpp, timeslots);
 }
 
-static
 u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
 {
 	/* Min DSC Input BPC for ICL+ is 8 */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 484aea215a25..53e88c00900c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -164,5 +164,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 					struct link_config_limits *limits);
 
 void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector);
+u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915);
+u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 7b4628f4f124..d32e5258e1ec 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -194,18 +194,15 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 	int i, num_bpc;
 	u8 dsc_bpc[3] = {};
 	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
-	u8 dsc_max_bpc;
+	u8 dsc_max_bpc, dsc_min_bpc;
 	bool need_timeslot_recalc = false;
 	u32 last_compressed_bpp;
 
-	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
-	if (DISPLAY_VER(i915) >= 12)
-		dsc_max_bpc = min_t(u8, 12, conn_state->max_requested_bpc);
-	else
-		dsc_max_bpc = min_t(u8, 10, conn_state->max_requested_bpc);
+	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
+	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
 
 	max_bpp = min_t(u8, dsc_max_bpc * 3, limits->pipe.max_bpp);
-	min_bpp = limits->pipe.min_bpp;
+	min_bpp = max_t(u8, dsc_min_bpc * 3, limits->pipe.min_bpp);
 
 	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
 						       dsc_bpc);
-- 
2.40.1

