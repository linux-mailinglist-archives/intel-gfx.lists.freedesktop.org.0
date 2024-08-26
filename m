Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D41AA95F69D
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 18:32:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7920F10E242;
	Mon, 26 Aug 2024 16:31:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g4RB/u/E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FB9B10E242;
 Mon, 26 Aug 2024 16:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724689918; x=1756225918;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W62q1QpNLRCKJB3b4qHIsD1E9+JrAa5lSQTUiu0yHpw=;
 b=g4RB/u/E6qELBO4W+ebi+XdvvsysvuoDwEEW785RUnRxhMeDHJJUL/cc
 +ndnClcocoyXqOa0MMb37ZDlSS93vGZvrsgxEyloeg9FMaMsonT+BpXki
 qaWYNGjBIXAe/o53ZfLNy4u6EsD1l5W7p5N+iexdWhoKZf26qof/KTgV1
 IE11XyN+M3OCETu8+nFeY++uzYkGFCQuThP4JcP8iT+l0nShOlBt+GbxM
 /v70qLAmiu3+TsPfzML6IKy5MXXZAEu3JcDFUC/s3r7PjphtoXHN2L4QO
 3ceE2PIAyFL+IrpmIQt3yT8MDVCmNdrDkc071OzX5zN87l165mGf4jY/y w==;
X-CSE-ConnectionGUID: LQRteo4XRD6nLRaYF+RNJQ==
X-CSE-MsgGUID: uQ8q/+C6RWqf4IAvS8+YSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="22991581"
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="22991581"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 09:31:58 -0700
X-CSE-ConnectionGUID: jDDP6u1SSsWUbK4lmK5oQQ==
X-CSE-MsgGUID: GhFEA12hSr6JcUPejFRf9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="62529182"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.169])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 09:31:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/7] drm/i915/display: include drm/drm_vblank.h where needed
Date: Mon, 26 Aug 2024 19:31:17 +0300
Message-Id: <0cdb855398ff21e520ef8839b9d00ded40b85fd0.1724689818.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724689818.git.jani.nikula@intel.com>
References: <cover.1724689818.git.jani.nikula@intel.com>
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

Stop including drm/drm_vblank.h in intel_display_types.h and only
include it where needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c          | 1 +
 drivers/gpu/drm/i915/display/intel_cursor.c        | 1 +
 drivers/gpu/drm/i915/display/intel_display.c       | 1 +
 drivers/gpu/drm/i915/display/intel_display_irq.c   | 2 ++
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 -
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 1 +
 drivers/gpu/drm/i915/display/intel_vblank.c        | 2 ++
 7 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 1b578cad2813..4218f746691e 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -9,6 +9,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_plane.h>
+#include <drm/drm_vblank.h>
 #include <drm/drm_vblank_work.h>
 
 #include "i915_vgpu.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 9ad53e1cbbd0..805e0af21a45 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -9,6 +9,7 @@
 #include <drm/drm_blend.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_fourcc.h>
+#include <drm/drm_vblank.h>
 
 #include "i915_reg.h"
 #include "intel_atomic.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9049b9a1209d..8b1d1a188e4a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -43,6 +43,7 @@
 #include <drm/drm_fourcc.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_rect.h>
+#include <drm/drm_vblank.h>
 
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_object.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index afcd2af82942..5d230a979c6f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -3,6 +3,8 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include <drm/drm_vblank.h>
+
 #include "gt/intel_rps.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 56ed24928f4c..e0e0bf6d67bf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -41,7 +41,6 @@
 #include <drm/drm_fourcc.h>
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_rect.h>
-#include <drm/drm_vblank.h>
 #include <drm/drm_vblank_work.h>
 #include <drm/intel/i915_hdcp_interface.h>
 #include <media/cec-notifier.h>
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 6f85f5352455..53d4a86328a5 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -8,6 +8,7 @@
 
 #include <drm/drm_atomic_uapi.h>
 #include <drm/drm_atomic_state_helper.h>
+#include <drm/drm_vblank.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 838b55ecb1d8..7fa3da216e40 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -3,6 +3,8 @@
  * Copyright © 2022-2023 Intel Corporation
  */
 
+#include <drm/drm_vblank.h>
+
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_color.h"
-- 
2.39.2

