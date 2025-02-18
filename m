Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E37A3AA35
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 21:59:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25F8910E768;
	Tue, 18 Feb 2025 20:59:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ADuXd5Cu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5701110E768;
 Tue, 18 Feb 2025 20:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739912342; x=1771448342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9y9J+yIljoqy8FN/XTdhTiwUe1hqd+350PHKyRJmKok=;
 b=ADuXd5Cut2+kxSoYnir9pzyQl81Oyug+sBs/cpzFj3WY6/Ok7Z7nZS5F
 xkCIPAwGBNVXKSD90VtlLb8m6nkY5jebizbU2xer1ikYuDJbli+x9MwcZ
 Iazhhw6OPOiJjx/cIwL2VFwTRkRQ9JhfG0GO2tf5ItSQ+uvmUcTLCil04
 biyrhrobq4k0KFO8X/d7jkEN5OqhHJEcVeMX80EVlQqrf3ltjkL7wQGVE
 wjgi9tdTX+qsIc/zNL8Z77xMtBzwqlPZgvJ0J4c82gInza+oTbyj8HTfS
 IAyohS4Q9wBe9X9SaoWQdtjStV2R4EHO3Gg4HNdtK5x018bQBZS96wQB2 g==;
X-CSE-ConnectionGUID: yJ9QkooZTU22rj5AF9ytzQ==
X-CSE-MsgGUID: dvhLUFDzS8uI/6486n6CFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="28228340"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="28228340"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 12:59:02 -0800
X-CSE-ConnectionGUID: MtYAHxbuT6+mE/ImI/+5Gw==
X-CSE-MsgGUID: tDIIudfYRNiuMe0JNc9O+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114688987"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 12:59:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 22:58:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/4] drm/i915/dsb: Allow DSB based commits when scalers are in
 use
Date: Tue, 18 Feb 2025 22:58:49 +0200
Message-ID: <20250218205850.1422-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250218205850.1422-1-ville.syrjala@linux.intel.com>
References: <20250218205850.1422-1-ville.syrjala@linux.intel.com>
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

Have DSB perform plane scaler programming as well. Changes
to pfit/pipe scaler are not being done on the dsb since those
take the fastset path. However we do now allow DSB based plane
updates when the pfit/pipe scaler is currently enabled (the
pfit/pipe scaler just won't be touched by the DSB).

Fortunately the hardware issue where some scaler registers
are latched at frame start and some at start of vblank has
been fixed on icl+ (IIRC), and since DSB is tgl+ only we
don't have to do any changes to the DSB vblank evasion.
Not that we handle that hardware issue correctly in the
CPU vblank evasion either...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 826b001a66fa..7fd12abdf969 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7319,8 +7319,6 @@ static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
-	const struct intel_crtc_state *old_crtc_state =
-		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
@@ -7334,8 +7332,6 @@ static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
 	new_crtc_state->use_dsb =
 		!new_crtc_state->do_async_flip &&
 		(DISPLAY_VER(display) >= 20 || !new_crtc_state->has_psr) &&
-		!new_crtc_state->scaler_state.scaler_users &&
-		!old_crtc_state->scaler_state.scaler_users &&
 		!intel_crtc_needs_modeset(new_crtc_state) &&
 		!intel_crtc_needs_fastset(new_crtc_state);
 
@@ -7345,6 +7341,7 @@ static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
 static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
@@ -7391,6 +7388,10 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_crtc_planes_update_arm(new_crtc_state->dsb_commit,
 					     state, crtc);
 
+		if (DISPLAY_VER(display) >= 9)
+			skl_detach_scalers(new_crtc_state->dsb_commit,
+					   new_crtc_state);
+
 		if (!new_crtc_state->dsb_color_vblank) {
 			intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
 
-- 
2.45.3

