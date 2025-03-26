Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A9DA71BCD
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 17:26:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3BEC10E730;
	Wed, 26 Mar 2025 16:26:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oKPBuK9U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 148D610E72D;
 Wed, 26 Mar 2025 16:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743006371; x=1774542371;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xBAKI7glay0S9bmfjYepWsdrQuqjb/X2kBORj5TIUHg=;
 b=oKPBuK9UJjFlkxbnYxFx/1BeBbpTRtmuVs+qzSx+ZdX5qMq1vif3lGB7
 BaPgJGpGFT+r3eTPX9QkNSm/B1shPMAmVf4BITZ+fSgcRZZA0MxLHHgKA
 Y5UD3wPGgwx5nciee5x5KWgebR/UopG3rIrnwBrYgS9Xaajh1F5QeXZeX
 tTVLe5xy8ky64kRASHD6nPZruWDGw6K7WRV2XuJ83BACcfFMVaq2laxiq
 n6YEaJbt0qLiDfUFPfZU7BdvIQzFbh2j83z8KmXardwHgpS3rXwpx6Zd6
 UKqh1Y65YFomb/XzQE86BUQNNrFR8ekBhrXqSJhjuPwzdzU6nRd/RzgnZ Q==;
X-CSE-ConnectionGUID: WF2JUHJJRzGYCxwVIfjfwQ==
X-CSE-MsgGUID: NSdvnoJLQ6uXCRCoquhgbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44029568"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="44029568"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 09:26:10 -0700
X-CSE-ConnectionGUID: a7PAtr22RAei40NXSKjcwA==
X-CSE-MsgGUID: 8W3GzOyYQy2KeVoLz9NmaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="130016328"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Mar 2025 09:26:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Mar 2025 18:26:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 07/14] drm/i915: Flag even inactive crtcs as "inherited"
Date: Wed, 26 Mar 2025 18:25:37 +0200
Message-ID: <20250326162544.3642-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
References: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
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

I want to use the crtc_state->inherited flag to clean up some
of the early SAGV handling. To make that work nicely I need to
flag even the inactive crtcs as "inherited".

Since we can't expect user space to perform any real commits
on inactive crtcs we'll clear the flag already during
initial_commit().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  3 +++
 .../drm/i915/display/intel_modeset_setup.c    | 22 +++++++++----------
 2 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ee7812126129..a893add41849 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8073,6 +8073,9 @@ int intel_initial_commit(struct intel_display *display)
 			goto out;
 		}
 
+		if (!crtc_state->hw.active)
+			crtc_state->inherited = false;
+
 		if (crtc_state->hw.active) {
 			struct intel_encoder *encoder;
 
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 3cc915739677..2dc641da0c3b 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -821,18 +821,18 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_plane *plane;
 
-		if (crtc_state->hw.active) {
-			/*
-			 * The initial mode needs to be set in order to keep
-			 * the atomic core happy. It wants a valid mode if the
-			 * crtc's enabled, so we do the above call.
-			 *
-			 * But we don't set all the derived state fully, hence
-			 * set a flag to indicate that a full recalculation is
-			 * needed on the next commit.
-			 */
-			crtc_state->inherited = true;
+		/*
+		 * The initial mode needs to be set in order to keep
+		 * the atomic core happy. It wants a valid mode if the
+		 * crtc's enabled, so we do the above call.
+		 *
+		 * But we don't set all the derived state fully, hence
+		 * set a flag to indicate that a full recalculation is
+		 * needed on the next commit.
+		 */
+		crtc_state->inherited = true;
 
+		if (crtc_state->hw.active) {
 			intel_crtc_update_active_timings(crtc_state,
 							 crtc_state->vrr.enable);
 
-- 
2.45.3

