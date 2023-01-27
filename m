Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD4767EC6D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 18:30:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B33510E187;
	Fri, 27 Jan 2023 17:30:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE3C110E187
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674840653; x=1706376653;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=9tQUvf5DpT6cEylHjlVVc42LRcBy0hY4LxI940dWr24=;
 b=ea0jFFxH0b6ovwNGy+3Pz440i+diAwUTyMIO6vzZ8Uou8LgntndQDWcK
 hfVGT+lQtz/UsCN9MrqgiEGuQzhFnW1ebrIxWiPg1i+ocBwsLbHRuFGw6
 5cDzhecHJVXxAPgWvQvHW7YebPxQzdOq16//XwbpEkDWNRwk7Mdn73jcu
 Xc5gHIxKSw6AHy7F5TfDkRSFs3w+/ecdo4nZbStYXCEkkPzUD9rO90TG9
 plo7+WeelSWKV9nKLPkqcZNf3QjnaYrmhmLmunpFGdffs3n//Eyf6DqWq
 X713mf/6YSixbzB9tYPWzabGQKES2u/k2X/tAYLS9U+5xtg62uLfcqZRT Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="327160505"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="327160505"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 09:30:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="752061823"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="752061823"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 27 Jan 2023 09:30:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Jan 2023 19:30:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Jan 2023 19:30:42 +0200
Message-Id: <20230127173044.24108-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230127173044.24108-1-ville.syrjala@linux.intel.com>
References: <20230127173044.24108-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915/psr: Fix the delayed vblank w/a
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
index 7a72e15e6836..eb9a0cd18652 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1170,13 +1170,8 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	 */
 	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
 	    IS_DISPLAY_VER(dev_priv, 12, 13)) {
-		u16 vtotal, vblank;
-
-		vtotal = crtc_state->uapi.adjusted_mode.crtc_vtotal -
-			crtc_state->uapi.adjusted_mode.crtc_vdisplay;
-		vblank = crtc_state->uapi.adjusted_mode.crtc_vblank_end -
-			crtc_state->uapi.adjusted_mode.crtc_vblank_start;
-		if (vblank > vtotal)
+		if (crtc_state->hw.adjusted_mode.crtc_vblank_start !=
+		    crtc_state->hw.adjusted_mode.crtc_vdisplay)
 			intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
 				     wa_16013835468_bit_get(intel_dp));
 	}
-- 
2.39.1

