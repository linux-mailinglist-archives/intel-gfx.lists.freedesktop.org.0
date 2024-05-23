Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5188CD9F1
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 20:28:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 547E310F1CC;
	Thu, 23 May 2024 18:28:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="clERM3Um";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01F1910F186
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 18:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716488910; x=1748024910;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=dQElShAINlqtBAj1cbtoTOOtEWhwh5ojaPoj+HLOEqU=;
 b=clERM3UmqwCjOg6eK3u9iw3IpHxUEz19dimsPre0MNY5SqjTpMD7BYBf
 RhdncCfVYPuZ7rU6RtxkJPFuJbzyIhKK27k8dCBpOd7ojp9Zw0pwaZdKq
 WASgGwsGawhZRZyUxNPg4gNkbzViyocD8iOebiW2gWGmINhJj+CNzeDne
 dBOYcnB1P/5tfM8cxDJGAlU6VsEua4F+1SZheH4EsJbUDxK6xq8lv2gtT
 QeLwzAOiKixOoNaDC2HgyQAm9jdvkMtCOD5rciAh/HAH6raX7Gdlk5R3S
 uYaAZOiRoO/F903RAwmN2UkpvgtXzB8PWK03QLBbslX/grgCVuWMTsdMe Q==;
X-CSE-ConnectionGUID: A5xM1e1HSW6DFs+CnB044w==
X-CSE-MsgGUID: DVOdtCTQR4+zbkZYGJ8Ghg==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="12665093"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="12665093"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 11:28:29 -0700
X-CSE-ConnectionGUID: oNrfBwwLTLSZCk5KzOZ2Eg==
X-CSE-MsgGUID: 1KgPGKgcQcWop2TkhjCsrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="33730559"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 May 2024 11:28:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 May 2024 21:28:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915: Bury c8_planes_changed() in intel_color_check()
Date: Thu, 23 May 2024 21:28:18 +0300
Message-ID: <20240523182818.15382-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240523182818.15382-1-ville.syrjala@linux.intel.com>
References: <20240523182818.15382-1-ville.syrjala@linux.intel.com>
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

The c8_planes_changed() check in the high level atomic code is
a bit of an eyesore. Push it inside intel_color_check() so the
high level code doesn't have to care about this stuff.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 11 ++++++++++-
 drivers/gpu/drm/i915/display/intel_display.c | 18 ------------------
 2 files changed, 10 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index a2ddce100fcc..a9d526ab107a 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1986,9 +1986,18 @@ int intel_color_check(struct intel_atomic_state *state,
 		      struct intel_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	const struct intel_crtc_state *new_crtc_state =
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
+	/*
+	 * May need to update pipe gamma enable bits
+	 * when C8 planes are getting enabled/disabled.
+	 */
+	if (!old_crtc_state->c8_planes != !new_crtc_state->c8_planes)
+		new_crtc_state->uapi.color_mgmt_changed = true;
+
 	if (!intel_crtc_needs_color_update(new_crtc_state))
 		return 0;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 84f46370c88d..c3f142495d0b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4138,17 +4138,6 @@ static int icl_check_nv12_planes(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
-static bool c8_planes_changed(const struct intel_crtc_state *new_crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
-	struct intel_atomic_state *state =
-		to_intel_atomic_state(new_crtc_state->uapi.state);
-	const struct intel_crtc_state *old_crtc_state =
-		intel_atomic_get_old_crtc_state(state, crtc);
-
-	return !old_crtc_state->c8_planes != !new_crtc_state->c8_planes;
-}
-
 static u16 hsw_linetime_wm(const struct intel_crtc_state *crtc_state)
 {
 	const struct drm_display_mode *pipe_mode =
@@ -4247,13 +4236,6 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 			return ret;
 	}
 
-	/*
-	 * May need to update pipe gamma enable bits
-	 * when C8 planes are getting enabled/disabled.
-	 */
-	if (c8_planes_changed(crtc_state))
-		crtc_state->uapi.color_mgmt_changed = true;
-
 	ret = intel_color_check(state, crtc);
 	if (ret)
 		return ret;
-- 
2.44.1

