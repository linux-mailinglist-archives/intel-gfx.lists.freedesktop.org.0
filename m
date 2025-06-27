Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D55C4AEB6A7
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 13:37:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CC4910E9F4;
	Fri, 27 Jun 2025 11:37:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LTqyJFRg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACB1210E9F4;
 Fri, 27 Jun 2025 11:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751024277; x=1782560277;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oqIwqAg/JB6xbwNeKYT9bj/3QbxM3WqujhQQmfYWek8=;
 b=LTqyJFRggPcLfVgEWN34IlOLdbukonC/1TaDCrxti4q7FrHeJZv7WAPf
 tRuYGsNR6AOpblP2OmJuGcGP63UQjmc4z1U+Kxs2DO/kLfcpglKT0/JL4
 mHcYDqKsUwu8Gi9d1HI07pLisyAnFffwmUH9izdhlvODvqy7bivkcB/cL
 IZIWDSxdNWIHUOoIy4IWeImoT5be/02UaniSmnTjwKU/aiAYX4SJ8SNeT
 88yl5lNaZBnTZk1rN1nVDrmhNO4DLSJSNFv3sfEBnMb32bkzuSwwilkUD
 pw6j1fzcZlg6aYfpq4aG3Qj6fEIt+qA8nfF6swDuS7tpSKe0aWox8MYqJ Q==;
X-CSE-ConnectionGUID: ZTSzua4ZRtKd3RO7Ii+ltQ==
X-CSE-MsgGUID: 3HS3ut7DSY2XzBu4Mwy0Yw==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53416425"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53416425"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:57 -0700
X-CSE-ConnectionGUID: 7x3DJkAVQS+RdLot8oahhA==
X-CSE-MsgGUID: fyHAQKN4RXeOpeARwjchYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="153311139"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.146])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 17/18] drm/i915/opregion: use generic read_poll_timeout()
 instead of wait_for()
Date: Fri, 27 Jun 2025 14:36:31 +0300
Message-Id: <4ee8e5bb505336bfc278a15c20b71b617b2f8b84.1751023767.git.jani.nikula@intel.com>
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
wait_for(), which used to be 10, 20, 40, ..., 640, and 1280 us.

Use an arbitrary constant 1 ms sleep instead. The timeout remains, being
opregion defined, 50 ms by default, and 1500 ms at most.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 2b8538fcfd1d..0c3f190c4bfa 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -28,6 +28,7 @@
 #include <linux/acpi.h>
 #include <linux/debugfs.h>
 #include <linux/dmi.h>
+#include <linux/iopoll.h>
 #include <acpi/video.h>
 
 #include <drm/drm_edid.h>
@@ -355,10 +356,14 @@ static int swsci(struct intel_display *display,
 	pci_write_config_word(pdev, SWSCI, swsci_val);
 
 	/* Poll for the result. */
-#define C (((scic = swsci->scic) & SWSCI_SCIC_INDICATOR) == 0)
-	if (wait_for(C, dslp)) {
+#define C(__swsci) ((__swsci)->scic)
+	ret = read_poll_timeout(C, scic,
+				(scic & SWSCI_SCIC_INDICATOR) == 0,
+				1000, dslp * 1000, false,
+				swsci);
+	if (ret) {
 		drm_dbg(display->drm, "SWSCI request timed out\n");
-		return -ETIMEDOUT;
+		return ret;
 	}
 
 	scic = (scic & SWSCI_SCIC_EXIT_STATUS_MASK) >>
-- 
2.39.5

