Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3FB95EF8F
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 13:14:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 596BE10E1DC;
	Mon, 26 Aug 2024 11:14:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LRN0dW2z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27F9E10E1D4;
 Mon, 26 Aug 2024 11:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724670864; x=1756206864;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+u2Z7AcNWUwkCD8KRuUJP9JFkyrSUh90lgx63SkGqsI=;
 b=LRN0dW2ziHIPHc0VBq6Ep2o9HXJzuTYKyfoWV6ZKr25hbm3jUCOb+gIi
 4muEpm/wTGH8+EEgEKGG70NWwXE3eoppaZX+EFbLOv9X8KC4PZ4s3CeV8
 oQ2DTRlzKD/ur3BoTrtBwi2DRdR8dIdjrGMb5POqbsIZjuuHQKZYhwjY/
 JqYqfYWm6OucdLfLLmLtG7yWw8xpboeu+uhWzpzIXFKDSORQW1j43FbYw
 wI284YHxrgtRe2utHcul6IHuw5+KNBzkkHgEJ0f9cjEBFKEnZN/RwSDPx
 T2+cnCOxsJDI8Xn2AwHGBEACdDSuMOGKdtoItLROqq2jLf3aSPMVSNVCl A==;
X-CSE-ConnectionGUID: pQKPwMt5Rlm8MyCMgq1VIw==
X-CSE-MsgGUID: U8rFR4/rTfKN+EwRUBAH6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11175"; a="23213591"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="23213591"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:14:24 -0700
X-CSE-ConnectionGUID: uusYAX8oTpW+ML6gY3f0Ew==
X-CSE-MsgGUID: xQiun1TFRp2UOvgnVtJ0Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="67291438"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:14:22 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 11/12] drm/i915/display: Move helper to get all secondary pipes
Date: Mon, 26 Aug 2024 16:45:25 +0530
Message-ID: <20240826111527.1113622-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
References: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
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

Move the helper to get secondary joiner pipes to intel_dss.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 12 ++----------
 drivers/gpu/drm/i915/display/intel_display.h       |  1 -
 drivers/gpu/drm/i915/display/intel_dss.c           |  8 ++++++++
 drivers/gpu/drm/i915/display/intel_dss.h           |  1 +
 drivers/gpu/drm/i915/display/intel_modeset_setup.c |  6 +++---
 5 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 151cd6ad47f1..432d39415689 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -249,14 +249,6 @@ is_trans_port_sync_mode(const struct intel_crtc_state *crtc_state)
 		is_trans_port_sync_slave(crtc_state);
 }
 
-u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
-{
-	if (crtc_state->joiner_pipes)
-		return crtc_state->joiner_pipes & ~BIT(intel_dss_get_primary_joiner_pipe(crtc_state));
-	else
-		return 0;
-}
-
 static int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
 {
 	return hweight8(crtc_state->joiner_pipes);
@@ -5974,7 +5966,7 @@ static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 	}
 
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, secondary_crtc,
-					 intel_crtc_joiner_secondary_pipes(primary_crtc_state)) {
+					 intel_dss_get_secondary_joiner_pipes(primary_crtc_state)) {
 		struct intel_crtc_state *secondary_crtc_state;
 		int ret;
 
@@ -6028,7 +6020,7 @@ static void kill_joiner_secondaries(struct intel_atomic_state *state,
 	struct intel_crtc *secondary_crtc;
 
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, secondary_crtc,
-					 intel_crtc_joiner_secondary_pipes(primary_crtc_state)) {
+					 intel_dss_get_secondary_joiner_pipes(primary_crtc_state)) {
 		struct intel_crtc_state *secondary_crtc_state =
 			intel_atomic_get_new_crtc_state(state, secondary_crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 7bb44cec2015..dbd56f3bbbba 100644
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
diff --git a/drivers/gpu/drm/i915/display/intel_dss.c b/drivers/gpu/drm/i915/display/intel_dss.c
index 3f53963ccb6e..976fdcac4b55 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.c
+++ b/drivers/gpu/drm/i915/display/intel_dss.c
@@ -290,3 +290,11 @@ bool intel_dss_is_secondary_joiner_pipe(const struct intel_crtc_state *crtc_stat
 	return crtc_state->joiner_pipes &&
 		crtc->pipe != intel_dss_get_primary_joiner_pipe(crtc_state);
 }
+
+u8 intel_dss_get_secondary_joiner_pipes(const struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->joiner_pipes)
+		return crtc_state->joiner_pipes & ~BIT(intel_dss_get_primary_joiner_pipe(crtc_state));
+	else
+		return 0;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dss.h b/drivers/gpu/drm/i915/display/intel_dss.h
index 345e6544db05..ff9195b8fd92 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.h
+++ b/drivers/gpu/drm/i915/display/intel_dss.h
@@ -39,6 +39,7 @@ u8 intel_dss_get_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
 enum pipe intel_dss_get_primary_joiner_pipe(const struct intel_crtc_state *crtc_state);
 bool intel_dss_is_primary_joiner_pipe(const struct intel_crtc_state *crtc_state);
 bool intel_dss_is_secondary_joiner_pipe(const struct intel_crtc_state *crtc_state);
+u8 intel_dss_get_secondary_joiner_pipes(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_DSS_H__ */
 
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index bf9a7ae5baa0..b6df5fe77be6 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -69,7 +69,7 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 	/* Everything's already locked, -EDEADLK can't happen. */
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc,
 					 BIT(pipe) |
-					 intel_crtc_joiner_secondary_pipes(crtc_state)) {
+					 intel_dss_get_secondary_joiner_pipes(crtc_state)) {
 		struct intel_crtc_state *temp_crtc_state =
 			intel_atomic_get_crtc_state(state, temp_crtc);
 		int ret;
@@ -258,7 +258,7 @@ static u8 get_joiner_secondary_pipes(struct drm_i915_private *i915, u8 primary_p
 		struct intel_crtc_state *primary_crtc_state =
 			to_intel_crtc_state(primary_crtc->base.state);
 
-		pipes |= intel_crtc_joiner_secondary_pipes(primary_crtc_state);
+		pipes |= intel_dss_get_secondary_joiner_pipes(primary_crtc_state);
 	}
 
 	return pipes;
@@ -737,7 +737,7 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 				WARN_ON(intel_dss_is_secondary_joiner_pipe(crtc_state));
 
 				for_each_intel_crtc_in_pipe_mask(&i915->drm, secondary_crtc,
-								 intel_crtc_joiner_secondary_pipes(crtc_state)) {
+								 intel_dss_get_secondary_joiner_pipes(crtc_state)) {
 					struct intel_crtc_state *secondary_crtc_state;
 
 					secondary_crtc_state = to_intel_crtc_state(secondary_crtc->base.state);
-- 
2.45.2

