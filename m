Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A970EAB4FC4
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 11:29:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D21D10E548;
	Tue, 13 May 2025 09:29:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fr53r5jt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 367EF10E548;
 Tue, 13 May 2025 09:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747128552; x=1778664552;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5sYO3ghUIWMj6MyTNFbcsZnGcZhgEy+c5sV93haQbas=;
 b=Fr53r5jtcLMlhQ2ShJtaQPNHdg4mnYpE4Arxc7lTHmXMANSfuAmNEDkj
 TdDkEcqLeoVIYKofNbc+4P2UwP7Mi/ZbMYjKcZu0ErfezeRMzh75QWmca
 MX56EhsCpjho2Urg43nGy8ySegIwYSrvPTMUY2UgmGeXKF8NA9WoB3Hah
 Y14QUjYocPFucDytUrn/ZPF6xwiMguust/KycFyN0beH9l+PzVhzH6oxt
 WLCsaEF0lAvcvAXnY6ibWht0X2YJLssBwBF+5pDqidNZROcQNr+ExsgdU
 2EQ7YPXJDT7IpYbz6Li/q2Py+6NNJxHWOkAnZNeIQq6hhhQTMhjBD29mP w==;
X-CSE-ConnectionGUID: dzdQh0HbSp6JKl5aNwxEEQ==
X-CSE-MsgGUID: mIEWNq+DRKG285UYM+Tr0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="59194662"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="59194662"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 02:29:12 -0700
X-CSE-ConnectionGUID: jaowEjRzSBGmMEsq2Y5tuQ==
X-CSE-MsgGUID: PODBTPkzQY6Te4CrAB35Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="137511706"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 02:29:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/5] drm/i915/display: drop unnecessary includes on i915 core
 headers
Date: Tue, 13 May 2025 12:28:45 +0300
Message-Id: <6ca3be3e3fbbd99c169345c3add4b76315390e77.1747128495.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747128495.git.jani.nikula@intel.com>
References: <cover.1747128495.git.jani.nikula@intel.com>
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

These includes have become unnecessary. Drop them.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c    | 1 -
 drivers/gpu/drm/i915/display/intel_crt.c             | 1 -
 drivers/gpu/drm/i915/display/intel_display.c         | 1 -
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 1 -
 drivers/gpu/drm/i915/display/intel_dp.c              | 1 -
 drivers/gpu/drm/i915/display/intel_dsb.c             | 1 -
 6 files changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 1bcfa5f4fd63..15ede7678636 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -42,7 +42,6 @@
 #include <drm/drm_gem_atomic_helper.h>
 
 #include "gem/i915_gem_object.h"
-#include "i915_config.h"
 #include "i915_scheduler_types.h"
 #include "i915_vma.h"
 #include "i9xx_plane_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 38b50a779b6b..04ef729dae0b 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -34,7 +34,6 @@
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
-#include "i915_irq.h"
 #include "i915_reg.h"
 #include "intel_connector.h"
 #include "intel_crt.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 402f7204707a..1b09f8ae76ff 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -105,7 +105,6 @@
 #include "intel_panel.h"
 #include "intel_pch_display.h"
 #include "intel_pch_refclk.h"
-#include "intel_pcode.h"
 #include "intel_pfit.h"
 #include "intel_pipe_crc.h"
 #include "intel_plane_initial.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index a9b1ec4cf0f7..9df8995e5bac 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -13,7 +13,6 @@
 #include <drm/drm_fourcc.h>
 
 #include "hsw_ips.h"
-#include "i915_irq.h"
 #include "i915_reg.h"
 #include "i9xx_wm_regs.h"
 #include "intel_alpm.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 91a34d474463..21297bc4cc00 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -51,7 +51,6 @@
 #include <drm/drm_probe_helper.h>
 
 #include "g4x_dp.h"
-#include "i915_irq.h"
 #include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_alpm.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 481488d1fe67..393ea07947b4 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -7,7 +7,6 @@
 #include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
 
-#include "i915_irq.h"
 #include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_crtc.h"
-- 
2.39.5

