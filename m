Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CBAAEB697
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 13:37:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59DF310E9E2;
	Fri, 27 Jun 2025 11:37:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BFB84JW6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B77D110E02B;
 Fri, 27 Jun 2025 11:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751024222; x=1782560222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+zvdH5C3ZMd+4/eFfEFHKLX0kB7GLjoObgMSeoFaHLY=;
 b=BFB84JW640f7j6yo1/Uxh8C5gV9StJqUjmjtxu4YAgLPBbu2Pvlypkxp
 P9v4G8eRxRfwHi8ZZoEvmWD8bd/ATO84gTmGLwwb/pN3U1l+TcPfBhXnI
 cMM7XObTCrFNZk3V/vlHH3d4TowRDnprebq7ZakXpWr8bWu9zj8X19ylP
 +eiNOgrXVrZLlW3rKyvf5SmH2gLqMnLV/4QxtltImhrSjVN7YCh3vZV63
 AXIauvyCIYSBrB3VGchbvOvIHtiUeen9+hULvZJCeqvpzf0EWF+YfvOWz
 /UQHH2zL73xLTo0tehv15sN74L60+YJ/QQaNGXdmH9PaqlrgJObUQQz1J A==;
X-CSE-ConnectionGUID: y+9hZ4c6Sz6AjZ0atmEijQ==
X-CSE-MsgGUID: pHkt1E8LRNi4ZOp5/qhzMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53416342"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53416342"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:02 -0700
X-CSE-ConnectionGUID: oOQoWFLoSJ6q6EjxrCXErA==
X-CSE-MsgGUID: dEjv2rRNSK647DFz8DWmGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="153311044"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.146])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 05/18] drm/i915/gmbus: use generic read_poll_timeout*()
 instead of wait_for*()
Date: Fri, 27 Jun 2025 14:36:19 +0300
Message-Id: <b1bef9d4fd4c9e279cf14b25276719a56e1cda1f.1751023767.git.jani.nikula@intel.com>
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

The "two tier" wait_for_us() + wait_for() combination appeared without
much explanation in commit 4e6c2d58ba86 ("drm/i915: Take forcewake once
for the entire GMBUS transaction"). Try to mimic roughly the same with
the generic helpers.

wait_for_us() with 10 us or shorter timeouts ends up in
_wait_for_atomic(). Thus use read_poll_timeout_atomic() for the first
try, with the same 2 us timeout and no sleep.

For the fallback, the functional change is losing the exponentially
growing sleep of wait_for(), which used to be 10, 20, 40, ..., 640, and
1280 us. Use an arbitrary constant 500 us sleep instead. The timeout
remains at 50 ms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 0d73f32fe7f1..6cc82d196438 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -30,6 +30,7 @@
 #include <linux/export.h>
 #include <linux/i2c-algo-bit.h>
 #include <linux/i2c.h>
+#include <linux/iopoll.h>
 
 #include <drm/display/drm_hdcp_helper.h>
 
@@ -385,11 +386,17 @@ static int gmbus_wait(struct intel_display *display, u32 status, u32 irq_en)
 	intel_de_write_fw(display, GMBUS4(display), irq_en);
 
 	status |= GMBUS_SATOER;
-	ret = wait_for_us((gmbus2 = intel_de_read_fw(display, GMBUS2(display))) & status,
-			  2);
+
+	ret = read_poll_timeout_atomic(intel_de_read_fw, gmbus2,
+				       gmbus2 & status,
+				       0, 2, false,
+				       display, GMBUS2(display));
+
 	if (ret)
-		ret = wait_for((gmbus2 = intel_de_read_fw(display, GMBUS2(display))) & status,
-			       50);
+		ret = read_poll_timeout(intel_de_read_fw, gmbus2,
+					gmbus2 & status,
+					500, 50 * 1000, false,
+					display, GMBUS2(display));
 
 	intel_de_write_fw(display, GMBUS4(display), 0);
 	remove_wait_queue(&display->gmbus.wait_queue, &wait);
-- 
2.39.5

