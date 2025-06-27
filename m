Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B80AAEB694
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 13:36:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CE4F10E9DF;
	Fri, 27 Jun 2025 11:36:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZNetcKiA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D21FB10E9D9;
 Fri, 27 Jun 2025 11:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751024208; x=1782560208;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g9nlfptBxuA2ahMlXgbU/aWpK00VVxVTuiUTTk1xqjI=;
 b=ZNetcKiACnav2Z/RJFDnetz68ZmdweHXFby6wzgLx1WtTt3vtoNj5hnD
 SWUMgs7FeEOPuFCWBik0jKlrJ1sIgHRqO5Zrfp5KwW4x0CvlwARwK2xna
 wF3KDZj1GZeYKYKZy/MD2ASIWPbnMouGEoZqCMHXzwKMb/5mBCumkaYoa
 z3qaYsc9VhazqGLt/VxbMymT8ywqED4RAh5qte4cr6O7fBwxWGU6E5UHK
 6afQ/XkLQDcmJ7GwokYvZhIFOkEjosZMd/rXAa3Z5YUCfWCyjdYcI+s3m
 uAvdZyD9WKaDqBpm2NKHxYM7I8blQNnpO1ltB/Epn1QEwzUjvAoneUmCs A==;
X-CSE-ConnectionGUID: i/lVCRv3Rc+bmm43a+zLig==
X-CSE-MsgGUID: C8S1T/LKQLS321tQuQ2N7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53416280"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53416280"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:36:48 -0700
X-CSE-ConnectionGUID: RfjoQDu3RZaQcHI2AbixuA==
X-CSE-MsgGUID: iY/BGzO4S629mUAO2vXULg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="153310993"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.146])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:36:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 02/18] drm/i915/hdcp: use generic read_poll_timeout() instead
 of __wait_for()
Date: Fri, 27 Jun 2025 14:36:16 +0300
Message-Id: <657af1a1c438a2bf97098263f5454c92112c8109.1751023767.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1751023767.git.jani.nikula@intel.com>
References: <cover.1751023767.git.jani.nikula@intel.com>
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
__wait_for(), which used to be 1, 2, 4, ... 64, and 128 ms in this
particular case.

Use an arbitrary 100 ms sleep instead. The timeout remains at 5000 ms.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 619ccfc33000..9eeeae03b129 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -11,6 +11,7 @@
 #include <linux/component.h>
 #include <linux/debugfs.h>
 #include <linux/i2c.h>
+#include <linux/iopoll.h>
 #include <linux/random.h>
 
 #include <drm/display/drm_hdcp_helper.h>
@@ -324,10 +325,10 @@ static int intel_hdcp_poll_ksv_fifo(struct intel_digital_port *dig_port,
 	bool ksv_ready;
 
 	/* Poll for ksv list ready (spec says max time allowed is 5s) */
-	ret = __wait_for(read_ret = shim->read_ksv_ready(dig_port,
-							 &ksv_ready),
-			 read_ret || ksv_ready, 5 * 1000 * 1000, 1000,
-			 100 * 1000);
+	ret = read_poll_timeout(shim->read_ksv_ready, read_ret,
+				read_ret || ksv_ready,
+				100 * 1000, 5 * 1000 * 1000, false,
+				dig_port, &ksv_ready);
 	if (ret)
 		return ret;
 	if (read_ret)
-- 
2.39.5

