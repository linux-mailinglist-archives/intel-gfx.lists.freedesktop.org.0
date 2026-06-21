Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7GPIOorpN2o/VgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Jun 2026 15:39:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9BB6AAF1F
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Jun 2026 15:39:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=i0v6P9Jg;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=gmail.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D024D10E3A1;
	Sun, 21 Jun 2026 13:39:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com
 [209.85.128.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26CDC10E3A4
 for <intel-gfx@lists.freedesktop.org>; Sun, 21 Jun 2026 13:39:19 +0000 (UTC)
Received: by mail-yw1-f174.google.com with SMTP id
 00721157ae682-7dc6fbf3e86so41709617b3.3
 for <intel-gfx@lists.freedesktop.org>; Sun, 21 Jun 2026 06:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1782049158; x=1782653958; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
 bh=YUsaj7vv5ecLJDUQ0RmLhOH3YlF5lnncSJLJl2FpGbU=;
 b=i0v6P9Jgjd5hcKWmMDxYoISQb2TzRKzvipFQtMJv1dtjyzMwLSEH1cnIJ9kkMZH+GO
 JS9w2P4+qKPb8xjs8FtBA1rKjRiwA6Tk92kZrklMQjEiw952HcB9+58NwLEt9AIqMPVD
 coy6Y+MgRx6WnAk3E4laba8fZIKYBC+Yx4lBYu31JU3kA51UEr+WPg5MpiHWhDUIzDqw
 mHYrk37ZjUhfPT75JMVSZBBN6vWd7keYPaNxMT/I0WJIvA4Q49pCBAg0nQ5KWHXVInll
 PwGzWODCu57gVayXRsCIorf9ITKsye3lb6ZUScInsohNN8/wbZcAK/3kG+RTW4PWmJd2
 ufFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782049158; x=1782653958;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=YUsaj7vv5ecLJDUQ0RmLhOH3YlF5lnncSJLJl2FpGbU=;
 b=pSlksSXudUGokpcZ62wpXA4t8ERxCTMy0Hk6hP2ERiKkwASodwg54a/QC3qGCSSv+w
 GGeljoG5w8kal5914vZ2SeOZhr49x+sE+F7rbZrdbdALmIHTlgkuPCYUyOV/pT6msnoD
 zbqkR0XmuDzIRX4uIZOERMLbttf9SuNjUnwt/LWf+AIcURvLTznPI6zUQdiTl9/8pR7m
 Kh+lBrTODjMMN9VQeMCMxK7T+pOIvnA65N+uTKS4VlB5Y4raU9WkJd4SdQyV+swU6NBT
 MOgDkWcIq8V5mjswxShmizLp5uurikw4UtOzXZ145kRY3KFQWEs84lifz/lHqTUESRBB
 vUcQ==
X-Forwarded-Encrypted: i=1;
 AHgh+RoEKinXuD3ubA6ICia9QGU9IXCAuuTrApT6zWJ5bb16x4mZ4SZW60F3JNG13BXd0JcGERYA5eInYtU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzedPUpAMYJd336glFKy1W7RLAvtPaWbJERslqT1FYi5U+bn1r/
 vhIVmBAHL1tmwz5805yClooAS/L79SXoXsZlbmpHvDu0RG7Hodt2+y6t
X-Gm-Gg: AfdE7ckOqwGkz1odlIDBPCUIYj1Zua42llZiBqoe9bokPdeV19NuIItgj+Cd2LzXrUf
 B8bX5b2Dj5m50Ov1l+J2yrczqhrG+astxxczxvsSPs73aTdY8IUPL4Smd+7n6dY8/XnoemPY5xX
 v1ljqlj3SQHyrglzKw/94LgzEGQg5m8KvcBorjWVu2udRtA7lJAFxt8JVfbWNPw1+hEVV17BvY9
 HdtaH3j566RCSTMFR8zO3IGLrW3lSXCmQ1rY6micAiaoZl5vKlIc8WWvMT2t+LEFyAhOpOMs8c9
 XuL7shbdYGfOWNqTbeB1sgPFIYxtwNWK9fIj+y+V7Agnh7VXOEOminWtq5RXCZMLmt4YyhnQUBB
 ijKAjQFVoC11KoXHHs92Kig1Zuui5GdAwcQFq8J0rDIxVnJVZc4MZoCA+ALSj2FZmgNGQsWAygL
 g7ADXm6x9RaGyHJXpDjtJW0zrq4s5jrAamSuM=
X-Received: by 2002:a05:690c:e347:b0:7db:ccda:a409 with SMTP id
 00721157ae682-801759e5070mr88778787b3.9.1782049157948; 
 Sun, 21 Jun 2026 06:39:17 -0700 (PDT)
Received: from localhost (user-24-214-85-55.knology.net. [24.214.85.55])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-8025f8dde30sm20893067b3.27.2026.06.21.06.39.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Jun 2026 06:39:17 -0700 (PDT)
From: Yury Norov <yury.norov@gmail.com>
X-Google-Original-From: Yury Norov <ynorov@nvidia.com>
Date: Sun, 21 Jun 2026 09:39:17 -0400
To: Steven Rostedt <rostedt@goodmis.org>
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
Subject: Re: [PATCH 2/2] tracing: Add CONFIG_TRACE_PRINTK_DEBUGGING to clean
 up kernel.h
Message-ID: <ajfphe4Z8BrfYoUX@yury>
References: <20260621093430.264983361@kernel.org>
 <20260621093811.168514984@kernel.org>
 <20260621054721.7cde38f0@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260621054721.7cde38f0@fedora>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[yurynorov@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:rostedt@goodmis.org,m:linux-kernel@vger.kernel.org,m:linux-trace-kernel@vger.kernel.org,m:mhiramat@kernel.org,m:mark.rutland@arm.com,m:mathieu.desnoyers@efficios.com,m:akpm@linux-foundation.org,m:torvalds@linux-foundation.org,m:bigeasy@linutronix.de,m:john.ogness@linutronix.de,m:tglx@kernel.org,m:peterz@infradead.org,m:julia.lawall@inria.fr,m:yury.norov@gmail.com,m:linux-doc@vger.kernel.org,m:linux-kbuild@vger.kernel.org,m:linuxppc-dev@lists.ozlabs.org,m:dri-devel@lists.freedesktop.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-arm-kernel@lists.infradead.org,m:linux-rdma@vger.kernel.org,m:linux-usb@vger.kernel.org,m:linux-ext4@vger.kernel.org,m:linux-nfs@vger.kernel.org,m:kvm@vger.kernel.org,m:yurynorov@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yurynorov@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,arm.com,efficios.com,linux-foundation.org,linutronix.de,infradead.org,inria.fr,gmail.com,lists.ozlabs.org,lists.freedesktop.org,st-md-mailman.stormreply.com,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4D9BB6AAF1F

On Sun, Jun 21, 2026 at 05:47:21AM -0400, Steven Rostedt wrote:
> On Sun, 21 Jun 2026 05:34:32 -0400
> Steven Rostedt <rostedt@kernel.org> wrote:
> 
> > Instead of having trace_printk.h included in kernel.h, create a config
> > TRACE_PRINTK_DEBUGGING that when set will update the CFLAGS in the
> > Makefile to allow developers to add trace_printk() without the need to add
> > the include for it. Having it included in the Makefile keeps it from being
> > in the dependency chain and it will not waste extra CPU cycles for those
> > building the kernel without using trace_printk.
> 
> Bah, I only tested with the config option enabled, and missed some
> dependencies with it disabled.

Yes you did.
 
> For instance, rcu.h also uses ftrace_dump() so that too needs to go
> into kernel.h.

No, it shouldn't.

> I also need to add a few more includes to trace_printk.h.

> OK, I need to run this through all my tests to find where else I missed
> adding the includes. But the idea should hopefully satisfy everyone.

If you include it under config in kernel.h, to make the kernel buildable,
you need to include trace_printk.h explicitly where it's actually used.
IOW, apply my patch v4-7.

Then, developers who use trace_printk() on their development machine,
will be really frustrated when their debugging code will break client
build just because CONFIG_TRACE_PRINTK_DEBUGGING is disabled there.
They will spend a day, at best, communicating with remote managers,
and end up with adding #include <linux/trace_printk.h> in the files
they touch. Is that your plan?

If I was one of those developers, the solution would be simple for me:
don't use trace_printk() at all.

Thanks,
Yury
