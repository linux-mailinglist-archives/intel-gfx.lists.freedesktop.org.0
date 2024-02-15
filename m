Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5558569B6
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 17:41:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9568A10E97D;
	Thu, 15 Feb 2024 16:41:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E1O7rUM5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CFF310E97D
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 16:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708015265; x=1739551265;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Uq2NLskP5fCj+YDo53v5Z09Q5pfcXdGyPymVty6uj3g=;
 b=E1O7rUM5bjxoKlNSEZzipZg784ZTxQuCqfhcw/x1nPs7YCfyRjkm10W+
 tEWD0ssAVFcvvJh6c1ZLcHbA2EkmFwzCATPfrzbOVxjEb/Up4klRt7xTf
 /2TYIPVb2+jLx+RBu7OmE6wVObHWzvAo/WLCJ25KGP0th/gl/29WKA7Dn
 J2ThpRs7uxFHBZodPUh1TD7cHnADGIgUVXVlrzy5NL2xN/gbMi8u1ZTwR
 pCYrQaryOmsm6kvg93Wj/dX/OsRKr72xylU4SoKt1uxmDdjIxWaPL69XV
 c8RVRlHEW+xgwhj9vDCYjDaM4HTNWMKXrW9TAR0qB0FNTk/hfNJfyonKA g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="19629891"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="19629891"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 08:41:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="826434812"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="826434812"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 15 Feb 2024 08:40:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Feb 2024 18:40:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 01/12] drm/i915: Indicate which pipe failed the fastset check
 overall
Date: Thu, 15 Feb 2024 18:40:44 +0200
Message-ID: <20240215164055.30585-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
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
index 00ac65a14029..a7f487f5c2b2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5562,14 +5562,16 @@ static int intel_modeset_checks(struct intel_atomic_state *state)
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
2.43.0

