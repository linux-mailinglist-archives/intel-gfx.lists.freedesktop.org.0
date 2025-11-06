Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F32BC3BD4B
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 15:43:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED4CB10E917;
	Thu,  6 Nov 2025 14:43:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JNEWL/u5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4E7910E90A;
 Thu,  6 Nov 2025 14:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762440224; x=1793976224;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0QNh6Y3pFTkmaYMlwNKOVseK8z8fueq5Q24XhQoHJ+U=;
 b=JNEWL/u56CD/Lx6le/jhcbQE03WFh24C0XrSRYzsjE3L09AD0XnTfghf
 AsIAHjS0oBk6Q+VnmVr5UYdbqBKestelSAVwGg5OU83R4Toz5iEYKRXBb
 WWifSYVFTLaqjnwdPE3Al/mZW622N9mvyxMCOJA0Z8z7RNPmW0YxHswDP
 Srh9d3Mwh5r592YPRVIO0ycG8g4/3arNkN7bc6W+twIYsLormz7BR3Zoq
 M6q/RTFOjdjyo83Pi36Wg1sVTbqoLZf4DO7wempqDqRQJ+NpVQ7+gmdqP
 OVsVX/PyayzHywzZPy82a7py0BbYbHh9Hh6iypN+T5B0haVfjgiN6NQiz Q==;
X-CSE-ConnectionGUID: jJhSLKivT3ufqqrVY8O25w==
X-CSE-MsgGUID: EMaL2nUzR8OQTDds0AJ8Yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75692799"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="75692799"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 06:43:44 -0800
X-CSE-ConnectionGUID: 2TO+SLPlSOSuTx4DOkoPKQ==
X-CSE-MsgGUID: H13ua2YoT1eKy4O22YZoBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="187488480"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 06:43:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	tursulin@ursulin.net
Subject: [PATCH 5/5] drm/xe/rps: build RPS as part of xe
Date: Thu,  6 Nov 2025 16:43:13 +0200
Message-ID: <78ea80e10e717dbc8b3249ba83e1254e85938237.1762440096.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1762440096.git.jani.nikula@intel.com>
References: <cover.1762440096.git.jani.nikula@intel.com>
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

Reduce the conditional compilation in i915 by building
intel_display_rps.c as part of the xe module. This doesn't actually
enable RPS on xe, but it's a step in the right direction.

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
index 7b4ca591a4ae..9b92468dca2b 100644
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

