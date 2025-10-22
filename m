Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85237BFBCDC
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 14:14:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E58B910E769;
	Wed, 22 Oct 2025 12:14:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IOfKnT+F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D60BB10E768;
 Wed, 22 Oct 2025 12:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761135296; x=1792671296;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=V1KCMkUrQZz7PtKox6e702RfbV8ycbn/E6qgMKBBXiE=;
 b=IOfKnT+FqRrcJXYaJ78grg/oH9KPlmfypNNlhXDFV/Yx5m7Uy9xjKJ2J
 NqKuL5BBfedOe0DCzIXslNqP8uolt80uBF46MlEi+wsdBxrrS5XYuhi+F
 5z08lyRh74Z+9++2vzWORDzzpIiYevr7TldiGF9zfiPdw73H+q5a57zJV
 vPcDGceEnWmovZP8eYGHWmg91aHg4a60ZCd6IEb5mNnscCzQFlfdOQUHw
 WhHLlRKEgTnNBjorFEqWTh8pqd4svfCgv6FRO+20fS5tBbuAyIRJUD8B+
 YKzeicpUwdyJRjodiQWp8/gxJtWwlF4gK9lEmygjFMQ8r6p9zHBvIL4lk g==;
X-CSE-ConnectionGUID: IJH5JATeTiOzsqnfnIwj0Q==
X-CSE-MsgGUID: bBwdofADTIaUlBrWZQjyWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="80909085"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="80909085"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 05:14:56 -0700
X-CSE-ConnectionGUID: DYHvc2swSIClGsVsRUu+jg==
X-CSE-MsgGUID: LzV2EriSR7CL5bN09JLBkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="183028280"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.104])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 05:14:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/2] drm/i915/display: drop a few unnecessary i915_drv.h
 includes
Date: Wed, 22 Oct 2025 15:14:49 +0300
Message-ID: <20251022121450.452649-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
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

We've stopped using struct drm_i915_private in intel_fb.c and
skl_universal_plane.c, so we can drop the i915_drv.h includes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c            | 1 -
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 ++-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 3958628c73e9..6ade38198f39 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -10,7 +10,6 @@
 #include <drm/drm_gem.h>
 #include <drm/drm_modeset_helper.h>
 
-#include "i915_drv.h"
 #include "i915_utils.h"
 #include "intel_bo.h"
 #include "intel_display.h"
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 0319174adf95..765d288cce2b 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -7,9 +7,9 @@
 #include <drm/drm_blend.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_fourcc.h>
+#include <drm/drm_print.h>
 
 #include "pxp/intel_pxp.h"
-#include "i915_drv.h"
 #include "i915_utils.h"
 #include "intel_bo.h"
 #include "intel_de.h"
@@ -24,6 +24,7 @@
 #include "intel_plane.h"
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
+#include "intel_step.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 #include "skl_universal_plane_regs.h"
-- 
2.47.3

