Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id A6oEGNkORWqI6AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:58:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1239A6EDB24
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:58:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=a20FWXNV;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5353410EFCC;
	Wed,  1 Jul 2026 12:57:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42DC710E6AF;
 Mon, 22 Jun 2026 13:08:36 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 4C8B5601F0;
 Mon, 22 Jun 2026 13:08:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FB651F000E9;
 Mon, 22 Jun 2026 13:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1782133715;
 bh=Wl8mD9+xZA8nx14eIBmWbrmAKkBoa2SL0k1i5niNjQs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=a20FWXNV5UIOVvZQK3oYlnmbhvnGanajAqGfPBzgq1mtLmcUE0p/4+x6YU7Shadgl
 mqi/3qM8CCBEc0VEfdgQBopeHXXuKfZG+uiDCEbuCYUpTv0SvsiCbiGCb/9bB4KhEW
 DRUlVIjPKW+wSj99mCg6leZnz6Tlv8BmEwq+uZD69jaXsaAzuDy40c4nJO/LtwTgIV
 HkMCM8iVWaXizhCkYCbfvhIXZ4Fc2dHPUyzviYNP1yPfWv5E/7zB3cUSfjt3Sls1ya
 Bk1Z9eNqEc0O10dh8knMYEWL3e8V2fAD+NW45w3IWR+66cvzU66jHpfTiQOKBsif7e
 TuRZv2ou5tdjQ==
Date: Mon, 22 Jun 2026 09:08:26 -0400
From: Steven Rostedt <rostedt@kernel.org>
To: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, Masami
 Hiramatsu <mhiramat@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Andrew Morton
 <akpm@linux-foundation.org>, Linus Torvalds
 <torvalds@linux-foundation.org>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, John Ogness <john.ogness@linutronix.de>, Thomas
 Gleixner <tglx@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Julia
 Lawall <julia.lawall@inria.fr>, Yury Norov <yury.norov@gmail.com>,
 linux-doc@vger.kernel.org, linux-kbuild@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-rdma@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-ext4@vger.kernel.org,
 linux-nfs@vger.kernel.org, kvm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 0/2] tracing: Move trace_printk.h out of kernel.h
Message-ID: <20260622090826.20efadb3@fedora>
In-Reply-To: <dbb5915e-6587-4de9-87f3-76bea5024da8@kernel.org>
References: <20260621093430.264983361@kernel.org>
 <dbb5915e-6587-4de9-87f3-76bea5024da8@kernel.org>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Wed, 01 Jul 2026 12:57:46 +0000
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
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[215];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,arm.com,efficios.com,linux-foundation.org,linutronix.de,infradead.org,inria.fr,gmail.com,lists.ozlabs.org,lists.freedesktop.org,st-md-mailman.stormreply.com,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rostedt@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fedora:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1239A6EDB24

On Mon, 22 Jun 2026 10:05:13 +0200
"Christophe Leroy (CS GROUP)" <chleroy@kernel.org> wrote:

> > There's been complaints about trace_printk() being defined in kernel.h as it
> > can increase the compilation time. As it is only used by some developers for
> > debugging purposes, it should not be in kernel.h causing lots of wasted CPU
> > cycles for those that do not ever care about it.  
> 
> Do we have a measurement of the increased compilation time ?

I believe Yury does.

-- Steve
