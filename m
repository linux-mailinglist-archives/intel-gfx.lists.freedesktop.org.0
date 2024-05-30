Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 555068D4947
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2024 12:08:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07EC510E4B4;
	Thu, 30 May 2024 10:07:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ox8wbcn+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AE6610F62C
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2024 10:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717063675; x=1748599675;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OkRYfEhUhBHbLCmGgI5MGhczEHNPv4q1RJ+2vTZI6Ok=;
 b=Ox8wbcn+K4DWT9CmM+bM1HZvTl0nIO2CtVYL/gEjMdCVd4QAigVndUU0
 hXWS6bKWryxKKgVQ+GjOQKER5lCgACx5uAYOyzdrQp5OOXh4hDCcPnPcO
 dc2wGgaT5LyuTAx6ZdYRCmT+dlkNvSnLJDwsRO2wAeiDWj9wdrYN2rxtT
 fiq11KmSjtzgFGb4RiQRHS3sv0Ap8E8awiFomRMekTXNzbT+KB5ZGJhea
 428mV3jL5gri9APNmSN6TMM+x1Q16LN/wvppeBJWrBCUdNPW5umm1XT2B
 vNgYfIMrPX0+qaeTZf0P/oTsFYAQeB06wIqZ6H0megoDEFBJAlh3tbJhO w==;
X-CSE-ConnectionGUID: 0oslDqbLR9CmrkWiL45HRQ==
X-CSE-MsgGUID: wLS9T8oCTC62aCKUIftCpQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="38923363"
X-IronPort-AV: E=Sophos;i="6.08,201,1712646000"; d="scan'208";a="38923363"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2024 03:07:53 -0700
X-CSE-ConnectionGUID: 5OF10+6NSW6tmrnCWpUoUw==
X-CSE-MsgGUID: aYPVOo7mSZqTaGeQnHygZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,201,1712646000"; d="scan'208";a="40211610"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.132])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2024 03:07:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/2] drm/i915: drop unnecessary i915_reg.h includes
Date: Thu, 30 May 2024 13:07:46 +0300
Message-Id: <20240530100747.328631-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

With the register header refactoring, some of the includes of i915_reg.h
have become unnecessary. Remove.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/dvo_ns2501.c         | 1 -
 drivers/gpu/drm/i915/display/intel_atomic.c       | 1 -
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 1 -
 drivers/gpu/drm/i915/display/intel_dkl_phy.c      | 1 -
 drivers/gpu/drm/i915/display/intel_dsb.c          | 1 -
 drivers/gpu/drm/i915/display/intel_sprite.c       | 1 -
 drivers/gpu/drm/i915/display/intel_vdsc.c         | 1 -
 7 files changed, 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/dvo_ns2501.c b/drivers/gpu/drm/i915/display/dvo_ns2501.c
index 1df212fb000e..21486008dae9 100644
--- a/drivers/gpu/drm/i915/display/dvo_ns2501.c
+++ b/drivers/gpu/drm/i915/display/dvo_ns2501.c
@@ -27,7 +27,6 @@
  */
 
 #include "i915_drv.h"
-#include "i915_reg.h"
 #include "intel_display_types.h"
 #include "intel_dvo_dev.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 7a77ae3dc394..76aa10b6f647 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -35,7 +35,6 @@
 #include <drm/drm_fourcc.h>
 
 #include "i915_drv.h"
-#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_cdclk.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index a2a827070c33..a4ce39a7f265 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -39,7 +39,6 @@
 #include <drm/drm_fourcc.h>
 
 #include "i915_config.h"
-#include "i915_reg.h"
 #include "i9xx_plane_regs.h"
 #include "intel_atomic_plane.h"
 #include "intel_cdclk.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
index a001232ad445..b146b4c46943 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
@@ -4,7 +4,6 @@
  */
 
 #include "i915_drv.h"
-#include "i915_reg.h"
 
 #include "intel_de.h"
 #include "intel_display.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 4baaa92ceaec..bcc9de047fac 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -6,7 +6,6 @@
 
 #include "i915_drv.h"
 #include "i915_irq.h"
-#include "i915_reg.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 36a253a19c74..e1c907f601da 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -39,7 +39,6 @@
 #include <drm/drm_rect.h>
 
 #include "i915_drv.h"
-#include "i915_reg.h"
 #include "i9xx_plane.h"
 #include "intel_atomic_plane.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 17d6572f9d0a..d76e70846a8c 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -10,7 +10,6 @@
 #include <drm/display/drm_dsc_helper.h>
 
 #include "i915_drv.h"
-#include "i915_reg.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
-- 
2.39.2

