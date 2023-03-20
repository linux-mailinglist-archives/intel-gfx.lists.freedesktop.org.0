Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C80D66C0DBF
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 10:55:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F78310E2B8;
	Mon, 20 Mar 2023 09:55:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5383610E2B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 09:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679306104; x=1710842104;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qvx3I8+vwD+MCIZXr91dE5jhgd9BIFtnwAbvWoF0Ug8=;
 b=hZ/vcFLtfXmTpUQre9t6zibR0MeawAToPxiaZrfgO5hM0PGkgan6A8hi
 STD1RXUdXNW/GGT6lcVyBaleGAP/Ixby0yC3X5ZW4dQa1bG0NnXCWc4ch
 MFJC84gq+q+JTe1MU/qMSm8WjCBEy770Pg4bU41C/K67lImP72acbbpsa
 a5YZn9OQJiPyDyIWdCE9+hiWjfUdHgljKQe01loK2RCUfB1XvjPGKHo5/
 Q7B+fl3D/eo3/vBFut8j664K2R4KDZRkAp1fN/N+V5ScKkWwbkPpqEnjI
 Vo08rjn9hR7mqwX5mlfJRG3cdAoTaYqCjdAz9M3VtMzwBuakTm1eNFdsa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="337337361"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="337337361"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 02:54:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="683396443"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="683396443"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 20 Mar 2023 02:54:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 11:54:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 11:54:36 +0200
Message-Id: <20230320095438.17328-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320095438.17328-1-ville.syrjala@linux.intel.com>
References: <20230320095438.17328-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: Workaround ICL CSC_MODE sticky
 arming
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
Cc: Drew Davenport <ddavenport@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Unlike SKL/GLK the ICL CSC unit suffers from a new issue where
CSC_MODE arming is sticky. That is, once armed it remains armed
causing the CSC coeff/offset registers to become effectively
self-arming.

CSC coeff/offset registers writes no longer disarm the CSC,
but fortunately register read still do. So we can use that
to disarm the CSC unit once the registers for the current
frame have been latched. This avoid s the self-arming behaviour
from persisting into the next frame's .color_commit_noarm()
call.

Cc: Manasi Navare <navaremanasi@google.com>
Cc: Drew Davenport <ddavenport@chromium.org>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Fixes: d13dde449580 ("drm/i915: Split pipe+output CSC programming to noarm+arm pair")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 44 +++++++++++++++++++++-
 1 file changed, 43 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 3cd53d29dd4b..c3bf68719c9b 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -619,6 +619,14 @@ static void ilk_lut_12p4_pack(struct drm_color_lut *entry, u32 ldw, u32 udw)
 
 static void icl_color_commit_noarm(const struct intel_crtc_state *crtc_state)
 {
+	/*
+	 * Despite Wa_1406463849, ICL no longer suffers from the SKL
+	 * DC5/PSR CSC black screen issue (see skl_color_commit_noarm()).
+	 * Possibly due to the extra sticky CSC arming
+	 * (see icl_color_post_update()).
+	 *
+	 * On TGL+ all CSC arming issues have been properly fixed.
+	 */
 	icl_load_csc_matrix(crtc_state);
 }
 
@@ -721,6 +729,28 @@ static void icl_color_commit_arm(const struct intel_crtc_state *crtc_state)
 			  crtc_state->csc_mode);
 }
 
+static void icl_color_post_update(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+
+	/*
+	 * Despite Wa_1406463849, ICL CSC is no longer disarmed by
+	 * coeff/offset register *writes*. Instead, once CSC_MODE
+	 * is armed it stays armed, even after it has been latched.
+	 * Afterwards the coeff/offset registers become effectively
+	 * self-arming. That self-arming must be disabled before the
+	 * next icl_color_commit_noarm() tries to write the next set
+	 * of coeff/offset registers. Fortunately register *reads*
+	 * do still disarm the CSC. Naturally this must not be done
+	 * until the previously written CSC registers have actually
+	 * been latched.
+	 *
+	 * TGL+ no longer need this workaround.
+	 */
+	intel_de_read_fw(i915, PIPE_CSC_PREOFF_HI(crtc->pipe));
+}
+
 static struct drm_property_blob *
 create_linear_lut(struct drm_i915_private *i915, int lut_size)
 {
@@ -3124,10 +3154,20 @@ static const struct intel_color_funcs i9xx_color_funcs = {
 	.lut_equal = i9xx_lut_equal,
 };
 
+static const struct intel_color_funcs tgl_color_funcs = {
+	.color_check = icl_color_check,
+	.color_commit_noarm = icl_color_commit_noarm,
+	.color_commit_arm = icl_color_commit_arm,
+	.load_luts = icl_load_luts,
+	.read_luts = icl_read_luts,
+	.lut_equal = icl_lut_equal,
+};
+
 static const struct intel_color_funcs icl_color_funcs = {
 	.color_check = icl_color_check,
 	.color_commit_noarm = icl_color_commit_noarm,
 	.color_commit_arm = icl_color_commit_arm,
+	.color_post_update = icl_color_post_update,
 	.load_luts = icl_load_luts,
 	.read_luts = icl_read_luts,
 	.lut_equal = icl_lut_equal,
@@ -3240,7 +3280,9 @@ void intel_color_init_hooks(struct drm_i915_private *i915)
 		else
 			i915->display.funcs.color = &i9xx_color_funcs;
 	} else {
-		if (DISPLAY_VER(i915) >= 11)
+		if (DISPLAY_VER(i915) >= 12)
+			i915->display.funcs.color = &tgl_color_funcs;
+		else if (DISPLAY_VER(i915) == 11)
 			i915->display.funcs.color = &icl_color_funcs;
 		else if (DISPLAY_VER(i915) == 10)
 			i915->display.funcs.color = &glk_color_funcs;
-- 
2.39.2

