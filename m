Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F5E8117E3
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 16:45:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 432E410E7BD;
	Wed, 13 Dec 2023 15:45:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13AAB10E7BD
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 15:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702482303; x=1734018303;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WyJGR/uy7Y6TrYiBCxJSCk8rGV6HmOkkMp+QpGSU8pU=;
 b=US83fjE8phV2u2/zeBhtAZe0RR4qLaNPl2D4tNejtNvhG5XtKV8juCqp
 KHFxY4LCm0yl1HWXBmSWJuRQiLCamAVlhFN9CY09ling6PHASUE+9OfIx
 piHDtSfF4zRaAT8BKHmR8NIYof+uO9RvBGnKOGOJr4Ubta7EKAgrH8tFI
 MfZ2/vWxdsemuRti37MSwueDKEu+bJcq1+pIZc3NjfkPKMUjBVt4kQ7S8
 2jCItKFR7Cd/DAlP+jnKujvRxferU8NMGq8cGEuo454A9bYQnEdlGX0Dn
 1b3p/in3TakppvI5u5qhQPeQl/ppb7vnWsCzsZNMQ677eweHpzccaHt1p Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="2064985"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; 
   d="scan'208";a="2064985"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 07:45:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="767255548"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="767255548"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2023 07:45:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 17:44:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915: Indicate which pipe failed the fastset check
 overall
Date: Wed, 13 Dec 2023 17:44:55 +0200
Message-ID: <20231213154456.20141-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231213154456.20141-1-ville.syrjala@linux.intel.com>
References: <20231213154456.20141-1-ville.syrjala@linux.intel.com>
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

intel_crtc_check_fastset() is done per-pipe, so it would be nice
to know which pipe it was that failed its checkup.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 926e21d9132f..3abae05ab04c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5565,14 +5565,16 @@ static int intel_modeset_checks(struct intel_atomic_state *state)
 static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_state,
 				     struct intel_crtc_state *new_crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(old_crtc_state->uapi.crtc->dev);
+	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
 	/* only allow LRR when the timings stay within the VRR range */
 	if (old_crtc_state->vrr.in_range != new_crtc_state->vrr.in_range)
 		new_crtc_state->update_lrr = false;
 
 	if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state, true))
-		drm_dbg_kms(&i915->drm, "fastset requirement not met, forcing full modeset\n");
+		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] fastset requirement not met, forcing full modeset\n",
+			    crtc->base.base.id, crtc->base.name);
 	else
 		new_crtc_state->uapi.mode_changed = false;
 
-- 
2.41.0

