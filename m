Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9E592AEB8
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 05:26:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1B3810E47C;
	Tue,  9 Jul 2024 03:26:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cs8ea8PT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD86D10E47C
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2024 03:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720495577; x=1752031577;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9RfYfSiDdCgce1dHXFunLqC0PuQmXGWXbF9n7Qo29NI=;
 b=Cs8ea8PTrVjALP0uEgeSzZ1kfFSnlNkuyZu8veoJ68TYWzwZWukhD2vu
 oIss0cLAS1tL5f9yHBdNLtPbIj2NGRwFqE1J+7NB3/MUUnkE+MNzTX4l1
 BK4qqPB/Oh/FK2OvkJNJ8Io/RY+WyR/grax4F7f+BvWpwWk88h0DacgZh
 sbhIYJ9Fi3zOT6xsIzMZ2zj8Yi18EKxqfnvR54nvXmoDl2OYTy11t5f95
 tKQfteJjb+AwXbpMlaKLaBR7bJ+MtHx8LZ8cgp+r05Q2WwDWrV41xzbGd
 YiQ+3AnM883Pfn7Bvg1Qs6+/v9mrxj8Tsz6oda1G/XRC/NLJ7pgYIOi0Z A==;
X-CSE-ConnectionGUID: 1SqKKUVkSpej+NGYUxuWxA==
X-CSE-MsgGUID: S1yIdKQRQJ6+hnQjSG59gw==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="21536478"
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="21536478"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 20:26:17 -0700
X-CSE-ConnectionGUID: j5J4g6wcTFekUidyMf526w==
X-CSE-MsgGUID: lbJo9EMUSAWlwgpG0z7L8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="48374206"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 20:26:15 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 09/10] drm/i915/vrr: Handle joiner with vrr
Date: Tue,  9 Jul 2024 08:56:50 +0530
Message-Id: <20240709032651.1824185-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
References: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
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

Do not program transcoder registers for VRR for the secondary pipe of
the joiner. Remove check to skip VRR for joiner case.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 43ade1c24784..9f6b83f059cb 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -171,13 +171,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	const struct drm_display_info *info = &connector->base.display_info;
 	int vmin, vmax;
 
-	/*
-	 * FIXME all joined pipes share the same transcoder.
-	 * Need to account for that during VRR toggle/push/etc.
-	 */
-	if (crtc_state->joiner_pipes)
-		return;
-
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
 		return;
 
@@ -274,6 +267,9 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
+	if (intel_crtc_is_joiner_secondary(crtc_state))
+		return;
+
 	/*
 	 * This bit seems to have two meanings depending on the platform:
 	 * TGL: generate VRR "safe window" for DSB vblank waits
@@ -316,6 +312,9 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
+	if (intel_crtc_is_joiner_secondary(crtc_state))
+		return;
+
 	if (!crtc_state->vrr.enable || crtc_state->vrr.fixed_rr)
 		return;
 
@@ -340,6 +339,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
+	if (intel_crtc_is_joiner_secondary(crtc_state))
+		return;
+
 	if (!crtc_state->vrr.enable)
 		return;
 
@@ -369,6 +371,9 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 
+	if (intel_crtc_is_joiner_secondary(old_crtc_state))
+		return;
+
 	if (!old_crtc_state->vrr.enable)
 		return;
 
-- 
2.40.1

