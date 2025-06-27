Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2BBAEB6A6
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 13:37:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98E8110E9DA;
	Fri, 27 Jun 2025 11:37:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LEB4Mxu7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E493E10E9F5;
 Fri, 27 Jun 2025 11:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751024273; x=1782560273;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UjRhPtEXlDgT4fd2XMuSWuO6HoMBbXQhSbdS28d7Sps=;
 b=LEB4Mxu7QwGVreINH3cPidTQXbetYNKj/w+4iY6s92rii6R/Ebdkg7+H
 K4rhHxEOMVgbkxW1o/vk8KdFgJL8P8t9GKMZS8HJ0A4HDtJc5s2jOSku0
 O5IAOF02oDRCVYIRmvWdkEyoeS9DklhzDmpT5GdySbYYoDppwf9Uislfb
 WAZ1NZw+WLyjZ1k6G7RfFFlljLHvvMEzwohC8e0yBOTq1O3lwjDaQqGMu
 R/2kgwOZXVAaEWQkSObcPEiZn8rcLF1UC9jyZXdhYzVV5QX5yVHR9EPEg
 4CPg/nO0Luns84iT/eb8+xWeND9SOvgGBaz33fLv8KPftmiEo/duJQGbx Q==;
X-CSE-ConnectionGUID: 6c11bfLzQla1j0jbPUcIPQ==
X-CSE-MsgGUID: V28PJJOPRWWg9y8rBOokCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53416417"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53416417"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:52 -0700
X-CSE-ConnectionGUID: nag7C6SLTBaVjjZLZitNcg==
X-CSE-MsgGUID: 0omYm/uMSTeMrsO5nMj6sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="153311121"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.146])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 16/18] drm/i915/lspcon: use generic read_poll_timeout()
 instead of wait_for()
Date: Fri, 27 Jun 2025 14:36:30 +0300
Message-Id: <980e86d749ec96d7bb0487d1dee060058ad3078f.1751023767.git.jani.nikula@intel.com>
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

Use an arbitrary constant 5 ms sleep instead. The timeouts remain, being
400 ms or 800 ms, depending on the case.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index abc4b562083d..68411ade2863 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -23,6 +23,8 @@
  *
  */
 
+#include <linux/iopoll.h>
+
 #include <drm/display/drm_dp_dual_mode_helper.h>
 #include <drm/display/drm_hdmi_helper.h>
 #include <drm/drm_atomic_helper.h>
@@ -181,6 +183,8 @@ static enum drm_lspcon_mode lspcon_wait_mode(struct intel_lspcon *lspcon,
 	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
 	struct intel_display *display = to_intel_display(intel_dp);
 	enum drm_lspcon_mode current_mode;
+	int timeout_us;
+	int ret;
 
 	current_mode = lspcon_get_current_mode(lspcon);
 	if (current_mode == mode)
@@ -189,9 +193,13 @@ static enum drm_lspcon_mode lspcon_wait_mode(struct intel_lspcon *lspcon,
 	drm_dbg_kms(display->drm, "Waiting for LSPCON mode %s to settle\n",
 		    lspcon_mode_name(mode));
 
-	wait_for((current_mode = lspcon_get_current_mode(lspcon)) == mode,
-		 lspcon_get_mode_settle_timeout(lspcon));
-	if (current_mode != mode)
+	timeout_us = lspcon_get_mode_settle_timeout(lspcon) * 1000;
+
+	ret = read_poll_timeout(lspcon_get_current_mode, current_mode,
+				current_mode == mode,
+				5000, timeout_us, false,
+				lspcon);
+	if (ret)
 		drm_err(display->drm, "LSPCON mode hasn't settled\n");
 
 out:
-- 
2.39.5

