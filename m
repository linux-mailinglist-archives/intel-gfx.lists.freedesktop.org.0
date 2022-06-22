Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 655D5555055
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 17:55:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B3D910F646;
	Wed, 22 Jun 2022 15:55:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1826310F646
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 15:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655913305; x=1687449305;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=I/YMAg8/XjRIDODnnffw9MabVOri1virv6scChDajfQ=;
 b=PSruD3SPMDBh2WNg0zIoP/0XfjUWsk6f4RUMYksxhbnIaKBAGMj/5H3j
 /dDMopLNqgRVi3aR7bKJtUBe57Mjy/fiLrsPTw4xvNlrwxMx6OE21VHtQ
 A1VD7x3ztef3+duz8/pPHY11JaTzOzTKwLQn9RYid3PDNq9nzCl9P/090
 GuMxP3XrgeB3tpmpE6qIf8qQYeA5/ywh4Kh0WjkfcXpFQr+FLqMV0GIx8
 wyGJ94+EK+pkTOrLOxTTnD7QvbILHmtXQX0L7bv4Yn3RtCROEjMnj0RXq
 r1L9FqOiwUd7oPBGz8RhHvVwZVO4PiGhP7iScgG2qA6RBEuyQ8JNpLdSe A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="269178914"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="269178914"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 08:55:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="585780071"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga007.jf.intel.com with SMTP; 22 Jun 2022 08:55:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Jun 2022 18:55:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jun 2022 18:54:46 +0300
Message-Id: <20220622155452.32587-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
References: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/9] drm/i915: Simplify up g4x watermark
 sanitation
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

We can simplify the g4x watermark sanitation by reusing the
second half of g4x_compute_pipe_wm() to convert the sanitized
raw watermarks into the proper form to be used as the
optimal/intermediate watermarks.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 21 +++++++--------------
 1 file changed, 7 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 4ea43fa73075..556fcdfb75f1 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -6951,37 +6951,30 @@ void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_plane_state *plane_state =
 			to_intel_plane_state(plane->base.state);
-		struct g4x_wm_state *wm_state = &crtc_state->wm.g4x.optimal;
 		enum plane_id plane_id = plane->id;
-		int level;
+		int level, num_levels = intel_wm_num_levels(dev_priv);
 
 		if (plane_state->uapi.visible)
 			continue;
 
-		for (level = 0; level < 3; level++) {
+		for (level = 0; level < num_levels; level++) {
 			struct g4x_pipe_wm *raw =
 				&crtc_state->wm.g4x.raw[level];
 
 			raw->plane[plane_id] = 0;
-			wm_state->wm.plane[plane_id] = 0;
-		}
 
-		if (plane_id == PLANE_PRIMARY) {
-			for (level = 0; level < 3; level++) {
-				struct g4x_pipe_wm *raw =
-					&crtc_state->wm.g4x.raw[level];
+			if (plane_id == PLANE_PRIMARY)
 				raw->fbc = 0;
-			}
-
-			wm_state->sr.fbc = 0;
-			wm_state->hpll.fbc = 0;
-			wm_state->fbc_en = false;
 		}
 	}
 
 	for_each_intel_crtc(&dev_priv->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
+		int ret;
+
+		ret = _g4x_compute_pipe_wm(crtc_state);
+		drm_WARN_ON(&dev_priv->drm, ret);
 
 		crtc_state->wm.g4x.intermediate =
 			crtc_state->wm.g4x.optimal;
-- 
2.35.1

