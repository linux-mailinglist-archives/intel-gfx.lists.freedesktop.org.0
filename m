Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FDECEBDC2
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Dec 2025 12:26:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D03D10E2BC;
	Wed, 31 Dec 2025 11:26:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MuXDgUJB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7274110E2BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Dec 2025 11:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767180392; x=1798716392;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2Vh07GA8BU7uxbk2/lOHUdRtMTciJraOS4UettvGSTs=;
 b=MuXDgUJBZ7+8S715/una2V5Vqairlj4VlgcMhkgZ2dyC0BxH9q6VFqwO
 ERuAuU8V0cj+wM9HU9FcmXV7A47O3sU+mvvDFoJDueQvch8LyII9PbM0f
 Hhl0ZSmCF5lO/D8qNm0NHDddZcz7L6VBFnJNuQkRc16jlQg6oOqnMvORZ
 aASxBRs2+MpDI8GEXnylYnsA2tXfJ1q3sPL0zZGPXv2s3VR6IHWb5GOvA
 dpNu2V55KZNMVCLGaJYWvpTsaeDs1RTxJScVUcp7UCYfWG66bjPSKV2L+
 AS/s3yjCfgjcx4JD39XzOKTsyGbweOJO+KSZzirGgGV6JekF2ii0Prhs+ w==;
X-CSE-ConnectionGUID: G47/TNsFRG6q9n55WmZJ6Q==
X-CSE-MsgGUID: Dj1SXY6URyClOgV/12GxDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11657"; a="68817569"
X-IronPort-AV: E=Sophos;i="6.21,191,1763452800"; d="scan'208";a="68817569"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2025 03:26:31 -0800
X-CSE-ConnectionGUID: KB3+7B/TQO6ecCtkK64hdA==
X-CSE-MsgGUID: EG5WOycYTDKthfibnsM3kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,191,1763452800"; d="scan'208";a="200550233"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2025 03:26:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH 3/5] drm/i915/gvt: reduce include of gt/intel_engine_regs.h
Date: Wed, 31 Dec 2025 13:26:09 +0200
Message-ID: <2f5440016b5d164a6f3889565761caa17cccd4b7.1767180318.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767180318.git.jani.nikula@intel.com>
References: <cover.1767180318.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Move IS_RESTORE_INHIBIT() to scheduler.c, along with the
gt/intel_engine_regs.h include.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gvt/handlers.c     | 1 +
 drivers/gpu/drm/i915/gvt/mmio_context.h | 5 -----
 drivers/gpu/drm/i915/gvt/scheduler.c    | 4 ++++
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 68afd9b046d4..bd20f287720f 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -61,6 +61,7 @@
 #include "display/skl_watermark_regs.h"
 #include "display/vlv_dsi_pll_regs.h"
 
+#include "gt/intel_engine_regs.h"
 #include "gt/intel_gt_regs.h"
 
 #include "display_helpers.h"
diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.h b/drivers/gpu/drm/i915/gvt/mmio_context.h
index a821edf574dd..c0e3695e3bbe 100644
--- a/drivers/gpu/drm/i915/gvt/mmio_context.h
+++ b/drivers/gpu/drm/i915/gvt/mmio_context.h
@@ -38,8 +38,6 @@
 
 #include <linux/types.h>
 
-#include "gt/intel_engine_regs.h"
-
 struct i915_request;
 struct intel_context;
 struct intel_engine_cs;
@@ -57,7 +55,4 @@ bool is_inhibit_context(struct intel_context *ce);
 int intel_vgpu_restore_inhibit_context(struct intel_vgpu *vgpu,
 				       struct i915_request *req);
 
-#define IS_RESTORE_INHIBIT(a) \
-	IS_MASKED_BITS_ENABLED(a, CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT)
-
 #endif
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index 6b5ee40a4386..15fdd514ca83 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -40,6 +40,7 @@
 #include "gem/i915_gem_pm.h"
 
 #include "gt/intel_context.h"
+#include "gt/intel_engine_regs.h"
 #include "gt/intel_execlists_submission.h"
 #include "gt/intel_gt_regs.h"
 #include "gt/intel_lrc.h"
@@ -54,6 +55,9 @@
 #define RING_CTX_OFF(x) \
 	offsetof(struct execlist_ring_context, x)
 
+#define IS_RESTORE_INHIBIT(a) \
+	IS_MASKED_BITS_ENABLED(a, CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT)
+
 static void set_context_pdp_root_pointer(
 		struct execlist_ring_context *ring_context,
 		u32 pdp[8])
-- 
2.47.3

