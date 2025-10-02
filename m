Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D69BB3D39
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Oct 2025 13:54:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE4CB10E7CB;
	Thu,  2 Oct 2025 11:54:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iE03mUMu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5086A10E7CB;
 Thu,  2 Oct 2025 11:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759406095; x=1790942095;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rjd2DWt4Q6Ga0CyJF4btS3Gy5an48Ofq9uTYO50O7KA=;
 b=iE03mUMufqH0vAqmTCUB8JJ8FkY0/V93PaBwQl6/VZE+VY+TEQLMZQ0a
 kQNFpaZEaObF/H4+OrFrljVYGNzsLFkf/kZWEdXs+PJdwne06lEu2XuEm
 SghAlOLrNrLbaHjqiZTgYHT3oywT/ntfp0NIBq1c/hvmmaiuh1H/CIUl6
 JjGiJCU3t2dKUwNQq3arWjB9MrS0JNX59e9xAiqQJV228+YoXTrGnEvXV
 3cYconwvbeu0ePb6RY9nBkV0s2YzrUo+qoxCSrxrZb9clOlT1r5+5T98C
 dqKHzOkznujxyZYb1B9NTrbvDhZbWdzE6Jkp0E52PR8i/IOsr02e6hAka Q==;
X-CSE-ConnectionGUID: j3aWN1dqTlqyi09cieEYLg==
X-CSE-MsgGUID: WrUtcGfBS4mY+zDv/w2xmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="65325242"
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="65325242"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 04:54:55 -0700
X-CSE-ConnectionGUID: 8XiPvctlRdSQbN241RhCvQ==
X-CSE-MsgGUID: C7lcdf7YSpCugi/tE4/BIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="209727049"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.228])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 04:54:54 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915/wm: Use fb->modfier to check for tiled vs.
 untiled
Date: Thu,  2 Oct 2025 14:54:34 +0300
Message-ID: <20251002115434.6486-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251002115434.6486-1-ville.syrjala@linux.intel.com>
References: <20251002115434.6486-1-ville.syrjala@linux.intel.com>
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

There is no point in checking the bo fence tiling mode when
we can just check the fb modifier instead.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index fd3b7b35f351..b262319bc83d 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -2295,12 +2295,11 @@ static void i9xx_update_wm(struct intel_display *display)
 
 	crtc = single_enabled_crtc(display);
 	if (display->platform.i915gm && crtc) {
-		struct drm_gem_object *obj;
-
-		obj = intel_fb_bo(crtc->base.primary->state->fb);
+		const struct drm_framebuffer *fb =
+			crtc->base.primary->state->fb;
 
 		/* self-refresh seems busted with untiled */
-		if (!intel_bo_is_tiled(obj))
+		if (fb->modifier == DRM_FORMAT_MOD_LINEAR)
 			crtc = NULL;
 	}
 
-- 
2.49.1

