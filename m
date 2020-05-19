Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9B41D9768
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 15:15:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A694F6E32B;
	Tue, 19 May 2020 13:15:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09A276E02D
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 13:15:20 +0000 (UTC)
IronPort-SDR: bxIwbWeVIjl79VboaDzn/iaHRcDmUUwlRj4JJJgcJc6fBXv2kR7oQJDlJ4shYuJt+m6zHONFRq
 qYxwizokk/mw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 06:15:19 -0700
IronPort-SDR: rv5qhmBZoy9NiBBd9ihe1MuQdw6LstIMJ/JAPY3+06DiFyoftPcSHDAVWNx6h1OD36wcnYjne0
 tAtsg5kFuezQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="282318070"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga002.jf.intel.com with ESMTP; 19 May 2020 06:15:18 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 May 2020 16:11:12 +0300
Message-Id: <20200519131117.17190-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>
References: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 2/7] drm/i915: Extract cdclk requirements
 checking to separate function
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

Thus to calculate if cdclk needs to be changed it is not enough
anymore to check plane configuration and plane min cdclk, per DBuf
bw can be calculated only after wm/ddb calculation is done and
all required planes are added into the state. In order to keep
all min_cdclk related checks in one place let's extract it into
separate function, checking and modifying any_ms.

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 30 ++++++++++++++------
 1 file changed, 22 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 005e324d0582..e93a553a344d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -14572,8 +14572,7 @@ static bool active_planes_affects_min_cdclk(struct drm_i915_private *dev_priv)
 		IS_IVYBRIDGE(dev_priv);
 }
 
-static int intel_atomic_check_planes(struct intel_atomic_state *state,
-				     bool *need_cdclk_calc)
+static int intel_atomic_check_planes(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
@@ -14623,6 +14622,22 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state,
 			return ret;
 	}
 
+	return 0;
+}
+
+static int intel_atomic_check_cdclk(struct intel_atomic_state *state,
+				    bool *need_cdclk_calc)
+{
+	struct intel_cdclk_state *new_cdclk_state;
+	int i;
+	struct intel_plane_state *plane_state;
+	struct intel_plane *plane;
+	int ret;
+
+	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
+	if (new_cdclk_state && new_cdclk_state->force_min_cdclk_changed)
+		*need_cdclk_calc = true;
+
 	/*
 	 * active_planes bitmask has been updated, and potentially
 	 * affected planes are part of the state. We can now
@@ -14685,7 +14700,6 @@ static int intel_atomic_check(struct drm_device *dev,
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_atomic_state *state = to_intel_atomic_state(_state);
 	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
-	struct intel_cdclk_state *new_cdclk_state;
 	struct intel_crtc *crtc;
 	int ret, i;
 	bool any_ms = false;
@@ -14796,14 +14810,10 @@ static int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
-	ret = intel_atomic_check_planes(state, &any_ms);
+	ret = intel_atomic_check_planes(state);
 	if (ret)
 		goto fail;
 
-	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
-	if (new_cdclk_state && new_cdclk_state->force_min_cdclk_changed)
-		any_ms = true;
-
 	/*
 	 * distrust_bios_wm will force a full dbuf recomputation
 	 * but the hardware state will only get updated accordingly
@@ -14833,6 +14843,10 @@ static int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
+	ret = intel_atomic_check_cdclk(state, &any_ms);
+	if (ret)
+		goto fail;
+
 	if (any_ms) {
 		ret = intel_modeset_calc_cdclk(state);
 		if (ret)
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
