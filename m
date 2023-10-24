Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 852ED7D5052
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:53:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64EA10E386;
	Tue, 24 Oct 2023 12:53:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E112910E386
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 12:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698151990; x=1729687990;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TCIRFiCiEVQsVt0bjvUm8AiZAwr+fGTKfv9aGPQp7IQ=;
 b=Gnw2rVrUJZTPzaJq9PL+a6abpolpfqq5qEVppXV80txixiWCRg7H+RaF
 PukgMaLC8qmrHvWO4duv+ZxpjKfyVNchPBVzzpxJJH+fc7tuAYs45Ml0n
 0u19heqKsvPiA62Dh2yvmXHZnAIrzTe0UXPF+cFy3VhXCA/ccPEJYbhGz
 0B2IXLNXDqCO7sVBIgtv+ZBcKNkwrwnx0mBYVQqDYXNP4QtbYJClfL4+n
 JbniIpnG4wbJUQJHL+SvueiU3qgjv3NhqiqfiKcvlHWWmn1lYYFZCs/sl
 Oj6AdplxyF7aeeSutNIkDW+HZZ4DtWkl64o9pykmfce6x3d2VezaxVWLz w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="389896499"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="389896499"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:52:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="1089823140"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="1089823140"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga005.fm.intel.com with ESMTP; 24 Oct 2023 05:52:57 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 15:52:56 +0300
Message-Id: <20231024125256.11954-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/adl: Initialize all GV points as
 restricted in bw_state
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

In some customer cases, machine can start up with all
GV points restricted. However we don't ever read those
from hw and initial driver qgv_points_mask is initialized
as 0, which would make driver think that all points are unrestricted,
so we never update them with proper value, unless
some demanding scenario is requested or we have to toggle SAGV
and we have to restrict some of those.
Lets fix that by initializing all points as restricted,
then on first modeset, that will make sure driver will naturally
calculate, which of those need to be relaxed and do correspondent update.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c            |  7 ++++---
 drivers/gpu/drm/i915/display/intel_bw.h            |  1 +
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 13 +++++++++++++
 3 files changed, 18 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index bef96db62c80..fbfa01f38db8 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -119,7 +119,7 @@ static int adls_pcode_read_psf_gv_point_info(struct drm_i915_private *dev_priv,
 	return 0;
 }
 
-static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
+u16 icl_qgv_points_mask(struct drm_i915_private *i915)
 {
 	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
 	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
@@ -1277,9 +1277,10 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 
 	/*
 	 * If none of our inputs (data rates, number of active
-	 * planes, SAGV yes/no) changed then nothing to do here.
+	 * planes, SAGV yes/no) changed then nothing to do here,
+	 * except if mask turns out to be in wrong state initially.
 	 */
-	if (!changed)
+	if (!changed && (new_bw_state->qgv_points_mask != icl_qgv_points_mask(i915)))
 		return 0;
 
 	ret = intel_bw_check_qgv_points(i915, old_bw_state, new_bw_state);
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index 59cb4fc5db76..0a706ec79ce3 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -70,6 +70,7 @@ void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 			  const struct intel_crtc_state *crtc_state);
 int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 				  u32 points_mask);
+u16 icl_qgv_points_mask(struct drm_i915_private *i915);
 int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 			    bool *need_cdclk_calc);
 int intel_bw_min_cdclk(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index b8f43efb0ab5..230090c6e994 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -871,6 +871,19 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 		intel_pmdemand_update_port_clock(i915, pmdemand_state, pipe,
 						 crtc_state->port_clock);
 
+		/*
+		 * In some customer cases, machine can start up with all
+		 * GV points restricted. However we don't ever read those
+		 * from hw and qgv_points_mask initialized as 0, would
+		 * make driver think that all points are unrestricted,
+		 * so we never update them with proper value, unless
+		 * some demanding scenario is requested and we have to
+		 * restrict some of those. Lets fix that by initializing
+		 * all points as restricted, then on first modeset, driver
+		 * will naturally calculate, which of those need to be
+		 * relaxed and do correspondent update.
+		 */
+		bw_state->qgv_points_mask = icl_qgv_points_mask(i915);
 		intel_bw_crtc_update(bw_state, crtc_state);
 	}
 
-- 
2.37.3

