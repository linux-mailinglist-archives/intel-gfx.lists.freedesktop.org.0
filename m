Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8C9C631C5
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 10:17:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44B6510E32A;
	Mon, 17 Nov 2025 09:17:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NXsv0VuR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCB2210E319;
 Mon, 17 Nov 2025 09:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763371022; x=1794907022;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oHU+ZOipKTL+IgTyu+x8mCVabSEONw093Br0B4R8oxU=;
 b=NXsv0VuRSNQTmwwBF57q21ih+28Rao+nrG9YL56FlXchPRjih5IHHwjG
 NHMjcF0wOa2YdGa1cYWblb2mmSDBSJS3s1XwjsG9iq6o4ZjiARPTSBXwF
 QKTCrqLrhw9obCzNn0NdoZrOYiQ55z/QQCUbbV5DtGtQ8ts77jQCaiRlg
 CU0SG3rM7xSD/wmHyPSsIlF/LYzEkJpoRKe0J+0YJGrDxli5nnOq0upu2
 qZry2ZBtS7JnY7ze6jHsIB2oWpUzOEFk9QYwRiNxsET9dGRvuRUSfYzBm
 HLNnOH3HlCZM3ngZmoxYlGcKdMq972OZwTFsEZTJS03a9FaDwuUKOsRMx w==;
X-CSE-ConnectionGUID: 6OQ2tJqMQ8mv0PyFzCGrvQ==
X-CSE-MsgGUID: jvb42t3wT7eMlJuiJB86hQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="64367500"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="64367500"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 01:17:01 -0800
X-CSE-ConnectionGUID: NzPq/XHqRrueByksm7zNdQ==
X-CSE-MsgGUID: x/y3kAxJQTm2qTIfvt051w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="189648230"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.42])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 01:17:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [CI 08/10] drm/i915/rps: postpone i915 fence check to boost
Date: Mon, 17 Nov 2025 11:16:15 +0200
Message-ID: <2653395523ee04c9ca3216f197f08c25a9f7716d.1763370931.git.jani.nikula@intel.com>
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

Make the RPS boost code independent of i915 request code by moving the
dma_fence_is_i915() check to the RPS boost call.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_rps.c | 4 ----
 drivers/gpu/drm/i915/gt/intel_rps.c              | 7 ++++++-
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
index d639d9152bf5..e77811396474 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rps.c
+++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
@@ -9,7 +9,6 @@
 #include <drm/drm_vblank.h>
 
 #include "i915_reg.h"
-#include "i915_request.h"
 #include "intel_display_core.h"
 #include "intel_display_irq.h"
 #include "intel_display_rps.h"
@@ -54,9 +53,6 @@ void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
 	if (!intel_parent_rps_available(display))
 		return;
 
-	if (!dma_fence_is_i915(fence))
-		return;
-
 	if (DISPLAY_VER(display) < 6)
 		return;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index c42a1ee42b58..d233dc122bd7 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -2917,7 +2917,12 @@ EXPORT_SYMBOL_GPL(i915_gpu_turbo_disable);
 
 static void boost_if_not_started(struct dma_fence *fence)
 {
-	struct i915_request *rq = to_request(fence);
+	struct i915_request *rq;
+
+	if (!dma_fence_is_i915(fence))
+		return;
+
+	rq = to_request(fence);
 
 	if (!i915_request_started(rq))
 		intel_rps_boost(rq);
-- 
2.47.3

