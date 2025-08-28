Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B80CB39D14
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 14:22:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F27F010E99F;
	Thu, 28 Aug 2025 12:22:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OjmEeGNP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCB7C10E9A0;
 Thu, 28 Aug 2025 12:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383734; x=1787919734;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k/zp+yGUB5ooKfE80IOSsV5JIYx9PzMKiN2oGij6CCA=;
 b=OjmEeGNPrTMO1w9R4mmCSMhX8he0Q1AY7/IjOF00nbO9ftAWgzr6af4n
 p2rfIf91iCdZ4ftAPkM7yFmpmUdFcrWIUNhmKLSBnU66w2UvUx9pNd3vM
 NjnRGuBBhXkqMbQpzmhAv6fZ05jAbNXaoBFsFOZ8/hYpNw4yu418NtYzU
 uzwMjwPfQrH9KFRwOKlh7pnAftnbq/ur4tw1Ji4aCz2VB/sTC17wSc7pc
 dIGu3GaZ//bTaSAGVdTcA8oYwThjdX77xRKMQlWGwm13BghvrbgutaNJT
 kJDymoQlUbDxlygtcBWmLRF3iIn0Scesrwq9K1EEFxTIm5/RnZQFztTfx A==;
X-CSE-ConnectionGUID: EZuoU/tJS4WnZWnB/ZG8MQ==
X-CSE-MsgGUID: io3qNlCXS+ijYwaHONWU+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="84053266"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="84053266"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:22:13 -0700
X-CSE-ConnectionGUID: xpxqZHRmQM2PJOkGo0bO8w==
X-CSE-MsgGUID: cSNwx3OKRImDaq+MpLhU+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="170271259"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:22:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 14/20] drm/i915/vblank: use generic poll_timeout_us() instead
 of wait_for()
Date: Thu, 28 Aug 2025 15:20:56 +0300
Message-ID: <162dff5862d3213304491a6d2eb31a57346b523e.1756383233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756383233.git.jani.nikula@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
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
 drivers/gpu/drm/i915/display/intel_vblank.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 46d6db5fed11..c15234c1d96e 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -3,6 +3,8 @@
  * Copyright © 2022-2023 Intel Corporation
  */
 
+#include <linux/iopoll.h>
+
 #include <drm/drm_vblank.h>
 
 #include "i915_drv.h"
@@ -493,9 +495,14 @@ static void wait_for_pipe_scanline_moving(struct intel_crtc *crtc, bool state)
 {
 	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
+	bool is_moving;
+	int ret;
 
 	/* Wait for the display line to settle/start moving */
-	if (wait_for(pipe_scanline_is_moving(display, pipe) == state, 100))
+	ret = poll_timeout_us(is_moving = pipe_scanline_is_moving(display, pipe),
+			      is_moving == state,
+			      500, 100 * 1000, false);
+	if (ret)
 		drm_err(display->drm,
 			"pipe %c scanline %s wait timed out\n",
 			pipe_name(pipe), str_on_off(state));
-- 
2.47.2

