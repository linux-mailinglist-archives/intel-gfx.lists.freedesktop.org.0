Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BF3873865
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 15:07:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D748710EE5D;
	Wed,  6 Mar 2024 14:07:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SvoXnrCf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1AB310EE5D
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 14:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709734064; x=1741270064;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FaF5jRU4mSiPhqmiBPj60toc/41UvsCRQRlYMkgJhfk=;
 b=SvoXnrCfZNeq69xZrJk/HSijG4HwE3vHDRNKePMLJEWj4OSV5I+Pqxwj
 Lun5+XYnq73qTsSxRu9h/OUv/2LCBzW/O8f8ELB7o0fgVVSu9npd40RBy
 vCDST5A9XFHqNGHm7qtltvKCHEvAwjTLWS69I3Mx11hXJy43yZyrgxnrc
 rRtFzQNU+IACiCcYgNdyLt1VbsLczCJbBjahVs7sUZP4QM+WOeSSC1gAC
 SDBMLJsaYyJ9SVacwUGB7k971OEWO5IapSPFyzmkSWuFcSGQZwYYQbIbm
 02u0e0lKGIi3jDTnu9VWZtT4Y+0DAs4Ww3uz6n5GrgBpWw6zDmdci/HX9 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="4527704"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="4527704"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 06:07:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="14321644"
Received: from rjongalo-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.211])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 06:07:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Jani Nikula <jani.nikula@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v3 5/6] drm/i915/mst: add intel_dp_mst_disconnect()
Date: Wed,  6 Mar 2024 16:07:16 +0200
Message-Id: <0fdbb14d5cc6bfead388fea75ad611b667b17756.1709733981.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1709733981.git.jani.nikula@intel.com>
References: <cover.1709733981.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Abstract the MST mode disconnect to a separate function.

Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 41f83d01a884..3956604d8b00 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4112,6 +4112,20 @@ intel_dp_mst_configure(struct intel_dp *intel_dp)
 	intel_dp->mst_detect = DRM_DP_SST;
 }
 
+static void
+intel_dp_mst_disconnect(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	if (!intel_dp->is_mst)
+		return;
+
+	drm_dbg_kms(&i915->drm, "MST device may have disappeared %d vs %d\n",
+		    intel_dp->is_mst, intel_dp->mst_mgr.mst_state);
+	intel_dp->is_mst = false;
+	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr, intel_dp->is_mst);
+}
+
 static bool
 intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *esi)
 {
@@ -5719,15 +5733,7 @@ intel_dp_detect(struct drm_connector *connector,
 		memset(intel_connector->dp.dsc_dpcd, 0, sizeof(intel_connector->dp.dsc_dpcd));
 		intel_dp->psr.sink_panel_replay_support = false;
 
-		if (intel_dp->is_mst) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "MST device may have disappeared %d vs %d\n",
-				    intel_dp->is_mst,
-				    intel_dp->mst_mgr.mst_state);
-			intel_dp->is_mst = false;
-			drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
-							intel_dp->is_mst);
-		}
+		intel_dp_mst_disconnect(intel_dp);
 
 		intel_dp_tunnel_disconnect(intel_dp);
 
-- 
2.39.2

