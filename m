Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC718AEB693
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 13:36:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D64B10E9D8;
	Fri, 27 Jun 2025 11:36:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="evboVe3f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E885210E9D5;
 Fri, 27 Jun 2025 11:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751024204; x=1782560204;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LEtPrT2Hbj7nQEUZK6v1EtmzAb4XqtFdnUoXxtrqWB4=;
 b=evboVe3fkmbN5wZmH76jrcvmfKB54b3un0LLPrL78fiZQ/BIF6en30Yy
 bsqkbY6D/Y9JdWiDhD8NJc5vLnGAqYQ8EunvI5PXpj1QUHAuE5K4v89zG
 s0KnDlQzP9e5g5F4jGmVeQlfLYW7y8QdLgMr0wN/piEiklE3I3RfkYOe+
 NwlhfdXTMNuVFAf0Lw58A5hbpf4Du7oYFo8v/phmb/qb8aWJWAGewYR8U
 LWXtDL7FJ7f7LUDBiWHjxplVA+pwO+ZdQudcqkf5Ng3OAq5/vwZtMjIz2
 A4GYw8iDXYA6EBX93/wbs2sKOyfSrSkKTLUr8q2XSK/JM8+ye7GpA9xR3 A==;
X-CSE-ConnectionGUID: /HZhYxmhTUWP5aBghQlpQQ==
X-CSE-MsgGUID: DqSND3faQlGSceTUF1VkLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53416256"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53416256"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:36:43 -0700
X-CSE-ConnectionGUID: tqj34DdqRaOsulEo4F6y+Q==
X-CSE-MsgGUID: eCy8UqToTWqIXcpHurAVfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="153310977"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.146])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:36:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 01/18] drm/i915/hdmi: use generic read_poll_timeout() instead
 of __wait_for()
Date: Fri, 27 Jun 2025 14:36:15 +0300
Message-Id: <5722f1aa7fd1145607ab329598d4ca9ffd814187.1751023767.git.jani.nikula@intel.com>
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
index 9961ff259298..6a1fdb2c5f18 100644
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
+	ret = read_poll_timeout(hdcp2_detect_msg_availability, ret,
+				!ret && msg_ready && msg_sz,
+				4000, timeout * 1000, false,
+				dig_port, msg_id, &msg_ready, &msg_sz);
 	if (ret)
 		drm_dbg_kms(display->drm,
 			    "msg_id: %d, ret: %d, timeout: %d\n",
-- 
2.39.5

