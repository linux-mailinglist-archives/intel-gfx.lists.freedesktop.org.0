Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPRUIlfzBmqtpQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 12:20:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B20B54D343
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 12:20:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFC6E10E5FF;
	Fri, 15 May 2026 10:20:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=worksmobile.com header.i=@worksmobile.com header.b="n8kHmuWE";
	dkim=pass (1024-bit key; unprotected) header.d=korea.ac.kr header.i=@korea.ac.kr header.b="Zc9nNL6n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 602 seconds by postgrey-1.36 at gabe;
 Thu, 14 May 2026 19:42:33 UTC
Received: from cvsmtppost105.wmail.worksmobile.com
 (cvsmtppost105.wmail.worksmobile.com [125.209.209.76])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5766510E3DB
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2026 19:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=worksmobile.com;
 s=s20171120; t=1778787150;
 bh=1eHtKfnZZvV2FZWSbFdMFCZ/Jeqh4dQweFotTtU0Uak=;
 h=From:To:Subject:Date:Message-Id:From:Subject:Feedback-ID:
 X-Works-Security;
 b=n8kHmuWElZGmiBaw0VKb3pQgBkPBbzRCcjMfvQiLc1uIJsH8+c7aG/tlQmgqwlgBl
 GqMHpIGk8xi1sUoaSIUU2rTfALamHYaUASDLa6vTkEcx8j6pMhZFc0L8bE8OUch8/y
 /ZNnpZaBAqZcv/OR53ocUwspk/z8hHZtnyHhJbk/HV4eLZwCW8PqZW5n5+sjBwy8ok
 So17h+JjaMJJXHPTRLBe6maPxx8+1cBGYf6wzq/vuJ2bYdSyGeTasLSyyqz0njUgJv
 f2KA1V/xpHwNvXLqQb/mWaFTrq75XtF2fE+uN3fkmtN8RVkRfaYJRI/X8TZD1SSI95
 pBabM9LX+o/pg==
X-Originating-IP: 163.152.163.130
Received: from cvsendbo001.wmail ([10.113.20.163])
 by cvsmtppost105.wmail.worksmobile.com with ESMTP id V-k3iwlWTcClvV6sWv-7zA
 for <intel-gfx@lists.freedesktop.org>;
 Thu, 14 May 2026 19:32:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=korea.ac.kr;
 s=naverworks; t=1778787150;
 bh=1eHtKfnZZvV2FZWSbFdMFCZ/Jeqh4dQweFotTtU0Uak=;
 h=From:To:Subject:Date:Message-Id:From:Subject:Feedback-ID:
 X-Works-Security;
 b=Zc9nNL6nQmVpoqHx3BhhpSVgEdphZnO22JN7CihzTL/vanUJo7RFGjGO9fT9gOHRP
 hggV07eGEVMd7EaiU4HQhOXF24/hg6C5JGXUaJ7Go3SNeH+6UjbZkEhbyIcrIJXEUq
 GZ8Zr4BtdzWI/JevJzUZAl0umBZrKqvlgwGP0+Og=
X-Session-ID: DSRmjtN-SyWT0Zk01YbWfA
X-Originating-IP: 163.152.163.130
X-Works-Send-Opt: penljAIYjHm/FqM9FqJYFxMqFNwYjAg=
X-Works-Smtp-Source: A9K9Fq2XFqJZ+HmlFAbd+6E=
Received: from s2lab05.. ([163.152.163.130])
 by jvnsmtp403.gwmail.worksmobile.com with ESMTP id DSRmjtN-SyWT0Zk01YbWfA
 for <multiple recipients>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Thu, 14 May 2026 19:32:29 -0000
From: Ingyu Jang <ingyujang25@korea.ac.kr>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] drm/i915/gt: Use IS_ERR() check for kernel_context() in
 selftests
