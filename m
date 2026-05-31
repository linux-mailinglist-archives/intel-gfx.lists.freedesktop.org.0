Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLtCNueZHWpYcgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 16:40:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A16E66210A7
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 16:40:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ED95113424;
	Mon,  1 Jun 2026 14:40:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=seu.edu.cn header.i=@seu.edu.cn header.b="hZrnfinu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 304 seconds by postgrey-1.36 at gabe;
 Sun, 31 May 2026 15:36:26 UTC
Received: from mail-m81140.netease.com (mail-m81140.netease.com [47.88.81.140])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30D0910E6CA;
 Sun, 31 May 2026 15:36:25 +0000 (UTC)
Received: from PC-202605011814.localdomain (unknown [58.241.16.34])
 by smtp.qiye.163.com (Hmail) with ESMTP id 4079b06e0;
 Sun, 31 May 2026 23:31:18 +0800 (GMT+08:00)
From: Runyu Xiao <runyu.xiao@seu.edu.cn>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net, airlied@gmail.com,
 simona@ffwll.ch, clrkwllms@kernel.org, rostedt@goodmis.org,
 jerome.anand@intel.com, pierre-louis.bossart@linux.dev, tiwai@suse.de,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rt-devel@lists.linux.dev, jianhao.xu@seu.edu.cn,
 runyu.xiao@seu.edu.cn
Subject: [PATCH v2] drm/i915/audio: use generic_handle_irq_safe() for LPE
 audio irq
Date: Sun, 31 May 2026 23:31:08 +0800
Message-Id: <20260531153108.1448185-1-runyu.xiao@seu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260531152307.1283430-1-runyu.xiao@seu.edu.cn>
References: <20260531152307.1283430-1-runyu.xiao@seu.edu.cn>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9e7ea9333803a1kunmf881f88610bfb5
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCSE8ZVkIZTk9KGkkaQhhCSlYeHw
 5VEwETFhoSFyQUDg9ZV1kYEgtZQVlOQ1VJT0pVSk1VSE9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhOQ0
 NVSktLVUtZBg++
DKIM-Signature: a=rsa-sha256;
 b=hZrnfinuQpp+r6EHpu+x9payITlyKfPOR79KX5meBd9GCPDgyk9e2jwsXx9RoMM4x+JSzruYEWlWoWM63xqwus+t6AZpD6WnsWbFMjTMlUmhuwYQw5MFqeweWLxIC0hZXpgpMPXZZh+Y0YTslx/xFfmbQwrU3haqaX9etiEWJ40=;
 c=relaxed/relaxed; s=default; d=seu.edu.cn; v=1; 
 bh=hDaIee1qAflFeBZV4uLANTtsezA1dAxOljNHIOSLk9U=;
 h=date:mime-version:subject:message-id:from;
X-Mailman-Approved-At: Mon, 01 Jun 2026 14:40:34 +0000
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
	DMARC_POLICY_ALLOW(-0.50)[seu.edu.cn,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[seu.edu.cn:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lankhorst.se,linutronix.de,intel.com,linux.intel.com,ursulin.net,gmail.com,ffwll.ch,kernel.org,goodmis.org,linux.dev,suse.de,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,seu.edu.cn];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[seu.edu.cn:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[runyu.xiao@seu.edu.cn,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lankhorst.se:email]
X-Rspamd-Queue-Id: A16E66210A7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

intel_lpe_audio_irq_handler() forwards the LPE audio child IRQ from the
i915 parent IRQ path with generic_handle_irq(). The forwarded child top
half is not an independent hardirq entry point; it inherits the context
of the outer i915 interrupt dispatch path.

This becomes a problem when the parent IRQ runs in threaded context, for
example on PREEMPT_RT or other forced-threading configurations. i915
requests the parent IRQ with IRQF_SHARED and without IRQF_NO_THREAD, so
the forwarded child handler can run with local IRQs enabled. That
violates the expected top-half execution semantics and can trigger an
"enabled interrupts" WARN.

The issue was identified on Linux v6.18.21 by our static analysis tool
and then manually reviewed on the i915 child-IRQ forwarding sites after
commit 8cadce97bf26 ("drm/i915/gsc: mei interrupt top half should be in
irq disabled context") fixed the same helper contract for the GSC path.

It was then validated with a reproducible QEMU no-device parent/child
IRQ harness that registers a threaded parent IRQ and a child IRQ
handler, then exercises both generic_handle_irq() and
generic_handle_irq_safe() under the same threaded parent context. In the
plain-helper phase, the child handler ran with irqs_disabled=0 and
triggered an "enabled interrupts" WARN. In the safe-helper phase, the
same child handler ran with irqs_disabled=1. This is family-level
runtime evidence for the same IRQ forwarding misuse pattern. No
Baytrail/Cherrytrail hardware was available to run the real i915 LPE
path end-to-end.

Use generic_handle_irq_safe() here so the forwarded LPE audio child IRQ
runs with local IRQs disabled even when the outer i915 dispatch path is
threaded.

Link: https://lore.kernel.org/all/20260310115709.2276203-16-dev@lankhorst.se/
Fixes: eef57324d926 ("drm/i915: setup bridge for HDMI LPE audio driver")
Suggested-by: Maarten Lankhorst <dev@lankhorst.se>
Signed-off-by: Runyu Xiao <runyu.xiao@seu.edu.cn>
---
v2:
- Add Link: tag to Maarten's PREEMPT_RT series
- Add Suggested-by: Maarten Lankhorst
- Drop Cc: stable@vger.kernel.org per Sebastian's feedback
- Keep as a standalone patch per Jani's suggestion

 drivers/gpu/drm/i915/display/intel_lpe_audio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
index 42284e9928f2..ac1dfd592a9f 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
@@ -263,7 +263,7 @@ void intel_lpe_audio_irq_handler(struct intel_display *display)
 	if (!HAS_LPE_AUDIO(display))
 		return;
 
-	ret = generic_handle_irq(display->audio.lpe.irq);
+	ret = generic_handle_irq_safe(display->audio.lpe.irq);
 	if (ret)
 		drm_err_ratelimited(display->drm,
 				    "error handling LPE audio irq: %d\n", ret);
-- 
2.34.1
