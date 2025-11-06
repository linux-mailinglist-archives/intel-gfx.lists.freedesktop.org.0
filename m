Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDB9C3BD48
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 15:43:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 430DB10E911;
	Thu,  6 Nov 2025 14:43:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EE5DGucd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00F3410E911;
 Thu,  6 Nov 2025 14:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762440219; x=1793976219;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NaqiF6A5tI9m08JCvqvD5IFbS7rBoxMwc1JdCJqry68=;
 b=EE5DGucdziyN/bvTuzlpdQeY2CuiHREZp+t92+7jNO0jqheDFCVym+oF
 i6zLaL8W6pqApveuGrykw0r0+Hr9wacGDyBEMI+bMng5ZK5SgB+bvAoUx
 2lTxzdknXzoHc/eSjjpoaVGMdA1u4vJyud4abAyVQCTmlpEjVr4OmHS6o
 DnH+obNeQQug3sASFXpRHEZKgXrqsD+XIRaeDOM3eAjqhHz2mGyCcHEVq
 VgYnm7wc5CcRgmrK9FADXQFPRVWluH/bqqiO6+R89yetyM9gr12zmVX4k
 Zf4y8g2rSOSlRmE7SxLbVjJyhqlunCaGDfKgUz3evip13z3v/Y8HmJ9MN A==;
X-CSE-ConnectionGUID: it6M92vcQDqTK1XeZ/EWkg==
X-CSE-MsgGUID: T2QXsGjLS+6Yg6cinAIRtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="68436889"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="68436889"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 06:43:39 -0800
X-CSE-ConnectionGUID: XduZ9pgyTtW5VVsjzm0+PQ==
X-CSE-MsgGUID: /d1b6YzXRsanLuorGWxfGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="187061725"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 06:43:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	tursulin@ursulin.net
Subject: [PATCH 4/5] drm/i915/rps: make fence priority setting part of the rps
 interface
Date: Thu,  6 Nov 2025 16:43:12 +0200
Message-ID: <57ac8c205046b495624b2dd17c987189f67839ea.1762440096.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1762440096.git.jani.nikula@intel.com>
References: <cover.1762440096.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

This is perhaps not ideal, but simplifies the interfaces, and allows us
to get rid of the compat header in xe.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_rps.c    |  2 ++
 drivers/gpu/drm/i915/display/intel_plane.c          |  6 +-----
 drivers/gpu/drm/i915/gt/intel_rps.c                 |  9 +++++++++
 .../xe/compat-i915-headers/gem/i915_gem_object.h    | 13 -------------
 include/drm/intel/display_parent_interface.h        |  1 +
 5 files changed, 13 insertions(+), 18 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h

diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
index 44cb9dba0c19..a2d57671c419 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rps.c
+++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
@@ -48,6 +48,8 @@ void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
 	if (!display->parent->rps)
 		return;
 
+	display->parent->rps->priority_display(fence);
+
 	if (DISPLAY_VER(display) < 6)
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 505c776c0585..28ee9502b596 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -45,7 +45,6 @@
 #include <drm/drm_panic.h>
 #include <drm/drm_print.h>
 
-#include "gem/i915_gem_object.h"
 #include "i9xx_plane_regs.h"
 #include "intel_cdclk.h"
 #include "intel_cursor.h"
@@ -1176,12 +1175,9 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 	if (ret < 0)
 		goto unpin_fb;
 
-	if (new_plane_state->uapi.fence) {
-		i915_gem_fence_wait_priority_display(new_plane_state->uapi.fence);
-
+	if (new_plane_state->uapi.fence)
 		intel_display_rps_boost_after_vblank(new_plane_state->hw.crtc,
 						     new_plane_state->uapi.fence);
-	}
 
 	/*
 	 * We declare pageflips to be interactive and so merit a small bias
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 05b21de6c24b..1af39198e0c5 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -2915,6 +2915,14 @@ bool i915_gpu_turbo_disable(void)
 }
 EXPORT_SYMBOL_GPL(i915_gpu_turbo_disable);
 
+static void priority_display(struct dma_fence *fence)
+{
+	if (!dma_fence_is_i915(fence))
+		return;
+
+	i915_gem_fence_wait_priority_display(fence);
+}
+
 static void boost(struct dma_fence *fence)
 {
 	struct i915_request *rq;
@@ -2948,6 +2956,7 @@ static void ilk_irq_handler(struct drm_device *drm)
 }
 
 const struct intel_display_rps_interface i915_display_rps_interface = {
+	.priority_display = priority_display,
 	.boost = boost,
 	.mark_interactive = mark_interactive,
 	.ilk_irq_handler = ilk_irq_handler,
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
deleted file mode 100644
index 0548b2e0316f..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
+++ /dev/null
@@ -1,13 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/* Copyright © 2025 Intel Corporation */
-
-#ifndef __I915_GEM_OBJECT_H__
-#define __I915_GEM_OBJECT_H__
-
-struct dma_fence;
-
-static inline void i915_gem_fence_wait_priority_display(struct dma_fence *fence)
-{
-}
-
-#endif
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 8920404545be..7614b35660c9 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -27,6 +27,7 @@ struct intel_display_rpm_interface {
 };
 
 struct intel_display_rps_interface {
+	void (*priority_display)(struct dma_fence *fence);
 	void (*boost)(struct dma_fence *fence);
 	void (*mark_interactive)(struct drm_device *drm, bool interactive);
 	void (*ilk_irq_handler)(struct drm_device *drm);
-- 
2.47.3

