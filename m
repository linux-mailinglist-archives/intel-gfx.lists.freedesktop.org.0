Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ckCIIuyVS2r8VwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:47:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3610C7100C7
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:47:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=TLUhJaYt;
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04C2710E8F7;
	Mon,  6 Jul 2026 11:47:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 646E210E8F2;
 Mon,  6 Jul 2026 11:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783338466;
 bh=aJ674jKfdfYzA1796ckniFKjkGKFKlysonuWe+TKQpQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TLUhJaYtSY5MR0Kok2DkVBnDkSsmSz07MrGgkqPpvksEMfePSltfUT5D+N7Slp6bI
 20z6C8D2ycwoteHWCdDEyrDhfaFS6KW5ioJT+bOesNrSUfJHeK7zsSUZPGBBAscXi+
 fll31Fb0NowH1KsYhO4zbZpi1aakI4NC7O8xr1vC82ZiRYIRYhNYoN/cbLZA0EQP8o
 xkDFUfEdKEZU+5wmYdIFYlYCDfL+BxE6aCjUbR0dBrT9xpEiQvKtMVuNs9jf0uPhE0
 BnIc02GLeynceW/rVomt4mCWaWq60UH+QldMAJKGrgZNH6NesfbjdppdsEasQQQdIV
 B1AE5epm0aiFQ==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 "John B. Wyatt IV" <jwyatt@redhat.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v4 3/7] drm/i915/guc: Consider also RCU depth in busy loop.
Date: Mon,  6 Jul 2026 13:48:19 +0200
Message-ID: <20260706114823.752313-4-dev@lankhorst.se>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linutronix.de:email,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3610C7100C7

From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

intel_guc_send_busy_loop() looks at in_atomic() and irqs_disabled() to
decide if it should busy-spin while waiting or if it may sleep.
Both checks will report false on PREEMPT_RT if sleeping spinlocks are
acquired leading to RCU splats while the function sleeps.

Check also if RCU has been disabled.

Reported-by: "John B. Wyatt IV" <jwyatt@redhat.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 053780f562c1a..b25fa8f4dc4bd 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -362,7 +362,7 @@ static inline int intel_guc_send_busy_loop(struct intel_guc *guc,
 {
 	int err;
 	unsigned int sleep_period_ms = 1;
-	bool not_atomic = !in_atomic() && !irqs_disabled();
+	bool not_atomic = !in_atomic() && !irqs_disabled() && !rcu_preempt_depth();
 
 	/*
 	 * FIXME: Have caller pass in if we are in an atomic context to avoid
-- 
2.53.0

