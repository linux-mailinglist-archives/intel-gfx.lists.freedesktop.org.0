Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F67B39CFA
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 14:21:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5885C10E34C;
	Thu, 28 Aug 2025 12:21:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iM3J3MP6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C09210E98D;
 Thu, 28 Aug 2025 12:21:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383674; x=1787919674;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7eBi/6/JxHoomOTgPUVYJOye+xQYV+e/6elOWpMQv9Y=;
 b=iM3J3MP6NlN6wElajT7WkTqTUFjqQAc6+gzq+WAiMiUMIwgwaVnK3mZ+
 nmgV4pN3b8xQTSZAR8ZkG8Ug+zFweWi4X6wwcWahwVgD/wXdMbcDbjLwJ
 qL1MBzuwzWR/QxPrBROvQT/5x1pq6MiXeYXDXAEM8Gry7BUvPXefXkYEl
 pnP6qHbae/GEbqm19n7IWIq42NdvQnkkNq5eP8N6NDOustvpConfUnMJT
 muJ+AFTX/J/01N028OxYMUohU3duKw6z1FjrMTEvfQ6yWqJa+jV5oCfwl
 pQyXAJiTC+CLGjiW7M91ey8ZaFcPqBytVAL07AGg4m+uf7zCKa6EEHMlj Q==;
X-CSE-ConnectionGUID: Xo7Y1IJTRpmfhZCFvUZQ7g==
X-CSE-MsgGUID: D4IE3t3+RCGEFl83uHS+Bg==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="58360015"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="58360015"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:14 -0700
X-CSE-ConnectionGUID: vgN25mCnSeGXU4fZLfAPpg==
X-CSE-MsgGUID: mSwv0fGcQgKf9eGvqbwQrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="169999557"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 01/20] drm/i915/hdmi: use generic poll_timeout_us() instead of
 __wait_for()
Date: Thu, 28 Aug 2025 15:20:43 +0300
Message-ID: <fc3a67f9de0049f415a276bba1c11a4df97e01d6.1756383233.git.jani.nikula@intel.com>
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
__wait_for(), which used to be 1, 2, 4, and 8 ms in this particular
case.

Use an arbitrary constant 4 ms sleep instead. The timeout remains,
varying between 20 ms and 3000 ms.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index cbee628eb26b..09111e6d1d20 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -29,6 +29,7 @@
 #include <linux/delay.h>
 #include <linux/hdmi.h>
 #include <linux/i2c.h>
+#include <linux/iopoll.h>
 #include <linux/slab.h>
 #include <linux/string_helpers.h>
 
@@ -1689,11 +1690,10 @@ intel_hdmi_hdcp2_wait_for_msg(struct intel_digital_port *dig_port,
 	if (timeout < 0)
 		return timeout;
 
-	ret = __wait_for(ret = hdcp2_detect_msg_availability(dig_port,
-							     msg_id, &msg_ready,
-							     &msg_sz),
-			 !ret && msg_ready && msg_sz, timeout * 1000,
-			 1000, 5 * 1000);
+	ret = poll_timeout_us(ret = hdcp2_detect_msg_availability(dig_port, msg_id,
+								  &msg_ready, &msg_sz),
+			      !ret && msg_ready && msg_sz,
+			      4000, timeout * 1000, false);
 	if (ret)
 		drm_dbg_kms(display->drm,
 			    "msg_id: %d, ret: %d, timeout: %d\n",
-- 
2.47.2

