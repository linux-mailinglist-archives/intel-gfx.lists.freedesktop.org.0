Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A27B39CFE
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 14:21:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6A5210E995;
	Thu, 28 Aug 2025 12:21:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nAPOXMZN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 159CD10E990;
 Thu, 28 Aug 2025 12:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383693; x=1787919693;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8Suy7m3gh6o923BwWhTe/QR2Y+6cXiyTXQStnCFFP90=;
 b=nAPOXMZNTrhREG0mVL4Kl1J6kG6Z22ap2NTUfnOMBttOxzc1huWT/BHo
 mKHVr1LSlk5LPQibP3WPpU4YDY3s8GhUvM6MPMXbat/lREkb00q/O1/e+
 ruzCXkORAIRlqAlrncGlS18vq9fcgn41kHb5wnUUXVl31cICNgU9Jao0A
 VBqxxc6PrYgS3yaQ/OInA7nezbGfdUxnXPWn9Vnz78cXs+4rsAdrj6004
 /vELxocopxAWvMZGhVb6co+WBEJX9GbMWGaE5iFLvy5u/eubbYLY6MItc
 U1uIf4M3JuNa4bQeS2746w1d2G9YJeV3H7Pd0JH/YkGVCTr/HnrmFionL w==;
X-CSE-ConnectionGUID: q00EZ2a2QDmECpVYvbUoyQ==
X-CSE-MsgGUID: GI3bw2CARHqYzcnCvYVVcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="57848635"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="57848635"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:33 -0700
X-CSE-ConnectionGUID: LUMCkUtBRfOmSZmerF4KAw==
X-CSE-MsgGUID: Nv4FV1JETOmuIwBexHaASg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="174270665"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 05/20] drm/i915/dsi-pll: use generic poll_timeout_us() instead
 of wait_for()
Date: Thu, 28 Aug 2025 15:20:47 +0300
Message-ID: <476fcc5aad9e2ddbf6d8c14bd5ff5cbf071c5dca.1756383233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756383233.git.jani.nikula@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
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

Prefer generic poll helpers over i915 custom helpers.

The functional change is losing the exponentially growing sleep of
wait_for(), which used to be 10, 20, 40, ..., 640, and 1280 us.

Use an arbitrary constant 500 us sleep instead. The timeout remains at
20 ms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index 83afe1315e96..f078b9cda96c 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -25,12 +25,12 @@
  *	Yogesh Mohan Marimuthu <yogesh.mohan.marimuthu@intel.com>
  */
 
+#include <linux/iopoll.h>
 #include <linux/kernel.h>
 #include <linux/string_helpers.h>
 
 #include <drm/drm_print.h>
 
-#include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dsi.h"
@@ -214,6 +214,8 @@ void vlv_dsi_pll_enable(struct intel_encoder *encoder,
 			const struct intel_crtc_state *config)
 {
 	struct intel_display *display = to_intel_display(encoder);
+	u32 val;
+	int ret;
 
 	drm_dbg_kms(display->drm, "\n");
 
@@ -231,9 +233,10 @@ void vlv_dsi_pll_enable(struct intel_encoder *encoder,
 
 	vlv_cck_write(display->drm, CCK_REG_DSI_PLL_CONTROL, config->dsi_pll.ctrl);
 
-	if (wait_for(vlv_cck_read(display->drm, CCK_REG_DSI_PLL_CONTROL) &
-						DSI_PLL_LOCK, 20)) {
-
+	ret = poll_timeout_us(val = vlv_cck_read(display->drm, CCK_REG_DSI_PLL_CONTROL),
+			      val & DSI_PLL_LOCK,
+			      500, 20 * 1000, false);
+	if (ret) {
 		vlv_cck_put(display->drm);
 		drm_err(display->drm, "DSI PLL lock failed\n");
 		return;
-- 
2.47.2

