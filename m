Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6FDCADFD3
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 19:27:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B0FD10E4BA;
	Mon,  8 Dec 2025 18:27:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I0M5fRk4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D44A910E4B8;
 Mon,  8 Dec 2025 18:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765218441; x=1796754441;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bL2DABflXfk8tuQ8pxpZR9OC+P+7ALXWBq63vhLjESY=;
 b=I0M5fRk4uD4rEOAGIh01WkinKdM41V3TQ2jYIem6oqCYY3dSzPCbTDmo
 vD2MHl2Azxzv+JbGQRUsS1sbq0emEMfhzB7Vl7BjPy1bO5ucyydkQARi6
 G6geZ1yHPEP9/GSMYEa16Nujey4uL1rDQdFiZqxU3/INuhG3tRuWy3L+Q
 X848km5isOB0MjdP4Danq9p2U3Pwzs91+BG6ZFpr8U6kvFx0oVoE5voOv
 zByTYiYMptLKa0X/sAU+F0JZ+wynJXzGyeKyMcmhTLYs1n8o440+W3TYC
 oR3796MmzWTBZERXok+U6pLqYkMPPq6bOXIRrdduUSqT9zJ9yrje1F2GE w==;
X-CSE-ConnectionGUID: vuVhnIYYSby8b3ssdqa2BQ==
X-CSE-MsgGUID: pq4aC8/1RJC1eJR8isvhyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67051318"
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="67051318"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:20 -0800
X-CSE-ConnectionGUID: z3P8oDZEQIGFlPKVSZkTIw==
X-CSE-MsgGUID: /sr0iH6wTjKwwNDy7PHtdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="196460514"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:19 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 10/19] drm/i915/de: Simplify intel_de_read8()
Date: Mon,  8 Dec 2025 20:26:28 +0200
Message-ID: <20251208182637.334-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251208182637.334-1-ville.syrjala@linux.intel.com>
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_de_read8() is only needed for VGA register MMIO access
by the CRT code on gen2/3. Remove the redundant wakelock stuff,
and add a platform check to make sure this won't get used on
any platform where MMIO VGA register accesses don't work.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index a7ce3b875e06..5c1b37d30045 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -6,6 +6,8 @@
 #ifndef __INTEL_DE_H__
 #define __INTEL_DE_H__
 
+#include <drm/drm_print.h>
+
 #include "intel_display_core.h"
 #include "intel_dmc_wl.h"
 #include "intel_dsb.h"
@@ -34,15 +36,10 @@ intel_de_read(struct intel_display *display, i915_reg_t reg)
 static inline u8
 intel_de_read8(struct intel_display *display, i915_reg_t reg)
 {
-	u8 val;
+	/* this is only used on VGA registers (possible on pre-g4x) */
+	drm_WARN_ON(display->drm, DISPLAY_VER(display) >= 5 || display->platform.g4x);
 
-	intel_dmc_wl_get(display, reg);
-
-	val = intel_uncore_read8(__to_uncore(display), reg);
-
-	intel_dmc_wl_put(display, reg);
-
-	return val;
+	return intel_uncore_read8(__to_uncore(display), reg);
 }
 
 static inline u64
-- 
2.51.2

