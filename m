Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CAEFB39D1A
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 14:22:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 779AC10E9AC;
	Thu, 28 Aug 2025 12:22:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eS9PuPjS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9FEB10E9A5;
 Thu, 28 Aug 2025 12:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383753; x=1787919753;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PdIVyrk/63+YBO6r52ZKpNzQ6ajU5DEQUy7cTXSkrBk=;
 b=eS9PuPjS1kUwBBlhagOG9mWD6G9o2kmhrLZGwy6qd6BICch2wwIQDG90
 VZxaNSxiF0Aj0fj8qjPZDQhJ1DtbLFTF69usMzwe5cbdq1oFbTbxbXotx
 7JtlUQTOpb4K32eCtuoSDImeF8l3/XvsVCuQpsVfpz4q5JdKj/wWZFojq
 yzQqaHz7kjbC8d4ri9aM50op6FyH1WkNnVzIWPiqsvJHZf77alWFxg2pT
 ZUatxk/ga9zGj6xLCjrv0BUGU3tMUr2F79V4ZXtAewc2IHDIOr4NhDTWm
 r+zqJiK7W9d/Q7y86xKWC1o9PTfZqpDWvnQWLG7q2nPtu2ieJwvFPkRp7 Q==;
X-CSE-ConnectionGUID: k8qfWQa0Q0yCxSUcz30CkA==
X-CSE-MsgGUID: mwtf1HCJRbOVs4l5PK0k+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="84053286"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="84053286"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:22:33 -0700
X-CSE-ConnectionGUID: K9sLMF/XSE+ddLATPlOFtw==
X-CSE-MsgGUID: GuB2hzJ3Q7yL4XWyhdBAZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="170271294"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:22:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 18/20] drm/i915/opregion: use generic poll_timeout_us()
 instead of wait_for()
Date: Thu, 28 Aug 2025 15:21:00 +0300
Message-ID: <63db3a1e1db9e55a18ed322c55f2dffe511a10bb.1756383233.git.jani.nikula@intel.com>
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

Use an arbitrary constant 1 ms sleep instead. The timeout remains, being
opregion defined, 50 ms by default, and 1500 ms at most.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 380314a3b4d9..cbc220310813 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -28,13 +28,13 @@
 #include <linux/acpi.h>
 #include <linux/debugfs.h>
 #include <linux/dmi.h>
+#include <linux/iopoll.h>
 #include <acpi/video.h>
 
 #include <drm/drm_edid.h>
 #include <drm/drm_file.h>
 #include <drm/drm_print.h>
 
-#include "i915_utils.h"
 #include "intel_acpi.h"
 #include "intel_backlight.h"
 #include "intel_display_core.h"
@@ -357,10 +357,12 @@ static int swsci(struct intel_display *display,
 	pci_write_config_word(pdev, SWSCI, swsci_val);
 
 	/* Poll for the result. */
-#define C (((scic = swsci->scic) & SWSCI_SCIC_INDICATOR) == 0)
-	if (wait_for(C, dslp)) {
+	ret = poll_timeout_us(scic = swsci->scic,
+			      (scic & SWSCI_SCIC_INDICATOR) == 0,
+			      1000, dslp * 1000, false);
+	if (ret) {
 		drm_dbg(display->drm, "SWSCI request timed out\n");
-		return -ETIMEDOUT;
+		return ret;
 	}
 
 	scic = (scic & SWSCI_SCIC_EXIT_STATUS_MASK) >>
-- 
2.47.2

