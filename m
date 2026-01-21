Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBfDHgmWcGlyYgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 10:02:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CCD54008
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 10:02:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DF2110E2BD;
	Wed, 21 Jan 2026 09:01:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="yPmgongE";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="3u+yUQlg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFAA810E2BD;
 Wed, 21 Jan 2026 09:01:57 +0000 (UTC)
Date: Wed, 21 Jan 2026 10:01:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1768986115;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=xZk9739avFDrhfcz7WUKfli/kaNXuUlJFH1muW4n2/c=;
 b=yPmgongEOfJYQEIvAyCpLfiHV9im/LIW8PlB30aQNIK4vbObW+o8T+5eHwBNRrtpmoUUxV
 RGgyIEIiAf4XTc+mt2xuQJjtlBXFZdIIz5GT6mNBCNdTxoggR1BUAsZlWXdWSeTY3WtJB7
 NRWQaY9L5OsbdE1T/x5XY5SPZIjOv8KI+cVt3GyNOpduBn3qF1KInHFJExL3HpngfXAL+Z
 3xqFohxYDnsgYGfDAgqk6c6YFHVWHFiSh3ZknIgsjqkHT7s2SrRiIyves4J5HMGzJdfnF/
 JAJpBhuJYbRdg1VdgoEFnR+mBo8H+HooYx/Yjcyy7KScAiHFMZTcAQBa6ArfKQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1768986115;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=xZk9739avFDrhfcz7WUKfli/kaNXuUlJFH1muW4n2/c=;
 b=3u+yUQlgc5fTUKKo8P3STY6vg9Se34uHWfVyncRQE0bSYBOz9484nyxXLoNkPdsYbgdKw6
 Lgst3HNVs+GFJJCQ==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: hansg@kernel.org, "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 linux-kernel@vger.kernel.org, linux-rt-devel@lists.linux.dev,
 sfr@canb.auug.org.au, ilpo.jarvinen@linux.intel.com,
 regressions@leemhuis.info
Subject: Re: REGRESSION on linux-next (next-20260115)
Message-ID: <20260121090154.Lpaj9hrr@linutronix.de>
References: <555f1c56-0f74-41bf-8bd2-6217e0aab0c6@intel.com>
 <20260121075348.5MyqcHFB@linutronix.de>
 <89de03a5-e5da-4d2e-8547-8e54ad73b324@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <89de03a5-e5da-4d2e-8547-8e54ad73b324@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linutronix.de:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bigeasy@linutronix.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:mid,linutronix.de:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 10CCD54008
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-01-21 13:59:38 [+0530], Borah, Chaitanya Kumar wrote:
> 
> Looks like it.
>   9:          1          0  IO-APIC   9-fasteoi   acpi, INT0002

Does the following help?

diff --git a/drivers/platform/x86/intel/int0002_vgpio.c b/drivers/platform/x86/intel/int0002_vgpio.c
index 6f5629dc3f8db..562e880256436 100644
--- a/drivers/platform/x86/intel/int0002_vgpio.c
+++ b/drivers/platform/x86/intel/int0002_vgpio.c
@@ -206,8 +206,8 @@ static int int0002_probe(struct platform_device *pdev)
 	 * FIXME: augment this if we managed to pull handling of shared
 	 * IRQs into gpiolib.
 	 */
-	ret = devm_request_irq(dev, irq, int0002_irq,
-			       IRQF_ONESHOT | IRQF_SHARED, "INT0002", chip);
+	ret = devm_request_irq(dev, irq, int0002_irq, IRQF_SHARED, "INT0002",
+			       chip);
 	if (ret) {
 		dev_err(dev, "Error requesting IRQ %d: %d\n", irq, ret);
 		return ret;
diff --git a/include/linux/interrupt.h b/include/linux/interrupt.h
index 266f2b39213a0..b2bb878abd113 100644
--- a/include/linux/interrupt.h
+++ b/include/linux/interrupt.h
@@ -228,7 +228,7 @@ static inline int __must_check
 devm_request_irq(struct device *dev, unsigned int irq, irq_handler_t handler,
 		 unsigned long irqflags, const char *devname, void *dev_id)
 {
-	return devm_request_threaded_irq(dev, irq, handler, NULL, irqflags,
+	return devm_request_threaded_irq(dev, irq, handler, NULL, irqflags | IRQF_COND_ONESHOT,
 					 devname, dev_id);
 }
 
My guess would be that the int0002_vgpio.c results in a warning without
requesting the interrupt while the interrupt.h change should fix it and
the warning should be gone.

> ==
> Chaitanya

Sebastian
