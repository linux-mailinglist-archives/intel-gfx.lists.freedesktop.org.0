Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ho30DrjtN2rhVgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Jun 2026 15:57:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A876AAFF6
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Jun 2026 15:57:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=QjVbaaKx;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=gmail.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47E8F10E3AD;
	Sun, 21 Jun 2026 13:57:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com
 [209.85.128.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6076810E3AD
 for <intel-gfx@lists.freedesktop.org>; Sun, 21 Jun 2026 13:57:07 +0000 (UTC)
Received: by mail-yw1-f176.google.com with SMTP id
 00721157ae682-7ea6923cc94so34712207b3.3
 for <intel-gfx@lists.freedesktop.org>; Sun, 21 Jun 2026 06:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1782050226; x=1782655026; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Sv1dki/80aNeWwp+36abGEnVJza7FGEeP7NOY9gPTvc=;
 b=QjVbaaKxuluEWEOkUeik+kajfHUFbS6yZODgMWx4JgvaaJREEpVU54hVJ01K9RIOpt
 35rp9a+O1e6YDu6b/QC8rfkT/y5KN8Hf08911pQ/BNsC1Wv/lu3mhnIPZONpwIVcKU/l
 tIMgcye1y6TM18wSuz9yKil1tQtdv/7/wj3u+FeTbryCZLeaymcV+asXCfZZbvxziImT
 QNv44f6ybj+4vxvZM0p/sXxgBRnvgNudXWGhlMPj3eZYyVDRpZX5h01edHAjgXOg8PrJ
 hxBHBrX0NK1SJRguYV7z+SjVVEz0NmFr4SaIfXWtZoIvzZlJFv/BWL1Qe0kGfbDS+y7g
 Nsow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782050226; x=1782655026;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Sv1dki/80aNeWwp+36abGEnVJza7FGEeP7NOY9gPTvc=;
 b=sAgS5s38jKLI+ZeD4A2vtFWEpCTXuKgMkKTSZlBGtyii2JG+PLW0o2NYIbEDQLiWAO
 UD2ASJs6SD9SMwK9YCzu6lHgrcjY4hngAat5XKyAkkse7CQJwyN4HSdgeOT7FOqQ/Dka
 5DhhygK/mEaL9eC04djddlOP3NFY78qwcOnDMrs0khVajYwIHKs45GLKA49Lz40njxl9
 QArZwQNrhwGqcJ14AA0TfKDElfyyQqGoYfT3LgdaEil9TIDeNOGTR0PRvhDVVAJsH4nb
 XBMO0DmQ+YjLd02yTyMTMd8NnDlPX6uBr7KVHjSS0iMIlm0YlhNd1AAQ2pYydOvYj61t
 b8fw==
X-Forwarded-Encrypted: i=1;
 AHgh+RoSTRN4xkeJVsdzezFbxW4QPuw2rsxoPUERfZcMAqKsVSbSpENZh2yB0He1BoJiCou1vpa0jWizEE0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyxN+qYvVnzpYgOn34rSP4UrDg1F6+TNWZPiwCAJBhKbFJ04PMo
 B1CLl0uqWb8J6vyo/IDRc4AkvwfR40uAQY5r9bbEzHZGVj93m0NLQZYM
X-Gm-Gg: AfdE7cku/4hfqIjtoFNXgsuLfPPnaVbirZQ5rQ2vccu04068RtyYqcJX3Mx/uNjIQPq
 /w1NFby4X89PLGKsa8yu4iGlSvdXKxGGytsPWQZzMpasc0FV6Pl/vdgBId2C7BTPSxgKtK8bcfb
 qB7/NTacp5ARgEzhLJRWASczkhzVOmmZuVeMAZYysVVRHku3BoSWN1Gt0PxquKBDZgUaTiDrBec
 b+ijPUnRVOxmaMiuV0DdoI+7R3BbMwwfFSWQDdTQmrV0H9De1o0+h8oIAgEpomEYUpQu/amkaOj
 or5Ahhqolmh4YGYRBcO3I9J3bLky5+U/4NCMq7P8hck7Wh+q3rogG1jYXHUHIt80O0qU2SYgV1/
 w1q/q3D0JTWBJ9z84Wp/fqQ5OXek+kbMOMiUNQ0/BtDtvCL0XgMJfwPz+Qigo+kZ5oV3D0zOspm
 L5cya57JzJf9+vpROnyd/DdlXxgTiE4mAnPr0=
X-Received: by 2002:a05:690c:4b8b:b0:7c5:f6c:d311 with SMTP id
 00721157ae682-80131d97bdamr100779827b3.13.1782050226417; 
 Sun, 21 Jun 2026 06:57:06 -0700 (PDT)
Received: from localhost (user-24-214-85-55.knology.net. [24.214.85.55])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-8025c96fdb3sm21073127b3.1.2026.06.21.06.57.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Jun 2026 06:57:06 -0700 (PDT)
From: Yury Norov <yury.norov@gmail.com>
X-Google-Original-From: Yury Norov <ynorov@nvidia.com>
Date: Sun, 21 Jun 2026 09:57:05 -0400
To: Yury Norov <yury.norov@gmail.com>
Cc: Steven Rostedt <rostedt@goodmis.org>, linux-kernel@vger.kernel.org,
 linux-trace-kernel@vger.kernel.org, Masami Hiramatsu <mhiramat@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 John Ogness <john.ogness@linutronix.de>, Thomas Gleixner <tglx@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Julia Lawall <julia.lawall@inria.fr>, linux-doc@vger.kernel.org,
 linux-kbuild@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 dri-devel@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-rdma@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-ext4@vger.kernel.org,
 linux-nfs@vger.kernel.org, kvm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/2] tracing: Add CONFIG_TRACE_PRINTK_DEBUGGING to clean
 up kernel.h
