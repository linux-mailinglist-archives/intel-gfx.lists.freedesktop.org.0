Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4861ECEBDBF
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Dec 2025 12:26:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D193010E9AF;
	Wed, 31 Dec 2025 11:26:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Emy0Ftaw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C75A110E9AF
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Dec 2025 11:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767180387; x=1798716387;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qvI2oYw8tzXDfMwu3FF6S3ZWbIgtFd0Z4+neyRjbkGk=;
 b=Emy0Ftaw1Y1RDhn3RoszSJjFstxTho7U9RSsUgf+se3fHPixzFXxXL8U
 BcKrB3KRsNsIHX952dAf3Z2y/sM0FbE5xziuIBQvIaoXwG9FVV2tRUlha
 wA7kp6ZieNQCvsahDcch6XSOwm06Gehr2iN/FcBADAFXNWI7SvFHMZjXD
 WuNyXoFlAKJBK2NL7Thy4zKP4CCVWBcay+E1O8UOGGDcJtRnQmLQSGaqD
 wZjrNm9cD7BTnUEq16Nlrq/bnQDD2wUxebxX7z3Pyf/Lsu97oicll6CHG
 oVdKZ+jbugnkBGiJuvohqOCJgfGdByAT2mZz553b4u+yt3J9oyZ277dLN g==;
X-CSE-ConnectionGUID: k4HwbsKJTNCIpkGGstnmvw==
X-CSE-MsgGUID: Ux+Y4ViNTzGeW1jprDnTDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11657"; a="68817567"
X-IronPort-AV: E=Sophos;i="6.21,191,1763452800"; d="scan'208";a="68817567"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2025 03:26:27 -0800
X-CSE-ConnectionGUID: O1BL4AKHTy63II3sORVxXQ==
X-CSE-MsgGUID: pdkmyIjRRliL/ouZwQZ9xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,191,1763452800"; d="scan'208";a="200550221"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2025 03:26:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH 2/5] drm/i915/gvt: include sched_policy.h only where needed
Date: Wed, 31 Dec 2025 13:26:08 +0200
Message-ID: <2807f82cf571ed6e736242bdfad786efcad50f02.1767180318.git.jani.nikula@intel.com>
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

Not everything needs sched_policy.h. Drop it from gvt.h, and include
where needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gvt/gvt.h          | 1 -
 drivers/gpu/drm/i915/gvt/handlers.c     | 1 +
 drivers/gpu/drm/i915/gvt/kvmgt.c        | 1 +
 drivers/gpu/drm/i915/gvt/sched_policy.c | 1 +
 drivers/gpu/drm/i915/gvt/scheduler.c    | 1 +
 drivers/gpu/drm/i915/gvt/vgpu.c         | 1 +
 6 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
index 965d94610d56..9adcdecadaa8 100644
--- a/drivers/gpu/drm/i915/gvt/gvt.h
+++ b/drivers/gpu/drm/i915/gvt/gvt.h
@@ -54,7 +54,6 @@
 #include "mmio_context.h"
 #include "page_track.h"
 #include "reg.h"
-#include "sched_policy.h"
 #include "scheduler.h"
 
 #define GVT_MAX_VGPU 8
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 04cfe0997cde..68afd9b046d4 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -69,6 +69,7 @@
 #include "i915_pvinfo.h"
 #include "i915_reg.h"
 #include "intel_mchbar_regs.h"
+#include "sched_policy.h"
 
 /* XXX FIXME i915 has changed PP_XXX definition */
 #define PCH_PP_STATUS  _MMIO(0xc7200)
diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index b3739c9fcc48..009aa2df7958 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -52,6 +52,7 @@
 #include "gvt.h"
 #include "i915_drv.h"
 #include "intel_gvt.h"
+#include "sched_policy.h"
 
 MODULE_IMPORT_NS("DMA_BUF");
 MODULE_IMPORT_NS("I915_GVT");
diff --git a/drivers/gpu/drm/i915/gvt/sched_policy.c b/drivers/gpu/drm/i915/gvt/sched_policy.c
index df787472b1cf..9736a15a896f 100644
--- a/drivers/gpu/drm/i915/gvt/sched_policy.c
+++ b/drivers/gpu/drm/i915/gvt/sched_policy.c
@@ -33,6 +33,7 @@
 
 #include "gvt.h"
 #include "i915_drv.h"
+#include "sched_policy.h"
 
 static bool vgpu_has_pending_workload(struct intel_vgpu *vgpu)
 {
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index a91accfd371d..6b5ee40a4386 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -49,6 +49,7 @@
 #include "i915_drv.h"
 #include "i915_gem_gtt.h"
 #include "i915_perf_oa_regs.h"
+#include "sched_policy.h"
 
 #define RING_CTX_OFF(x) \
 	offsetof(struct execlist_ring_context, x)
diff --git a/drivers/gpu/drm/i915/gvt/vgpu.c b/drivers/gpu/drm/i915/gvt/vgpu.c
index a12011410874..96d0bd1fa337 100644
--- a/drivers/gpu/drm/i915/gvt/vgpu.c
+++ b/drivers/gpu/drm/i915/gvt/vgpu.c
@@ -38,6 +38,7 @@
 #include "gvt.h"
 #include "i915_drv.h"
 #include "i915_pvinfo.h"
+#include "sched_policy.h"
 
 void populate_pvinfo_page(struct intel_vgpu *vgpu)
 {
-- 
2.47.3

