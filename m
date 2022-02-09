Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B50E24B5533
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 16:49:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70AC310E23B;
	Mon, 14 Feb 2022 15:49:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.efficios.com (mail.efficios.com [167.114.26.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F6F810E1FF
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 19:56:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.efficios.com (Postfix) with ESMTP id 9417B3B5086;
 Wed,  9 Feb 2022 14:56:24 -0500 (EST)
Received: from mail.efficios.com ([127.0.0.1])
 by localhost (mail03.efficios.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 07TCclwxL99S; Wed,  9 Feb 2022 14:56:24 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by mail.efficios.com (Postfix) with ESMTP id E627B3B4E7F;
 Wed,  9 Feb 2022 14:56:23 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.efficios.com E627B3B4E7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=efficios.com;
 s=default; t=1644436583;
 bh=TGXHNcESyLk7e4fzBk383pOUPG79qFlYdVN8p53Ep/Q=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=o2rMAwb82gk7CvIC1/Lg6Ovt8Ys6ualxXZZEJUIKPgpUsZnCRkpg0CTrB6sSGJHw4
 OGw22rdi0SSLref9YrWriHrt4yZXTgoVohqZF5bRFmtFF1xwyls8hv2A+THlk0FHMu
 tiOkWfGSipmXDJGG0hD9nxGnUNw28RXeYFKHNvJMTJEt19vk9eFeRK3AKqT6Zd+Rfq
 Eli3lK06XO9htl+iJXGczHmHtM5VJoxV8wYgHNYdOXotrFgrQh2BcLtrwe1a/9VVfJ
 z4tNmAat+9f3PE1+P2dRQt+/bBMnlw44dJZYqv1P6HvSjjbIakgi7sEATlyFrZynWi
 WsAcN9S5ot38g==
X-Virus-Scanned: amavisd-new at efficios.com
Received: from mail.efficios.com ([127.0.0.1])
 by localhost (mail03.efficios.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id nabkake81CbX; Wed,  9 Feb 2022 14:56:23 -0500 (EST)
Received: from mail03.efficios.com (mail03.efficios.com [167.114.26.124])
 by mail.efficios.com (Postfix) with ESMTP id D177F3B4BD0;
 Wed,  9 Feb 2022 14:56:23 -0500 (EST)
Date: Wed, 9 Feb 2022 14:56:23 -0500 (EST)
From: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
To: Namhyung Kim <namhyung@kernel.org>
Message-ID: <575163430.50481.1644436583757.JavaMail.zimbra@efficios.com>
In-Reply-To: <CAM9d7cj=tj6pA48q_wkQOGn-2vUc9FRj63bMBOm5R7OukmMbTQ@mail.gmail.com>
References: <20220208184208.79303-1-namhyung@kernel.org>
 <20220209090908.GK23216@worktop.programming.kicks-ass.net>
 <24fe6a08-5931-8e8d-8d77-459388c4654e@redhat.com>
 <919214156.50301.1644431371345.JavaMail.zimbra@efficios.com>
 <69e5f778-8715-4acf-c027-58b6ec4a9e77@redhat.com>
 <CAM9d7ci=N2NVj57k=W0ebqBzfW+ThBqYSrx-CZbgwGcbOSrEGA@mail.gmail.com>
 <718973621.50447.1644434890744.JavaMail.zimbra@efficios.com>
 <CAM9d7cj=tj6pA48q_wkQOGn-2vUc9FRj63bMBOm5R7OukmMbTQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [167.114.26.124]
X-Mailer: Zimbra 8.8.15_GA_4203 (ZimbraWebClient - FF96 (Linux)/8.8.15_GA_4203)
Thread-Topic: locking: Separate lock tracepoints from lockdep/lock_stat (v1)
Thread-Index: 8v1yUUmpj7eA9y5pJI4+3hvYOKV87w==
X-Mailman-Approved-At: Mon, 14 Feb 2022 15:48:57 +0000
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

----- On Feb 9, 2022, at 2:45 PM, Namhyung Kim namhyung@kernel.org wrote:

> On Wed, Feb 9, 2022 at 11:28 AM Mathieu Desnoyers
> <mathieu.desnoyers@efficios.com> wrote:
>>
>> ----- On Feb 9, 2022, at 2:22 PM, Namhyung Kim namhyung@kernel.org wrote:
>> > I'm also concerning dynamic allocated locks in a data structure.
>> > If we keep the info in a hash table, we should delete it when the
>> > lock is gone.  I'm not sure we have a good place to hook it up all.
>>
>> I was wondering about this use case as well. Can we make it mandatory to
>> declare the lock "class" (including the name) statically, even though the
>> lock per-se is allocated dynamically ? Then the initialization of the lock
>> embedded within the data structure would simply refer to the lock class
>> definition.
> 
> Isn't it still the same if we have static lock classes that the entry needs
> to be deleted from the hash table when it frees the data structure?
> I'm more concerned about free than alloc as there seems to be no
> API to track that in a place.

If the lock class is defined statically, even for dynamically initialized
locks, then its associated object sits either in the core kernel or within
a module.

So if it's in the core kernel, it could be added to the hash table at kernel
init and stay there forever.

If it's in a module, it would be added to the hash table on module load and
removed on module unload. We would have to be careful about how the ftrace
printout to human readable text deals with missing hash table data, because
that printout will happen after buffering, so an untimely module unload could
make this address to string mapping unavailable for a few events. If we care
about getting this corner case right there are a few things we could do as
well.

Thanks,

Mathieu

-- 
Mathieu Desnoyers
EfficiOS Inc.
http://www.efficios.com
