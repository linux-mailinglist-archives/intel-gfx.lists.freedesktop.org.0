Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1082712DC
	for <lists+intel-gfx@lfdr.de>; Sun, 20 Sep 2020 10:24:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D61E46E0D7;
	Sun, 20 Sep 2020 08:24:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5C396E0D7
 for <intel-gfx@lists.freedesktop.org>; Sun, 20 Sep 2020 08:23:58 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id s12so9627761wrw.11
 for <intel-gfx@lists.freedesktop.org>; Sun, 20 Sep 2020 01:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=QW/8f02YUz9CyJxz2jJDAPCwQUNyEsIs6ErdQRH78bk=;
 b=KpEMjAVsWIsf6j85U5lGiCQk94IKAbNlzJpqqh7UlpZP+uHxVyI9xbDPp+PEj35Klr
 Fp0pmrJPV4QcEqfbWznBKmcAQ+Q7J+2NCTy4gUD/Rd5fRLvQ3GCVnl4V8YU78MIWGtmi
 zOs5T/os04dSRrngCDI5iUuJvEbe2rp33EGPI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=QW/8f02YUz9CyJxz2jJDAPCwQUNyEsIs6ErdQRH78bk=;
 b=VZKi9ZuCRP1BzeWxsbRyJAlvi4JpfQyctCcS4bawSlYh2JqtEOqlS49fZfM6mPPsFr
 BT+LBbvyL+aRMq9KHnVTlK9btZ21RHPIOXmSzMz2Sx9S0FVnklIv3pUNY8UEm+u9CEoh
 +d1KlDvQweAHOvSt9qT+Sru1RUQHXBbdRd3pyMeReur0CZJtUiuDiI+2ySz8xpsiBXBl
 sZNSbffTclUdT6BpBAED6KygScR3QpynGsAZk7kNc2oIxbdD5e0huSvyNhdo/D9ILqGM
 r08kUlfImzpDIBuQKrCtARjGqimZkb7yWuG5I4HHIedNdRrDGLZhctBeGa7ZHe/Dwtoo
 CB/A==
X-Gm-Message-State: AOAM530sPA7p09dVhXicLlJRhTaSy4+aTcIVPDJYG2EhKCoQLJpqajX5
 bnaR3JWR4YNoQbkiG93VE0RCKA==
X-Google-Smtp-Source: ABdhPJxNYcqTcvbH9VqF1Sc6UfalSbf2k2pQjIV2s6WyfB9ecjNuyH5YNGsmVXrxzF1y/be4tY28HQ==
X-Received: by 2002:a5d:6886:: with SMTP id h6mr48291568wru.374.1600590237536; 
 Sun, 20 Sep 2020 01:23:57 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id i16sm13867150wrq.73.2020.09.20.01.23.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Sep 2020 01:23:56 -0700 (PDT)
Date: Sun, 20 Sep 2020 10:23:53 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20200920082353.GG438822@phenom.ffwll.local>
Mail-Followup-To: Thomas Gleixner <tglx@linutronix.de>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:GENERIC INCLUDE/A..." <linux-arch@vger.kernel.org>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Paul McKenney <paulmck@kernel.org>, X86 ML <x86@kernel.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Peter Zijlstra <peterz@infradead.org>,
 Juri Lelli <juri.lelli@redhat.com>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Steven Rostedt <rostedt@goodmis.org>,
 Ben Segall <bsegall@google.com>, Mel Gorman <mgorman@suse.de>,
 Daniel Bristot de Oliveira <bristot@redhat.com>,
 Will Deacon <will@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux-MM <linux-mm@kvack.org>, Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Chris Zankel <chris@zankel.net>, Max Filippov <jcmvbkbc@gmail.com>,
 linux-xtensa@linux-xtensa.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Vineet Gupta <vgupta@synopsys.com>,
 arcml <linux-snps-arc@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 linux-csky@vger.kernel.org, Michal Simek <monstr@monstr.eu>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 linux-mips@vger.kernel.org, Nick Hu <nickhu@andestech.com>,
 Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "David S. Miller" <davem@davemloft.net>, sparclinux@vger.kernel.org
References: <20200919091751.011116649@linutronix.de>
 <CAKMK7uHTVJL2jGtCg61zG=myiF1BSk+yDdRYikcm-Mq_1TQWMQ@mail.gmail.com>
 <CAKMK7uENFDANQKebS_H0bhHeQRijrp1aVHQqyZPute3KBZ+fVQ@mail.gmail.com>
 <87pn6hc6g1.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87pn6hc6g1.fsf@nanos.tec.linutronix.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [patch RFC 00/15] mm/highmem: Provide a preemptible
 variant of kmap_atomic & friends
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
Cc: Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 dri-devel <dri-devel@lists.freedesktop.org>, linux-mips@vger.kernel.org,
 Ben Segall <bsegall@google.com>, Max Filippov <jcmvbkbc@gmail.com>,
 Guo Ren <guoren@kernel.org>, sparclinux@vger.kernel.org,
 Vincent Chen <deanbo422@gmail.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 "open list:GENERIC INCLUDE/A..." <linux-arch@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Michael Ellerman <mpe@ellerman.id.au>, X86 ML <x86@kernel.org>,
 Russell King <linux@armlinux.org.uk>, linux-csky@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Mel Gorman <mgorman@suse.de>,
 arcml <linux-snps-arc@lists.infradead.org>, linux-xtensa@linux-xtensa.org,
 Paul McKenney <paulmck@kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Chris Zankel <chris@zankel.net>, Michal Simek <monstr@monstr.eu>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Nick Hu <nickhu@andestech.com>, Linux-MM <linux-mm@kvack.org>,
 Vineet Gupta <vgupta@synopsys.com>, LKML <linux-kernel@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Paul Mackerras <paulus@samba.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Daniel Bristot de Oliveira <bristot@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, Greentime Hu <green.hu@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Sep 20, 2020 at 08:23:26AM +0200, Thomas Gleixner wrote:
> On Sat, Sep 19 2020 at 12:37, Daniel Vetter wrote:
> > On Sat, Sep 19, 2020 at 12:35 PM Daniel Vetter <daniel@ffwll.ch> wrote:
> >> I think it should be the case, but I want to double check: Will
> >> copy_*_user be allowed within a kmap_temporary section? This would
> >> allow us to ditch an absolute pile of slowpaths.
> >
> > (coffee just kicked in) copy_*_user is ofc allowed, but if you hit a
> > page fault you get a short read/write. This looks like it would remove
> > the need to handle these in a slowpath, since page faults can now be
> > served in this new kmap_temporary sections. But this sounds too good
> > to be true, so I'm wondering what I'm missing.
> 
> In principle we could allow pagefaults, but not with the currently
> proposed interface which can be called from any context. Obviously if
> called from atomic context it can't handle user page faults.
 
Yeah that's clear, but does the implemention need to disable pagefaults
unconditionally?

> In theory we could make a variant which does not disable pagefaults, but
> that's what kmap() already provides.

Currently we have a bunch of code which roughly does

	kmap_atomic();
	copy_*_user();
	kunmap_atomic();

	if (short_copy_user) {
		kmap();
		copy_*_user(remaining_stuff);
		kunmap();
	}

And the only reason is that kmap is a notch slower, hence the fastpath. If
we get a kmap which is fast and allows pagefaults (only in contexts that
allow pagefaults already ofc) then we can ditch a pile of kmap users.

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
