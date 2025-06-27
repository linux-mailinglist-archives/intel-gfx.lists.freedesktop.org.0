Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 417E5AEB6A2
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 13:37:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83A1910E9EE;
	Fri, 27 Jun 2025 11:37:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FgVZ/P3c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F02F810E9EE;
 Fri, 27 Jun 2025 11:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751024264; x=1782560264;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M4xkYsl8UIKXqAb0pcLkgQg0noOnH5oHkdLHzz+i/XU=;
 b=FgVZ/P3cfKXqbVP627KjcKgIHtE4kFOhqDr00AtX2+1gQNF1nHyzqXuG
 0dj8hpvA6etHr/3+X3MVi4ud5Wajw2DzGlcgG0+BUgnPEI2yS8HnDH4UG
 SzL0rhHFGgyzrC5EO4R2K7Yb+NUPsoUtUGarXKRAP8vF5kThoMEat8/K4
 feM9NFncQIvJsGwrqYmSwdn+/YfAGOyLOraMaRZbbJWqggqljmXwKZnJX
 bQ/KMVsNKbTGMfBepBiCNyKfjWWGk4KYoX2ZD47kVv0/1PUiMfCPDGjHN
 Ty9YhXmfy1IlXizTCqtwRk8jr05oSrX0/AzDw60bZgTUaCxGjQIzU/huu w==;
X-CSE-ConnectionGUID: 9LJvy8MiTrWZKfUD5kxLrg==
X-CSE-MsgGUID: 5JOnpNh4S1enINWT46+YMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53416402"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53416402"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:43 -0700
X-CSE-ConnectionGUID: 7eDitMpHRxyNl/DNFS+8rQ==
X-CSE-MsgGUID: QU1kICRfSrCUhHUkk20VBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="153311096"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.146])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 14/18] drm/i915/tc: use generic read_poll_timeout() instead of
 wait_for()
Date: Fri, 27 Jun 2025 14:36:28 +0300
Message-Id: <b39209e71ad40c9dff23e1554e228b7ee7713615.1751023767.git.jani.nikula@intel.com>
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

Use an arbitrary constant 200 us sleep for the 5 ms timeout, and 1000 us
sleep for the 500 ms timeout. The timeouts remain the same.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 3bc57579fe53..e32ea20e0e7f 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -3,6 +3,8 @@
  * Copyright © 2019 Intel Corporation
  */
 
+#include <linux/iopoll.h>
+
 #include <drm/drm_print.h>
 
 #include "i915_reg.h"
@@ -1000,8 +1002,14 @@ static bool
 xelpdp_tc_phy_wait_for_tcss_power(struct intel_tc_port *tc, bool enabled)
 {
 	struct intel_display *display = to_intel_display(tc->dig_port);
+	bool is_enabled;
+	int ret;
 
-	if (wait_for(xelpdp_tc_phy_tcss_power_is_enabled(tc) == enabled, 5)) {
+	ret = read_poll_timeout(xelpdp_tc_phy_tcss_power_is_enabled, is_enabled,
+				is_enabled == enabled,
+				200, 5000, false,
+				tc);
+	if (ret) {
 		drm_dbg_kms(display->drm,
 			    "Port %s: timeout waiting for TCSS power to get %s\n",
 			    str_enabled_disabled(enabled),
@@ -1263,8 +1271,14 @@ static bool tc_phy_is_connected(struct intel_tc_port *tc,
 static bool tc_phy_wait_for_ready(struct intel_tc_port *tc)
 {
 	struct intel_display *display = to_intel_display(tc->dig_port);
+	bool is_ready;
+	int ret;
 
-	if (wait_for(tc_phy_is_ready(tc), 500)) {
+	ret = read_poll_timeout(tc_phy_is_ready, is_ready,
+				is_ready,
+				1000, 500 * 1000, false,
+				tc);
+	if (ret) {
 		drm_err(display->drm, "Port %s: timeout waiting for PHY ready\n",
 			tc->port_name);
 
-- 
2.39.5

