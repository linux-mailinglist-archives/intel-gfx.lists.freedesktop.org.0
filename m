Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1282AAEB695
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 13:36:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 662AD10E9DB;
	Fri, 27 Jun 2025 11:36:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fPA8PyrK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5221810E9DB;
 Fri, 27 Jun 2025 11:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751024213; x=1782560213;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6St6+OZ4vmBnz2NqQGXA8rS1rFN9WTefKl6hgNSVsEI=;
 b=fPA8PyrKXIABLFqynkjqJ+eMuoGw74pgN1ZYRD5VWYBEweTXSTa7CxiV
 psUpNsBcvUH5fW7sIgFTMfvMW1HFgPCPzY2TDyvIflxjK4ulDoPdII4Q8
 j2SHk3FI7Bdq6DZJWNXxAidnXjyjI4zFgOroCIstKoehj8fFuMHvE5jSD
 2dVpIA5h5rgiN++7UM3rasCubfbusVVIdJ64gkjIAB6qL5JMzkbaCRCOj
 i6AWM3MtTeECl9DbVlzrWbgfuIbbv5mjtW92im2OkMTBcqodCmo/+yLdL
 fGwpGvk2mmmLsTTkpAHpRiSdpXXiqxGqi7iKWl5XJkBT2JMHGRf+Ig/6i g==;
X-CSE-ConnectionGUID: uGIHRua9T0KR4vu/umsW5w==
X-CSE-MsgGUID: lnvI3XNHSxKzJOoyKAMhlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53416292"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53416292"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:36:53 -0700
X-CSE-ConnectionGUID: PSRKfgFFQySjqLeD1fxOHQ==
X-CSE-MsgGUID: R+EclhYRSZS14HQBLoGCmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="153311007"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.146])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:36:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 03/18] drm/i915/dsi: use generic read_poll_timeout() instead
 of wait_for_us()
Date: Fri, 27 Jun 2025 14:36:17 +0300
Message-Id: <f69af9d4e4893f0be889b8d9a58c3d1fd4da8e7a.1751023767.git.jani.nikula@intel.com>
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

The sleep and timeout remain the same as for wait_for_us().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 8d9cb73a93a7..d4c572305804 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -25,6 +25,8 @@
  *   Jani Nikula <jani.nikula@intel.com>
  */
 
+#include <linux/iopoll.h>
+
 #include <drm/display/drm_dsc_helper.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_fixed.h>
@@ -72,8 +74,13 @@ static int payload_credits_available(struct intel_display *display,
 static bool wait_for_header_credits(struct intel_display *display,
 				    enum transcoder dsi_trans, int hdr_credit)
 {
-	if (wait_for_us(header_credits_available(display, dsi_trans) >=
-			hdr_credit, 100)) {
+	int ret;
+
+	ret = read_poll_timeout(header_credits_available, ret,
+				ret >= hdr_credit,
+				10, 100, false,
+				display, dsi_trans);
+	if (ret) {
 		drm_err(display->drm, "DSI header credits not released\n");
 		return false;
 	}
@@ -84,8 +91,13 @@ static bool wait_for_header_credits(struct intel_display *display,
 static bool wait_for_payload_credits(struct intel_display *display,
 				     enum transcoder dsi_trans, int payld_credit)
 {
-	if (wait_for_us(payload_credits_available(display, dsi_trans) >=
-			payld_credit, 100)) {
+	int ret;
+
+	ret = read_poll_timeout(payload_credits_available, ret,
+				ret >= payld_credit,
+				10, 100, false,
+				display, dsi_trans);
+	if (ret) {
 		drm_err(display->drm, "DSI payload credits not released\n");
 		return false;
 	}
-- 
2.39.5

