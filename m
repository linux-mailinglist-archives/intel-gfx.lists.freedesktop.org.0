Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B204B1E03
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 06:55:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1225510E860;
	Fri, 11 Feb 2022 05:55:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D275F10E860
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 05:55:40 +0000 (UTC)
Received: by mail-lj1-f172.google.com with SMTP id k10so8102967ljq.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 21:55:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nC1KApq7e2Tv1mRrJaVJbGFX4EPFBr5Wq82MxBaNzD0=;
 b=vx57QRjEGqJpJCtfXK1DrFryipPK6uDn1KEuNQGCsCV/XjnERywgqX5u2pdpDNUrPo
 fo6Qq2I2imj5HZrSlbL9EFNpevpAKCuIKTfwzJyEZi8CWTP9M2bV3hlg74JIoGHKlmuk
 mfskcHAC8XQ0G5lS9g92vrYxZnJFpZOiXRCUlG+xO+o8cAvP841rjVkix/Xw1GCAwbIb
 alvumzxHKfMLMckLVNyiC/vM+YOXejse+NxKnOkbWugo0Z4DhgDalWGrpMWqYZnKS/UX
 NdCr5wg7AW4tEYXALjgPk6UJjFUCEcUQkVw7mEb/waXphI59Rt6pCvpHKxaMIjXO4no4
 CRow==
X-Gm-Message-State: AOAM530Nt+T70MDlzvh0STnxHszy3qQ4s3tlAVRuwGzSNap7QcHx8fIY
 RuC1BleudLDqpA0W1lQGg2fK8JcPdG52ByHqRr8=
X-Google-Smtp-Source: ABdhPJzbOzw/0zV4IgkYBd1T8G0wbLX3SjAMswL8OAcpI2VPdwnBvfBks/G9AKwLofLucGjL/8xeS4WMPSxifL2SCtI=
X-Received: by 2002:a05:651c:a04:: with SMTP id k4mr74921ljq.180.1644558938779; 
 Thu, 10 Feb 2022 21:55:38 -0800 (PST)
MIME-Version: 1.0
References: <20220208184208.79303-1-namhyung@kernel.org>
 <20220209090908.GK23216@worktop.programming.kicks-ass.net>
 <CAM9d7cgq+jxu6FJuKhZkprn7dO4DiG5pDjmYZzneQYTfKOM85g@mail.gmail.com>
 <YgTXUQ9CBoo3+A+c@hirez.programming.kicks-ass.net>
In-Reply-To: <YgTXUQ9CBoo3+A+c@hirez.programming.kicks-ass.net>
From: Namhyung Kim <namhyung@kernel.org>
Date: Thu, 10 Feb 2022 21:55:27 -0800
Message-ID: <CAM9d7cgPFLjQyopX04MwG6Leq6DwDJF2q6BxOL_Nw6J2LEZF4g@mail.gmail.com>
To: Peter Zijlstra <peterz@infradead.org>
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
Cc: rcu <rcu@vger.kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, Boqun Feng <boqun.feng@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Radoslaw Burny <rburny@google.com>, Byungchul Park <byungchul.park@lge.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 cgroups <cgroups@vger.kernel.org>, Tejun Heo <tj@kernel.org>,
 Waiman Long <longman@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-btrfs <linux-btrfs@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 10, 2022 at 1:14 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Wed, Feb 09, 2022 at 04:32:58PM -0800, Namhyung Kim wrote:
> > On Wed, Feb 9, 2022 at 1:09 AM Peter Zijlstra <peterz@infradead.org> wrote:
> > >
> > > On Tue, Feb 08, 2022 at 10:41:56AM -0800, Namhyung Kim wrote:
> > >
> > > > Eventually I'm mostly interested in the contended locks only and I
> > > > want to reduce the overhead in the fast path.  By moving that, it'd be
> > > > easy to track contended locks with timing by using two tracepoints.
> > >
> > > So why not put in two new tracepoints and call it a day?
> > >
> > > Why muck about with all that lockdep stuff just to preserve the name
> > > (and in the process continue to blow up data structures etc..). This
> > > leaves distros in a bind, will they enable this config and provide
> > > tracepoints while bloating the data structures and destroying things
> > > like lockref (which relies on sizeof(spinlock_t)), or not provide this
> > > at all.
> >
> > If it's only lockref, is it possible to change it to use arch_spinlock_t
> > so that it can remain in 4 bytes?  It'd be really nice if we can keep
> > spin lock size, but it'd be easier to carry the name with it for
> > analysis IMHO.
>
> It's just vile and disgusting to blow up the lock size for convenience
> like this.
>
> And no, there's more of that around. A lot of effort has been spend to
> make sure spinlocks are 32bit and we're not going to give that up for
> something as daft as this.
>
> Just think harder on the analysis side. Like said; I'm thinking the
> caller IP should be good enough most of the time.

Ok, I'll go in this direction then.

So you are ok with adding two new tracepoints, even if they are
similar to what we already have in lockdep/lock_stat, right?

Thanks,
Namhyung
