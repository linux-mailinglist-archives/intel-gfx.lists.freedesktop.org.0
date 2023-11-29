Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A1D7FD250
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 10:21:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B583E10E196;
	Wed, 29 Nov 2023 09:21:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AA1110E196
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Nov 2023 09:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701249680; x=1732785680;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=81eH49+IEfTfCFbBPpqwxNUqse45rY7+nQqM4fNr5Qs=;
 b=V3RiogxYyROB0qYeM0fzswah3XpHiOBM5i+AYcSoYWOJWd/zvzXxTqY8
 p4b3sGRhK7o2qVVK0Qhrc7+fH+fCMFLQYoZgOwoo57Eu0+qemrnaaGkGc
 kT0tNuchNlrnlgTvWD9UF0GN+yPe48EGNnXy5ZI4yeueoo4J8P3MlIRVr
 UZNtIc7yrVDu90xQjppu9a63ZmC01DYlW5eoWMjwJB/Wx83SPFLIhRUYl
 y/hrcTsBXg5PniOpRODRoeg6OmKCH3klUro5XdVVki6z3pyEB3lJaVgB4
 ewd58z5XEiqE+Rt/gwtxCBi21U+gLQ/CYkYmCTCANBEx35QZ0ZD8PqLic A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="395949793"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="395949793"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 01:21:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="797855438"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="797855438"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga008.jf.intel.com with ESMTP; 29 Nov 2023 01:21:04 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Nov 2023 11:21:03 +0200
Message-Id: <20231129092103.26435-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20231128083754.20096-4-stanislav.lisovskiy@intel.com>
References: <20231128083754.20096-4-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Disable SAGV on bw init,
 to force QGV point recalculation
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

Problem is that on some platforms, we do get QGV point mask in wrong
state on boot. However driver assumes it is set to 0
(i.e all points allowed), however in reality we might get them all restricted,
causing issues.
Lets disable SAGV initially to force proper QGV point state.
If more QGV points are available, driver will recalculate and update
those then after next commit.

v2: - Added trace to see which QGV/PSF GV point is used when SAGV is
      disabled.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 23 ++++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bw.h |  1 +
 2 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index efd408e96e8a..abb72207894d 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -679,6 +679,9 @@ void intel_bw_init_hw(struct drm_i915_private *dev_priv)
 		tgl_get_bw_info(dev_priv, &tgl_sa_info);
 	else if (DISPLAY_VER(dev_priv) == 11)
 		icl_get_bw_info(dev_priv, &icl_sa_info);
+
+	if (DISPLAY_VER(dev_priv) < 14)
+		icl_force_disable_sagv(dev_priv);
 }
 
 static unsigned int intel_bw_crtc_num_active_planes(const struct intel_crtc_state *crtc_state)
@@ -844,7 +847,7 @@ static unsigned int icl_max_bw_qgv_point(struct drm_i915_private *i915,
 	return max_bw_point;
 }
 
-unsigned int icl_max_bw_psf_gv_point(struct drm_i915_private *i915)
+static unsigned int icl_max_bw_psf_gv_point(struct drm_i915_private *i915)
 {
 	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
 	unsigned int max_bw = 0;
@@ -863,6 +866,24 @@ unsigned int icl_max_bw_psf_gv_point(struct drm_i915_private *i915)
 	return max_bw_point;
 }
 
+int icl_force_disable_sagv(struct drm_i915_private *i915)
+{
+	unsigned int max_bw_qgv_point = icl_max_bw_qgv_point(i915, 0);
+	unsigned int max_bw_psf_gv_point = icl_max_bw_psf_gv_point(i915);
+	unsigned int qgv_points;
+	unsigned int psf_points;
+
+	qgv_points = BIT(max_bw_qgv_point);
+	psf_points = BIT(max_bw_psf_gv_point);
+
+	drm_dbg_kms(&i915->drm, "Forcing SAGV disable: leaving QGV point %d, PSF GV %d\n",
+				max_bw_qgv_point, max_bw_psf_gv_point);
+
+	return icl_pcode_restrict_qgv_points(i915, ~(ICL_PCODE_REQ_QGV_PT(qgv_points) |
+					     ADLS_PCODE_REQ_PSF_PT(psf_points)) &
+					     icl_qgv_points_mask(i915));
+}
+
 static int mtl_find_qgv_points(struct drm_i915_private *i915,
 			       unsigned int data_rate,
 			       unsigned int num_active_planes,
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index 59cb4fc5db76..74acce1ef107 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -74,5 +74,6 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 			    bool *need_cdclk_calc);
 int intel_bw_min_cdclk(struct drm_i915_private *i915,
 		       const struct intel_bw_state *bw_state);
+int icl_force_disable_sagv(struct drm_i915_private *dev_priv);
 
 #endif /* __INTEL_BW_H__ */
-- 
2.37.3

