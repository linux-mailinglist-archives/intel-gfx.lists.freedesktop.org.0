Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0M1aKkslp2mrewAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 19:15:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0161F51E2
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 19:15:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 656C910E89E;
	Tue,  3 Mar 2026 18:15:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m3wj8BPt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FCCA10E89E
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2026 18:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772561736; x=1804097736;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+JV80Khf83Lz2zPpQin3hf/IEX9b3M/Mbh3jJx1ns9Q=;
 b=m3wj8BPtLHrah1iYXg5wWS1Ev+FIztbifC3pRzW5zvilarjfvZQ6xg5r
 VqND+M98CKWaw4sKj870aJoHHfIAA6cIy2HHkRoJolrhveve45A+nNYjY
 4MwH9h6abRGz2BffBBlodbdMCAhs/xaxJPLMm2ahVvNbFhjPFCly5A5rA
 M+Vc/MtvgqWmQ5tM5uz3zDF/Di6GDQ4q3QGVo+yi+guOUy5ttFK9/RGX5
 ThUtn4NuZvV7Iiy2d66r2fgZbUrlnrgceVbrh3L+C6L2at0Z6DLw+bz2G
 uKV0BduIub5MlPHc6aM/RyL+TwSBfsY7hzvAsHNOedStw9miUN++NZt/E w==;
X-CSE-ConnectionGUID: /n3YkKCdRb6OqI2uB7/8Gg==
X-CSE-MsgGUID: yHK6DohsToKnBsy0pTXgNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="84953681"
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="84953681"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 10:15:32 -0800
X-CSE-ConnectionGUID: e5c/c0TcQzerl8791t064w==
X-CSE-MsgGUID: JSed6gXeR0W6FDGpuIWHMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="215125653"
Received: from dut4086lnl.fm.intel.com ([10.105.8.132])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 10:15:32 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com,
	alex.zuo@intel.com,
	jonathan.cavitt@intel.com
Subject: [PATCH] drm/i915/gt: Enforce some loop limits
Date: Tue,  3 Mar 2026 18:15:32 +0000
Message-ID: <20260303181531.9953-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.43.0
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
X-Rspamd-Queue-Id: 0F0161F51E2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

The functions intel_guc_send_busy_loop and ct_send can theoretically
loop forever.  In the former case, intel_guc_send_busy_loop can iterate
forever if intel_guc_send_nb repeatedly returns -EBUSY.  In the latter
case, ct_send can loop forever if the guc-to-host or host-to-guc buffers
get stuck in a full state.

Rework the sleep_period_ms values here to count the number of loops that
have occurred and exit after 20.  This lets both functions run for 10
minutes before escaping with -EBUSY (except in the former case if atomic
execution is enabled, but 20 consecutive failures in that case should
still be reported regardless).

This also technically solves a static analysis issue wherein
sleep_period_ms could overflow, but it would take over three weeks of
perpetual sleeping on these functions to ever hit that overflow, so it's
debatable whether this actually needed fixing or not.  At any rate, it's
better to exit early in the error case.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h    | 10 +++++++---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c |  8 +++++---
 2 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 053780f562c1..b4bf12193f75 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -361,7 +361,7 @@ static inline int intel_guc_send_busy_loop(struct intel_guc *guc,
 					   bool loop)
 {
 	int err;
-	unsigned int sleep_period_ms = 1;
+	unsigned int loop_count = 0;
 	bool not_atomic = !in_atomic() && !irqs_disabled();
 
 	/*
@@ -377,13 +377,17 @@ static inline int intel_guc_send_busy_loop(struct intel_guc *guc,
 retry:
 	err = intel_guc_send_nb(guc, action, len, g2h_len_dw);
 	if (unlikely(err == -EBUSY && loop)) {
+		if (loop_count >= 20)
+			return -EBUSY;
+
 		if (likely(not_atomic)) {
-			if (msleep_interruptible(sleep_period_ms))
+			if (msleep_interruptible(1 << loop_count))
 				return -EINTR;
-			sleep_period_ms = sleep_period_ms << 1;
 		} else {
 			cpu_relax();
 		}
+
+		loop_count++;
 		goto retry;
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 8c4da526d461..e4a5697622c8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -716,7 +716,7 @@ static int ct_send(struct intel_guc_ct *ct,
 	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
 	struct ct_request request;
 	unsigned long flags;
-	unsigned int sleep_period_ms = 1;
+	unsigned int loop_count = 0;
 	bool send_again;
 	u32 fence;
 	int err;
@@ -747,9 +747,11 @@ static int ct_send(struct intel_guc_ct *ct,
 		if (unlikely(ct_deadlocked(ct)))
 			return -EPIPE;
 
-		if (msleep_interruptible(sleep_period_ms))
+		if (loop_count >= 20)
+			return -EBUSY;
+
+		if (msleep_interruptible(1 << loop_count++))
 			return -EINTR;
-		sleep_period_ms = sleep_period_ms << 1;
 
 		goto retry;
 	}
-- 
2.43.0

