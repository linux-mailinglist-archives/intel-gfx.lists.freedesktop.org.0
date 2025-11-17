Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2257BC631CC
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 10:17:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEFC110E35B;
	Mon, 17 Nov 2025 09:17:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H1msKsXQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BC0410E314;
 Mon, 17 Nov 2025 09:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763371032; x=1794907032;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+hxh4SJsJ4+nEJvGz8joZ8ANyYCFeur0qBwc3aJ9WO0=;
 b=H1msKsXQwKiEhUSs8AfnsAntqrzHN3Ozyy+aTqBaupHHDo4ecaLUPkIn
 ZJTREuagGwU7IQF0sM+RKaibERYb3Ej04Ha3/JkeM6UO9100cgV/FFgF6
 9EFO68K1oDCFWJv4E2K/MPlsY7IwQeRqILERg/wkiH7uzn6Z0lxT2wO4N
 GRAsob6m0ahH2Z+WY8LdnI5LXTJifz4urCGLvw+cQcO7IPASPaO7/IFn6
 N8Mg+d2I9sfD/H/Yp0pxh9yFDhM+aO52ABVBzDEaH2WW+IfFR5rlgCmKW
 L6oQuA+jkyWI1lp4sLOwgFr+DZTAlPn7c1r/f6L4V8S/JqYYLyR39Nab0 A==;
X-CSE-ConnectionGUID: OTOp2W8ETVqvEQKW7+fzXA==
X-CSE-MsgGUID: OBGX+obSRc2kU9sDHmWSIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="64367535"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="64367535"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 01:17:12 -0800
X-CSE-ConnectionGUID: fny2wq3WTEa1s/CbRfVDjA==
X-CSE-MsgGUID: /QeuGKhHRNipjM5tQ9NRKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="189648280"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.42])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 01:17:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [CI 10/10] drm/xe/rps: build RPS as part of xe
Date: Mon, 17 Nov 2025 11:16:17 +0200
Message-ID: <93df0bb727fce14aa9a542dbd2c0826a0fa0a16f.1763370931.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763370930.git.jani.nikula@intel.com>
References: <cover.1763370930.git.jani.nikula@intel.com>
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

Reduce the conditional compilation in i915 by building
intel_display_rps.c as part of the xe module. This doesn't actually
enable RPS on xe, because there's no parent interface implementation on
xe side, but it's a step in the right direction.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_rps.h  | 21 -------------------
 drivers/gpu/drm/xe/Makefile                   |  1 +
 2 files changed, 1 insertion(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.h b/drivers/gpu/drm/i915/display/intel_display_rps.h
index 183d154f2c7c..96b1fd00ead4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rps.h
+++ b/drivers/gpu/drm/i915/display/intel_display_rps.h
@@ -13,7 +13,6 @@ struct drm_crtc;
 struct intel_atomic_state;
 struct intel_display;
 
-#ifdef I915
 void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
 					  struct dma_fence *fence);
 void intel_display_rps_mark_interactive(struct intel_display *display,
@@ -22,25 +21,5 @@ void intel_display_rps_mark_interactive(struct intel_display *display,
 void ilk_display_rps_enable(struct intel_display *display);
 void ilk_display_rps_disable(struct intel_display *display);
 void ilk_display_rps_irq_handler(struct intel_display *display);
-#else
-static inline void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
-							struct dma_fence *fence)
-{
-}
-static inline void intel_display_rps_mark_interactive(struct intel_display *display,
-						      struct intel_atomic_state *state,
-						      bool interactive)
-{
-}
-static inline void ilk_display_rps_enable(struct intel_display *display)
-{
-}
-static inline void ilk_display_rps_disable(struct intel_display *display)
-{
-}
-static inline void ilk_display_rps_irq_handler(struct intel_display *display)
-{
-}
-#endif
 
 #endif /* __INTEL_DISPLAY_RPS_H__ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index c2d2303a8198..1a3aa041820d 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -259,6 +259,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_display_power_map.o \
 	i915-display/intel_display_power_well.o \
 	i915-display/intel_display_rpm.o \
+	i915-display/intel_display_rps.o \
 	i915-display/intel_display_trace.o \
 	i915-display/intel_display_utils.o \
 	i915-display/intel_display_wa.o \
-- 
2.47.3

