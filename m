Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F104FFA29
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 17:29:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0ABA10E3B3;
	Wed, 13 Apr 2022 15:29:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD27010E3B3
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 15:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649863739; x=1681399739;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/FMMresF+Vh5tXduJKA+ZcK8GCAGHqSUPQBt9i7wIN4=;
 b=Oykw4RSbtsYCrHgkRg2Pol4rfv9DpI4mqTXExSgIRxWj/8+3WaQaUn1m
 1cHyZ2D2kgUWStCeIkG/UvSvW/6vkEA/PNT/EG2PPYF9xnqhnUMG6mmQS
 NgBRjDN7pCUjv4GEiRtlZIykFpxVXI9GqdG1h2Jblfl2PlR5ClEzmeili
 sz+mFRI1rLdEUEwiqXY2AqjyS1qUSrqKJdmeSNLrYCMs0ql8k2uNhAUtu
 +Oci+T6GiC/QPgdYHnMEkTWqO+xJuwYxEYBg3o8ejs1EWCRtIdVrQQxQF
 rH3sT8rEiIfFXVlXJinztjr9fL94yxE+7ZSAUwgouE9hmE8X8MioIPgvz g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="323140430"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="323140430"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 08:28:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="700290475"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga001.fm.intel.com with SMTP; 13 Apr 2022 08:28:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Apr 2022 18:28:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Apr 2022 18:28:52 +0300
Message-Id: <20220413152852.7336-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413152852.7336-1-ville.syrjala@linux.intel.com>
References: <20220413152852.7336-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/fbc: s/false/0/
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

intel_fbc_check_plane() is supposed to an int, not a boolean.
So replace the bogus 'return false's with the correct 'return 0's.
These were accidental copy-paste mistakes when the code got moved
into intel_fbc_check_plane() from somewhere else tht did return
a boolean.

No functional issue here since false==0.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index ff303c7d3a57..966970d1cf0a 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1086,7 +1086,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	 */
 	if (DISPLAY_VER(i915) >= 12 && crtc_state->has_psr2) {
 		plane_state->no_fbc_reason = "PSR2 enabled";
-		return false;
+		return 0;
 	}
 
 	if (!pixel_format_is_valid(plane_state)) {
@@ -1112,7 +1112,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	if (plane_state->hw.pixel_blend_mode != DRM_MODE_BLEND_PIXEL_NONE &&
 	    fb->format->has_alpha) {
 		plane_state->no_fbc_reason = "per-pixel alpha not supported";
-		return false;
+		return 0;
 	}
 
 	if (!intel_fbc_hw_tracking_covers_screen(plane_state)) {
@@ -1128,7 +1128,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	if (DISPLAY_VER(i915) >= 9 &&
 	    plane_state->view.color_plane[0].y & 3) {
 		plane_state->no_fbc_reason = "plane start Y offset misaligned";
-		return false;
+		return 0;
 	}
 
 	/* Wa_22010751166: icl, ehl, tgl, dg1, rkl */
@@ -1136,7 +1136,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	    (plane_state->view.color_plane[0].y +
 	     (drm_rect_height(&plane_state->uapi.src) >> 16)) & 3) {
 		plane_state->no_fbc_reason = "plane end Y offset misaligned";
-		return false;
+		return 0;
 	}
 
 	/* WaFbcExceedCdClockThreshold:hsw,bdw */
-- 
2.35.1

