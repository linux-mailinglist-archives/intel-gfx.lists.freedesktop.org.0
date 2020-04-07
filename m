Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B9D1A087D
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 09:40:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75D1D6E566;
	Tue,  7 Apr 2020 07:40:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 662D06E598
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 07:40:17 +0000 (UTC)
IronPort-SDR: Ymoj0vtZ2mWagzYS10IYCrTbcEUDGJmf4y9/jezfZCNLMfxhawTTP37RUJnisA3vxcTlUz6Er3
 9zRrabS9VfmQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 00:40:16 -0700
IronPort-SDR: I1mRg4FAD4zvi4gVvQCl2PzolpqwhrxiMrEGhAIG40G77NPgv0HKPSzTvnBNPt6Kajw6HOMq6m
 2YaElJA/E8Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="424660058"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga005.jf.intel.com with ESMTP; 07 Apr 2020 00:40:14 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Apr 2020 10:36:43 +0300
Message-Id: <20200407073643.3910-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200330122354.24752-3-stanislav.lisovskiy@intel.com>
References: <20200330122354.24752-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 2/5] drm/i915: Force recalculate min_cdclk if
 planes config changed
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In Gen11+ whenever we might exceed DBuf bandwidth we might need to
recalculate CDCLK which DBuf bandwidth is scaled with.
Total Dbuf bw used might change based on particular plane needs.

In intel_atomic_check_planes we try to filter out the cases when
we definitely don't need to recalculate required bandwidth/CDCLK.
In current code we compare amount of planes and skip recalculating
if those are equal.
This seems being too relaxed requirement and might be even wrong
because plane combination might become different despite amount
of planes is same - that requires recalculating min cdclk and
consumed bandwidth.

v2: - Changed commit message to properly reflect the need why,
      we might want to change from hamming weight comparison
      to actual plane combination checking.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c77088e1d033..307636b23ac9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -14540,7 +14540,7 @@ static bool active_planes_affects_min_cdclk(struct drm_i915_private *dev_priv)
 	/* See {hsw,vlv,ivb}_plane_ratio() */
 	return IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv) ||
 		IS_CHERRYVIEW(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
-		IS_IVYBRIDGE(dev_priv);
+		IS_IVYBRIDGE(dev_priv) || (INTEL_GEN(dev_priv) >= 11);
 }
 
 static int intel_atomic_check_planes(struct intel_atomic_state *state,
@@ -14586,7 +14586,13 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state,
 		old_active_planes = old_crtc_state->active_planes & ~BIT(PLANE_CURSOR);
 		new_active_planes = new_crtc_state->active_planes & ~BIT(PLANE_CURSOR);
 
-		if (hweight8(old_active_planes) == hweight8(new_active_planes))
+		/*
+		 * Not only the number of planes, but if the plane configuration had
+		 * changed might already mean we need to recompute min CDCLK,
+		 * because different planes might consume different amount of Dbuf bandwidth
+		 * according to formula: Bw per plane = Pixel rate * bpp * pipe/plane scale factor
+		 */
+		if (old_active_planes == new_active_planes)
 			continue;
 
 		ret = intel_crtc_add_planes_to_state(state, crtc, new_active_planes);
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
