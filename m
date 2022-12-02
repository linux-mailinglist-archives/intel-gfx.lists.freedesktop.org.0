Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D9D6407D8
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 14:44:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11C3310E05D;
	Fri,  2 Dec 2022 13:44:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7745B10E05D
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 13:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669988661; x=1701524661;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3AEW27CGxC/yLKfT4FTgLfi3rPhqeb6c4rMXD0tfl94=;
 b=XEM2Fhkdg0VRCEaQ4/LwLyBuMqPAayKmpNqmmzGhcxkbYUcaC96oPDKI
 CUOCmXvrL6vhGcVY2yn2mKnIz1ZqriadI1EVNpx/8dOEamBRu+Bk3MNpv
 sxtJCHIEYYyl0ZTWT/aUfgG5gU3RFhV04OjC/DpbOxBOEibZwbGaUUEsQ
 P43Milz7vB+yEwYBVwtjCsIpuG2YmyEhEyEECJzQOV3zSgSGqB43H4FAc
 hpAxZ3n0O27u5hwB/kziEGy7dw/4mlAuyg/Ufx0g8Dpv8+ECSelaGKwpw
 AzH+AQOUPlDDFufJ4tZHBonViKow2cFP0c/PfZoWVUwFqmP2SmkCDk8hG g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="317102422"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="317102422"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 05:44:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="622704001"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="622704001"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 02 Dec 2022 05:44:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 02 Dec 2022 15:44:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Dec 2022 15:44:10 +0200
Message-Id: <20221202134412.21943-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221202134412.21943-1-ville.syrjala@linux.intel.com>
References: <20221202134412.21943-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/vrr: Fix guardband/vblank exit
 length calculation for adl+
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

We are miscalculating both the guardband value, and the resulting
vblank exit length on adl+. This means that our start of vblank
(double buffered register latch point) is incorrect, and we also
think that it's not where it actually is (hence vblank evasion/etc.
may not work properly). Fix up the calculations to match the real
hardware behaviour (as reverse engineered by intel_display_poller).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 6655dd2c1684..753e7b211708 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -78,10 +78,10 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
-	/* The hw imposes the extra scanline before frame start */
 	if (DISPLAY_VER(i915) >= 13)
-		return crtc_state->vrr.guardband + crtc_state->framestart_delay + 1;
+		return crtc_state->vrr.guardband;
 	else
+		/* The hw imposes the extra scanline before frame start */
 		return crtc_state->vrr.pipeline_full + crtc_state->framestart_delay + 1;
 }
 
@@ -151,7 +151,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		 * number of scan lines. Assuming 0 for no DSB.
 		 */
 		crtc_state->vrr.guardband =
-			crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay;
+			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vdisplay;
 	} else {
 		crtc_state->vrr.pipeline_full =
 			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay -
-- 
2.37.4

