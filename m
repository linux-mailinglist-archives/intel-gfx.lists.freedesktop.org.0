Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DE0AD6FD3
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:12:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E8D810E7FD;
	Thu, 12 Jun 2025 12:12:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ec5GUZKf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E0A010E7FD;
 Thu, 12 Jun 2025 12:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749730356; x=1781266356;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CFUiBNYqsfSRQhufGm7r9AuEDA+jbokKojQr0aEkU68=;
 b=ec5GUZKfvAPTs4bNM6qtdIwUI3nKVw9KNp3mJmLGYNr0p2jX/nDz81l4
 eLVspRA2bopIT+YiYSot8w1WsC7nzt12wbDqp0SEDdQ7MkefmwzapJbDC
 mQNnRwF9WW6ayoAF6CNyb08Twuwjgy++awQwkvNWmSAfi4wmKGZBp9NTa
 8RouFVwuKJi0LiRxQywWkGAR9OxeEMzE9wN7s4lM9g3uwFuDJIg4xVRoO
 5hjrWviE63HMdSlGQnoeQjiaB7Stsjba96DGBxLbbQiJytHVAl9dg8thc
 gMbTtj6gyc5Syuw8mgc4tgAqNVf5EfYeJNJmfAttuo85ZnK18NhsdjgZm Q==;
X-CSE-ConnectionGUID: bsJGi4G4RTyvj3Oj/LQy8g==
X-CSE-MsgGUID: hx6NANVbR9egi8d78LwAyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="63314834"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="63314834"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:12:36 -0700
X-CSE-ConnectionGUID: CISgmqWoSi+s0OMIgCOBgg==
X-CSE-MsgGUID: EA7pxhivSaekcRCJd6Ph3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="178476910"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:12:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 04/16] drm/i915/bw: abstract intel_bw_pmdemand_needs_update()
Date: Thu, 12 Jun 2025 15:11:59 +0300
Message-Id: <0e4652336c340b60e2fbf8030832e82b2dbdbfd1.1749730224.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749730224.git.jani.nikula@intel.com>
References: <cover.1749730224.git.jani.nikula@intel.com>
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_bw.h       |  2 ++
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  6 +-----
 3 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 6c2ab2e0dc91..c077ab05eb61 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1644,3 +1644,17 @@ int intel_bw_init(struct intel_display *display)
 
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

