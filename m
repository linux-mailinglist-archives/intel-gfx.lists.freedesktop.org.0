Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EB25EEEA9
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 09:16:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C575810E9A6;
	Thu, 29 Sep 2022 07:16:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0764310E919
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 07:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664435755; x=1695971755;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/OsdjVg8s//x3aNwmVQKKFA6Qnxm0FhKwHGkshrleCs=;
 b=elMjaJ/GZI1MqMFILzDZ5OpFij3TIdN6ZHWdFHGS6oqyOYxRdNDmZkr4
 7AegkDUswGcwPrkiQNoua6f9cSHro3tHpEq1nTzj6E3r1i3kaf+pVjNj4
 u5XJkr7OgaSCHOWOvf/VnXXCrlQhKzZsbEw27Fc5JFR8d3qPcsWSDOFLb
 kDxs8jQtX4dZ+6oKxFnNYEQWnZR/EKw0rPiOw97wjsS8XYL+0b6GgkTzr
 JL/Je+fDlsrD6QynoMuZ5uL3VpG/GwzpA5UE+DkRrppdRUw/7EG1WpcEB
 Lz7yH9zr8PgefwR7GZcU0yP2x0jMinmQLzgOPJ6PkLY23Sg8ROzhPCT4Q w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="288979158"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="288979158"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 00:15:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="655441251"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="655441251"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 29 Sep 2022 00:15:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Sep 2022 10:15:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Sep 2022 10:15:21 +0300
Message-Id: <20220929071521.26612-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
References: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/10] drm/i915: Stop loading linear degammma
 LUT on glk needlessly
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

Make glk_load_luts() a bit lighter for the common case
where neither the degamma LUT nor pipe CSC are enabled
by not loading the linear degamma LUT. Making .load_luts()
as lightweight as possible is a good idea since it may need
to execute from a vblank worker under tight deadlines.

My earlier reasoning for always loading the linear degamma LUT
was to avoid an extra LUT load when just enabling/disabling the
pipe CSC, but that is nonsense since we load the LUTs on every
flagged color manaement change/modeset anyway (either of which
is needed for a pipe CSC toggle).

We can also get rid of the glk_can_preload_luts() special
case since the presence of the degamma LUT will now always
match csc_enable.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 26 +++-------------------
 1 file changed, 3 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index de530bf1aba1..a3066d942f58 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1198,24 +1198,6 @@ static bool chv_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
 	return !old_crtc_state->post_csc_lut;
 }
 
-static bool glk_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
-	struct intel_atomic_state *state =
-		to_intel_atomic_state(new_crtc_state->uapi.state);
-	const struct intel_crtc_state *old_crtc_state =
-		intel_atomic_get_old_crtc_state(state, crtc);
-
-	/*
-	 * The hardware degamma is active whenever the pipe
-	 * CSC is active. Thus even if the old state has no
-	 * software degamma we need to avoid clobbering the
-	 * linear hardware degamma mid scanout.
-	 */
-	return !old_crtc_state->csc_enable &&
-		!old_crtc_state->post_csc_lut;
-}
-
 int intel_color_check(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
@@ -1622,11 +1604,9 @@ static void glk_assign_luts(struct intel_crtc_state *crtc_state)
 	 * On GLK+ both pipe CSC and degamma LUT are controlled
 	 * by csc_enable. Hence for the cases where the CSC is
 	 * needed but degamma LUT is not we need to load a
-	 * linear degamma LUT. In fact we'll just always load
-	 * the degama LUT so that we don't have to reload
-	 * it every time the pipe CSC is being enabled.
+	 * linear degamma LUT.
 	 */
-	if (!crtc_state->pre_csc_lut)
+	if (crtc_state->csc_enable && !crtc_state->pre_csc_lut)
 		drm_property_replace_blob(&crtc_state->pre_csc_lut,
 					  i915->display.color.glk_linear_degamma_lut);
 }
@@ -1667,7 +1647,7 @@ static int glk_color_check(struct intel_crtc_state *crtc_state)
 
 	glk_assign_luts(crtc_state);
 
-	crtc_state->preload_luts = glk_can_preload_luts(crtc_state);
+	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
 
 	return 0;
 }
-- 
2.35.1

