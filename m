Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E5A1A0C05
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 12:36:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 874436E823;
	Tue,  7 Apr 2020 10:36:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28F7F6E822
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 10:35:59 +0000 (UTC)
IronPort-SDR: Qo3ibwaCwR9ZyknCVPP6WBH4q6BFuSUHVO3LhZVqbZdcW81bPwFauzOhKZbIeBN8AB5beK3uOb
 lpIiP4/VQA8Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 03:35:58 -0700
IronPort-SDR: FcXDK38AkYgqAZfSB6A4fsN1QJq+PJhzAhNSZM9yk3tMW2jHLdKgDS0GkIaNbjFsF7rjjLgGZV
 e2PbcQP+jWAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="254416551"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga006.jf.intel.com with ESMTP; 07 Apr 2020 03:35:57 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Apr 2020 13:32:19 +0300
Message-Id: <20200407103222.15629-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200407103222.15629-1-stanislav.lisovskiy@intel.com>
References: <20200407103222.15629-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 2/5] drm/i915: Force recalculate min_cdclk if
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
