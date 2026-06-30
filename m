Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hHbIDODfQ2ptkwoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 17:25:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 825FE6E5E91
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 17:25:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=XlliwJGQ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16F3110E206;
	Tue, 30 Jun 2026 15:25:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4959110E206
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2026 15:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782833116; x=1814369116;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=V9TI0hFErY4Qy3TtAwY02Ay14Kbdm2ZoGGdNH9kgIyE=;
 b=XlliwJGQ4tm9uQb6XWjOlAzO/xdCIZ005GdSLE91TKnHFPE5560E8ULL
 aNaP5QiqnKPUtw2k13mf4g+GEnWdMakfvQRdk0pBJdfvFCFiUdy9bq+4f
 c8cI7HtWOkYp6sLwZQoxH38d5eZ9I7quQXlPiZedOr9C8yasJMVJQQ+u5
 PNRIN8sdtSsNMSmvgFaMkDs2Rhq6wBhbRy/Q4+c34K63f6G5MsaMobok4
 pWoSj9YQ3rADw5QzjPGwuSMw66zxVO4mGeeZoCfsV7XTGfLQsSXXOeQ2T
 Gw8kJ9WbB7w8uCqENfPUXLD4WqaETVH+d1GsuBOvVok1D7+ddwJaDXNEz Q==;
X-CSE-ConnectionGUID: 9be8OyCkRF69m7v2mW/wfQ==
X-CSE-MsgGUID: hOo/f9fpR6i6mwyLmIzZAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="87232658"
X-IronPort-AV: E=Sophos;i="6.24,234,1774335600"; d="scan'208";a="87232658"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 08:25:16 -0700
X-CSE-ConnectionGUID: Sl4JVyUJShWEpmfm4hlZuQ==
X-CSE-MsgGUID: p9Hdq/qRTpOlIt5b9cx2Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,234,1774335600"; d="scan'208";a="249661115"
Received: from osgc-sh-dragon.sh.intel.com ([10.239.81.44])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 08:25:14 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: alex.zuo@intel.com, jonathan.cavitt@intel.com, jani.nikula@linux.intel.com,
 andi.shyti@intel.com
Subject: [PATCH v3] drm/i915/gt: Use poll_timeout_us in place of sliding sleep
 window
Date: Tue, 30 Jun 2026 23:25:11 +0800
Message-ID: <20260630152511.1401029-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 825FE6E5E91

The functions intel_guc_send_busy_loop and ct_send can theoretically
loop forever.  In the former case, intel_guc_send_busy_loop can iterate
forever if intel_guc_send_nb repeatedly returns -EBUSY.  In the latter
case, ct_send can loop forever if the guc-to-host or host-to-guc buffers
get stuck in a full state.

Rework the functions to use the poll_timeout_us family of functions
instead of calculating sleep_period_ms repeatedly.  In both cases now,
if the loop condition is not met after 10 minutes, the function will
report it as a failure.

This also resolves a static analysis issue involving sleep_period_ms
overflowing after several shift-left-logical calls.

v2:
- Reduce default sleep/udelay duration (jcavitt)

v3:
- Use atomic in ct_send (jcavitt)

Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h    | 32 +++++++++++------------
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 19 +++++---------
 2 files changed, 23 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 053780f562c1..13be4f7e7ab7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -7,6 +7,7 @@
 #define _INTEL_GUC_H_
 
 #include <linux/delay.h>
+#include <linux/iopoll.h>
 #include <linux/iosys-map.h>
 #include <linux/xarray.h>
 
@@ -360,8 +361,7 @@ static inline int intel_guc_send_busy_loop(struct intel_guc *guc,
 					   u32 g2h_len_dw,
 					   bool loop)
 {
-	int err;
-	unsigned int sleep_period_ms = 1;
+	int err, timedout;
 	bool not_atomic = !in_atomic() && !irqs_disabled();
 
 	/*
@@ -374,20 +374,20 @@ static inline int intel_guc_send_busy_loop(struct intel_guc *guc,
 	/* No sleeping with spin locks, just busy loop */
 	might_sleep_if(loop && not_atomic);
 
-retry:
-	err = intel_guc_send_nb(guc, action, len, g2h_len_dw);
-	if (unlikely(err == -EBUSY && loop)) {
-		if (likely(not_atomic)) {
-			if (msleep_interruptible(sleep_period_ms))
-				return -EINTR;
-			sleep_period_ms = sleep_period_ms << 1;
-		} else {
-			cpu_relax();
-		}
-		goto retry;
-	}
-
-	return err;
+	if (!loop)
+		return intel_guc_send_nb(guc, action, len, g2h_len_dw);
+
+	if (not_atomic)
+		timedout = poll_timeout_us(err = intel_guc_send_nb(guc, action,
+								   len, g2h_len_dw),
+					   err != -EBUSY, USEC_PER_MSEC,
+					   600 * USEC_PER_SEC, false);
+	else
+		timedout = poll_timeout_us_atomic(err = intel_guc_send_nb(guc, action,
+									  len, g2h_len_dw),
+						  err != -EBUSY, USEC_PER_MSEC,
+						  600 * USEC_PER_SEC, false);
+	return timedout ?: err;
 }
 
 /* Only call this from the interrupt handler code */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 1c455d84bf9d..dc4a5486b42c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -716,7 +716,6 @@ static int ct_send(struct intel_guc_ct *ct,
 	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
 	struct ct_request request;
 	unsigned long flags;
-	unsigned int sleep_period_ms = 1;
 	bool send_again;
 	u32 fence;
 	int err;
@@ -736,22 +735,18 @@ static int ct_send(struct intel_guc_ct *ct,
 	 * rare. Reserving the maximum size in the G2H credits as we don't know
 	 * how big the response is going to be.
 	 */
-retry:
 	spin_lock_irqsave(&ctb->lock, flags);
-	if (unlikely(!h2g_has_room(ct, len + GUC_CTB_HDR_LEN) ||
-		     !g2h_has_room(ct, GUC_CTB_HXG_MSG_MAX_LEN))) {
+	err = poll_timeout_us_atomic(err = 0,
+				     !h2g_has_room(ct, len + GUC_CTB_HDR_LEN) ||
+				     !g2h_has_room(ct, GUC_CTB_HXG_MSG_MAX_LEN),
+				     USEC_PER_MSEC, 600 * USEC_PER_SEC, false);
+
+	if (err) {
 		if (ct->stall_time == KTIME_MAX)
 			ct->stall_time = ktime_get();
 		spin_unlock_irqrestore(&ctb->lock, flags);
 
-		if (unlikely(ct_deadlocked(ct)))
-			return -EPIPE;
-
-		if (msleep_interruptible(sleep_period_ms))
-			return -EINTR;
-		sleep_period_ms = sleep_period_ms << 1;
-
-		goto retry;
+		return unlikely(ct_deadlocked(ct)) ? -EPIPE : err;
 	}
 
 	ct->stall_time = KTIME_MAX;
-- 
2.53.0

