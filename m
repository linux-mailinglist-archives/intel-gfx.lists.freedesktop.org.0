Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 526EDA56FE5
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 19:02:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2A3B10EC2B;
	Fri,  7 Mar 2025 18:02:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MMBLxnVL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B79910EC22;
 Fri,  7 Mar 2025 18:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741370521; x=1772906521;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S55gtcMU30TE11fkLL4iGu7KZYdnMstPp+ZN9F50+7I=;
 b=MMBLxnVLO7FC7Yq1I9xwLUUc5boMvnX+/xWI4PXP2AuPXEkuGhcq+dPu
 EFYrii/JWIgABMXTiC4qLKyJX+aWsLkbwqApi1iSmzlXDRwgeLs8TnH4a
 aD1ALSehWxqp7dJNetmKxiPJabhRrKsr/FSqAMOFotGj0vBs8vqIF1xcY
 67xWIejY8u9lqUUip4vg39BwydZ9RxkM7fYvlzDomkVWd1YGzGMPZpvj2
 pTq7yrk4cclRzZaMNXaOaL9Nz1to+lNJ0uYpzSGYzWqneqdcYjp8zSfHX
 6hlXDDIeNDmZlGBAUTctLHctD+FbYEPmMZTNE/ebbobL9U+io666f7SKf Q==;
X-CSE-ConnectionGUID: y2R2MxODR8C+d9a/JAtUhg==
X-CSE-MsgGUID: P2IpX2MpRg6l/VRfP4XDMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="52637140"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="52637140"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 10:02:01 -0800
X-CSE-ConnectionGUID: lHaHFKocSj2RvsafJzuslw==
X-CSE-MsgGUID: EzZXH71RSUaxqUKKAKgJkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124621131"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Mar 2025 10:01:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Mar 2025 20:01:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 04/14] drm/i915: Pass intel_dbuf_bw to skl_*_calc_dbuf_bw()
 explicitly
Date: Fri,  7 Mar 2025 20:01:29 +0200
Message-ID: <20250307180139.15744-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
References: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Make skl_*_calc_dbuf_bw() a bit lower level passing in the
to be mutated dbuf_bw struct in explicitly. This will allow
more reuse later.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 640a24e83b6d..c9e15a068b67 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1155,14 +1155,13 @@ static bool intel_bw_state_changed(struct drm_i915_private *i915,
 	return false;
 }
 
-static void skl_plane_calc_dbuf_bw(struct intel_bw_state *bw_state,
+static void skl_plane_calc_dbuf_bw(struct intel_dbuf_bw *dbuf_bw,
 				   struct intel_crtc *crtc,
 				   enum plane_id plane_id,
 				   const struct skl_ddb_entry *ddb,
 				   unsigned int data_rate)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct intel_dbuf_bw *dbuf_bw = &bw_state->dbuf_bw[crtc->pipe];
 	unsigned int dbuf_mask = skl_ddb_dbuf_slice_mask(i915, ddb);
 	enum dbuf_slice slice;
 
@@ -1176,12 +1175,11 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw_state *bw_state,
 	}
 }
 
-static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
+static void skl_crtc_calc_dbuf_bw(struct intel_dbuf_bw *dbuf_bw,
 				  const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct intel_dbuf_bw *dbuf_bw = &bw_state->dbuf_bw[crtc->pipe];
 	enum plane_id plane_id;
 
 	memset(dbuf_bw, 0, sizeof(*dbuf_bw));
@@ -1197,12 +1195,12 @@ static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
 		if (plane_id == PLANE_CURSOR)
 			continue;
 
-		skl_plane_calc_dbuf_bw(bw_state, crtc, plane_id,
+		skl_plane_calc_dbuf_bw(dbuf_bw, crtc, plane_id,
 				       &crtc_state->wm.skl.plane_ddb[plane_id],
 				       crtc_state->data_rate[plane_id]);
 
 		if (DISPLAY_VER(i915) < 11)
-			skl_plane_calc_dbuf_bw(bw_state, crtc, plane_id,
+			skl_plane_calc_dbuf_bw(dbuf_bw, crtc, plane_id,
 					       &crtc_state->wm.skl.plane_ddb_y[plane_id],
 					       crtc_state->data_rate[plane_id]);
 	}
@@ -1276,7 +1274,8 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 
 		old_bw_state = intel_atomic_get_old_bw_state(state);
 
-		skl_crtc_calc_dbuf_bw(new_bw_state, crtc_state);
+		skl_crtc_calc_dbuf_bw(&new_bw_state->dbuf_bw[crtc->pipe],
+				      crtc_state);
 	}
 
 	if (!old_bw_state)
-- 
2.45.3

