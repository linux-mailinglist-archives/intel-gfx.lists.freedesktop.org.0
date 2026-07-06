Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DBCVDO2VS2r+VwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:47:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F36A57100CF
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:47:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=f7Z1+2px;
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04A2010E8F8;
	Mon,  6 Jul 2026 11:47:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06EC710E8F8;
 Mon,  6 Jul 2026 11:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783338466;
 bh=T/OQGU8prg+GP3iTibN/WUfOED1EMA169ETe4ayUGKY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=f7Z1+2pxItxDU78d8u9hpUE8xf/L39ztFNn3g0PqOiMaSAluItnzzvDvmymKP8UJ0
 bYtCEAPSmnD/Bz8xJ9Q0KLLwgeTNSbD3kcvL3ZtbtMGXbXZrLaz1ZxvmLsC0keawFe
 Dea+izg4Fe+TVi6TIu6nlD+C25sGymAC7vSvCmdLJJ+V8ut82LtaqgaqMJVn5iLlUD
 H1IPj9ZCrTOrWkJeTTb3Dzl0UprwlMuUdSnM2vLDwlT9/Yml538jdUoiynEyTZSULD
 wa7/bHPpHwYT+nOQIk2Ush9MrlwsgNFfafrhQ5neUFg2y4PIA5UtllMtBcUUy8Kw+G
 LQnGXBuIIIAqg==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v4 4/7] drm/i915/gt: Fix selftests on PREEMPT_RT
Date: Mon,  6 Jul 2026 13:48:20 +0200
Message-ID: <20260706114823.752313-5-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260706114823.752313-1-dev@lankhorst.se>
References: <20260706114823.752313-1-dev@lankhorst.se>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F36A57100CF

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
2.53.0

