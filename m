Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D5AB9A3D7
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 16:29:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 491FB10E737;
	Wed, 24 Sep 2025 14:29:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XMuS5mKu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B56410E736;
 Wed, 24 Sep 2025 14:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758724152; x=1790260152;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0Lf+G1+wjouyOpe3g5m7TJaSo5hRwFd7PtIDjCLQU6E=;
 b=XMuS5mKuCrj8Z0/inysfvun1pSg3iXJmFmoc9jWXkl19Z3brovREFtc5
 NVuvXGlQDHX9KDYdKo0+tKmsFH/1TKAB+qi5hifwZ8v0KBK+VPk54m9G8
 pwnp+zIJsmrk0MbddaHVZTDRl3zEkaHCWRsYjm87zFg0iYvDaXfTnf8E8
 IyCw4uLe32S8QZymaA6YD+Ce4glwwyZqGcw/r/7lGT1ZqwQlXC5NH91vv
 h/9FYG9jZ9PUHlA24nlMKWd3YtREMVVBo2jJZfIP+pEHakhDpP8DSKtNh
 YCHb97+7vm6O34RC/ZU72Wwx+UFEEXWPJjpJgU4fPqWsxbDIu8L/Z//iV g==;
X-CSE-ConnectionGUID: Xr93JJ/0QXS5QXl6JnKuHA==
X-CSE-MsgGUID: 2X1ywid/Sr2skxBAANrNMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="61075910"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="61075910"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:29:12 -0700
X-CSE-ConnectionGUID: vDgfO9SoSliSyZK1mrxPog==
X-CSE-MsgGUID: KNW0kkE1Q3WcIr4KqbrY1A==
X-ExtLoop1: 1
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:29:11 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 03/10] drm/i915/vrr: Use set_context_latency instead of
 intel_vrr_real_vblank_delay()
Date: Wed, 24 Sep 2025 19:45:35 +0530
Message-ID: <20250924141542.3122126-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250924141542.3122126-1-ankit.k.nautiyal@intel.com>
References: <20250924141542.3122126-1-ankit.k.nautiyal@intel.com>
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

The helper intel_vrr_real_vblank_delay() was added to account for the
SCL lines for TGL where we do not have the TRANS_SET_CONTEXT_LATENCY.

Now, since we already are tracking the SCL with new member
`set_context_latency` use it directly instead of the helper.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 98d28de2e451..e188e5f07987 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -79,12 +79,6 @@ intel_vrr_check_modeset(struct intel_atomic_state *state)
 	}
 }
 
-static int intel_vrr_real_vblank_delay(const struct intel_crtc_state *crtc_state)
-{
-	return crtc_state->hw.adjusted_mode.crtc_vblank_start -
-		crtc_state->hw.adjusted_mode.crtc_vdisplay;
-}
-
 static int intel_vrr_extra_vblank_delay(struct intel_display *display)
 {
 	/*
@@ -102,7 +96,7 @@ int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	return intel_vrr_real_vblank_delay(crtc_state) +
+	return crtc_state->set_context_latency +
 		intel_vrr_extra_vblank_delay(display);
 }
 
@@ -263,7 +257,7 @@ static int intel_vrr_hw_value(const struct intel_crtc_state *crtc_state,
 	if (DISPLAY_VER(display) >= 13)
 		return value;
 	else
-		return value - intel_vrr_real_vblank_delay(crtc_state);
+		return value - crtc_state->set_context_latency;
 }
 
 /*
@@ -768,9 +762,9 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 
 		if (DISPLAY_VER(display) < 13) {
 			/* undo what intel_vrr_hw_value() does when writing the values */
-			crtc_state->vrr.flipline += intel_vrr_real_vblank_delay(crtc_state);
-			crtc_state->vrr.vmax += intel_vrr_real_vblank_delay(crtc_state);
-			crtc_state->vrr.vmin += intel_vrr_real_vblank_delay(crtc_state);
+			crtc_state->vrr.flipline += crtc_state->set_context_latency;
+			crtc_state->vrr.vmax += crtc_state->set_context_latency;
+			crtc_state->vrr.vmin += crtc_state->set_context_latency;
 
 			crtc_state->vrr.vmin += intel_vrr_vmin_flipline_offset(display);
 		}
-- 
2.45.2

