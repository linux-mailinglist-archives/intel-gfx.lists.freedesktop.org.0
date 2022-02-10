Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5514B0186
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 01:27:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9731310E6A2;
	Thu, 10 Feb 2022 00:27:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE0BB10E6A2
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 00:27:26 +0000 (UTC)
Received: by mail-lf1-f42.google.com with SMTP id f10so7320456lfu.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Feb 2022 16:27:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S7eVUoreTdbtEAolbtfKVyv4dZoqeTIGEz+EBJSn9AQ=;
 b=TZmdRDNVMqcGGLO/4JYhiiJMFBD0uNNGvzubkGtxu50PMko56DKUf5LYDX3KvimyC+
 2XFvUdf8xjiP4kRrAYXknO5aU8Qq1osDVI/tRx+8lGDXju02Zd8lJYQYmDRf6nXTPdCV
 TsRG2lImgX0J+NBlLpnueq+SfHt1ky1wfMkVC/rMcZwJHYI7IF/SJNzqtKySqdv4Jgsy
 84oY+/rTuxUXB/Hyrzrj+N1M11hyUsxZ2GJqzxxte/4MbWzPGShGTAVNKNlbmva/jah7
 X+JfpLEdYj9J9HuUWvKpntN2FZhgMvPqGiNvaJesohK8s7URzyblFB0TEdktvUCXHyAX
 S1pw==
X-Gm-Message-State: AOAM532WzT9frzhJ1q0nrU/o1mayX8Uu44dNGJMtWb7xlXwiRWGYnPRP
 7s+WPvh0m+ZIbcF4gbjme9TBpKYmdH4NVmWoSHw=
X-Google-Smtp-Source: ABdhPJxECgtyvabxbqWLIvad75/MXw7Bove9aVEmgchS/RAiH0bwkldePoCObtsg2kp8bdf3KphsStFgI9e5U3sEWSA=
X-Received: by 2002:a05:6512:3b9a:: with SMTP id
 g26mr3428751lfv.71.1644452844971; 
 Wed, 09 Feb 2022 16:27:24 -0800 (PST)
MIME-Version: 1.0
References: <20220208184208.79303-1-namhyung@kernel.org>
 <20220209090908.GK23216@worktop.programming.kicks-ass.net>
 <24fe6a08-5931-8e8d-8d77-459388c4654e@redhat.com>
 <919214156.50301.1644431371345.JavaMail.zimbra@efficios.com>
 <69e5f778-8715-4acf-c027-58b6ec4a9e77@redhat.com>
 <CAM9d7ci=N2NVj57k=W0ebqBzfW+ThBqYSrx-CZbgwGcbOSrEGA@mail.gmail.com>
 <718973621.50447.1644434890744.JavaMail.zimbra@efficios.com>
 <CAM9d7cj=tj6pA48q_wkQOGn-2vUc9FRj63bMBOm5R7OukmMbTQ@mail.gmail.com>
 <f8b7760f-16a2-6ada-de88-9e21a7e8fef9@redhat.com>
In-Reply-To: <f8b7760f-16a2-6ada-de88-9e21a7e8fef9@redhat.com>
From: Namhyung Kim <namhyung@kernel.org>
Date: Wed, 9 Feb 2022 16:27:13 -0800
Message-ID: <CAM9d7chH0Pvxx_FURL0sZvawwenRmjPyfac_9oinOaRwv8isng@mail.gmail.com>
To: Waiman Long <longman@redhat.com>
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
 Peter Zijlstra <peterz@infradead.org>, Boqun Feng <boqun.feng@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, rostedt <rostedt@goodmis.org>,
 Radoslaw Burny <rburny@google.com>, Byungchul Park <byungchul.park@lge.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, Tejun Heo <tj@kernel.org>,
 cgroups <cgroups@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-btrfs <linux-btrfs@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 9, 2022 at 12:17 PM Waiman Long <longman@redhat.com> wrote:
>
>
> On 2/9/22 14:45, Namhyung Kim wrote:
> > On Wed, Feb 9, 2022 at 11:28 AM Mathieu Desnoyers
> > <mathieu.desnoyers@efficios.com> wrote:
> >> ----- On Feb 9, 2022, at 2:22 PM, Namhyung Kim namhyung@kernel.org wrote:
> >>> I'm also concerning dynamic allocated locks in a data structure.
> >>> If we keep the info in a hash table, we should delete it when the
> >>> lock is gone.  I'm not sure we have a good place to hook it up all.
> >> I was wondering about this use case as well. Can we make it mandatory to
> >> declare the lock "class" (including the name) statically, even though the
> >> lock per-se is allocated dynamically ? Then the initialization of the lock
> >> embedded within the data structure would simply refer to the lock class
> >> definition.
> > Isn't it still the same if we have static lock classes that the entry needs
> > to be deleted from the hash table when it frees the data structure?
> > I'm more concerned about free than alloc as there seems to be no
> > API to track that in a place.
>
> We may have to invent some new APIs to do that. For example,
> spin_lock_exit() can be the counterpart of spin_lock_init() and so on.
> Of course, existing kernel code have to be modified to designate the
> point after which a lock is no longer being used or is freed.

Yeah, but I'm afraid that it could be easy to miss something.
Also it would add some runtime overhead due to maintaining
the hash table even if the tracepoints are not used.

Thanks,
Namhyung
