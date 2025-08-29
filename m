Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E85B3B9F7
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Aug 2025 13:33:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B16310EB8B;
	Fri, 29 Aug 2025 11:33:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FLPyUSDX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C262F10EB8A;
 Fri, 29 Aug 2025 11:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756467197; x=1788003197;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ls93Wi4Gq75jEY0BQQNJ/sIeXdBTWWR+AoAFVBU4GeI=;
 b=FLPyUSDXA/X6fyDGg1FgComG7pkw+kR3WpJsB2y6z0dMDurTahWyX/MK
 u6iWPxpr/T9xPs0YShXKeeCCixDvgcgAr3ig0Z3yMJgsHVmJRmnPUIe1e
 RiGK4WrcjVFw5RTF8z6B6qFhBYxXrmFUbxgrHHDMYleXxKWygw9HmD4KN
 0R8o8/wrIsArDJCRC42b1BG4wu9pOLAuSQdeeTIvSXicgjzA+9EFLm5C8
 D15qst83QIYs889cPbkXx48xi1sMDUzQQsoOdWJJRZl1Y2ncAPM1xmTCs
 VKaBiKhNc71g+tH2PaDFEwVk2uuWiBQsOlH7K+NTV9cs5V8RhFE9K1VeO w==;
X-CSE-ConnectionGUID: wPPJJDaQSwe3oY/aJxZlHw==
X-CSE-MsgGUID: nPP5Ydd0QTSJJ9YjoHfcxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="61386514"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="61386514"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 04:33:17 -0700
X-CSE-ConnectionGUID: 444LXHJ8SjqXryZw8Dbr8Q==
X-CSE-MsgGUID: 8Qr7D6F3Sc2arUuOz24c5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="207504039"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.58])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 04:33:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/dp: convert open-coded timeout to poll_timeout_us()
Date: Fri, 29 Aug 2025 14:33:11 +0300
Message-ID: <20250829113311.1930618-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
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

Use poll_timeout_us() instead of open-coding the timeout loop.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index bed7cba1ca68..958e48859beb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -27,6 +27,7 @@
 
 #include <linux/export.h>
 #include <linux/i2c.h>
+#include <linux/iopoll.h>
 #include <linux/log2.h>
 #include <linux/math.h>
 #include <linux/notifier.h>
@@ -5662,14 +5663,9 @@ bool intel_digital_port_connected_locked(struct intel_encoder *encoder)
 	intel_wakeref_t wakeref;
 
 	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref) {
-		unsigned long wait_expires = jiffies + msecs_to_jiffies_timeout(4);
-
-		do {
-			is_connected = dig_port->connected(encoder);
-			if (is_connected || is_glitch_free)
-				break;
-			usleep_range(10, 30);
-		} while (time_before(jiffies, wait_expires));
+		poll_timeout_us(is_connected = dig_port->connected(encoder),
+				is_connected || is_glitch_free,
+				30, 4000, false);
 	}
 
 	return is_connected;
-- 
2.47.2

