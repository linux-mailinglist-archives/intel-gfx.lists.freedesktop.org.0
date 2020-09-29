Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC6527BF2A
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 10:21:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE47C89C80;
	Tue, 29 Sep 2020 08:21:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B218689C2C;
 Tue, 29 Sep 2020 08:21:23 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1601367682;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=KFyfyEQCS1dcCR4BhfL+zwiQ3CuzyAy4x23tr+VkzjE=;
 b=kYjuvZ+ilRICWeNF3tv+sX4B6qR0l26SNFX+2yuqmAbG6VZsVdy+/ab4DWFA/2mAPMzvho
 sWiMi4hR4DtnoNBd3zA9aScladT2LR3g7zk3zp4xXinjBQFShKRtNv5abZ+aKM+mJdoLfs
 LfJPGyvdVLHOxuKwI+4KWXzshc3e4XY=
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 4162CACA3;
 Tue, 29 Sep 2020 08:21:22 +0000 (UTC)
Date: Tue, 29 Sep 2020 10:21:21 +0200
From: Michal Hocko <mhocko@suse.com>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20200929081938.GC22035@dhcp22.suse.cz>
References: <CAHk-=win80rdof8Pb=5k6gT9j_v+hz-TQzKPVastZDvBe9RimQ@mail.gmail.com>
 <871rj4owfn.fsf@nanos.tec.linutronix.de>
 <CAHk-=wj0eUuVQ=hRFZv_nY7g5ZLt7Fy3K7SMJL0ZCzniPtsbbg@mail.gmail.com>
 <87bli75t7v.fsf@nanos.tec.linutronix.de>
 <CAHk-=wht7kAeyR5xEW2ORj7m0hibVxZ3t+2ie8vNHLQfdbN2_g@mail.gmail.com>
 <CAKMK7uHAk9-Vy2cof0ws=DrcD52GHiCDiyHbjLd19CgpBU2rKQ@mail.gmail.com>
 <20200916152956.GV29330@paulmck-ThinkPad-P72>
 <CAKMK7uGFyfhEyt=jmdk2jDO-hq0_Pf0ck+cKSELHjr2U3rPuYQ@mail.gmail.com>
 <20200916205840.GD29330@paulmck-ThinkPad-P72>
 <CAKMK7uHL2dMv80b8uBXr=BqHD2TQeODQQM1MGYhAfCYbX7sLrA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uHL2dMv80b8uBXr=BqHD2TQeODQQM1MGYhAfCYbX7sLrA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [patch 00/13] preempt: Make preempt count
 unconditional
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
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Lai Jiangshan <jiangshanlai@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Ben Segall <bsegall@google.com>,
 Linux-MM <linux-mm@kvack.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Brian Cain <bcain@codeaurora.org>,
 linux-hexagon@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@kernel.org>, David Airlie <airlied@linux.ie>,
 Ingo Molnar <mingo@redhat.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Mel Gorman <mgorman@suse.de>, Matt Turner <mattst88@gmail.com>,
 Valentin Schneider <valentin.schneider@arm.com>, linux-xtensa@linux-xtensa.org,
 Shuah Khan <shuah@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>,
 Jeff Dike <jdike@addtoit.com>, intel-gfx <intel-gfx@lists.freedesktop.org>,
 alpha <linux-alpha@vger.kernel.org>, linux-um <linux-um@lists.infradead.org>,
 Josh Triplett <josh@joshtriplett.org>, Steven Rostedt <rostedt@goodmis.org>,
 rcu@vger.kernel.org, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Thomas Gleixner <tglx@linutronix.de>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Richard Henderson <rth@twiddle.net>, Chris Zankel <chris@zankel.net>,
 Max Filippov <jcmvbkbc@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Richard Weinberger <richard@nod.at>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Daniel Bristot de Oliveira <bristot@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed 16-09-20 23:43:02, Daniel Vetter wrote:
> I can
> then figure out whether it's better to risk not spotting issues with
> call_rcu vs slapping a memalloc_noio_save/restore around all these
> critical section which force-degrades any allocation to GFP_ATOMIC at

did you mean memalloc_noreclaim_* here?

> most, but has the risk that we run into code that assumes "GFP_KERNEL
> never fails for small stuff" and has a decidedly less tested fallback
> path than rcu code.

Even if the above then please note that memalloc_noreclaim_* or
PF_MEMALLOC should be used with an extreme care. Essentially only for
internal memory reclaimers. It grants access to _all_ the available
memory so any abuse can be detrimental to the overall system operation.
Allocation failure in this mode means that we are out of memory and any
code relying on such an allocation has to carefuly consider failure.
This is not a random allocation mode.

-- 
Michal Hocko
SUSE Labs
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
