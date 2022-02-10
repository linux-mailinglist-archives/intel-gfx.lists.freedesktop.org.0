Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9ABF4B163B
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 20:27:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C1F10E2E9;
	Thu, 10 Feb 2022 19:27:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AF7410E2E9
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 19:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644521241;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GNtwi8xnD/wpxMJkxYRgc+GcsRTLVGTfs9JYaKnP9Qg=;
 b=Xj47WjX8EdLO60xj3lY+608dTfJo2xaS5Nu4ydBnQHYkbm+swdg7EH3wtKMlY5Z9lCMWSo
 wSt4xG/TJZpYF/9AKrvIXdpnXheEadVP519jbrwDv+bx4LavfiA+p5OcTG0sZjkh9osDRz
 QUKpoMiB3z6DnCheNl7DTitBxEgj0aA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-590-rLoL6nCFOp2CnnYG8WrfgQ-1; Thu, 10 Feb 2022 14:27:18 -0500
X-MC-Unique: rLoL6nCFOp2CnnYG8WrfgQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4E5AB46861;
 Thu, 10 Feb 2022 19:27:15 +0000 (UTC)
Received: from [10.22.19.255] (unknown [10.22.19.255])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3B8EE5E482;
 Thu, 10 Feb 2022 19:27:12 +0000 (UTC)
Message-ID: <52de2e14-33d9-bdda-4b37-3e72ae9954c7@redhat.com>
Date: Thu, 10 Feb 2022 14:27:11 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Content-Language: en-US
To: paulmck@kernel.org, Peter Zijlstra <peterz@infradead.org>
References: <20220208184208.79303-1-namhyung@kernel.org>
 <20220209090908.GK23216@worktop.programming.kicks-ass.net>
 <CAM9d7cgq+jxu6FJuKhZkprn7dO4DiG5pDjmYZzneQYTfKOM85g@mail.gmail.com>
 <YgTXUQ9CBoo3+A+c@hirez.programming.kicks-ass.net>
 <20220210191404.GM4285@paulmck-ThinkPad-P17-Gen-1>
From: Waiman Long <longman@redhat.com>
In-Reply-To: <20220210191404.GM4285@paulmck-ThinkPad-P17-Gen-1>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
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
 Boqun Feng <boqun.feng@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Radoslaw Burny <rburny@google.com>,
 Byungchul Park <byungchul.park@lge.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 cgroups <cgroups@vger.kernel.org>, Tejun Heo <tj@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-btrfs <linux-btrfs@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2/10/22 14:14, Paul E. McKenney wrote:
> On Thu, Feb 10, 2022 at 10:13:53AM +0100, Peter Zijlstra wrote:
>> On Wed, Feb 09, 2022 at 04:32:58PM -0800, Namhyung Kim wrote:
>>> On Wed, Feb 9, 2022 at 1:09 AM Peter Zijlstra <peterz@infradead.org> wrote:
>>>> On Tue, Feb 08, 2022 at 10:41:56AM -0800, Namhyung Kim wrote:
>>>>
>>>>> Eventually I'm mostly interested in the contended locks only and I
>>>>> want to reduce the overhead in the fast path.  By moving that, it'd be
>>>>> easy to track contended locks with timing by using two tracepoints.
>>>> So why not put in two new tracepoints and call it a day?
>>>>
>>>> Why muck about with all that lockdep stuff just to preserve the name
>>>> (and in the process continue to blow up data structures etc..). This
>>>> leaves distros in a bind, will they enable this config and provide
>>>> tracepoints while bloating the data structures and destroying things
>>>> like lockref (which relies on sizeof(spinlock_t)), or not provide this
>>>> at all.
>>> If it's only lockref, is it possible to change it to use arch_spinlock_t
>>> so that it can remain in 4 bytes?  It'd be really nice if we can keep
>>> spin lock size, but it'd be easier to carry the name with it for
>>> analysis IMHO.
>> It's just vile and disgusting to blow up the lock size for convenience
>> like this.
>>
>> And no, there's more of that around. A lot of effort has been spend to
>> make sure spinlocks are 32bit and we're not going to give that up for
>> something as daft as this.
>>
>> Just think harder on the analysis side. Like said; I'm thinking the
>> caller IP should be good enough most of the time.
> Another option is to keep any additional storage in a separate data
> structure keyed off of lock address, lockdep class, or whatever.
>
> Whether or not this is a -good- option, well, who knows?  ;-)

I have suggested that too. Unfortunately, I was replying to an email 
with your wrong email address. So you might not have received it.

Cheers,
Longman

