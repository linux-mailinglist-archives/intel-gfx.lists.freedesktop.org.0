Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA22A4B1E08
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 06:57:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15A0510E9DC;
	Fri, 11 Feb 2022 05:57:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFABC10E9DC
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 05:57:56 +0000 (UTC)
Received: by mail-lf1-f47.google.com with SMTP id k13so14489404lfg.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 21:57:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YHj2jwcJGwmoQOFICOnj7VYD0ZfKr1aHs76v7p1GNas=;
 b=VwXsSZDgdIolbdxKbJkI+0QSSqP05KI0AnNDqW4lnYbtihPucYUxQiyCNPOTpCjNuq
 KFEQwexjOXcCdq17f3eHLkauyziM7fVB9XBX9D9EEtPDr+wavgVppDkIugekBXqYoo0R
 zvi8/k7kxu0JhfpIC2PovFyAFNteFFRj+lwyR9WulEFlqUvyU8/hhk8Vn23RJCkPHkJ/
 hrPOLe3MDpWbcX/cG8ft3ZQncnHZYFhgB53eHZPpCs/XeQXDzCBKoNVTnTO3vGFwFPvs
 0ZY0k9Ww8AWOdOHUVz5SyNmGeexsqZlOPAzWU95Mt5ddF580olDzqrX4cA3Oh9RGMQ97
 NxVQ==
X-Gm-Message-State: AOAM533ofDiWv/2noBa8+9nyr8KMwUpXEyIAiYvyBmG4Gmxls7XC8XiV
 nZIflkjISe6JBDmroZt++1Cf+gQfoLqrXh8gwGw=
X-Google-Smtp-Source: ABdhPJy2dlN3fWiUhcT5boKFhlYkHBnGFHgB3K+4K4i+akzobdalchyFHlfYniU0eYARcVvOesbduvyh2ZcH9Ept6BA=
X-Received: by 2002:a05:6512:3186:: with SMTP id
 i6mr131920lfe.47.1644559074965; 
 Thu, 10 Feb 2022 21:57:54 -0800 (PST)
MIME-Version: 1.0
References: <20220208184208.79303-1-namhyung@kernel.org>
 <20220209090908.GK23216@worktop.programming.kicks-ass.net>
 <CAM9d7cgq+jxu6FJuKhZkprn7dO4DiG5pDjmYZzneQYTfKOM85g@mail.gmail.com>
 <YgTXUQ9CBoo3+A+c@hirez.programming.kicks-ass.net>
 <20220210191404.GM4285@paulmck-ThinkPad-P17-Gen-1>
 <52de2e14-33d9-bdda-4b37-3e72ae9954c7@redhat.com>
 <20220210201058.GP4285@paulmck-ThinkPad-P17-Gen-1>
In-Reply-To: <20220210201058.GP4285@paulmck-ThinkPad-P17-Gen-1>
From: Namhyung Kim <namhyung@kernel.org>
Date: Thu, 10 Feb 2022 21:57:43 -0800
Message-ID: <CAM9d7cj-PhX16jKu8DT=tfVf=OfH78xYYaMB8BVk-Hj_eoR4kQ@mail.gmail.com>
To: "Paul E. McKenney" <paulmck@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [RFC 00/12] locking: Separate lock tracepoints from
 lockdep/lock_stat (v1)
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
Cc: rcu <rcu@vger.kernel.org>, intel-gfx <intel-gfx@lists.freedesktop.org>,
 Peter Zijlstra <peterz@infradead.org>, Boqun Feng <boqun.feng@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Radoslaw Burny <rburny@google.com>, Byungchul Park <byungchul.park@lge.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 cgroups <cgroups@vger.kernel.org>, Tejun Heo <tj@kernel.org>,
 Waiman Long <longman@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-btrfs <linux-btrfs@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Paul,

On Thu, Feb 10, 2022 at 12:10 PM Paul E. McKenney <paulmck@kernel.org> wrote:
>
> On Thu, Feb 10, 2022 at 02:27:11PM -0500, Waiman Long wrote:
> > On 2/10/22 14:14, Paul E. McKenney wrote:
> > > On Thu, Feb 10, 2022 at 10:13:53AM +0100, Peter Zijlstra wrote:
> > > > On Wed, Feb 09, 2022 at 04:32:58PM -0800, Namhyung Kim wrote:
> > > > > On Wed, Feb 9, 2022 at 1:09 AM Peter Zijlstra <peterz@infradead.org> wrote:
> > > > > > On Tue, Feb 08, 2022 at 10:41:56AM -0800, Namhyung Kim wrote:
> > > > > >
> > > > > > > Eventually I'm mostly interested in the contended locks only and I
> > > > > > > want to reduce the overhead in the fast path.  By moving that, it'd be
> > > > > > > easy to track contended locks with timing by using two tracepoints.
> > > > > > So why not put in two new tracepoints and call it a day?
> > > > > >
> > > > > > Why muck about with all that lockdep stuff just to preserve the name
> > > > > > (and in the process continue to blow up data structures etc..). This
> > > > > > leaves distros in a bind, will they enable this config and provide
> > > > > > tracepoints while bloating the data structures and destroying things
> > > > > > like lockref (which relies on sizeof(spinlock_t)), or not provide this
> > > > > > at all.
> > > > > If it's only lockref, is it possible to change it to use arch_spinlock_t
> > > > > so that it can remain in 4 bytes?  It'd be really nice if we can keep
> > > > > spin lock size, but it'd be easier to carry the name with it for
> > > > > analysis IMHO.
> > > > It's just vile and disgusting to blow up the lock size for convenience
> > > > like this.
> > > >
> > > > And no, there's more of that around. A lot of effort has been spend to
> > > > make sure spinlocks are 32bit and we're not going to give that up for
> > > > something as daft as this.
> > > >
> > > > Just think harder on the analysis side. Like said; I'm thinking the
> > > > caller IP should be good enough most of the time.
> > >
> > > Another option is to keep any additional storage in a separate data
> > > structure keyed off of lock address, lockdep class, or whatever.
> > >
> > > Whether or not this is a -good- option, well, who knows?  ;-)
> >
> > I have suggested that too. Unfortunately, I was replying to an email with
> > your wrong email address. So you might not have received it.
>
> Plus I was too lazy to go look at lore.  ;-)

Sorry for the noise about the email address in the first place.
It has been so long since the last time I sent you a patch..

Thanks,
Namhyung
