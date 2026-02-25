Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AM/HIgH3nmn7YQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 14:20:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC15197F4B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 14:20:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB24210E789;
	Wed, 25 Feb 2026 13:19:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="Qi0o5gnL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD09F10E77D
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Feb 2026 13:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1772025591;
 bh=/YttZUgmn62XSEh0hwiLQG2joTYu/zUwyvhm/nBW/W4=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=Qi0o5gnL/G6WoJzthXXjea5hCfQlaU2pfurwOIbe/SASz7Cmm01T27adsvx2RnPit
 BoC3gs/xaonelbbCeEZcz3Tl61b0Ed6qeqR7SC5xWDS8jCgXFGBpKGxCuk/4Yp+r76
 pUc5EfhPez/l0gDqp8Rh7dO2uBN2LQg75FZjRUDuT2rOQLvZ44Y8cuHkmZEs0k/1xP
 sslYbpfKLbn9oBgiUQHjmugwlnMfWtGHTA21EQnSFQ1pHsfMmcrj9Nw8muVIKc++aU
 hYV6KgF77L5hIkpdl0dPKmrQJKC1l6VquYaoZRYwegbE0Ae5EHZnvMkLvlOz8cBAfH
 NSnp/TVqpsuaw==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org
Subject: [i915-ci-only NO-REVIEW 19/25] drm/i915/gt: Fix selftests on
 PREEMPT_RT
Date: Wed, 25 Feb 2026 14:19:23 +0100
Message-ID: <20260225131931.60724-20-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260225131931.60724-1-dev@lankhorst.se>
References: <20260225131931.60724-1-dev@lankhorst.se>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lankhorst.se:mid,lankhorst.se:dkim,lankhorst.se:email];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Queue-Id: 5AC15197F4B
X-Rspamd-Action: no action

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
index 10e556a7eac45..c1eff9edd8a5e 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
@@ -277,11 +277,11 @@ static int live_engine_busy_stats(void *arg)
 		st_engine_heartbeat_disable(engine);
 
 		ENGINE_TRACE(engine, "measuring idle time\n");
-		preempt_disable();
+		migrate_disable();
 		de = intel_engine_get_busy_time(engine, &t[0]);
 		udelay(100);
 		de = ktime_sub(intel_engine_get_busy_time(engine, &t[1]), de);
-		preempt_enable();
+		migrate_enable();
 		dt = ktime_sub(t[1], t[0]);
 		if (de < 0 || de > 10) {
 			pr_err("%s: reported %lldns [%d%%] busyness while sleeping [for %lldns]\n",
@@ -316,11 +316,11 @@ static int live_engine_busy_stats(void *arg)
 		}
 
 		ENGINE_TRACE(engine, "measuring busy time\n");
-		preempt_disable();
+		migrate_disable();
 		de = intel_engine_get_busy_time(engine, &t[0]);
 		mdelay(100);
 		de = ktime_sub(intel_engine_get_busy_time(engine, &t[1]), de);
-		preempt_enable();
+		migrate_enable();
 		dt = ktime_sub(t[1], t[0]);
 		if (100 * de < 95 * dt || 95 * de > 100 * dt) {
 			pr_err("%s: reported %lldns [%d%%] busyness while spinning [for %lldns]\n",
-- 
2.51.0

