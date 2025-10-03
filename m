Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BB3BB741C
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Oct 2025 16:58:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A92A10E942;
	Fri,  3 Oct 2025 14:57:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jbJonQwi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6857C10E942;
 Fri,  3 Oct 2025 14:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759503479; x=1791039479;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V8PwfATqvXo3Yz2fYgHN06V6aNBNcUjukEfoHKZKIw8=;
 b=jbJonQwi1rQzacWgRFYYhVioKvgMgcCTJWnFmhaM4ZiAvyHV2MUqQXu3
 zfzg1rhlJqdWaZk050jFZbmqjz5pk4NFE24htO5Y1kb41B6HAoAYGwA0B
 +hw7zj2iHoKMNr3Jy6wqqhNEGPniY08u7WHZggFbpkcRrekdly++v9ttX
 dww2VumjLj+CCSK7I2OdbmJq5PjvRE5CTsq2qz6IcWTtVtm5+lO8zdza+
 ufIwhUqfXlBavhvtE9elaDhuSbcin/cbuZuNZgxjsHSRjAgaaOQtMzEOU
 lWoTzztCVo7g6DuBTqvFPkI7Xz3mpUhMIHR3W1LeyqPytAQHugLTWPitb w==;
X-CSE-ConnectionGUID: wljDatWZSBC+NiuUqeefHA==
X-CSE-MsgGUID: G4vDMIO8QxmwAQE2dSDd0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11571"; a="73138773"
X-IronPort-AV: E=Sophos;i="6.18,312,1751266800"; d="scan'208";a="73138773"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 07:57:58 -0700
X-CSE-ConnectionGUID: i0v3s36FRqytdte+YBpJlQ==
X-CSE-MsgGUID: e6fBozsETKC9bE6qGh8UHQ==
X-ExtLoop1: 1
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.127])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 07:57:56 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 5/5] drm/i915/wm: Use fb->modfier to check for tiled vs.
 untiled
Date: Fri,  3 Oct 2025 17:57:34 +0300
Message-ID: <20251003145734.7634-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251003145734.7634-1-ville.syrjala@linux.intel.com>
References: <20251003145734.7634-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
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

