Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD909AEB6A1
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 13:37:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B31110E9F0;
	Fri, 27 Jun 2025 11:37:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bDsCc58u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A970A10E9ED;
 Fri, 27 Jun 2025 11:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751024259; x=1782560259;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=27D+kErQhakB2jnhMiZ27ggqdCYYEln9ii80r6zqSZ4=;
 b=bDsCc58uFj+3ZAngsYHukulqVpCppDJo47j+KJGUqAXYWvPnbLjb1lgT
 hdtOwOgovrueKBroHUY43WHNHlwFNzNXjzeIEQZ2ei8a1E4rVrN+NaDXU
 O4IUk8xWnUlZxVB3DZT7Qk+Nnk0J4a7dvfiZFc6zO0AisUfpfuKJbzwmC
 T4v8wrKnBwZ3tGE+8GQhND9cesAmlUpqcVHPTxM2BvI3UJkGRFzOATJSY
 wFgQTKqPph6xS/N7wdjP/2eZmFuIv2xIPG9QM6Brn0b/tOtl+HLIS7fkI
 sEbSr/dNLu30dv7qScSDMTfi8+mxbk0XafJ2i//uovJOspVSRwX6nE8Sy A==;
X-CSE-ConnectionGUID: erVBNb23RiuDT3IiWd8qEw==
X-CSE-MsgGUID: cHa4/IB+TCW+577o3fDKcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53460032"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53460032"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:39 -0700
X-CSE-ConnectionGUID: OHtz98HYReaFUaT45g/G4w==
X-CSE-MsgGUID: e31e1gQgS9mmg5EdezLjQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="157071357"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.146])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 13/18] drm/i915/vblank: use generic read_poll_timeout()
 instead of wait_for()
Date: Fri, 27 Jun 2025 14:36:27 +0300
Message-Id: <ae592521daa9955adfb65b592c6f87674b5ab512.1751023767.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1751023767.git.jani.nikula@intel.com>
References: <cover.1751023767.git.jani.nikula@intel.com>
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

Prefer generic poll helpers over i915 custom helpers.

The functional change is losing the exponentially growing sleep of
wait_for(), which used to be 10, 20, 40, ..., 640, and 1280 us.

Use an arbitrary constant 500 us sleep instead. The timeout remains at
100 ms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 70ba7aa26bf4..98ab7f03ec8d 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -3,6 +3,8 @@
  * Copyright © 2022-2023 Intel Corporation
  */
 
+#include <linux/iopoll.h>
+
 #include <drm/drm_vblank.h>
 
 #include "i915_drv.h"
@@ -492,9 +494,15 @@ static void wait_for_pipe_scanline_moving(struct intel_crtc *crtc, bool state)
 {
 	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
+	bool is_moving;
+	int ret;
 
 	/* Wait for the display line to settle/start moving */
-	if (wait_for(pipe_scanline_is_moving(display, pipe) == state, 100))
+	ret = read_poll_timeout(pipe_scanline_is_moving, is_moving,
+				is_moving == state,
+				500, 100 * 1000, false,
+				display, pipe);
+	if (ret)
 		drm_err(display->drm,
 			"pipe %c scanline %s wait timed out\n",
 			pipe_name(pipe), str_on_off(state));
-- 
2.39.5

