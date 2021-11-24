Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAD445B936
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 12:37:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BB8D6E88C;
	Wed, 24 Nov 2021 11:37:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EB286E88C
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 11:37:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="222135167"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="222135167"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 03:37:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="457446572"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 24 Nov 2021 03:37:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Nov 2021 13:37:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Nov 2021 13:36:41 +0200
Message-Id: <20211124113652.22090-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/20] drm/i915/fbc: Flatten
 __intel_fbc_pre_update()
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

Use an early return to flatten most of __intel_fbc_pre_update().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 40 ++++++++++++------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index cf7fc0de6081..0bef3b948670 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1223,27 +1223,27 @@ static bool __intel_fbc_pre_update(struct intel_atomic_state *state,
 	intel_fbc_update_state_cache(state, crtc, plane);
 	fbc->flip_pending = true;
 
-	if (!intel_fbc_can_flip_nuke(state, crtc, plane)) {
-		intel_fbc_deactivate(fbc, "update pending");
+	if (intel_fbc_can_flip_nuke(state, crtc, plane))
+		return need_vblank_wait;
 
-		/*
-		 * Display WA #1198: glk+
-		 * Need an extra vblank wait between FBC disable and most plane
-		 * updates. Bspec says this is only needed for plane disable, but
-		 * that is not true. Touching most plane registers will cause the
-		 * corruption to appear. Also SKL/derivatives do not seem to be
-		 * affected.
-		 *
-		 * TODO: could optimize this a bit by sampling the frame
-		 * counter when we disable FBC (if it was already done earlier)
-		 * and skipping the extra vblank wait before the plane update
-		 * if at least one frame has already passed.
-		 */
-		if (fbc->activated &&
-		    DISPLAY_VER(i915) >= 10)
-			need_vblank_wait = true;
-		fbc->activated = false;
-	}
+	intel_fbc_deactivate(fbc, "update pending");
+
+	/*
+	 * Display WA #1198: glk+
+	 * Need an extra vblank wait between FBC disable and most plane
+	 * updates. Bspec says this is only needed for plane disable, but
+	 * that is not true. Touching most plane registers will cause the
+	 * corruption to appear. Also SKL/derivatives do not seem to be
+	 * affected.
+	 *
+	 * TODO: could optimize this a bit by sampling the frame
+	 * counter when we disable FBC (if it was already done earlier)
+	 * and skipping the extra vblank wait before the plane update
+	 * if at least one frame has already passed.
+	 */
+	if (fbc->activated && DISPLAY_VER(i915) >= 10)
+		need_vblank_wait = true;
+	fbc->activated = false;
 
 	return need_vblank_wait;
 }
-- 
2.32.0

