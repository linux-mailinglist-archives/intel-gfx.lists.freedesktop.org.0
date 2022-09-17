Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E715BB50F
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Sep 2022 02:45:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D732110E02D;
	Sat, 17 Sep 2022 00:45:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AEB410E02A
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Sep 2022 00:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663375469; x=1694911469;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I1AdkWrLWKZfmq1X862s5vZgAnRizWS0lV1/Zwn8vD4=;
 b=KliNivOmu+C/Qv50RRW7dhaE84ZqSdNZK/SWw3HhDZQu3WDfaVVa2IuR
 2XhX136TtI3Hq75uMtkifpuoMANs1Ao9ilWEjahsOKEYYsaN7hb+A6vG6
 mFOp3WN4Hb/1xat+O7cUbynAaIVLYHop9kledWNe27spEgAnnSG/MFqXi
 G9KR+HmAr95rKwotUb/iA3DygcVyBRVfS77PTq+njZsHe4rJztMRPDS55
 tdZpHxTBS2lSRDAO6PeHjAVzEJt+/kcu5W90ojLgzDhyVT6jY/MQFToVy
 y/7UBq5DRHlodVHU84MS8+aNiSt3J1x3Ku3dyPFq1fA7QaKlKffyDclZo Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="278835745"
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="278835745"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 17:44:29 -0700
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="743519304"
Received: from cgros-mobl.amr.corp.intel.com (HELO anushasr-mobl7.intel.com)
 ([10.209.28.3])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 17:44:29 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Sep 2022 17:44:03 -0700
Message-Id: <20220917004404.414981-6-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220917004404.414981-1-anusha.srivatsa@intel.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/display: Embed the new struct
 steps for modeset
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

Populate the new struct steps for the legacy modeset
case.

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 18 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_cdclk.h |  2 +-
 2 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index bb5bbb1ad982..bc627daade3e 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2015,8 +2015,16 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
  * requires all pipes to be off, false if not.
  */
 bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
-			       const struct intel_cdclk_config *b)
+			       struct intel_cdclk_config *b)
 {
+	struct cdclk_step *cdclk_transition = b->steps;
+
+	if (a->cdclk != b->cdclk || a->vco != b->vco ||
+	    a->ref != b->ref) {
+		cdclk_transition->action = CDCLK_LEGACY;
+		cdclk_transition->cdclk = b->cdclk;
+	}
+
 	return a->cdclk != b->cdclk ||
 		a->vco != b->vco ||
 		a->ref != b->ref;
@@ -2065,7 +2073,7 @@ static bool intel_cdclk_can_cd2x_update(struct drm_i915_private *dev_priv,
  * True if the CDCLK configurations don't match, false if they do.
  */
 static bool intel_cdclk_changed(const struct intel_cdclk_config *a,
-				const struct intel_cdclk_config *b)
+				struct intel_cdclk_config *b)
 {
 	return intel_cdclk_needs_modeset(a, b) ||
 		a->voltage_level != b->voltage_level;
@@ -2091,7 +2099,7 @@ void intel_cdclk_dump_config(struct drm_i915_private *i915,
  * if necessary.
  */
 static void intel_set_cdclk(struct drm_i915_private *dev_priv,
-			    const struct intel_cdclk_config *cdclk_config,
+			    struct intel_cdclk_config *cdclk_config,
 			    enum pipe pipe)
 {
 	struct intel_encoder *encoder;
@@ -2163,7 +2171,7 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	const struct intel_cdclk_state *old_cdclk_state =
 		intel_atomic_get_old_cdclk_state(state);
-	const struct intel_cdclk_state *new_cdclk_state =
+	struct intel_cdclk_state *new_cdclk_state =
 		intel_atomic_get_new_cdclk_state(state);
 	enum pipe pipe = new_cdclk_state->pipe;
 
@@ -2192,7 +2200,7 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	const struct intel_cdclk_state *old_cdclk_state =
 		intel_atomic_get_old_cdclk_state(state);
-	const struct intel_cdclk_state *new_cdclk_state =
+	struct intel_cdclk_state *new_cdclk_state =
 		intel_atomic_get_new_cdclk_state(state);
 	enum pipe pipe = new_cdclk_state->pipe;
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 3869f93e8ad2..442dd580c0c7 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -75,7 +75,7 @@ void intel_update_max_cdclk(struct drm_i915_private *dev_priv);
 void intel_update_cdclk(struct drm_i915_private *dev_priv);
 u32 intel_read_rawclk(struct drm_i915_private *dev_priv);
 bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
-			       const struct intel_cdclk_config *b);
+			       struct intel_cdclk_config *b);
 void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
 void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
 void intel_cdclk_dump_config(struct drm_i915_private *i915,
-- 
2.25.1

