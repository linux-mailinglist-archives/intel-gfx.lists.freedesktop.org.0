Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B29CF4B8F
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 17:36:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3363110E403;
	Mon,  5 Jan 2026 16:36:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OiDqQhsx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com
 [209.85.128.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BCD210E403
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jan 2026 16:36:13 +0000 (UTC)
Received: by mail-yw1-f180.google.com with SMTP id
 00721157ae682-7900ab67562so1695907b3.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 05 Jan 2026 08:36:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1767630972; x=1768235772; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=pmLroKiaaSIEDmiG3hNy96115cezpvbgC/O0Qw/mmcE=;
 b=OiDqQhsx2orWUqdE5CFYhVFE6bippgu6PqYpaal7j0uBaej8TS7TBE4MOi3NzaKXhW
 DEj4yMymf0cLM7iMGw+Su6mgKGAFNRp++7wEfNMn677DA5tmYrP45zzNsXogjQ8quYdp
 cltDjgd3Xvsqk246L1PPjHe1V59RZJmogAvZVT5Q4Da69mHCI6vmETuI8uHKBhpqd7BX
 F/vrjgwerlgDKIjWWEhVcAvoq1rJLIr3+y2fh204fl+egCqEC21ITCUcs9tNa/JE9H6T
 zAIXD+Ou6jZyOPPAnzx7SaaM09pegdTIgTvdW5NYjbkgSVq6MOBc80oUsmmG8L8Q9+P5
 wQOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767630972; x=1768235772;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=pmLroKiaaSIEDmiG3hNy96115cezpvbgC/O0Qw/mmcE=;
 b=spq//sdStEtYZilBTsXGvUxAvshr+tuA/ddZ08wcVFOfjTNg0edsXepGj+i/ZJl0Hx
 f9IGH6QtY/aoMP/EzFPneEikCbZZRaOYfdRyhbjWq+OJiKTSkUPfukN+Pqq193+zPdT9
 4RrptqxOWyKzz7g03hc4cIW9nO8sq0BYBfheEajjC61YM0ITgSArtLQejVfCPnZkOEam
 R1VkNNoeOZrRIRcsiSssv3WxfnIx7kAerE/vsA6ZlvNphmdneQ/OUR154f9mpaMHvwcA
 NrTlX16CZ/6Hf5D8tB+UFZq1Npw87wSHskQXimzVCxp4f8TvD/LMo6FyTo9D2J883I2H
 Dkzw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX3NthrW0euddi/CdnmEjGHdcLa41nn+jYXG8fbl/3Z5sKEHYE81g8g2MCxDzgnWHIpRKzXmQ2EmE4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxgpTCTsheZ3GIYpXlYmCFEueDpmPdOW4MLCdhP+BCjK6Liv5cZ
 jpg9kq7t+fvMIPm9IlCvdH1eu31hTNedLxWe4Y/Hgk6wSUMExbWPIg/z
X-Gm-Gg: AY/fxX7T7EtJ6iF+NpjSQBLYmv1GQK1C/nI5F/FIIBREW56Kql/nLJp9NIkIwE3ziRt
 fgbckAJfTWYuejwd7mi+pWhoLE7yU3pAbNqwkVC4knDfkg8Ai/4Bq9Wiz3EMyM5SY6AvNtSRgex
 DjebssKg807pQsEhI6kC/W8Cexrd54NdvD0r9FS/ZRydl9NeYKEJcz9muFluw9BfL1RRsv4XH5e
 TDK4bSG7HwK5DUwbMDYjOo3emJTJ3F2DLTGWw8zNspJqAeYACkCBhsbR7tyAqCbmg5JyFP50bL8
 wUC0Oa50C+hhg65WPPyy3//zEl+20fDipO+LDPDcKZiEn6L7YhY7SoFdC4TXcOzVweswbsniThE
 7HhuVdq7YXUXs5Pu4hJ1sfjPRsUpx9Rqo9GnRYVprByCFUf0EzmVPEa5H7pgSoxFxxagIGpjVtY
 ZqUeLeQ9E=
X-Google-Smtp-Source: AGHT+IHZnvqij0p2dsVEyUAqfbDQF6JM3zbwBqi4iRccM72+GqOmYwfEQER+7XbmOSanBy2kuKO6sw==
X-Received: by 2002:a05:690c:45ca:b0:78f:aa6d:48cd with SMTP id
 00721157ae682-790a88f50b1mr1761297b3.0.1767630972421; 
 Mon, 05 Jan 2026 08:36:12 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:830c:9f83:df41:3e7d])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-790a87dce60sm648267b3.13.2026.01.05.08.36.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Jan 2026 08:36:12 -0800 (PST)
