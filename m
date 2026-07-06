Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8V6CKjfLS2qBaQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 17:35:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4ED712A9A
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 17:35:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VBi7i7YW;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 859A310E396;
	Mon,  6 Jul 2026 15:35:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D19E610E396
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2026 15:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783352116; x=1814888116;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=m5oIkkuF9J7sLCQURHXTJULXvH7SKdLyT6qQVYPbm8c=;
 b=VBi7i7YW1ojftO3udCZy5VL6y0E5hAb2/MtNGILgVHKG+SC2i87SaNoW
 p52vytCL3NI1DRCUCRsay4iAPJmj0AwkwjqGxHhtIemwZb/HAezjtXoTn
 N8VPJhRdu9yN5gxLSu2gC3ARpKKL7aPYtNI5y76CmAn37IckCp4c62moS
 I4NjWdmYltetR5MnFx7hFxoQbxghH7wB9S4HZewBSO0MYLLCSOWqFu3ME
 LsPPA9amRIbanZrlb70eTfVZzdBVkSs7zUu44khUSDygyBnDdnL533ELy
 7bCFCoRJi4qjnwRPMap9Yr8zwtdgwSZDGHD0qF09krJx2h/OU6dEgm7is Q==;
X-CSE-ConnectionGUID: 9HzrjHcDRoiw3XVrxjycrg==
X-CSE-MsgGUID: u+tLC0h7Q5eUCeGwhYVfuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="83761427"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="83761427"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 08:35:16 -0700
X-CSE-ConnectionGUID: hV/ivQLMR/y7sWdpXjd4Tw==
X-CSE-MsgGUID: vPNrzCQyTXGj8gyh8CSvhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="255682623"
Received: from osgc-sh-dragon.sh.intel.com ([10.239.81.44])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 08:35:14 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: alex.zuo@intel.com, jonathan.cavitt@intel.com, jani.nikula@linux.intel.com,
 andi.shyti@intel.com, krzysztof.karas@intel.com
Subject: [PATCH v4] drm/i915/gt: Use poll_timeout_us in place of sliding sleep
 window
Date: Mon,  6 Jul 2026 23:35:10 +0800
Message-ID: <20260706153510.1466259-1-jonathan.cavitt@intel.com>
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
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DF4ED712A9A

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

v4:
- Rework ct_send reimplementation to better preserve original logic
  (Andi)
- Define 10 minutes to remove magic numbers (Krzysztof)

Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h    | 33 +++++----
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 90 ++++++++++++++---------
 2 files changed, 71 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 053780f562c1..2d3adfbcd163 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -7,6 +7,7 @@
 #define _INTEL_GUC_H_
 
 #include <linux/delay.h>
+#include <linux/iopoll.h>
 #include <linux/iosys-map.h>
 #include <linux/xarray.h>
 
@@ -354,14 +355,14 @@ intel_guc_send_and_receive(struct intel_guc *guc, const u32 *action, u32 len,
 				 response_buf, response_buf_size, 0);
 }
 
