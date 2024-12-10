Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F5F9EBB8E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 22:10:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1567E10E5CF;
	Tue, 10 Dec 2024 21:10:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cDkMnVwm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 237B310E5CF
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 21:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733865021; x=1765401021;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6HEWeejxFl2/YMzG+1vCuusw2aMVVFyuY6qQrsuw9Vs=;
 b=cDkMnVwmr+zlkS8k1YXmyNPtlY65U0u1HjTJErN6qfYlWJvwWBGzO+w1
 CmL389UDWFoWr81SgH2uu/OXx1AXNm0Z5fhj38BshldAhAPGQdXRENK5f
 NJo9jawiGxhSHg+7LnhI96M0NeyYa8mHKH4jpGdxpEhmlKCckGxVUhNTz
 ZwQ5PwWq7Q5sZDOWozKSlk/wIQ06fOv4kt8wXNUhExPfU61+gzl3XJyaM
 o4+QNVl5WofqVcqhHg6Lp637Bc7qj70RmSvkvVBmY24iIAZEQpWxnUzZs
 w4rVXW1M6DWKyGIYdb0Y3nc7eU3V+sSUZWp5Haa1454wuUsJGlKyYX4jT Q==;
X-CSE-ConnectionGUID: UoAXm/S0RreUpm1yABcKlA==
X-CSE-MsgGUID: oHLjQWkrQvyyJnq62OD/jg==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="59620171"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="59620171"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 13:10:21 -0800
X-CSE-ConnectionGUID: K8LlaIvCTqyv1B5zXng+NQ==
X-CSE-MsgGUID: /33b+jVTTiSZ/bJNkgm5Sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="95735062"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Dec 2024 13:10:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2024 23:10:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/18] drm/i915: Introduce intel_vrr_{vmin,vmax}_vtotal()
Date: Tue, 10 Dec 2024 23:09:53 +0200
Message-ID: <20241210211007.5976-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

On ICL/TGL vmin/vmax/flipline won't actually match the
vtotal valeues (currently they do, but that is wrong and
needs to be fixed). Add a few helpers that will compute the
actual vtotal values for us.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_vblank.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_vrr.c    | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h    |  2 ++
 4 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index e6f8fc743fb4..fcb8bf9cb313 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -140,7 +140,7 @@ static int dsb_vtotal(struct intel_atomic_state *state,
 	const struct intel_crtc_state *crtc_state = pre_commit_crtc_state(state, crtc);
 
 	if (pre_commit_is_vrr_active(state, crtc))
-		return crtc_state->vrr.vmax;
+		return intel_vrr_vmax_vtotal(crtc_state);
 	else
 		return intel_mode_vtotal(&crtc_state->hw.adjusted_mode);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index a95fb3349eba..6f0e0c64187d 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -523,8 +523,8 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
 		drm_WARN_ON(display->drm,
 			    (mode_flags & I915_MODE_FLAG_VRR) == 0);
 
-		adjusted_mode.crtc_vtotal = crtc_state->vrr.vmax;
-		adjusted_mode.crtc_vblank_end = crtc_state->vrr.vmax;
+		adjusted_mode.crtc_vtotal = intel_vrr_vmax_vtotal(crtc_state);
+		adjusted_mode.crtc_vblank_end = intel_vrr_vmax_vtotal(crtc_state);
 		adjusted_mode.crtc_vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
 		vmax_vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
 	} else {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 1b0a8e001141..0d40402fe043 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -103,6 +103,17 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
 		return crtc_state->vrr.pipeline_full + crtc_state->framestart_delay + 1;
 }
 
+int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
+{
+	/* Min vblank actually determined by flipline that is always >=vmin+1 */
+	return crtc_state->vrr.vmin + 1;
+}
+
+int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->vrr.vmax;
+}
+
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
 {
 	/* Min vblank actually determined by flipline that is always >=vmin+1 */
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index b3b45c675020..75db88ae9cc4 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -26,6 +26,8 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
+int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state);
+int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
 
-- 
2.45.2

