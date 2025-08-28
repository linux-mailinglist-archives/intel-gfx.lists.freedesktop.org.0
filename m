Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1047BB39CFB
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 14:21:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76CAC10E98C;
	Thu, 28 Aug 2025 12:21:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I8LgCjGG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 192E910E98C;
 Thu, 28 Aug 2025 12:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383679; x=1787919679;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jzgALfs3vCSsyqSu2qXpKXYUXwKLpb6VVPOomUUsX/c=;
 b=I8LgCjGGJmlicOXhRN8ZKwPEkWLyg9p4mNzshbzWcDtJ3kP//6rlB5jo
 R/wh2HbmhrVAmWaZbcCy5JZN1pmv0n+xO/TpdZ4tt+FLLLBGTgaLItbkD
 xj+no4/rvTUKPQ4T+uW2JXlrJi2SicsH3YkZfqb3V9q9Onm2xyxJVVYrV
 1ww/n6NnGzs9ij/v5rQYnL+7A2ig82yciyfOP6z2IcPKNB4iZ7gyXlwPW
 qrltWmZqyVr9MmbavdA3Eh6tdmaAkbKkPMd6f2eHUcJo4Lx+qtL7QzV3x
 AObeNVIJX31yQLxGUmFd3hv2KReIAHXCMd7uOJQXrwn+GFc5M3ho3viag Q==;
X-CSE-ConnectionGUID: Zy+1v2cnR1awIoAI299dlw==
X-CSE-MsgGUID: iIAEEuw2SsOYL6ASVUPKRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="58360027"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="58360027"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:19 -0700
X-CSE-ConnectionGUID: blCGUQkZRLuZhyybzNxjbg==
X-CSE-MsgGUID: JUaqSz5DQ3O3vsVj7nXFLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="169999564"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 02/20] drm/i915/hdcp: use generic poll_timeout_us() instead of
 __wait_for()
Date: Thu, 28 Aug 2025 15:20:44 +0300
Message-ID: <bfc9f941ec1628830644f1419d606e3d085aaba0.1756383233.git.jani.nikula@intel.com>
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
__wait_for(), which used to be 1, 2, 4, ... 64, and 128 ms in this
particular case.

Use an arbitrary 100 ms sleep instead. The timeout remains at 5000 ms.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 42202c8bb066..0c98e50501a6 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -11,6 +11,7 @@
 #include <linux/component.h>
 #include <linux/debugfs.h>
 #include <linux/i2c.h>
+#include <linux/iopoll.h>
 #include <linux/random.h>
 
 #include <drm/display/drm_hdcp_helper.h>
@@ -326,10 +327,9 @@ static int intel_hdcp_poll_ksv_fifo(struct intel_digital_port *dig_port,
 	bool ksv_ready;
 
 	/* Poll for ksv list ready (spec says max time allowed is 5s) */
-	ret = __wait_for(read_ret = shim->read_ksv_ready(dig_port,
-							 &ksv_ready),
-			 read_ret || ksv_ready, 5 * 1000 * 1000, 1000,
-			 100 * 1000);
+	ret = poll_timeout_us(read_ret = shim->read_ksv_ready(dig_port, &ksv_ready),
+			      read_ret || ksv_ready,
+			      100 * 1000, 5 * 1000 * 1000, false);
 	if (ret)
 		return ret;
 	if (read_ret)
-- 
2.47.2