+#define POLL_TIMEOUT_DUR	(600 * USEC_PER_SEC)
 static inline int intel_guc_send_busy_loop(struct intel_guc *guc,
 					   const u32 *action,
 					   u32 len,
 					   u32 g2h_len_dw,
 					   bool loop)
 {
-	int err;
-	unsigned int sleep_period_ms = 1;
+	int err, timedout;
 	bool not_atomic = !in_atomic() && !irqs_disabled();
 
 	/*
@@ -374,20 +375,20 @@ static inline int intel_guc_send_busy_loop(struct intel_guc *guc,
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
+					   POLL_TIMEOUT_DUR, false);
+	else
+		timedout = poll_timeout_us_atomic(err = intel_guc_send_nb(guc, action,
+									  len, g2h_len_dw),
+						  err != -EBUSY, USEC_PER_MSEC,
+						  POLL_TIMEOUT_DUR, false);
+	return timedout ?: err;
 }
 
 /* Only call this from the interrupt handler code */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 1c455d84bf9d..9f9fb5b10ed4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -706,37 +706,19 @@ static int ct_send_nb(struct intel_guc_ct *ct,
 	return ret;
 }
 
-static int ct_send(struct intel_guc_ct *ct,
-		   const u32 *action,
-		   u32 len,
-		   u32 *response_buf,
-		   u32 response_buf_size,
-		   u32 *status)
+static int ct_lazy_spin(struct intel_guc_ct *ct,
+			struct ct_request *request,
+			const u32 *action,
+			u32 len,
+			u32 *response_buf,
+			u32 response_buf_size,
+			u32 *status)
 {
 	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
-	struct ct_request request;
 	unsigned long flags;
-	unsigned int sleep_period_ms = 1;
-	bool send_again;
 	u32 fence;
 	int err;
 
-	GEM_BUG_ON(!ct->enabled);
-	GEM_BUG_ON(!len);
-	GEM_BUG_ON(len > GUC_CTB_HXG_MSG_MAX_LEN - GUC_CTB_HDR_LEN);
-	GEM_BUG_ON(!response_buf && response_buf_size);
-	might_sleep();
-
-resend:
-	send_again = false;
-
-	/*
-	 * We use a lazy spin wait loop here as we believe that if the CT
-	 * buffers are sized correctly the flow control condition should be
-	 * rare. Reserving the maximum size in the G2H credits as we don't know
-	 * how big the response is going to be.
-	 */
-retry:
 	spin_lock_irqsave(&ctb->lock, flags);
 	if (unlikely(!h2g_has_room(ct, len + GUC_CTB_HDR_LEN) ||
 		     !g2h_has_room(ct, GUC_CTB_HXG_MSG_MAX_LEN))) {
@@ -746,31 +728,67 @@ static int ct_send(struct intel_guc_ct *ct,
 
 		if (unlikely(ct_deadlocked(ct)))
 			return -EPIPE;
-
-		if (msleep_interruptible(sleep_period_ms))
-			return -EINTR;
-		sleep_period_ms = sleep_period_ms << 1;
-
-		goto retry;
+		return -EBUSY;
 	}
 
 	ct->stall_time = KTIME_MAX;
 
 	fence = ct_get_next_fence(ct);
-	request.fence = fence;
-	request.status = 0;
-	request.response_len = response_buf_size;
-	request.response_buf = response_buf;
+	request->fence = fence;
+	request->status = 0;
+	request->response_len = response_buf_size;
+	request->response_buf = response_buf;
 
 	spin_lock(&ct->requests.lock);
-	list_add_tail(&request.link, &ct->requests.pending);
+	list_add_tail(&request->link, &ct->requests.pending);
 	spin_unlock(&ct->requests.lock);
 
 	err = ct_write(ct, action, len, fence, 0);
 	g2h_reserve_space(ct, GUC_CTB_HXG_MSG_MAX_LEN);
 
 	spin_unlock_irqrestore(&ctb->lock, flags);
+	return err;
+}
 
+static int ct_send(struct intel_guc_ct *ct,
+		   const u32 *action,
+		   u32 len,
+		   u32 *response_buf,
+		   u32 response_buf_size,
+		   u32 *status)
+{
+	struct ct_request request;
+	unsigned long flags;
+	bool send_again;
+	int err, timedout;
+
+	GEM_BUG_ON(!ct->enabled);
+	GEM_BUG_ON(!len);
+	GEM_BUG_ON(len > GUC_CTB_HXG_MSG_MAX_LEN - GUC_CTB_HDR_LEN);
+	GEM_BUG_ON(!response_buf && response_buf_size);
+	might_sleep();
+
+resend:
+	send_again = false;
+
+	/*
+	 * We use a lazy spin wait loop here as we believe that if the CT
+	 * buffers are sized correctly the flow control condition should be
+	 * rare. Reserving the maximum size in the G2H credits as we don't know
+	 * how big the response is going to be.
+	 */
+	timedout = poll_timeout_us_atomic(err = ct_lazy_spin(ct, &request, action,
+							     len, response_buf,
+							     response_buf_size,
+							     status),
+					  err != -EBUSY, USEC_PER_MSEC,
+					  POLL_TIMEOUT_DUR, false);
+
+	/* This is only the case if ct is deadlocked or we time out */
+	if (ct->stall_time != KTIME_MAX)
+		return timedout ?: err;
+
+	/* Otherwise, ct_write failed and we need to clean up */
 	if (unlikely(err))
 		goto unlink;
 
-- 
2.53.0

