Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD0EB39D16
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 14:22:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 799BC10E9A1;
	Thu, 28 Aug 2025 12:22:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VU94kN+k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7929910E9A2;
 Thu, 28 Aug 2025 12:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383738; x=1787919738;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xIvySCri5yGR8WjFk4Sn5jAeSjKgHQt+o5bK/dBGR8g=;
 b=VU94kN+kJ+INIKwTKXGoPwFqycGQtzcFHF/I1gaMAqHRaFTdbA/wYscD
 S4uuRZhV1CKQvPr34WDc7/5hp+OQoJSWGf8rDUjgkn/A5+6THV96Wxg5z
 ryspcuHmeIFBNXaKe7hy/mIsn+tTOQaI5932hX9KZkDvlJ8TKfhXwVGbf
 Ylu19PXh8sd5I7rzd607/YnlX+tj3jZ3vIC8mPX0Whxefh4y3W18VYhTz
 mrNTlGrIWcp3C7MGnwO5CDadBp8dCzaDbn4ujBAZpvJQp1VUZ0bVUJNGs
 7FrRS/7KAx4JznbIDQ5Xmscvam2McucBt5swQ79qXl8dVMvu/O5ngZozl g==;
X-CSE-ConnectionGUID: XJI+4+6+T5+ckTm5Hn4UFA==
X-CSE-MsgGUID: tfZSkrqaSAutmpQqvLB20g==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="84053271"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="84053271"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:22:18 -0700
X-CSE-ConnectionGUID: dZZYwhbiTeyEZXH/NgUzJA==
X-CSE-MsgGUID: iszpPkAbQFWbKuQyA5l0XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="170271265"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:22:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 15/20] drm/i915/tc: use generic poll_timeout_us() instead of
 wait_for()
Date: Thu, 28 Aug 2025 15:20:57 +0300
Message-ID: <50cd06b61210f541d5bb52a36af2d8bf059dd3a1.1756383233.git.jani.nikula@intel.com>
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

Use an arbitrary constant 200 us sleep for the 5 ms timeout, and 1000 us
sleep for the 500 ms timeout. The timeouts remain the same.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 583fed5a386d..8974ffe2aabf 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -3,6 +3,8 @@
  * Copyright © 2019 Intel Corporation
  */
 
+#include <linux/iopoll.h>
+
 #include <drm/drm_print.h>
 
 #include "i915_reg.h"
@@ -1047,8 +1049,13 @@ static bool
 xelpdp_tc_phy_wait_for_tcss_power(struct intel_tc_port *tc, bool enabled)
 {
 	struct intel_display *display = to_intel_display(tc->dig_port);
+	bool is_enabled;
+	int ret;
 
-	if (wait_for(xelpdp_tc_phy_tcss_power_is_enabled(tc) == enabled, 5)) {
+	ret = poll_timeout_us(is_enabled = xelpdp_tc_phy_tcss_power_is_enabled(tc),
+			      is_enabled == enabled,
+			      200, 5000, false);
+	if (ret) {
 		drm_dbg_kms(display->drm,
 			    "Port %s: timeout waiting for TCSS power to get %s\n",
 			    str_enabled_disabled(enabled),
@@ -1329,8 +1336,13 @@ static bool tc_phy_is_connected(struct intel_tc_port *tc,
 static bool tc_phy_wait_for_ready(struct intel_tc_port *tc)
 {
 	struct intel_display *display = to_intel_display(tc->dig_port);
+	bool is_ready;
+	int ret;
 
-	if (wait_for(tc_phy_is_ready(tc), 500)) {
+	ret = poll_timeout_us(is_ready = tc_phy_is_ready(tc),
+			      is_ready,
+			      1000, 500 * 1000, false);
+	if (ret) {
 		drm_err(display->drm, "Port %s: timeout waiting for PHY ready\n",
 			tc->port_name);
 
-- 
2.47.2

