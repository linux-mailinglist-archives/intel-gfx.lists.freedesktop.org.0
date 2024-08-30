Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7C39656B8
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 07:08:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7B0310E7F2;
	Fri, 30 Aug 2024 05:08:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cdazFFtC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E93E010E7EE;
 Fri, 30 Aug 2024 05:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724994532; x=1756530532;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YT2WEYD1ejJ5gFzFvJZqj1vfuMBeF1rV25mP6lPFp9g=;
 b=cdazFFtCxcKnEcJedJuID8ERfYAN9Twa8gSpodPbGe1utSmn6vxVAtGO
 b3bPoY790+L89ofKc9Wd06ev5RhMeOYmWGq13ju/xMy+fEp9zacZAMFS+
 5BsAuqGB9xSl51pGxfEKADftucI3xB2keydQ+QaWNEN7uZxxdtciYv7Kb
 Xb2Mrxo0A68evKe95VFcoNQpFPNH/pYvW2Q2Y0nEtoNsJb2OPuvKhj+ig
 8D1agVvwgvDwq+LEbwP2FcLJJUzJ4HDOP3KnDOY69hRfYKqIQhUofnGVH
 CKYuUPIcQjBTwyy7HJoQ606aRy8aDmV89U2mpQjBDvtKv8f5iIZrvUwIY A==;
X-CSE-ConnectionGUID: RicfYRPgQoC30zIXEUwCrQ==
X-CSE-MsgGUID: N1Y6nW1KRdCJgUKjlMNIUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23421700"
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="23421700"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:52 -0700
X-CSE-ConnectionGUID: 5tBAzSu9SjuanvAUUhurAw==
X-CSE-MsgGUID: mZVK8+FQQWiQzaWpErwlKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="94610302"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:50 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 17/19] drm/i915/display: Move
 intel_crtc_joiner_secondary_pipes to intel_joiner
Date: Fri, 30 Aug 2024 10:39:47 +0530
Message-ID: <20240830050950.2528450-18-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
References: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

Move the helper to get secondary joiner pipes to intel_joiner.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 12 ++----------
 drivers/gpu/drm/i915/display/intel_display.h       |  1 -
 drivers/gpu/drm/i915/display/intel_joiner.c        |  8 ++++++++
 drivers/gpu/drm/i915/display/intel_joiner.h        |  1 +
 drivers/gpu/drm/i915/display/intel_modeset_setup.c |  6 +++---
 5 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 71d9f132e46c..556c7774a0b0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -250,14 +250,6 @@ is_trans_port_sync_mode(const struct intel_crtc_state *crtc_state)
 		is_trans_port_sync_slave(crtc_state);
 }
 
-u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
-{
-	if (crtc_state->joiner_pipes)
-		return crtc_state->joiner_pipes & ~BIT(intel_joiner_get_primary_pipe(crtc_state));
-	else
-		return 0;
-}
-
 struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
@@ -5806,7 +5798,7 @@ static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 	}
 
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, secondary_crtc,
-					 intel_crtc_joiner_secondary_pipes(primary_crtc_state)) {
+					 intel_joiner_crtc_joiner_secondary_pipes(primary_crtc_state)) {
 		struct intel_crtc_state *secondary_crtc_state;
 		int ret;
 
@@ -5860,7 +5852,7 @@ void intel_crtc_kill_joiner_secondaries(struct intel_atomic_state *state,
 	struct intel_crtc *secondary_crtc;
 
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, secondary_crtc,
-					 intel_crtc_joiner_secondary_pipes(primary_crtc_state)) {
+					 intel_joiner_crtc_joiner_secondary_pipes(primary_crtc_state)) {
 		struct intel_crtc_state *secondary_crtc_state =
 			intel_atomic_get_new_crtc_state(state, secondary_crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 5528e9c9568f..b0f5303a5bb0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -422,7 +422,6 @@ intel_cpu_transcoder_mode_valid(struct drm_i915_private *i915,
 enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
 bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
 bool is_trans_port_sync_master(const struct intel_crtc_state *state);
-u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
 struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
 bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
diff --git a/drivers/gpu/drm/i915/display/intel_joiner.c b/drivers/gpu/drm/i915/display/intel_joiner.c
index f7acd2de8ffb..0899cf51a825 100644
--- a/drivers/gpu/drm/i915/display/intel_joiner.c
+++ b/drivers/gpu/drm/i915/display/intel_joiner.c
@@ -254,3 +254,11 @@ bool intel_joiner_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_s
 	return crtc_state->joiner_pipes &&
 		crtc->pipe != intel_joiner_get_primary_pipe(crtc_state);
 }
+
+u8 intel_joiner_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->joiner_pipes)
+		return crtc_state->joiner_pipes & ~BIT(intel_joiner_get_primary_pipe(crtc_state));
+	else
+		return 0;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_joiner.h b/drivers/gpu/drm/i915/display/intel_joiner.h
index b3266ebf8922..cae9971c44f6 100644
--- a/drivers/gpu/drm/i915/display/intel_joiner.h
+++ b/drivers/gpu/drm/i915/display/intel_joiner.h
@@ -31,5 +31,6 @@ int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state);
 u8 intel_joiner_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
 bool intel_joiner_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
 bool intel_joiner_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
+u8 intel_joiner_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
 
 #endif/* __INTEL_JOINER_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 466770f8b564..9b4acafdcdcd 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -69,7 +69,7 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 	/* Everything's already locked, -EDEADLK can't happen. */
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc,
 					 BIT(pipe) |
-					 intel_crtc_joiner_secondary_pipes(crtc_state)) {
+					 intel_joiner_crtc_joiner_secondary_pipes(crtc_state)) {
 		struct intel_crtc_state *temp_crtc_state =
 			intel_atomic_get_crtc_state(state, temp_crtc);
 		int ret;
@@ -258,7 +258,7 @@ static u8 get_joiner_secondary_pipes(struct drm_i915_private *i915, u8 primary_p
 		struct intel_crtc_state *primary_crtc_state =
 			to_intel_crtc_state(primary_crtc->base.state);
 
-		pipes |= intel_crtc_joiner_secondary_pipes(primary_crtc_state);
+		pipes |= intel_joiner_crtc_joiner_secondary_pipes(primary_crtc_state);
 	}
 
 	return pipes;
@@ -758,7 +758,7 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 				WARN_ON(intel_joiner_crtc_is_joiner_secondary(crtc_state));
 
 				for_each_intel_crtc_in_pipe_mask(&i915->drm, secondary_crtc,
-								 intel_crtc_joiner_secondary_pipes(crtc_state)) {
+								 intel_joiner_crtc_joiner_secondary_pipes(crtc_state)) {
 					struct intel_crtc_state *secondary_crtc_state;
 
 					secondary_crtc_state = to_intel_crtc_state(secondary_crtc->base.state);
-- 
2.45.2

