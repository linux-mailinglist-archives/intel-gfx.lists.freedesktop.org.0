Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C17DE4AFDA3
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 20:46:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 493FD896D8;
	Wed,  9 Feb 2022 19:46:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 363D8896D8
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 19:46:12 +0000 (UTC)
Received: by mail-lj1-f174.google.com with SMTP id q22so4928239ljh.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Feb 2022 11:46:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mI+M+mpK8d6GUtu7pCBOaGOdu7sx/dJ/6QGGwi/Jk00=;
 b=OCVaZ3X27gq0qo6KDvkhO4VSHagzoGA8IMbpkEbp6emMTacc0SN9aN0Z1t/wyUJ3jx
 3jzEYEtsCCoHvHJ0bS4OPCfnK6FYjiSj+EI0qm0pub9AcB1V8XYvA/eSqr+72slqIj6q
 KRwDlDOAX+SOxLd59uhGeh3lQA2yLO+qnXKp/CIAaZfDpo+UjuU7yiO0yXu/ss3l+BEE
 jZvnX7KaC7UFdtw/mUZQ62TIy9uvBSKaVG8IswX0mRVxTurC4RfKsy5eceOMjvQs0syJ
 drXtLCaA6es0YuB+jN3STrfsHVeAKIly9PvaOTI6Kn4Hm1TG9lDai8o9V3lZm48QLFtv
 QfOg==
X-Gm-Message-State: AOAM532x1eJeC+Nt2TZ6agTocTBN8lWx+1Om8PR+6cYXF5oRoz68GUhL
 DpuXODPtnwsNijyxkpJvwMqRAe6HRSyG/PyOchM=
X-Google-Smtp-Source: ABdhPJxVSOnkXD7hI3w7PfvaBvSIaDepKBIElf+UxIlokkvG7/1wW0KYALgOvKXGhDUoR0FDS0DS3ySD+sopph9e06A=
X-Received: by 2002:a2e:b611:: with SMTP id r17mr2522075ljn.457.1644435970319; 
 Wed, 09 Feb 2022 11:46:10 -0800 (PST)
MIME-Version: 1.0
References: <20220208184208.79303-1-namhyung@kernel.org>
 <20220209090908.GK23216@worktop.programming.kicks-ass.net>
 <24fe6a08-5931-8e8d-8d77-459388c4654e@redhat.com>
 <919214156.50301.1644431371345.JavaMail.zimbra@efficios.com>
 <69e5f778-8715-4acf-c027-58b6ec4a9e77@redhat.com>
 <CAM9d7ci=N2NVj57k=W0ebqBzfW+ThBqYSrx-CZbgwGcbOSrEGA@mail.gmail.com>
 <718973621.50447.1644434890744.JavaMail.zimbra@efficios.com>
In-Reply-To: <718973621.50447.1644434890744.JavaMail.zimbra@efficios.com>
From: Namhyung Kim <namhyung@kernel.org>
Date: Wed, 9 Feb 2022 11:45:59 -0800
Message-ID: <CAM9d7cj=tj6pA48q_wkQOGn-2vUc9FRj63bMBOm5R7OukmMbTQ@mail.gmail.com>
To: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
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
Cc: rcu <rcu@vger.kernel.org>, paulmck <paulmck@kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Peter Zijlstra <peterz@infradead.org>, Boqun Feng <boqun.feng@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, rostedt <rostedt@goodmis.org>,
 Radoslaw Burny <rburny@google.com>, Byungchul Park <byungchul.park@lge.com>,
 cgroups <cgroups@vger.kernel.org>, Tejun Heo <tj@kernel.org>,
 Waiman Long <longman@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-btrfs <linux-btrfs@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 9, 2022 at 11:28 AM Mathieu Desnoyers
<mathieu.desnoyers@efficios.com> wrote:
>
> ----- On Feb 9, 2022, at 2:22 PM, Namhyung Kim namhyung@kernel.org wrote:
> > I'm also concerning dynamic allocated locks in a data structure.
> > If we keep the info in a hash table, we should delete it when the
> > lock is gone.  I'm not sure we have a good place to hook it up all.
>
> I was wondering about this use case as well. Can we make it mandatory to
> declare the lock "class" (including the name) statically, even though the
> lock per-se is allocated dynamically ? Then the initialization of the lock
> embedded within the data structure would simply refer to the lock class
> definition.

Isn't it still the same if we have static lock classes that the entry needs
to be deleted from the hash table when it frees the data structure?
I'm more concerned about free than alloc as there seems to be no
API to track that in a place.

Thanks,
Namhyung
