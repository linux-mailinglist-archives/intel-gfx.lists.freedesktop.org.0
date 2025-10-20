Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD09BF306F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 20:52:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E0C910E4D0;
	Mon, 20 Oct 2025 18:51:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BSOVWO+2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BB6710E4D0;
 Mon, 20 Oct 2025 18:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760986318; x=1792522318;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4Q53VYRZfMgSQ9YM7qcpATiCoXQy74caXHJPhI/EY44=;
 b=BSOVWO+2UFPHFL/cgMuf3HzFZ3/9GYmB9cw+ry5cxXk9+dda3PajF2Gi
 tPDB6TSCrHfyuVJdSPeH+GPpIihxumPHpeBaKZ3XO3sMhAjWooutAsxuk
 B+y7GzhwetjJE6A6YySQdrkvX5fFx1PEGCEVsPjeoSfcz0abObaWvEBhi
 5zDHtxrv8gtM1nKYFz4PpdZSsw/bQDyKWiLAu2JFuSGTo0IQ2zfhU9MfI
 hF3w7aSUbCDoLkLVnN8kP71Cs9lj4yM1cuRKvLZnp3aLBodR5UCI0L70M
 fRKnmgxSPATwqB2pkvX54qiMbd+Ai8x681rysATDNdLsoIb6g9tGpzrAN g==;
X-CSE-ConnectionGUID: YP7n6BcYSLeSy40yModpYA==
X-CSE-MsgGUID: J7flUYgyRHWuGd61qOvleg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74546264"
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="74546264"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:58 -0700
X-CSE-ConnectionGUID: rDVcvLhqRtigXW5mMxJRMg==
X-CSE-MsgGUID: aBMcCze9QzKf0emHnH6IGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="182951548"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.58])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:57 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 20/22] drm/i915/vrr: Nuke intel_vrr_vmin_flipline()
Date: Mon, 20 Oct 2025 21:50:36 +0300
Message-ID: <20251020185038.4272-21-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Now that intel_vrr_flipline_offset() is completely hidden from the
higher level VRR code, intel_vrr_vmin_flipline() has become rather
pointless. Remove it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index ba92e0a76855..8875e5fe86aa 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -108,11 +108,6 @@ static int intel_vrr_vmin_flipline_offset(struct intel_display *display)
 	return DISPLAY_VER(display) < 13 ? 1 : 0;
 }
 
-static int intel_vrr_vmin_flipline(const struct intel_crtc_state *crtc_state)
-{
-	return crtc_state->vrr.vmin;
-}
-
 static int intel_vrr_guardband_to_pipeline_full(const struct intel_crtc_state *crtc_state,
 						int guardband)
 {
@@ -147,7 +142,7 @@ static int intel_vrr_pipeline_full_to_guardband(const struct intel_crtc_state *c
 int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
 {
 	/* Min vblank actually determined by flipline */
-	return intel_vrr_vmin_flipline(crtc_state);
+	return crtc_state->vrr.vmin;
 }
 
 int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
@@ -781,7 +776,7 @@ bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
 {
 	return crtc_state->vrr.flipline &&
 	       crtc_state->vrr.flipline == crtc_state->vrr.vmax &&
-	       crtc_state->vrr.flipline == intel_vrr_vmin_flipline(crtc_state);
+	       crtc_state->vrr.flipline == crtc_state->vrr.vmin;
 }
 
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
-- 
2.49.1

