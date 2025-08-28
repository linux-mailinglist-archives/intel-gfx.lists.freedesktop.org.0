Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7B7B39D07
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 14:21:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3A5710E998;
	Thu, 28 Aug 2025 12:21:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HDzwuc+G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40DBB10E335;
 Thu, 28 Aug 2025 12:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383711; x=1787919711;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LVcCZRiiuu7yBY4w+Ef9810JQu0CFktZ+evbU34ZIGY=;
 b=HDzwuc+GonXXkrQxT5CCBf51r5y31pvifxYAevGa6iTkQZR2xeYP+64A
 ACV5ZyZAqo+jxWA3Q9LK//f6p9KA/eqvRXSP4lhHBmo6jiGF40tLvCgNq
 0V1M6ir0BRexTnDjc6AVW7zwCW/+2ftYDwRtyq63NWTlGaJ0WW4swlxyS
 v55yK7zz7l9joY+sDsvr6oIpSakUk1KeU7Drk6WJGyt4Mke+WGUK3CSne
 Morv2D1rDd1UcIBiSiDUZZz53qHdDIsKjrkVfRTYxi1sRKw2yNPgdTLbQ
 Kziqx8FIJXA6ydlikPy1QHJCJoywYjxP7bEaj6lthLOQWEmjbFk4a+0FQ A==;
X-CSE-ConnectionGUID: WSk4uC72RgSWXF+hDPoJNQ==
X-CSE-MsgGUID: jI0OtJiFQz+/b36Wypinjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="57848667"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="57848667"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:51 -0700
X-CSE-ConnectionGUID: Acpuat/ASMehQAXV41uA0Q==
X-CSE-MsgGUID: Kx+J9Em8RPq7JFRXgyaDJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="174270740"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 09/20] drm/i915/power: use generic poll_timeout_us() instead
 of wait_for()
Date: Thu, 28 Aug 2025 15:20:51 +0300
Message-ID: <900680516b047ae32e3298b5cdbcede0393e0466.1756383233.git.jani.nikula@intel.com>
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

Use an arbitrary constant 100 us sleep instead. The timeout remains at 1
ms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index d1d3b6f89e2a..7340d5a71673 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -3,6 +3,7 @@
  * Copyright © 2019 Intel Corporation
  */
 
+#include <linux/iopoll.h>
 #include <linux/string_helpers.h>
 
 #include "soc/intel_dram.h"
@@ -1310,8 +1311,10 @@ static void hsw_disable_lcpll(struct intel_display *display,
 	hsw_write_dcomp(display, val);
 	ndelay(100);
 
-	if (wait_for((hsw_read_dcomp(display) &
-		      D_COMP_RCOMP_IN_PROGRESS) == 0, 1))
+	ret = poll_timeout_us(val = hsw_read_dcomp(display),
+			      (val & D_COMP_RCOMP_IN_PROGRESS) == 0,
+			      100, 1000, false);
+	if (ret)
 		drm_err(display->drm, "D_COMP RCOMP still in progress\n");
 
 	if (allow_power_down) {
-- 
2.47.2

