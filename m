Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 460099C05C1
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 13:27:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2DA310E81D;
	Thu,  7 Nov 2024 12:27:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J5NlYpdm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0372E10E81D
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 12:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730982439; x=1762518439;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uTiH0SMzlqLtR62PM3E9zppy1+9saiUeb/sqHvsomJk=;
 b=J5NlYpdmJxtCInIKo6soUpi4u+wj+HfCnbNo2xtjfk40TBVnt/Y22cfp
 dafi/r9t41wnFC4HbeBU4Vq5MzRVv0SUKIuk3nwR73KoU8Gx6ZNzo+AUA
 8Tpaq8F+vSKKJ6/wLDO/kc6MVRfbsV9mwOspgMlbS7Jt9MPyLzYrqIZ6+
 s6zAk0l0afZ/0RNuh9qBbNib5Xf5EHTFK101DwnNnLNGmXyyGJZhfx/bl
 ZIrZwjKHi/krKSk2MlSKbV5+wNdneFxWnH9Z9IbFytLyeIAxdgVmtHuHJ
 fnTaxPgtJSJ0IhD5UYikODDzUqFuswk6FMAymod5dWfF6jkNHn3dikeHW A==;
X-CSE-ConnectionGUID: 4OGWSkFxQYOqCDZff/666g==
X-CSE-MsgGUID: Ac2X4oRDRBCsdWWA56lp4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="34516042"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="34516042"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 04:27:19 -0800
X-CSE-ConnectionGUID: yNoaP9hhSyShklNw3cpTjQ==
X-CSE-MsgGUID: OP1xal1USFew4YKL/TSohg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,266,1728975600"; d="scan'208";a="85189464"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Nov 2024 04:27:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Nov 2024 14:27:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 6/8] drm/i915/scaler: Carve up intel_atomic_setup_scalers()
Date: Thu,  7 Nov 2024 14:26:56 +0200
Message-ID: <20241107122658.21901-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241107122658.21901-1-ville.syrjala@linux.intel.com>
References: <20241107122658.21901-1-ville.syrjala@linux.intel.com>
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

Declutter intel_atomic_setup_scalers() a bit by splitting
the crtc scaling/pfit vs. plane scaling cases into their
own functions.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 92 ++++++++++++++---------
 1 file changed, 56 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 437fc19972c6..e29e29c4cbc3 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -425,6 +425,55 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
 	return 0;
 }
 
+static int setup_crtc_scaler(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_crtc_scaler_state *scaler_state =
+		&crtc_state->scaler_state;
+
+	return intel_atomic_setup_scaler(scaler_state,
+					 hweight32(scaler_state->scaler_users),
+					 crtc, "CRTC", crtc->base.base.id,
+					 NULL, &scaler_state->scaler_id);
+}
+
+static int setup_plane_scaler(struct intel_atomic_state *state,
+			      struct intel_crtc *crtc,
+			      struct intel_plane *plane)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_crtc_scaler_state *scaler_state =
+		&crtc_state->scaler_state;
+	struct intel_plane_state *plane_state;
+
+	/* plane on different crtc cannot be a scaler user of this crtc */
+	if (drm_WARN_ON(display->drm, plane->pipe != crtc->pipe))
+		return 0;
+
+	plane_state = intel_atomic_get_new_plane_state(state, plane);
+
+	/*
+	 * GLK+ scalers don't have a HQ mode so it
+	 * isn't necessary to change between HQ and dyn mode
+	 * on those platforms.
+	 */
+	if (!plane_state && DISPLAY_VER(display) >= 10)
+		return 0;
+
+	plane_state = intel_atomic_get_plane_state(state, plane);
+	if (IS_ERR(plane_state))
+		return PTR_ERR(plane_state);
+
+	return intel_atomic_setup_scaler(scaler_state,
+					 hweight32(scaler_state->scaler_users),
+					 crtc, "PLANE", plane->base.base.id,
+					 plane_state, &plane_state->scaler_id);
+}
+
 /**
  * intel_atomic_setup_scalers() - setup scalers for crtc per staged requests
  * @state: atomic state
@@ -476,53 +525,24 @@ int intel_atomic_setup_scalers(struct intel_atomic_state *state,
 
 	/* walkthrough scaler_users bits and start assigning scalers */
 	for (i = 0; i < sizeof(scaler_state->scaler_users) * 8; i++) {
-		struct intel_plane_state *plane_state = NULL;
-		int *scaler_id;
-		const char *name;
-		int idx, ret;
+		int ret;
 
 		/* skip if scaler not required */
 		if (!(scaler_state->scaler_users & (1 << i)))
 			continue;
 
 		if (i == SKL_CRTC_INDEX) {
-			name = "CRTC";
-			idx = crtc->base.base.id;
-
-			/* panel fitter case: assign as a crtc scaler */
-			scaler_id = &scaler_state->scaler_id;
+			ret = setup_crtc_scaler(state, crtc);
+			if (ret)
+				return ret;
 		} else {
 			struct intel_plane *plane =
 				to_intel_plane(drm_plane_from_index(display->drm, i));
 
-			/* plane on different crtc cannot be a scaler user of this crtc */
-			if (drm_WARN_ON(display->drm, plane->pipe != crtc->pipe))
-				continue;
-
-			plane_state = intel_atomic_get_new_plane_state(state, plane);
-
-			/*
-			 * GLK+ scalers don't have a HQ mode so it
-			 * isn't necessary to change between HQ and dyn mode
-			 * on those platforms.
-			 */
-			if (!plane_state && DISPLAY_VER(display) >= 10)
-				continue;
-
-			plane_state = intel_atomic_get_plane_state(state, plane);
-			if (IS_ERR(plane_state))
-				return PTR_ERR(plane_state);
-
-			name = "PLANE";
-			idx = plane->base.base.id;
-			scaler_id = &plane_state->scaler_id;
+			ret = setup_plane_scaler(state, crtc, plane);
+			if (ret)
+				return ret;
 		}
-
-		ret = intel_atomic_setup_scaler(scaler_state, num_scalers_need,
-						crtc, name, idx,
-						plane_state, scaler_id);
-		if (ret < 0)
-			return ret;
 	}
 
 	return 0;
-- 
2.45.2

