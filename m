Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C32361A6D9A
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2020 22:52:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ABAB89B51;
	Mon, 13 Apr 2020 20:52:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1062C89B51
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Apr 2020 20:52:33 +0000 (UTC)
IronPort-SDR: yhoSZ5Bxl2OyepHxaFt+gPuMaLN8j5Q8P3EiiczYmhiZE2Xayc0CcvrHVlEtNlVBZDNt548UAK
 vDGkT0cueuWA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 13:52:33 -0700
IronPort-SDR: lFGYJsb7pxBYUjaSDEH1GKxUurUZzo9zFMmAVQJHd8FI0nC3ljM+/c6XtE1vbnkcjMDYBUclvV
 0itK3W5qg9gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,380,1580803200"; d="scan'208";a="256291425"
Received: from hkalyana-mobl.amr.corp.intel.com (HELO msatwood-mobl.intel.com)
 ([10.134.66.138])
 by orsmga006.jf.intel.com with ESMTP; 13 Apr 2020 13:52:32 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Apr 2020 13:53:22 -0400
Message-Id: <20200413175322.12162-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/ehl: extended Wa_2006604312 to ehl
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reflect recent bspec changes.

Bspec: 33451

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 70ec301fe6e3..415d1fff0362 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -525,7 +525,7 @@ skl_wa_827(struct drm_i915_private *dev_priv, enum pipe pipe, bool enable)
 		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~(DUPS1_GATING_DIS | DUPS2_GATING_DIS));
 }
 
-/* Wa_2006604312:icl */
+/* Wa_2006604312:icl,ehl */
 static void
 icl_wa_scalerclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
 		       bool enable)
@@ -6438,8 +6438,8 @@ static bool needs_scalerclk_wa(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
-	/* Wa_2006604312:icl */
-	if (crtc_state->scaler_state.scaler_users > 0 && IS_ICELAKE(dev_priv))
+	/* Wa_2006604312:icl,ehl */
+	if (crtc_state->scaler_state.scaler_users > 0 && IS_GEN(dev_priv, 11))
 		return true;
 
 	return false;
@@ -6509,7 +6509,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	    needs_nv12_wa(new_crtc_state))
 		skl_wa_827(dev_priv, pipe, true);
 
-	/* Wa_2006604312:icl */
+	/* Wa_2006604312:icl,ehl */
 	if (!needs_scalerclk_wa(old_crtc_state) &&
 	    needs_scalerclk_wa(new_crtc_state))
 		icl_wa_scalerclkgating(dev_priv, pipe, true);
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
