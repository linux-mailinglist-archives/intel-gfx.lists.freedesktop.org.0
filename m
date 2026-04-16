Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4JvkEnAQ4WnoogAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 18:38:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1352411C7E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 18:38:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 422BC10E8FB;
	Thu, 16 Apr 2026 16:38:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ePZplQpx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BDFC10E266;
 Thu, 16 Apr 2026 16:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776357483; x=1807893483;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Q+oa5H+xwUbYuEJVUU5Ueoo3g8gMI7vpsORiR9BNfOw=;
 b=ePZplQpxdLXWFp7ewI2dsXCI/orwlbEGtg4jtvvhyNngP32bTdN7U44y
 Z5SRTQbTV28G8qa6NNrN7P4Xrd6Uri4997ULVp/oawZG5c4FxTrDAtFG+
 HLMgNW30zy/VMRX6NlWaymwno0z8IFJTvHmLuuO+NFzywTbE4a96rzQX6
 rrZfM3+r6AkqWeUxwmsL5JBRsV3rWNRrj6ih81spZa/JVKwHAbdyCci8n
 c0niQTiHziHIc+36On+PHm900SPKbOteCdU460GDB06hgDdrQBxvYiFPn
 8LJBSyBcEHJnuqg/nlwUkk1oMzhTdgYlmtT9VcyEHlRbr2wC4Vdbol9Yq Q==;
X-CSE-ConnectionGUID: cttsVBvfTiWMdkSxT/gnKQ==
X-CSE-MsgGUID: InjNE2x8RnOVnKmCP2FHFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="94770981"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="94770981"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 09:38:03 -0700
X-CSE-ConnectionGUID: /ritZpWQSpCLdwRMR8QXIQ==
X-CSE-MsgGUID: uOk5alEBRLeIcm1aE/Bvwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="227637116"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa007.fm.intel.com with ESMTP; 16 Apr 2026 09:38:01 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [RESEND] drm/i915/aux: use polling when irqs are unavailable
Date: Thu, 16 Apr 2026 18:37:44 +0200
Message-ID: <20260416163744.288107-1-michal.grzelak@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: A1352411C7E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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

