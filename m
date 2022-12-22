Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F640654092
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 13:01:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C9D910E0C6;
	Thu, 22 Dec 2022 12:00:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F9D310E0C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 12:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671710457; x=1703246457;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=O9+FO6Aq/RXVaP+emfe4JAs37GT+DwnkxiH+KRN/Rps=;
 b=H0TJN3BhkbrLZWynWjeg5pvEtM2U+cVw595iBRUJD0c6Vu/ZbU0m6oFi
 ARd4WPS+6Z4VM8qemc0UBmM7b9L2EaPf3TEfAjPA//ly16cwHx00OeOJl
 n06YbNQCqOi/pyU4JvoIBf9rLG2F1mEAKH4vLjRGp/gk5ueKnxdECYbNB
 k+2Js1R5h8BJ71pxx3gFFyBN00nnkHn/I61erj0CYW+2A5c3Jr27DPffN
 RoOClmhSSSpJb2kT3EQ1TNc5Rt36oRpYE2hT9al7auXEheK8f+H61zzp2
 97oIG8HrVfdKyviCzdfWC1JeYs73Yal1s1s4kcCuiua/sdgckd9Om/eDp w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="303541462"
X-IronPort-AV: E=Sophos;i="5.96,265,1665471600"; d="scan'208";a="303541462"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2022 04:00:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="794079185"
X-IronPort-AV: E=Sophos;i="5.96,265,1665471600"; d="scan'208";a="794079185"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 22 Dec 2022 04:00:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Dec 2022 14:00:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Dec 2022 14:00:45 +0200
Message-Id: <20221222120048.8740-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20221222120048.8740-1-ville.syrjala@linux.intel.com>
References: <20221222120048.8740-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/psr: Fix the delayed vblank w/a
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

Fix the code to correctly determine whether delayed vblank
is used or not.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9820e5fdd087..70bd4e69834c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1200,13 +1200,8 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		/* Wa_16013835468:tgl[b0+], dg1 */
 		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_B0, STEP_FOREVER) ||
 		    IS_DG1(dev_priv)) {
-			u16 vtotal, vblank;
-
-			vtotal = crtc_state->uapi.adjusted_mode.crtc_vtotal -
-				 crtc_state->uapi.adjusted_mode.crtc_vdisplay;
-			vblank = crtc_state->uapi.adjusted_mode.crtc_vblank_end -
-				 crtc_state->uapi.adjusted_mode.crtc_vblank_start;
-			if (vblank > vtotal)
+			if (crtc_state->hw.adjusted_mode.crtc_vblank_start !=
+			    crtc_state->hw.adjusted_mode.crtc_vdisplay)
 				intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
 					     wa_16013835468_bit_get(intel_dp));
 		}
-- 
2.38.2

