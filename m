Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E79CB78A7B4
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 10:31:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81AD110E245;
	Mon, 28 Aug 2023 08:31:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13FB410E245
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 08:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693211506; x=1724747506;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=72vR+9oY8gJp2vjp7iCY3cr8pFn4DBkP8/NkTFwP2OY=;
 b=Tl4CVOXiJ84RFl3+ant/SyxB2zAdmpr16TeVxuJiF6AfvyMFOrTUwVWG
 f0OOYrh3HqFWlMvuEP7jxcn21MGjZlLn9w/7frrIcE8vBnxQvSuT2z4LM
 ErYHa0SaMPnG+q2pR/NSc/OkbtZVTIYK6LMZsF8WUuWMJ9ucllEm+SlGT
 8iV4IYAPF27n2g2NEpCrLjkRZsbA1sghZTeDJsQu7ZZ4PENr9yEU73skh
 18hSWq0Fj6WowZntC3iUkOu7I1OZLAqx3Lci4MCAc85KqvGnbwgDZLkw9
 MtST3hOlQF4ijSpQ52t2JAVeqvNHW/QaXNT5/65Ulmg+ef16W1a6O7k+A Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="461418052"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="461418052"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 01:31:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="773182862"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="773182862"
Received: from robertgu-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.213.131])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 01:31:24 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Aug 2023 11:31:07 +0300
Message-Id: <20230828083107.1520501-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/psr: Add psr sink error status into
 sink status debugfs
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

Normally PSR errors detected by the panel are triggering HPD interrupt and
seen as error in dmesg. Some panels are not triggering the interrupt even
it is requested and they are detecting error. Due to this it would be good
to have possibility to check panel detected errors. Add PSR error status
into PSR sink status debugfs interface.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 34 +++++++++++++++++-------
 1 file changed, 25 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 72887c29fb51..a008918b4d71 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -23,6 +23,7 @@
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_damage_helper.h>
+#include <drm/drm_debugfs.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
@@ -3153,7 +3154,7 @@ static int i915_psr_sink_status_show(struct seq_file *m, void *data)
 	};
 	const char *str;
 	int ret;
-	u8 val;
+	u8 status, error_status;
 
 	if (!CAN_PSR(intel_dp)) {
 		seq_puts(m, "PSR Unsupported\n");
@@ -3163,19 +3164,34 @@ static int i915_psr_sink_status_show(struct seq_file *m, void *data)
 	if (connector->base.status != connector_status_connected)
 		return -ENODEV;
 
-	ret = drm_dp_dpcd_readb(&intel_dp->aux, DP_PSR_STATUS, &val);
-	if (ret != 1)
-		return ret < 0 ? ret : -EIO;
+	ret = psr_get_status_and_error_status(intel_dp, &status, &error_status);
+	if (ret)
+		return ret;
 
-	val &= DP_PSR_SINK_STATE_MASK;
-	if (val < ARRAY_SIZE(sink_status))
-		str = sink_status[val];
+	status &= DP_PSR_SINK_STATE_MASK;
+	if (status < ARRAY_SIZE(sink_status))
+		str = sink_status[status];
 	else
 		str = "unknown";
 
-	seq_printf(m, "Sink PSR status: 0x%x [%s]\n", val, str);
+	seq_printf(m, "Sink PSR status: 0x%x [%s]\n", status, str);
 
-	return 0;
+	seq_printf(m, "Sink PSR error status: 0x%x", error_status);
+
+	if (error_status & (DP_PSR_RFB_STORAGE_ERROR |
+			    DP_PSR_VSC_SDP_UNCORRECTABLE_ERROR |
+			    DP_PSR_LINK_CRC_ERROR))
+		seq_puts(m, ":\n");
+	else
+		seq_puts(m, "\n");
+	if (error_status & DP_PSR_RFB_STORAGE_ERROR)
+		seq_puts(m, "\tPSR RFB storage error\n");
+	if (error_status & DP_PSR_VSC_SDP_UNCORRECTABLE_ERROR)
+		seq_puts(m, "\tPSR VSC SDP uncorrectable error\n");
+	if (error_status & DP_PSR_LINK_CRC_ERROR)
+		seq_puts(m, "\tPSR Link CRC error\n");
+
+	return ret;
 }
 DEFINE_SHOW_ATTRIBUTE(i915_psr_sink_status);
 
-- 
2.34.1

