Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BF0654093
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 13:01:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8936010E4F6;
	Thu, 22 Dec 2022 12:01:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C33F410E0C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671710454; x=1703246454;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zzXhyzruc2GM8G5dXETRaFI8A96swB11QsneD+mByWY=;
 b=NRJTYg5p4hXuSjfMyTuPgMxFsBQiv5BHh0gkHz3tqs4ECgakz7nzK8S6
 D0Igkd5YqD0JolCDrmyxi/HD9gnQnOax3PXGohUu7ajRPChRCOcaG7bL7
 kQGz3m59Y+Lcj8XrmJYoQYb/U7q4HniAYxI/lSwCaVbLt6XzBcPY21t1a
 g0cdVwHQCYESPBms2C7lSX7C+dV47FLzGCuWHlCqb3YWIW8GmnGGHKdyX
 W9KoIzTxO2JDrF+bufyzSRQfGGBvSjQY6x64fv81J92u05RLmRflD94HI
 dNfnKSK5WKAnYTHOKN6bsToI13eM9+4xC8et2PXIU2ebk08UQ1I4ksTS4 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="303541452"
X-IronPort-AV: E=Sophos;i="5.96,265,1665471600"; d="scan'208";a="303541452"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2022 04:00:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="794079165"
X-IronPort-AV: E=Sophos;i="5.96,265,1665471600"; d="scan'208";a="794079165"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 22 Dec 2022 04:00:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Dec 2022 14:00:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Dec 2022 14:00:44 +0200
Message-Id: <20221222120048.8740-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20221222120048.8740-1-ville.syrjala@linux.intel.com>
References: <20221222120048.8740-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/vrr: Fix "window2" handling
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

The "window2" delay is just the difference of vactive
(undelayed vblank) vs. vblank_start (delayed vblank).
Just use vblank_start during the VRR calculations so
that things work correctly regardless of whether delayed
vblank is used or not.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5ff6aed9575e..4228f26b4c11 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -144,17 +144,11 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	 * is deprecated.
 	 */
 	if (DISPLAY_VER(i915) >= 13) {
-		/*
-		 * FIXME: Subtract Window2 delay from below value.
-		 *
-		 * Window2 specifies time required to program DSB (Window2) in
-		 * number of scan lines. Assuming 0 for no DSB.
-		 */
 		crtc_state->vrr.guardband =
-			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vdisplay;
+			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
 	} else {
 		crtc_state->vrr.pipeline_full =
-			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay -
+			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
 			    crtc_state->framestart_delay - 1);
 	}
 
-- 
2.38.2