Message-ID: <ajftsRwe19fPTP1r@yury>
References: <20260621093430.264983361@kernel.org>
 <20260621093811.168514984@kernel.org>
 <20260621054721.7cde38f0@fedora> <ajfphe4Z8BrfYoUX@yury>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ajfphe4Z8BrfYoUX@yury>
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
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:yury.norov@gmail.com,m:rostedt@goodmis.org,m:linux-kernel@vger.kernel.org,m:linux-trace-kernel@vger.kernel.org,m:mhiramat@kernel.org,m:mark.rutland@arm.com,m:mathieu.desnoyers@efficios.com,m:akpm@linux-foundation.org,m:torvalds@linux-foundation.org,m:bigeasy@linutronix.de,m:john.ogness@linutronix.de,m:tglx@kernel.org,m:peterz@infradead.org,m:julia.lawall@inria.fr,m:linux-doc@vger.kernel.org,m:linux-kbuild@vger.kernel.org,m:linuxppc-dev@lists.ozlabs.org,m:dri-devel@lists.freedesktop.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-arm-kernel@lists.infradead.org,m:linux-rdma@vger.kernel.org,m:linux-usb@vger.kernel.org,m:linux-ext4@vger.kernel.org,m:linux-nfs@vger.kernel.org,m:kvm@vger.kernel.org,m:yurynorov@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	FORGED_SENDER(0.00)[yurynorov@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[yurynorov@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 90A876AAFF6

On Sun, Jun 21, 2026 at 09:39:17AM -0400, Yury Norov wrote:
> On Sun, Jun 21, 2026 at 05:47:21AM -0400, Steven Rostedt wrote:
> > On Sun, 21 Jun 2026 05:34:32 -0400
> > Steven Rostedt <rostedt@kernel.org> wrote:
> > 
> > > Instead of having trace_printk.h included in kernel.h, create a config
> > > TRACE_PRINTK_DEBUGGING that when set will update the CFLAGS in the
> > > Makefile to allow developers to add trace_printk() without the need to add
> > > the include for it. Having it included in the Makefile keeps it from being
> > > in the dependency chain and it will not waste extra CPU cycles for those
> > > building the kernel without using trace_printk.
> > 
> > Bah, I only tested with the config option enabled, and missed some
> > dependencies with it disabled.
> 
> Yes you did.
>  
> > For instance, rcu.h also uses ftrace_dump() so that too needs to go
> > into kernel.h.
> 
> No, it shouldn't.
> 
> > I also need to add a few more includes to trace_printk.h.
> 
> > OK, I need to run this through all my tests to find where else I missed
> > adding the includes. But the idea should hopefully satisfy everyone.
> 
> If you include it under config in kernel.h, to make the kernel buildable,

I mean: in kernel.h or in Makefile.

> you need to include trace_printk.h explicitly where it's actually used.
> IOW, apply my patch v4-7.
> 
> Then, developers who use trace_printk() on their development machine,
> will be really frustrated when their debugging code will break client
> build just because CONFIG_TRACE_PRINTK_DEBUGGING is disabled there.
> They will spend a day, at best, communicating with remote managers,
> and end up with adding #include <linux/trace_printk.h> in the files
> they touch. Is that your plan?
> 
> If I was one of those developers, the solution would be simple for me:
> don't use trace_printk() at all.
> 
> Thanks,
> Yury
