Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EPYEBGYFcWmgbAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 17:57:10 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E4C5A354
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 17:57:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C0D710E85F;
	Wed, 21 Jan 2026 16:57:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="CyvoUVMI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B56D10E123;
 Wed, 21 Jan 2026 16:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1769014623;
 bh=ktlnlvkoF5Avel/4qBe27tJe8HvghxIj0Bb5hwVH1l0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CyvoUVMIQVU728A/f1xWcFGkZ7oFDfgMp62zc2PcoHFIbg4VyrcFDfGxzA1kVBxY5
 lAFgSnLS0J5sDOZNC0JZ/GnmOXctiquWVZTLkfADke1EICJYWQiTlYAz50vV2gTdo0
 DfXbEte6aqiAHvVS/4IXQ65G4oRYnRKtb92gonyNdMEDP7SDx34XjuEsOhAFgFTU5e
 SFd6AnNwBCILMxbBUj7d6+0oqd/nbckHnzpnX96wG0WeMqIy/6PIkezxD+rsgcAPeA
 syTyOPDEW33scjVtf7w3pANx9lUOvJr+2jzF56btxklpB3Ev1XS8XFVA0hEqjdRO5G
 RP95qTwkpzkJQ==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Maarten Lankhorst <dev@lankhorst.se>
Subject: [i915-rt v5] FOR-CI: drm/i915: Reset lockdep after selftest unload
Date: Wed, 21 Jan 2026 17:56:56 +0100
Message-ID: <20260121165656.660250-1-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260121135318.651622-22-dev@lankhorst.se>
References: <20260121135318.651622-22-dev@lankhorst.se>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Queue-Id: 74E4C5A354
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

We're hitting a bug in CI where MAX_STACK_TRACE_ENTRIES is set too low.
My guess is the repeated loading/unloading is creating multiples of the
same entries. As a hack just reset lockdep. This might only be necessary
for CI + PREEMPT_RT.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
Forgot to commit the EXPORT_SYMBOL_GPL change.

 drivers/gpu/drm/i915/i915_module.c | 6 ++++++
 kernel/locking/lockdep.c           | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_module.c b/drivers/gpu/drm/i915/i915_module.c
index 5d9c35b5a1820..4c135688d9660 100644
--- a/drivers/gpu/drm/i915/i915_module.c
+++ b/drivers/gpu/drm/i915/i915_module.c
@@ -117,6 +117,12 @@ static void __exit i915_exit(void)
 		if (init_funcs[i].exit)
 			init_funcs[i].exit();
 	}
+
+	/* Workaround for "MAX_STACK_TRACE_ENTRIES" too low, reset all locks after exit */
+#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
+	if (i915_selftest.live || i915_selftest.mock || i915_selftest.perf)
+		lockdep_reset();
+#endif
 }
 
 module_init(i915_init);
diff --git a/kernel/locking/lockdep.c b/kernel/locking/lockdep.c
index b9edc0339273d..d4804d94a10e8 100644
--- a/kernel/locking/lockdep.c
+++ b/kernel/locking/lockdep.c
@@ -6188,6 +6188,7 @@ void lockdep_reset(void)
 		INIT_HLIST_HEAD(chainhash_table + i);
 	raw_local_irq_restore(flags);
 }
+EXPORT_SYMBOL_GPL(lockdep_reset);
 
 /* Remove a class from a lock chain. Must be called with the graph lock held. */
 static void remove_class_from_lock_chain(struct pending_free *pf,
-- 
2.51.0

