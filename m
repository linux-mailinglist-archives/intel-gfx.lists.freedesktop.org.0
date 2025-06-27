Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5921FAEB69B
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 13:37:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B788810E9E7;
	Fri, 27 Jun 2025 11:37:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W8qwX8Xz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE21610E9E0;
 Fri, 27 Jun 2025 11:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751024237; x=1782560237;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7lmEfT75E6yzzxCtK9o9Xut/sOo5lYhpmdLYqkea/NA=;
 b=W8qwX8Xz32czvSjJA6GwUT5Nn44utNo3OMRMpNz4urSCky+sCs7f8YvZ
 nD/EO6T/4tS4MuT18GP21ZxZCyvGKqFu9Xl7DbD1UI4EnLdRIiCSANg31
 nvqyjX4UYWc2qMBY4DDzWqilDLcNBi9/st8MEoUuEPLz6XzabKzOvaT/z
 fcWwF4OnsvRs53FpKuQdQYcACzvWPyoQh6ZHmNhyNQYrkHwX4yGAukuts
 cJdgV+gg3DIgZP0p+eRvp2bVZeLoahmjkHpy6d073EKGohu6cAkVBTV1e
 KwAuHGcvHwAkIEjnM2f6O+EGeklErDHImsphvB0Vw7TBAWXAivy53y1yD w==;
X-CSE-ConnectionGUID: PJMX1OceR3KDaj2akWRXNA==
X-CSE-MsgGUID: qs+HhbHfTnaHUFVFpslhjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53460019"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53460019"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:17 -0700
X-CSE-ConnectionGUID: VAXrJb9nS8GZmYJNrK+POA==
X-CSE-MsgGUID: tZmtXv1gSKCuh0jpeTMEEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="157071227"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.146])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 08/18] drm/i915/power: use generic read_poll_timeout() instead
 of wait_for()
Date: Fri, 27 Jun 2025 14:36:22 +0300
Message-Id: <6e8caf5daf140b7996f67c07739f9c6fb0e74e6a.1751023767.git.jani.nikula@intel.com>
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

Use an arbitrary constant 100 us sleep instead. The timeout remains at 1
ms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 273054c22325..b2b7b8ca64d2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -3,6 +3,7 @@
  * Copyright © 2019 Intel Corporation
  */
 
+#include <linux/iopoll.h>
 #include <linux/string_helpers.h>
 
 #include "soc/intel_dram.h"
@@ -1278,6 +1279,7 @@ static void hsw_disable_lcpll(struct intel_display *display,
 			      bool switch_to_fclk, bool allow_power_down)
 {
 	u32 val;
+	int ret;
 
 	assert_can_disable_lcpll(display);
 
@@ -1306,8 +1308,11 @@ static void hsw_disable_lcpll(struct intel_display *display,
 	hsw_write_dcomp(display, val);
 	ndelay(100);
 
-	if (wait_for((hsw_read_dcomp(display) &
-		      D_COMP_RCOMP_IN_PROGRESS) == 0, 1))
+	ret = read_poll_timeout(hsw_read_dcomp, val,
+				(val & D_COMP_RCOMP_IN_PROGRESS) == 0,
+				100, 1000, false,
+				display);
+	if (ret)
 		drm_err(display->drm, "D_COMP RCOMP still in progress\n");
 
 	if (allow_power_down) {
-- 
2.39.5

