Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id S6jMHMB6OWr5uAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 20:11:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4370A6B1BAE
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 20:11:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=Bti9F39F;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B7D010E823;
	Mon, 22 Jun 2026 18:10:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52E3210E807;
 Mon, 22 Jun 2026 18:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1782151847;
 bh=0xLvIPUF7dUXs0cb7vXUK9dMYuEsI+fTHrltlGFTpL4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Bti9F39FKc2fp4SciYOQ5pEicpu7mBTarI6pwwiJWjg6IGN934huYESLnZPP0el4q
 KSP/YippnBwdMQlJd3RRu2oedSnLE/NpxzgukyzluQY3D4CPP5KnD+InkSA2zSYKtt
 RQoh8UATfcleoLkO/7XSMC/nAWAbpzTY1ib9sOza1NqUCONRwPTdi5Wj217yUBds/i
 ZoWa3uBl25x2CAxrd/lvh/z5yjfmr8DdL0YZIgvQzk1rg4qQU8qe7B/3jeLWVNo5ef
 hD5gePl7kPU1laWwNourJqOCMvEnwYxuDnQi4D0Ly+LAvSFVBSd7ArsGdmYT/cgk0s
 le8fXbTxTUrYw==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v9 21/30] drm/i915: Use sleeping selftests for igt_atomic on
 PREEMPT_RT
Date: Mon, 22 Jun 2026 20:10:34 +0200
Message-ID: <20260622181044.39335-22-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260622181044.39335-1-dev@lankhorst.se>
References: <20260622181044.39335-1-dev@lankhorst.se>
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
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4370A6B1BAE

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

