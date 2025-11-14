Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C00C4C5C91B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 11:27:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4603E10EA35;
	Fri, 14 Nov 2025 10:27:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="akAmUHg4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E63010EA37;
 Fri, 14 Nov 2025 10:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763116062; x=1794652062;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s5CXiERlZ2KqFLvrC6KgUA6sAp/ENyMgwjUFDmcgcGM=;
 b=akAmUHg46syqz8MDaI0qV+Ibf/RQnkCG2wKD3rd2gefnzLW3Dgc8fa2h
 nqohQh/L+LQn5LLU9ZAP/T8n+gM0LKw3l8HFulGdFuYDzdt3T4MVvDBHl
 53Za32pgef0VHhl5Ddnf/X79n2LLZ0pFT7gvXeuyuxH5vi+hEcQ7W3Tm4
 hTdnpGk5W8lvhGrNhmifaWEC8WGskpP2VKeMuYpjjHlAH2/l5egQAJnZ1
 36tFpVbwu+eR+66vfagH/RmMaoxbGgrf+xm3acgr+dZUkpVMDDHRXDTgI
 ZkHN4KziYQCgg8bWjzFfyRN/NkLbBnGc3MuTWGVrjnRAzU/kC5UIy6SRn w==;
X-CSE-ConnectionGUID: 9Zd0K/+KQ6KGLLLDm/9JVw==
X-CSE-MsgGUID: JsOt1/mhQRWUgDgcf6pwrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="64415908"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="64415908"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 02:27:42 -0800
X-CSE-ConnectionGUID: ljINX2HsSfi8ijGosnioSQ==
X-CSE-MsgGUID: rPkYiYukQ1CXAxpPHTBO/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="193859744"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 02:27:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 10/10] drm/xe/rps: build RPS as part of xe
Date: Fri, 14 Nov 2025 12:26:49 +0200
Message-ID: <c4f2a646f5fd41c68b6c536c222786f5ab7020ac.1763115899.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763115899.git.jani.nikula@intel.com>
References: <cover.1763115899.git.jani.nikula@intel.com>
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
enable RPS on xe, because there's no parent interface implementation on
xe side, but it's a step in the right direction.

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

