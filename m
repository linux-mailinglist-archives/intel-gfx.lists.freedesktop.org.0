Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +cUJIpxlOWpyrgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 18:41:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F016B1331
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 18:40:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=bombadil.20210309 header.b=wSEig2tX;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=infradead.org (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C71910E558;
	Mon, 22 Jun 2026 16:40:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D2FD10E558;
 Mon, 22 Jun 2026 16:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=c5UMhYqzW3FXITWipN5SHhAQOB1P9YUKBIDy0r3xPQw=; b=wSEig2tXNqqYlMi+DO0fVntY5n
 xOHolZZKA+fIDoV0P9vbcZYk+nTw3ZO3neQaPzi4xv2gcxwSzlDonXdcprWpDH2QVuSHb1XstdPJW
 SDJunku4cTdk3jGABXOOirk4qvdvStLyf+TSspP6lyyvSkgzI8foJ7iUHjAWC1KMbyOnlr8Bk2/AC
 kSmplFs4mh7vU8qt6mUcBWozaXfZYbjxcaOPfxhFG3Z95uao/bptRNf0v9TlnvAPmJRfMGZZ11YUj
 Kd2cOw4Cnm3blaF1fkpC/rbtuwYhawbpOJtgBO9UdgKUgdoYUd8ev6TfDb5XWKvISvKwTYP33Ug+E
 awdU0f0A==;
Received: from [50.53.43.113] (helo=[192.168.254.34])
 by bombadil.infradead.org with esmtpsa (Exim 4.99.1 #2 (Red Hat Linux))
 id 1wbhhW-00000005CFj-0vuV; Mon, 22 Jun 2026 16:40:46 +0000
Message-ID: <08b3c961-18bb-43d9-8d7f-8a87bcad0afa@infradead.org>
Date: Mon, 22 Jun 2026 09:40:45 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] tracing: Move trace_printk.h out of kernel.h
To: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org,
 Masami Hiramatsu <mhiramat@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 John Ogness <john.ogness@linutronix.de>, Thomas Gleixner <tglx@kernel.org>,
 Julia Lawall <julia.lawall@inria.fr>, Yury Norov <yury.norov@gmail.com>,
 linux-doc@vger.kernel.org, linux-kbuild@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-rdma@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-ext4@vger.kernel.org,
 linux-nfs@vger.kernel.org, kvm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
References: <20260621093430.264983361@kernel.org>
 <20260622083440.GX49951@noisy.programming.kicks-ass.net>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20260622083440.GX49951@noisy.programming.kicks-ass.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	DMARC_POLICY_SOFTFAIL(0.10)[infradead.org : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,arm.com,efficios.com,linux-foundation.org,linutronix.de,inria.fr,gmail.com,lists.ozlabs.org,lists.freedesktop.org,st-md-mailman.stormreply.com,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rdunlap@infradead.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:mid,infradead.org:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 00F016B1331



On 6/22/26 1:34 AM, Peter Zijlstra wrote:
> On Sun, Jun 21, 2026 at 05:34:30AM -0400, Steven Rostedt wrote:
>> There's been complaints about trace_printk() being defined in kernel.h as it
>> can increase the compilation time. As it is only used by some developers for
>> debugging purposes, it should not be in kernel.h causing lots of wasted CPU
>> cycles for those that do not ever care about it.
>>
>> Instead, add a CONFIG_TRACE_PRINTK_DEBUGGING option that developers that do
>> use it can set and not have to always remember to add #include <linux/trace_printk.h>
>> to the files they add trace_printk() while debugging. It also means that
>> those that do not have that config set will not have to worry about wasted
>> CPU cycles as it is only include in the CFLAGS when the option is set, and
>> its completely ignored otherwise.
> 
> Did you forget your C 101 class? If you use a function, you gotta
> include the relevant header.

Also item #1 in Documentation/process/submit-checklist.rst.

> You don't see userspace saying: 'Hey, you know what, perhaps we should
> add stdio.h to every other header, just in case someone wants to
> printf()' either.
> 
> I really don't understand your argument. Yes, maybe someone will forget
> and then either their editor (if they have a halfway modern setup with
> LSP enabled) or their build will complain, but so what? This is all
> trivial stuff, surely we have more pressing matters to concern outselves
> with?



-- 
~Randy

