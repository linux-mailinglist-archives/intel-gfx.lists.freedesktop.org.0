Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MI5uJw3NPmrPLwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 21:03:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 403156CFD73
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 21:03:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Tw9iWJ3A;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5A9C10F706;
	Fri, 26 Jun 2026 19:03:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 890F710F706;
 Fri, 26 Jun 2026 19:03:33 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id E1BDB600AA;
 Fri, 26 Jun 2026 19:03:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B10911F000E9;
 Fri, 26 Jun 2026 19:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1782500612;
 bh=TyFl9GWmXNLl+QLk0gYGvkiIPobdLVhGYz9j6ia1saU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=Tw9iWJ3AW/qVhYN7KGc/ZTiaZzg/3oECz+DiP4VJfyn3QB4fPWwrgNuAJIGNxs+V2
 gQMOySYXH+qHCB0JOy7ShmXUDJ864WlfuAmNSW4eC0jw1v5I1DDn/MBUmLRwI+Zmn+
 Tvx68PQugVu+ljQ23TFRCcjPeBFQjWYKgQD+yv+Dj0NPAyY7KU1ce1064Yq2UJQHNh
 7PCVds29NYJupkBRTBhXtnaGXQquqVp6AN7Xp9L5f6IxL0XEVKpAcZfxaTF8hC29A2
 GZgsbwtmAy/ydDOu69TLhC+XE3g2v+Sxjbre9Fp/7W+UikRELgut2FYBWl4v+dv3IH
 ZX2QubJjR77jQ==
Date: Fri, 26 Jun 2026 12:03:25 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Steven Rostedt <rostedt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 John Ogness <john.ogness@linutronix.de>, Thomas Gleixner <tglx@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Julia Lawall <julia.lawall@inria.fr>,
 Yury Norov <yury.norov@gmail.com>, linux-doc@vger.kernel.org,
 linux-kbuild@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 dri-devel@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-rdma@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-ext4@vger.kernel.org,
 linux-nfs@vger.kernel.org, kvm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v4 2/2] tracing: Remove trace_printk.h from kernel.h
Message-ID: <20260626190325.GA3913132@ax162>
References: <20260625104007.041432666@kernel.org>
 <20260625104402.210473477@kernel.org>
 <20260625234158.GA261868@ax162> <20260626045119.659d1e6b@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260626045119.659d1e6b@fedora>
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,arm.com,efficios.com,linux-foundation.org,linutronix.de,infradead.org,inria.fr,gmail.com,lists.ozlabs.org,lists.freedesktop.org,st-md-mailman.stormreply.com,lists.infradead.org];
	SEM_URIBL_UNKNOWN_FAIL(0.00)[ax162:query timed out];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	SURBL_MULTI_FAIL(0.00)[ax162:query timed out];
	DBL_FAIL(0.00)[lists.freedesktop.org:query timed out,ax162:query timed out];
	FROM_NEQ_ENVFROM(0.00)[nathan@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 403156CFD73

On Fri, Jun 26, 2026 at 04:51:19AM -0400, Steven Rostedt wrote:
> On Thu, 25 Jun 2026 16:41:58 -0700
> Nathan Chancellor <nathan@kernel.org> wrote:
> 
> 
> > The following diff resolves it for me, should I send it as a separate
> > patch or do you want to just fold it in with a note?
> > 
> > diff --git a/include/linux/lockdep.h b/include/linux/lockdep.h
> > index 621566345406..2301a701ffbb 100644
> > --- a/include/linux/lockdep.h
> > +++ b/include/linux/lockdep.h
> > @@ -10,6 +10,7 @@
> >  #ifndef __LINUX_LOCKDEP_H
> >  #define __LINUX_LOCKDEP_H
> >  
> > +#include <linux/instruction_pointer.h>
> 
> Ah, so the reason for this breakage is because lockdep was relying on
> instruction_pointer.h, that just happened to be included in kernel.h
> via trace_printk.h.

Correct.

> This is a separate issue, so it should be a separate patch. I'll add it
> as patch 1 of this series.

Sounds good, thanks!

> Can you send me the config you used. This didn't trigger in my tests.

It is a plain allmodconfig, for example on arm:

  $ make -skj"$(nproc)" ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- allmodconfig lib/test_context-analysis.o
  In file included from include/linux/local_lock_internal.h:8,
                   from include/linux/local_lock.h:5,
                   from lib/test_context-analysis.c:9:
  include/linux/local_lock_internal.h: In function 'local_lock_acquire':
  include/linux/lockdep.h:541:87: error: '_THIS_IP_' undeclared (first use in this function)
    541 | #define lock_map_acquire(l)                     lock_acquire_exclusive(l, 0, 0, NULL, _THIS_IP_)
        |                                                                                       ^~~~~~~~~
  include/linux/lockdep.h:509:88: note: in definition of macro 'lock_acquire_exclusive'
    509 | #define lock_acquire_exclusive(l, s, t, n, i)           lock_acquire(l, s, t, 0, 1, n, i)
        |                                                                                        ^
  include/linux/local_lock_internal.h:46:9: note: in expansion of macro 'lock_map_acquire'
     46 |         lock_map_acquire(&l->dep_map);
        |         ^~~~~~~~~~~~~~~~
  include/linux/lockdep.h:541:87: note: each undeclared identifier is reported only once for each function it appears in
  ...

I also reproduced it on top of allnoconfig:

  $ cat allno.config
  CONFIG_CONTEXT_ANALYSIS_TEST=y
  CONFIG_DEBUG_KERNEL=y
  CONFIG_DEBUG_LOCK_ALLOC=y
  CONFIG_EXPERT=y
  CONFIG_MMU=y
  CONFIG_RUNTIME_TESTING_MENU=y

  $ make -skj"$(nproc)" ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- KCONFIG_ALLCONFIG=1 clean allnoconfig lib/test_context-analysis.o
  <same error as above>

-- 
Cheers,
Nathan
