Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEEF24B018E
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 01:33:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 778BC10E6A2;
	Thu, 10 Feb 2022 00:33:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E55E10E6A2
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 00:33:11 +0000 (UTC)
Received: by mail-lf1-f49.google.com with SMTP id i17so7312286lfg.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Feb 2022 16:33:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hi13+0AtzbStYByZM4x4aFlINJC7bo3Kt6Lh5RP5h4I=;
 b=fIC0+ld5wNgb5NTi3x2FuAIrYWJxQzQ3o1tTnppe6sdabWMkz1RA1VJ4if9L1aOcU4
 E7yPx2mdlKj8ecpt5WHBjmy+Mhu7uKzDIjzvRagFvrJZ4s3JnnmfUjwPHNDZTqBDx6DF
 ajPzamXcyWzSIrrwfwr8bMJD/UDZ/7ejUZ2XbzE/k2jlFS2w08cgiMiks1ViSU32XkOu
 e0VKhxN17aeJepYSaAhdbHIPd8G+7nY4IGaNPjKtd2Ki8IsHmi2HUhvQ34EggGwjBlm6
 hRIyTmaUcYBvswakmSeBCDQLua15Ee+N3hy3CRJH/xHZXER0iOGJ1o8ZQrQMsUxxXc1G
 SN5A==
X-Gm-Message-State: AOAM530P7mK8ll6l9XSbFV/NYxTb4Xb0wwt+1hZPdOC1dDXX4WdbhYMq
 AGwRT4Pn3gI9PMnZkjpYGcCzWuNTpuQHyr6szRo=
X-Google-Smtp-Source: ABdhPJzZvnlJt99+GIG+klBaTJQcc/Z6vAhuqEVXq5NuAa23zEuQluX/L2PyRqxOmq/geXpyXWqIXcWqvbgPSRooCuM=
X-Received: by 2002:a05:6512:3186:: with SMTP id
 i6mr3590137lfe.47.1644453189598; 
 Wed, 09 Feb 2022 16:33:09 -0800 (PST)
MIME-Version: 1.0
References: <20220208184208.79303-1-namhyung@kernel.org>
 <20220209090908.GK23216@worktop.programming.kicks-ass.net>
In-Reply-To: <20220209090908.GK23216@worktop.programming.kicks-ass.net>
From: Namhyung Kim <namhyung@kernel.org>
Date: Wed, 9 Feb 2022 16:32:58 -0800
Message-ID: <CAM9d7cgq+jxu6FJuKhZkprn7dO4DiG5pDjmYZzneQYTfKOM85g@mail.gmail.com>
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

On Wed, Feb 9, 2022 at 1:09 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Tue, Feb 08, 2022 at 10:41:56AM -0800, Namhyung Kim wrote:
>
> > Eventually I'm mostly interested in the contended locks only and I
> > want to reduce the overhead in the fast path.  By moving that, it'd be
> > easy to track contended locks with timing by using two tracepoints.
>
> So why not put in two new tracepoints and call it a day?
>
> Why muck about with all that lockdep stuff just to preserve the name
> (and in the process continue to blow up data structures etc..). This
> leaves distros in a bind, will they enable this config and provide
> tracepoints while bloating the data structures and destroying things
> like lockref (which relies on sizeof(spinlock_t)), or not provide this
> at all.

If it's only lockref, is it possible to change it to use arch_spinlock_t
so that it can remain in 4 bytes?  It'd be really nice if we can keep
spin lock size, but it'd be easier to carry the name with it for
analysis IMHO.

Thanks,
Namhyung
