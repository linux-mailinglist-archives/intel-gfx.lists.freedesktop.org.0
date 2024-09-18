Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3412597BFD7
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 19:48:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C37AC10E615;
	Wed, 18 Sep 2024 17:48:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="izstfPkg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0411110E615;
 Wed, 18 Sep 2024 17:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726681716; x=1758217716;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jHT35uSVQNpa6zPkXyHphXIRbjuY2GtWhxrJa+pZcaw=;
 b=izstfPkglWGrY52D8W+FLUIe3HV28Wvzmh5SJfrkbDby5BQ3DIyiLTKd
 /f12vZPPNNk+YgH/WPoIN7AeZGUTo3qvRgF09S2apiCxYqyk19kNhuyhG
 9ttmQvXiTHSt87wO7QvSouyOkxoVupR961x+UqO3Eh5D7wajUgw/3AL0j
 ERw5R6ahYQeKFhebXBA9taPdsRTWwGhAWqLbMSVD1lYsRqKU4zdgcPhn2
 SNqLfO88FFesqu+jFPAeyergMT7HyrcFdCnhgKE/9Z+rcyKih8/u8kTJo
 Kc9kvtaBXiyG6ifH8Bj0v3cowHggSNgt0bcuTaM3uXFztQ28pXqwYiZLS A==;
X-CSE-ConnectionGUID: dMIH/bewThqpQroR5jJnug==
X-CSE-MsgGUID: DRY06okiRS27NGnhzw6WHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25493002"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="25493002"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:48:36 -0700
X-CSE-ConnectionGUID: MmTNsKtHTVGZdFGN+wM/pg==
X-CSE-MsgGUID: bu3j4eyhTUyXVv9RGRiAzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69660535"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:48:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v3 8/9] drm/i915/pps: add vlv_pps_backlight_initial_pipe()
Date: Wed, 18 Sep 2024 20:47:48 +0300
Message-Id: <b0587f183d8bb06679a75b04f956762435d10181.1726681620.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726681620.git.jani.nikula@intel.com>
References: <cover.1726681620.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add vlv_pps_backlight_initial_pipe() and move the VLV/CHV initial
backlight pipe logic there, hiding the PPS pipe details inside PPS code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  | 16 ++--------------
 drivers/gpu/drm/i915/display/intel_pps.c | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pps.h |  1 +
 3 files changed, 23 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 12706f24a36d..9859a7d3ce80 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6629,20 +6629,8 @@ static void intel_edp_backlight_setup(struct intel_dp *intel_dp,
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	enum pipe pipe = INVALID_PIPE;
 
-	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
-		/*
-		 * Figure out the current pipe for the initial backlight setup.
-		 * If the current pipe isn't valid, try the PPS pipe, and if that
-		 * fails just assume pipe A.
-		 */
-		pipe = vlv_active_pipe(intel_dp);
-
-		if (pipe != PIPE_A && pipe != PIPE_B)
-			pipe = intel_dp->pps.vlv_pps_pipe;
-
-		if (pipe != PIPE_A && pipe != PIPE_B)
-			pipe = PIPE_A;
-	}
+	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+		pipe = vlv_pps_backlight_initial_pipe(intel_dp);
 
 	intel_backlight_setup(connector, pipe);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 63bae4c3a71a..9cb091e7c94a 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1227,6 +1227,26 @@ void vlv_pps_pipe_reset(struct intel_dp *intel_dp)
 		intel_dp->pps.vlv_active_pipe = vlv_active_pipe(intel_dp);
 }
 
+enum pipe vlv_pps_backlight_initial_pipe(struct intel_dp *intel_dp)
+{
+	enum pipe pipe;
+
+	/*
+	 * Figure out the current pipe for the initial backlight setup. If the
+	 * current pipe isn't valid, try the PPS pipe, and if that fails just
+	 * assume pipe A.
+	 */
+	pipe = vlv_active_pipe(intel_dp);
+
+	if (pipe != PIPE_A && pipe != PIPE_B)
+		pipe = intel_dp->pps.vlv_pps_pipe;
+
+	if (pipe != PIPE_A && pipe != PIPE_B)
+		pipe = PIPE_A;
+
+	return pipe;
+}
+
 /* Call on all DP, not just eDP */
 void vlv_pps_port_enable_unlocked(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index 5b3eb7fb7e1f..a5339a65485d 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -47,6 +47,7 @@ void intel_pps_reset_all(struct intel_display *display);
 
 void vlv_pps_pipe_init(struct intel_dp *intel_dp);
 void vlv_pps_pipe_reset(struct intel_dp *intel_dp);
+enum pipe vlv_pps_backlight_initial_pipe(struct intel_dp *intel_dp);
 void vlv_pps_port_enable_unlocked(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state);
 void vlv_pps_port_disable(struct intel_encoder *encoder,
-- 
2.39.2

