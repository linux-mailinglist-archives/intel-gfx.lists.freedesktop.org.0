Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hJFkEeWdR2pvcQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 13:32:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D02701E31
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 13:32:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=aurtBff2;
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D335710F7DA;
	Fri,  3 Jul 2026 11:32:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B152210F7C0;
 Fri,  3 Jul 2026 11:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783078356;
 bh=0xLvIPUF7dUXs0cb7vXUK9dMYuEsI+fTHrltlGFTpL4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aurtBff27jo4V0dRw+3iaOiVqweOLFl8efwKCZUEYMwJsQTJIObVsDBbcOhbBY8MR
 BEb20aRwHENkTbvZzN/e3b8yEfI89GSR/XYqXCV+gj/qLjLWdejtDwU/rdBRMSz8kq
 gFnxyPKsvFIRx/WdW0zTFOoji1oAqXdbXQ3c3DnlXGUfY7RUUjg/ijenM3bUtsNsaJ
 +omKq9oQ1MVqeqJTCy++/wI7vERV8qivjF3tNiwvGbU2/C1zn805NHnUTx1wNrRzOD
 1WT1A90odal94EjS0wOt1mC/ps+QEE3/rRLR1zJGRKuL33cF4PhE+2vWuI4Msd4s0Q
 rooXMgZeVz80w==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v2 6/7] drm/i915: Use sleeping selftests for igt_atomic on
 PREEMPT_RT
Date: Fri,  3 Jul 2026 13:32:58 +0200
Message-ID: <20260703113259.801374-7-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260703113259.801374-1-dev@lankhorst.se>
References: <20260703113259.801374-1-dev@lankhorst.se>
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
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lankhorst.se:from_mime,lankhorst.se:email,lankhorst.se:mid,lankhorst.se:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 14D02701E31

This makes the i915 selftests slightly happier, especially
related to GPU reset.

I believe this may be a better approach than trying to convert
uncore->lock to raw_spinlock

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/selftests/igt_atomic.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/selftests/igt_atomic.c b/drivers/gpu/drm/i915/selftests/igt_atomic.c
index fb506b6990956..8ae39cf570b76 100644
--- a/drivers/gpu/drm/i915/selftests/igt_atomic.c
+++ b/drivers/gpu/drm/i915/selftests/igt_atomic.c
@@ -39,7 +39,14 @@ static void __hardirq_end(void)
 	local_irq_enable();
 }
 
+static void __maybe_unused __nop(void)
+{}
+
 const struct igt_atomic_section igt_atomic_phases[] = {
+#if IS_ENABLED(CONFIG_PREEMPT_RT)
+	{ "sleeping", __nop, __nop },
+	{ },
+#endif
 	{ "preempt", __preempt_begin, __preempt_end },
 	{ "softirq", __softirq_begin, __softirq_end },
 	{ "hardirq", __hardirq_begin, __hardirq_end },
-- 
2.53.0

