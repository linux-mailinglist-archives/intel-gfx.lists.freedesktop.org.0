Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED4AAE7F60
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 12:33:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB68510E6C5;
	Wed, 25 Jun 2025 10:33:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EUydQ12J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCEC110E6C5;
 Wed, 25 Jun 2025 10:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750847580; x=1782383580;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cupl0O1Kd3I8yxNG14fFSQERvN+lMQL1ntIsVpdNPns=;
 b=EUydQ12JWu1xKJq0ovBS56iVEMFjvVkpxwH9JIvnb6L+VE2x+YSIEU9H
 cxTPChDCHcfaildEUnHnSlMU060soDH0JPQem/jF4aAYU6+eUuyiuwSHW
 EJsUP9/VGHYJJWts2pSvs/0IuCqoPDnmA53/anOWDZGmKtjPLWWTIoPPG
 TqMtl0ghg4/di5lvC1OMS/9sXGkNjvLMgJEHsdb7j66xYEP66G5epRa68
 rv1UserwIaIuz28UlN+rPqUEzkIMKboDHR/DXD9qxRDckFbvWJKMqymH5
 Ik6E7nV+AsQ+9FfgDzrNij78n2BSrwPHpxHejICR8jJXz5rcwiouHyeon g==;
X-CSE-ConnectionGUID: 6CPWDUGlQLeYnEeg40U1Gw==
X-CSE-MsgGUID: Pegl1h4dTFC5s4nDBmJ1vw==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="53080434"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="53080434"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:00 -0700
X-CSE-ConnectionGUID: xNpReQBYSy+AVMXs8lV54g==
X-CSE-MsgGUID: toRhohnKRGiAQROmn4N0BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="152476461"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:32:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [CI v2 04/16] drm/i915/bw: abstract intel_bw_pmdemand_needs_update()
Date: Wed, 25 Jun 2025 13:32:22 +0300
Message-Id: <163fda39da2e1cf0f0c4fcb9c71103c98863179e.1750847509.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750847509.git.jani.nikula@intel.com>
References: <cover.1750847509.git.jani.nikula@intel.com>
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

Add intel_bw_pmdemand_needs_update() helper to avoid looking at struct
intel_bw_state internals outside of intel_bw.c.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_bw.h       |  2 ++
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  6 +-----
 3 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 8f5bc6872eda..7a014b28312a 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1651,3 +1651,17 @@ int intel_bw_init(struct intel_display *display)
 
 	return 0;
 }
+
+bool intel_bw_pmdemand_needs_update(struct intel_atomic_state *state)
+{
+	const struct intel_bw_state *new_bw_state, *old_bw_state;
+
+	new_bw_state = intel_atomic_get_new_bw_state(state);
+	old_bw_state = intel_atomic_get_old_bw_state(state);
+
+	if (new_bw_state &&
+	    new_bw_state->qgv_point_peakbw != old_bw_state->qgv_point_peakbw)
+		return true;
+
+	return false;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index eb2cc883e9c1..0acc6f19c981 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -76,4 +76,6 @@ int intel_bw_min_cdclk(struct intel_display *display,
 void intel_bw_update_hw_state(struct intel_display *display);
 void intel_bw_crtc_disable_noatomic(struct intel_crtc *crtc);
 
+bool intel_bw_pmdemand_needs_update(struct intel_atomic_state *state);
+
 #endif /* __INTEL_BW_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index eeb88f9fc92d..8334744a2e23 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -294,16 +294,12 @@ intel_pmdemand_connector_needs_update(struct intel_atomic_state *state)
 
 static bool intel_pmdemand_needs_update(struct intel_atomic_state *state)
 {
-	const struct intel_bw_state *new_bw_state, *old_bw_state;
 	const struct intel_cdclk_state *new_cdclk_state, *old_cdclk_state;
 	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
 	int i;
 
-	new_bw_state = intel_atomic_get_new_bw_state(state);
-	old_bw_state = intel_atomic_get_old_bw_state(state);
-	if (new_bw_state && new_bw_state->qgv_point_peakbw !=
-	    old_bw_state->qgv_point_peakbw)
+	if (intel_bw_pmdemand_needs_update(state))
 		return true;
 
 	if (intel_dbuf_pmdemand_needs_update(state))
-- 
2.39.5