Date: Fri, 15 May 2026 04:32:27 +0900
Message-Id: <20260514193227.2472962-1-ingyujang25@korea.ac.kr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 15 May 2026 10:20:01 +0000
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
X-Rspamd-Queue-Id: 9B20B54D343
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[korea.ac.kr,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[worksmobile.com:s=s20171120,korea.ac.kr:s=naverworks];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FORGED_SENDER(0.00)[ingyujang25@korea.ac.kr,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[worksmobile.com:+,korea.ac.kr:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	HAS_XOIP(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ingyujang25@korea.ac.kr,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

kernel_context() returns an error pointer on failure, never NULL, so
the NULL checks on its return value are unreachable. On a real
allocation failure the subsequent dereference of the returned ERR_PTR
(e.g. ctx_hi->sched.priority = ...) would oops the test kernel.

Use IS_ERR() and propagate the actual error via PTR_ERR() in
live_preempt(), live_late_preempt(), live_preempt_timeout() and
preempt_client_init().

Signed-off-by: Ingyu Jang <ingyujang25@korea.ac.kr>
---
 drivers/gpu/drm/i915/gt/selftest_execlists.c | 28 ++++++++++++--------
 1 file changed, 17 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 21e5ed9f72a30..36f51805f74e3 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -1742,13 +1742,15 @@ static int live_preempt(void *arg)
 	int err = -ENOMEM;
 
 	ctx_hi = kernel_context(gt->i915, NULL);
-	if (!ctx_hi)
-		return -ENOMEM;
+	if (IS_ERR(ctx_hi))
+		return PTR_ERR(ctx_hi);
 	ctx_hi->sched.priority = I915_CONTEXT_MAX_USER_PRIORITY;
 
 	ctx_lo = kernel_context(gt->i915, NULL);
-	if (!ctx_lo)
+	if (IS_ERR(ctx_lo)) {
+		err = PTR_ERR(ctx_lo);
 		goto err_ctx_hi;
+	}
 	ctx_lo->sched.priority = I915_CONTEXT_MIN_USER_PRIORITY;
 
 	if (igt_spinner_init(&spin_hi, gt))
@@ -1834,12 +1836,14 @@ static int live_late_preempt(void *arg)
 	int err = -ENOMEM;
 
 	ctx_hi = kernel_context(gt->i915, NULL);
-	if (!ctx_hi)
-		return -ENOMEM;
+	if (IS_ERR(ctx_hi))
+		return PTR_ERR(ctx_hi);
 
 	ctx_lo = kernel_context(gt->i915, NULL);
-	if (!ctx_lo)
+	if (IS_ERR(ctx_lo)) {
+		err = PTR_ERR(ctx_lo);
 		goto err_ctx_hi;
+	}
 
 	if (igt_spinner_init(&spin_hi, gt))
 		goto err_ctx_lo;
@@ -1934,8 +1938,8 @@ struct preempt_client {
 static int preempt_client_init(struct intel_gt *gt, struct preempt_client *c)
 {
 	c->ctx = kernel_context(gt->i915, NULL);
-	if (!c->ctx)
-		return -ENOMEM;
+	if (IS_ERR(c->ctx))
+		return PTR_ERR(c->ctx);
 
 	if (igt_spinner_init(&c->spin, gt))
 		goto err_ctx;
@@ -3384,13 +3388,15 @@ static int live_preempt_timeout(void *arg)
 		return 0;
 
 	ctx_hi = kernel_context(gt->i915, NULL);
-	if (!ctx_hi)
-		return -ENOMEM;
+	if (IS_ERR(ctx_hi))
+		return PTR_ERR(ctx_hi);
 	ctx_hi->sched.priority = I915_CONTEXT_MAX_USER_PRIORITY;
 
 	ctx_lo = kernel_context(gt->i915, NULL);
-	if (!ctx_lo)
+	if (IS_ERR(ctx_lo)) {
+		err = PTR_ERR(ctx_lo);
 		goto err_ctx_hi;
+	}
 	ctx_lo->sched.priority = I915_CONTEXT_MIN_USER_PRIORITY;
 
 	if (igt_spinner_init(&spin_lo, gt))
-- 
2.34.1

