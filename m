Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DED1F868011
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 19:52:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26AF310EE1F;
	Mon, 26 Feb 2024 18:52:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P/KHBfXB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5CA810E63E
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 18:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708973545; x=1740509545;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hzvRIE4NTD6/4QxxqOYHLA6lCZpLoJ+Rke+x+InG/Dk=;
 b=P/KHBfXB+DNmVvpO65LCOoUfNPm5TYeM/SzfH11qGuXGF0ELWMNOFZpM
 oRyNf76/YLoAh1JVeWZzhHeNd1b/6I7ogPr2Tz/4Z1IeU+lS9ONiUCdVi
 dBS+zTboYSZyL3vua/LuFid49aVKdU1qjLNAfSDk8cjp1L0XW88oFr7hy
 pcnvTetA+Hjc2Rx5nT9peTraacT6atDpAXHChHh23L9rq0sFKNloQ1G5Z
 TxxpZyKvOv91zpaFQZs8HYQpOqbAV2wCveeURFdVrC4jV0dHTG/cS5tnY
 igUUjQa/vSg7mpWUzWue4WNmsdTVdJJ0CxYAkM/DfOD6IlUWVt37B0bfh w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3151297"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="3151297"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 10:52:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="7121041"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 10:52:23 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v3 01/21] drm/dp: Add drm_dp_max_dprx_data_rate()
Date: Mon, 26 Feb 2024 20:52:43 +0200
Message-Id: <20240226185246.1276018-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240220211841.448846-2-imre.deak@intel.com>
References: <20240220211841.448846-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Copy intel_dp_max_data_rate() to DRM core. It will be needed by a
follow-up DP tunnel patch, checking the maximum rate the DPRX (sink)
supports. Accordingly use the drm_dp_max_dprx_data_rate() name for
clarity. This patchset will also switch calling the new DRM function
in i915 instead of intel_dp_max_data_rate().

While at it simplify the function documentation/comments, removing
parts described already by drm_dp_bw_channel_coding_efficiency().

v2: (Ville)
- Remove max_link_rate_kbps.
- Simplify the function documentation.
v3:
- Rebased on latest drm-tip.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/display/drm_dp_helper.c | 30 +++++++++++++++++++++++++
 include/drm/display/drm_dp_helper.h     |  1 +
 2 files changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
index 9ac52cf5d4d87..314509d999f14 100644
--- a/drivers/gpu/drm/display/drm_dp_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_helper.c
@@ -4152,3 +4152,33 @@ int drm_dp_bw_channel_coding_efficiency(bool is_uhbr)
 		return 800000;
 }
 EXPORT_SYMBOL(drm_dp_bw_channel_coding_efficiency);
+
+/**
+ * drm_dp_max_dprx_data_rate - Get the max data bandwidth of a DPRX sink
+ * @max_link_rate: max DPRX link rate in 10kbps units
+ * @max_lanes: max DPRX lane count
+ *
+ * Given a link rate and lanes, get the data bandwidth.
+ *
+ * Data bandwidth is the actual payload rate, which depends on the data
+ * bandwidth efficiency and the link rate.
+ *
+ * Note that protocol layers above the DPRX link level considered here can
+ * further limit the maximum data rate. Such layers are the MST topology (with
+ * limits on the link between the source and first branch device as well as on
+ * the whole MST path until the DPRX link) and (Thunderbolt) DP tunnels -
+ * which in turn can encapsulate an MST link with its own limit - with each
+ * SST or MST encapsulated tunnel sharing the BW of a tunnel group.
+ *
+ * Returns the maximum data rate in kBps units.
+ */
+int drm_dp_max_dprx_data_rate(int max_link_rate, int max_lanes)
+{
+	int ch_coding_efficiency =
+		drm_dp_bw_channel_coding_efficiency(drm_dp_is_uhbr_rate(max_link_rate));
+
+	return DIV_ROUND_DOWN_ULL(mul_u32_u32(max_link_rate * 10 * max_lanes,
+					      ch_coding_efficiency),
+				  1000000 * 8);
+}
+EXPORT_SYMBOL(drm_dp_max_dprx_data_rate);
diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index 0c1a4021e098e..91fb404dd5310 100644
--- a/include/drm/display/drm_dp_helper.h
+++ b/include/drm/display/drm_dp_helper.h
@@ -813,6 +813,7 @@ int drm_dp_bw_overhead(int lane_count, int hactive,
 		       int dsc_slice_count,
 		       int bpp_x16, unsigned long flags);
 int drm_dp_bw_channel_coding_efficiency(bool is_uhbr);
+int drm_dp_max_dprx_data_rate(int max_link_rate, int max_lanes);
 
 ssize_t drm_dp_vsc_sdp_pack(const struct drm_dp_vsc_sdp *vsc, struct dp_sdp *sdp);
 
-- 
2.39.2