Date: Mon, 5 Jan 2026 11:36:11 -0500
From: Yury Norov <yury.norov@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Joel Fernandes <joelagnelf@nvidia.com>,
 Steven Rostedt <rostedt@goodmis.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Christophe Leroy <chleroy@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>, Ingo Molnar <mingo@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 David Laight <david.laight@runbox.com>, Petr Pavlu <petr.pavlu@suse.com>,
 Andi Shyti <andi.shyti@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Daniel Gomez <da.gomez@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Danilo Krummrich <dakr@kernel.org>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-modules@vger.kernel.org, linux-trace-kernel@vger.kernel.org
Subject: Re: [PATCH v4 7/7] kernel.h: drop trace_printk.h
Message-ID: <aVvoe5fQN3EUtEAJ@yury>
References: <20251225170930.1151781-1-yury.norov@gmail.com>
 <20251225170930.1151781-8-yury.norov@gmail.com>
 <20251226115848.298465d4@gandalf.local.home>
 <20251228133150.1d5731d04bc1b685b0fe81c1@linux-foundation.org>
 <20251229111748.3ba66311@gandalf.local.home>
 <20260103005059.GA11015@joelbox2>
 <aVkSVk2L6VH9MYGz@smile.fi.intel.com> <aVkmQ4EGIQgAddZQ@yury>
 <254c1096c3b892923dd12b07a8b80291b88c0e9b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <254c1096c3b892923dd12b07a8b80291b88c0e9b@intel.com>
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

On Mon, Jan 05, 2026 at 11:29:51AM +0200, Jani Nikula wrote:
> On Sat, 03 Jan 2026, Yury Norov <yury.norov@gmail.com> wrote:
> > On Sat, Jan 03, 2026 at 02:57:58PM +0200, Andy Shevchenko wrote:
> >> On Fri, Jan 02, 2026 at 07:50:59PM -0500, Joel Fernandes wrote:
> >> > On Mon, Dec 29, 2025 at 11:17:48AM -0500, Steven Rostedt wrote:
> >> 
> >> ...
> >> 
> >> > I use trace_printk() all the time for kernel, particularly RCU development.
> >> > One of the key usecases I have is dumping traces on panic (with panic on warn
> >> > and stop tracing on warn enabled). This is extremely useful since I can add
> >> > custom tracing and dump traces when rare conditions occur. I fixed several
> >> > bugs with this technique.
> >> > 
> >> > I also recommend keeping it convenient to use.
> >> 
> >> Okay, you know C, please share your opinion what header is the best to hold the
> >> trace_printk.h to be included.
> >
> > What if we include it on Makefile level, similarly to how W=1 works?
> >
> >         make D=1 // trace_printk() is available
> >         make D=0 // trace_printk() is not available
> >         make     // trace_printk() is not available
> >
> > Where D stands for debugging.
> >
> > D=1 may be a default setting if you prefer, but the most important is
> > that every compilation unit will have an access to debugging without
> > polluting core headers.
> 
> You do realize this means recompiling everything when adding D=1 for
> debugging?

Yes sir I do.

It would be as simple (or hard) as building another arch:

        make O=../build/linux-arm64
        make O=../build/linux-x86_64
        make D=1 W=1 O=../build/linux-x86_64-dev

If you're both developer and CI engineer in your company, you're likely
already doing something like that. If you're CI-only, there're no
changes for you. If you're a developer - yeah, you'd have to learn a
new flag.

The real problem of course is the status inflation. The fact that
defconfig enables CONFIG_EXPERT and CONFIG_DEBUG_KERNEL implies that
every random person who is able to do:

        git clone && make && sudo make install

now assumed an expert kernel user and active developer. It is not
correct, and it leads to bloating kernel with dev-only features.

What we discuss here is a new marker for those real experts and
developers, I think. (In an hope that it will inflate not very fast.)

Thanks,
Yury
