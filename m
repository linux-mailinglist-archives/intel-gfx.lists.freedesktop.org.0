Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aNB1LrMUi2n5PQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 12:21:23 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C68411A117
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 12:21:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A9FC10E17F;
	Tue, 10 Feb 2026 11:21:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lu4HilAm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F069510E10F;
 Tue, 10 Feb 2026 11:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770722479; x=1802258479;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=B/KarfDUmBJUVGjSILUNbu4cSeVHblKvwghCV6bT3hU=;
 b=Lu4HilAmtN8K5iRKU735oySVTvXL/3DwwGvHPn2NAVUdFPUKeIl+53zM
 VtqJopNWrpOqS4Xy5zkUuIbS8fqrTpBZlKUiB5qTa5tVzG+LcU8bOPEEn
 QXVAPyDs91yiWW8AHAtuTIUA5rLwg6hj6qoDZ2gUKQ2VQCz/buX6WvoSx
 WrcqaKZbhYYN35Uzbq7kiIC0Kq7mvH6/25YSH2EshO/Hh2CDBn4QwzR1V
 mHiUoDpRUddE5fbD4Pat8VKqt9o2hHJfVaXqVac0mjDpcKT46UbLxnksi
 EbMxDqdcmpamxoVOMPn+FygiN9ALg9TRDXBlFRZ1LGYjrq3/tjJ2Lyf44 w==;
X-CSE-ConnectionGUID: 6menQxpYQNq5pt0/I4uufA==
X-CSE-MsgGUID: dhsLejWDQlSqK3+VT128mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="75693246"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="75693246"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 03:21:18 -0800
X-CSE-ConnectionGUID: vxzY8NwUTg+T92Op8s7MmA==
X-CSE-MsgGUID: 3CTpHz1wT3OjOrrTyCwVeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="216426334"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by orviesa004.jf.intel.com with ESMTP; 10 Feb 2026 03:21:18 -0800
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v1] drm/i915/aux: use polling when irqs are unavailable
Date: Tue, 10 Feb 2026 12:19:52 +0100
Message-ID: <20260210111952.4138954-1-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 1C68411A117
X-Rspamd-Action: no action

PTL with physically disconnected display was observed to have 40s longer
execution time when testing xe_fault_injection@xe_guc_mmio_send_recv.
The issue has not been seen when reverting commit 40a9f77a28fa ("Revert
"drm/i915/dp: change aux_ctl reg read to polling read"").

Apparently the configuration suffers from not having AUX enabled when
using interrupts. One probable cause can be xe enabling interrupts too
late: interrupts need memory allocations which currently can't be done
before the display FB takeover is done.

As for now, use polling for AUX in case interrupts are unavailable.

Fixes: 40a9f77a28fa ("Revert "drm/i915/dp: change aux_ctl reg read to polling read"")
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index b20ec3e589fad..9c9b6410366d5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -12,6 +12,7 @@
 #include "intel_dp.h"
 #include "intel_dp_aux.h"
 #include "intel_dp_aux_regs.h"
+#include "intel_parent.h"
 #include "intel_pps.h"
 #include "intel_quirks.h"
 #include "intel_tc.h"
@@ -60,18 +61,29 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
 	struct intel_display *display = to_intel_display(intel_dp);
 	i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
 	const unsigned int timeout_ms = 10;
+	bool done = true;
 	u32 status;
-	bool done;
+	int ret;
 
+	if (intel_parent_irq_enabled(display)) {
 #define C (((status = intel_de_read_notrace(display, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
-	done = wait_event_timeout(display->gmbus.wait_queue, C,
-				  msecs_to_jiffies_timeout(timeout_ms));
+		done = wait_event_timeout(display->gmbus.wait_queue, C,
+					  msecs_to_jiffies_timeout(timeout_ms));
+
+#undef C
+	} else {
+		ret = intel_de_wait_ms(display, ch_ctl,
+				       DP_AUX_CH_CTL_SEND_BUSY, 0,
+				       timeout_ms, &status);
+
+		if (ret == -ETIMEDOUT)
+			done = false;
+	}
 
 	if (!done)
 		drm_err(display->drm,
 			"%s: did not complete or timeout within %ums (status 0x%08x)\n",
 			intel_dp->aux.name, timeout_ms, status);
-#undef C
 
 	return status;
 }
-- 
2.45.2

