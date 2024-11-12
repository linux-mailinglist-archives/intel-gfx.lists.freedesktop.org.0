Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1132E9C510F
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 09:46:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2C9310E58A;
	Tue, 12 Nov 2024 08:45:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NbzFaDGr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BB8E10E02B;
 Tue, 12 Nov 2024 08:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731401155; x=1762937155;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JVc84VmJ7xPplE7bL4ZBDwb47Ft45bdE2pYA9hoi/OY=;
 b=NbzFaDGrr7Y+7FcrBibCbadeBJEisYN9pck9wGjkJZfO4b0F1v6IIohh
 g/mksNkBVvE6r6XrRhzrdfID1B5lHMGMYYxoGjHQgfFXEjzwPN15tKhVl
 wktElRGoXVeVjhbPQFC2z0ulmADKi1FwEJBwWlttvgvvBEPw7t6uOJtTG
 mdta5j56qZMCOaRpbBIKIUqY3PZVTGKp09F87w/JpnblJzKf2LjZFR/dK
 u7KLUrOC+kDMk5x3o3lNev6NXpgP996WBHulORSfRBOXhwq80VZgJmwbn
 hjL5dAedAGFdO4cl3t6iBh45aaHcF61yqOWkdAWJnOvOC2WbxH7cgGps1 g==;
X-CSE-ConnectionGUID: i6FUvGOdTJGcaykDEA8qpg==
X-CSE-MsgGUID: TpwscC0/TdKk6aYv+KwDqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="31449605"
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="31449605"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 00:45:55 -0800
X-CSE-ConnectionGUID: UabMEW+0Q26Dze9rwOpVqg==
X-CSE-MsgGUID: bWIW36uJRFC68p6Aw5MZLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="124851949"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 12 Nov 2024 00:45:54 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/6] drm/i915/watermark: Rename enable_dpkgc variable
Date: Tue, 12 Nov 2024 14:15:38 +0530
Message-Id: <20241112084542.1337314-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241112084542.1337314-1-suraj.kandpal@intel.com>
References: <20241112084542.1337314-1-suraj.kandpal@intel.com>
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

Rename the enable_dpkgc variable to make it more clear what it
represents which is that if we are in fixed refresh rate or not.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index a97e90ac643f..3fa463159b0b 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2848,7 +2848,7 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
  * Program PKG_C_LATENCY Added Wake Time = 0
  */
 static void
-skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
+skl_program_dpkgc_latency(struct drm_i915_private *i915, bool fixed_refresh_rate)
 {
 	u32 max_latency = LNL_PKG_C_LATENCY_MASK;
 	u32 clear = 0, val = 0;
@@ -2857,7 +2857,7 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
 	if (DISPLAY_VER(i915) < 20)
 		return;
 
-	if (enable_dpkgc) {
+	if (fixed_refresh_rate) {
 		max_latency = skl_watermark_max_latency(i915, 1);
 		if (max_latency == 0)
 			max_latency = LNL_PKG_C_LATENCY_MASK;
@@ -2878,7 +2878,7 @@ skl_compute_wm(struct intel_atomic_state *state)
 	struct intel_crtc *crtc;
 	struct intel_crtc_state __maybe_unused *new_crtc_state;
 	int ret, i;
-	bool enable_dpkgc = false;
+	bool fixed_refresh_rate = false;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		ret = skl_build_pipe_wm(state, crtc);
@@ -2907,10 +2907,10 @@ skl_compute_wm(struct intel_atomic_state *state)
 		if ((new_crtc_state->vrr.vmin == new_crtc_state->vrr.vmax &&
 		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline) ||
 		    !new_crtc_state->vrr.enable)
-			enable_dpkgc = true;
+			fixed_refresh_rate = true;
 	}
 
-	skl_program_dpkgc_latency(to_i915(state->base.dev), enable_dpkgc);
+	skl_program_dpkgc_latency(to_i915(state->base.dev), fixed_refresh_rate);
 
 	skl_print_wm_changes(state);
 
-- 
2.34.1

