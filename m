Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B12A9BBBA5
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 18:20:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF0DB10E3E7;
	Mon,  4 Nov 2024 17:20:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AlMhUG9M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 301AA10E297;
 Mon,  4 Nov 2024 17:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730740808; x=1762276808;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tURMYCQ483St9mqCsJrO3UNjysMWjgd9uuH0epOxZ8w=;
 b=AlMhUG9MKmAgwQul/TvIW7RXr+v1WOxALU0xePAkcH07b25Y1eaRJTal
 wJpYaYRG5gBCmnfa5wMJHHtS9BKENZiQgQ8ouu9x0LE8l/7W4BM+LSi92
 pO9d6gfbtnFjI+fXc/AC9p9PhCEWkodBQUku//sGhpK9cXGTcl8btEG34
 rSqpv7RGVP+12DAW8HqKToOQ4NcuvNmNFuOgSIYVhZbTlF+wJt/P29LnP
 FJD2Ve7YlCB3xZEZl1wpgWImDvyanTzmocLraCP7W1/M5GiMrzpX9i0jV
 QLi/A94hh+Bciknu9Cc7+ImUImFbQVczomowOtCMTUgAFS4P5ePWzEXJE w==;
X-CSE-ConnectionGUID: WZx9au9XS0e0Kck85pcOUQ==
X-CSE-MsgGUID: HPyxCke9R6qlKKVINdRsOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="30563855"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="30563855"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 09:20:08 -0800
X-CSE-ConnectionGUID: Uu8RyqHnRfW+410XaSLdoQ==
X-CSE-MsgGUID: GvfmFjmtTruv1Izi4fUtAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="83815788"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.33])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 09:20:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 07/15] drm/i915/display: convert HAS_IPS() to struct
 intel_display
Date: Mon,  4 Nov 2024 19:19:21 +0200
Message-Id: <aa1279f5f04ed29b053209d49bb0137eea99119e.1730740629.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730740629.git.jani.nikula@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Convert HAS_IPS() to struct intel_display. Do minimal drive-by
conversions to struct intel_display in the callers while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c              | 4 +++-
 drivers/gpu/drm/i915/display/intel_display.c        | 3 ++-
 drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index 34c5d28fc866..ee815e0344e8 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -185,7 +185,9 @@ void hsw_ips_post_update(struct intel_atomic_state *state,
 /* IPS only exists on ULT machines and is tied to pipe A. */
 bool hsw_crtc_supports_ips(struct intel_crtc *crtc)
 {
-	return HAS_IPS(to_i915(crtc->base.dev)) && crtc->pipe == PIPE_A;
+	struct intel_display *display = to_intel_display(crtc);
+
+	return HAS_IPS(display) && crtc->pipe == PIPE_A;
 }
 
 bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 57b42554d656..f53611e83502 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4545,6 +4545,7 @@ static int hsw_compute_linetime_wm(struct intel_atomic_state *state,
 static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
@@ -4586,7 +4587,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 			return ret;
 	}
 
-	if (HAS_IPS(dev_priv)) {
+	if (HAS_IPS(display)) {
 		ret = hsw_ips_compute_config(state, crtc);
 		if (ret)
 			return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 6279c6c6e831..b85b1d3ff708 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -164,7 +164,7 @@ struct intel_display_platforms {
 #define HAS_GMCH(i915)			(DISPLAY_INFO(i915)->has_gmch)
 #define HAS_HW_SAGV_WM(i915)		(DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
 #define HAS_IPC(i915)			(DISPLAY_INFO(i915)->has_ipc)
-#define HAS_IPS(i915)			(IS_HASWELL_ULT(i915) || IS_BROADWELL(i915))
+#define HAS_IPS(__display)		((__display)->platform.haswell_ult || (__display)->platform.broadwell)
 #define HAS_LRR(i915)			(DISPLAY_VER(i915) >= 12)
 #define HAS_LSPCON(i915)		(IS_DISPLAY_VER(i915, 9, 10))
 #define HAS_MBUS_JOINING(i915)		(IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
-- 
2.39.5

