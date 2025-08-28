Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29297B39D00
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 14:21:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9876A10E991;
	Thu, 28 Aug 2025 12:21:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cbUZ+8g/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D32C10E335;
 Thu, 28 Aug 2025 12:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383697; x=1787919697;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1Saty0RyAkPEvHjOgtC2s2VNXAole3dS7AeT8fvKivg=;
 b=cbUZ+8g/a0yLxXOdHFDykUu8cXgh4jXBVjs43g3N59+Q0P4KYbHpOamq
 7E62S9T7+LbGID1XiJDV+VgKIO2iNLBVJri5/T8YI54cRQuQUrSQVZ4WV
 U92XE18HDmoBIwj/WadjQmtmO6LNtWADZT1SO7PlMrWp1uqGKJHysW3Ay
 RpFZ7KVUxc2YgOGih200++84FFru5VT1mcTec2bB2Z0zVifsGM7sHUIb9
 haD6w7OtAxL08Lut6cwTe4ZlCPgdSjTVUp7prcDshoLrbYI3iXDV6hn67
 aWmWY3it5EpeH7CnYD9OVJibdRFYSHfOdZyhWQVu03/Sa4Wn0ozzOvM2s Q==;
X-CSE-ConnectionGUID: gY3i/43rQhm298NhQBkISw==
X-CSE-MsgGUID: byRTibGbQouEaFQoIaaZIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="57848639"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="57848639"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:37 -0700
X-CSE-ConnectionGUID: qLeqAVcXQHKT6vvkAayeSQ==
X-CSE-MsgGUID: BbrHIqeET526N8tMZwqtpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="174270687"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 06/20] drm/i915/gmbus: use generic poll_timeout*() instead of
 wait_for*()
Date: Thu, 28 Aug 2025 15:20:48 +0300
Message-ID: <564b397352c53a1116519fb2d53050c0426bc0dc.1756383233.git.jani.nikula@intel.com>
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

The "two tier" wait_for_us() + wait_for() combination appeared without
much explanation in commit 4e6c2d58ba86 ("drm/i915: Take forcewake once
for the entire GMBUS transaction"). Try to mimic roughly the same with
the generic helpers.

wait_for_us() with 10 us or shorter timeouts ends up in
_wait_for_atomic(). Thus use poll_timeout_us_atomic() for the first try,
with the same 2 us timeout and no sleep.

For the fallback, the functional change is losing the exponentially
growing sleep of wait_for(), which used to be 10, 20, 40, ..., 640, and
1280 us. Use an arbitrary constant 500 us sleep instead. The timeout
remains at 50 ms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 063335053d13..358210adb8f8 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -30,13 +30,13 @@
 #include <linux/export.h>
 #include <linux/i2c-algo-bit.h>
 #include <linux/i2c.h>
+#include <linux/iopoll.h>
 
 #include <drm/display/drm_hdcp_helper.h>
 
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
@@ -415,11 +415,14 @@ static int gmbus_wait(struct intel_display *display, u32 status, u32 irq_en)
 	intel_de_write_fw(display, GMBUS4(display), irq_en);
 
 	status |= GMBUS_SATOER;
-	ret = wait_for_us((gmbus2 = intel_de_read_fw(display, GMBUS2(display))) & status,
-			  2);
+
+	ret = poll_timeout_us_atomic(gmbus2 = intel_de_read_fw(display, GMBUS2(display)),
+				     gmbus2 & status,
+				     0, 2, false);
 	if (ret)
-		ret = wait_for((gmbus2 = intel_de_read_fw(display, GMBUS2(display))) & status,
-			       50);
+		ret = poll_timeout_us(gmbus2 = intel_de_read_fw(display, GMBUS2(display)),
+				      gmbus2 & status,
+				      500, 50 * 1000, false);
 
 	intel_de_write_fw(display, GMBUS4(display), 0);
 	remove_wait_queue(&display->gmbus.wait_queue, &wait);
-- 
2.47.2

