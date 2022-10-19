Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D97B605109
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 22:09:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D42A10E085;
	Wed, 19 Oct 2022 20:09:38 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC94110E085
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 20:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666210171; x=1697746171;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=l4m25spAE1rAU5YjmiQHfjM5t0sBwCCtecDZV0wPr5A=;
 b=kRUYCYjvT6744MAzAKf1e1SghXMsYDdlsCYwlUjs+0K5ILBTewHlzagv
 77ShlRjJNzutmIkR4Wx6FBtrPG/3kzPbq//VlednO2/YlMyXC2nOIqpQK
 Vt4kDk30p2EMo/KCjNxOOtAmHr18n31v/s5qBPDE4PpOmlYtUhmwLJCuo
 2gXzSCLvOyVblzeebVWf1iTALFBw0+mS0Mu9wbmrlm0MoXygih8c6G+//
 HQ2Hc+oNy0TP1/Pt/6drMYmA3ncd40QvYdKBrnR+TSt1vEOByTjdLDv/4
 ETHVddPULKE97UsojY0mPwtAHrqM1Jm0rNSy0TZW85RU2BIgQNcsqMnlP w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="286236739"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="286236739"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 13:09:31 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="692561919"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="692561919"
Received: from vyomapat-mobl.ger.corp.intel.com (HELO [10.213.202.155])
 ([10.213.202.155])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 13:09:30 -0700
Message-ID: <8acc3e4a-abbc-32bc-626e-7a216f6755c3@linux.intel.com>
Date: Wed, 19 Oct 2022 21:09:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
References: <0029af41-bf24-9972-10ac-f52e1bdcbf08@linux.intel.com>
 <CAHmME9o25v0kZUV-7qEY=6XXAyOA7q0sG8gpQfxHgr3sSVdsWw@mail.gmail.com>
 <41455798-1dcb-135f-516d-25ab9a8082f5@linux.intel.com>
 <Y1A+9kN6bwfXeqVt@zx2c4.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <Y1A+9kN6bwfXeqVt@zx2c4.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] signal: break out of wait loops on kthread_stop()
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
Cc: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 19/10/2022 19:16, Jason A. Donenfeld wrote:
> On Wed, Oct 19, 2022 at 06:57:38PM +0100, Tvrtko Ursulin wrote:
>>
>> On 19/10/2022 17:00, Jason A. Donenfeld wrote:
>>> On Wed, Oct 19, 2022 at 7:31 AM Tvrtko Ursulin
>>> <tvrtko.ursulin@linux.intel.com> wrote:
>>>>
>>>>
>>>> Hi,
>>>>
>>>> A question regarding a7c01fa93aeb ("signal: break out of wait loops on
>>>> kthread_stop()") if I may.
>>>>
>>>> We have a bunch code in i915, possibly limited to self tests (ie debug
>>>> builds) but still important for our flows, which spawn kernel threads
>>>> and exercises parts of the driver.
>>>>
>>>> Problem we are hitting with this patch is that code did not really need
>>>> to be signal aware until now. Well to say that more accurately - we were
>>>> able to test the code which is normally executed from userspace, so is
>>>> signal aware, but not worry about -ERESTARTSYS or -EINTR within the test
>>>> cases itself.
>>>>
>>>> For example threads which exercise an internal API for a while until the
>>>> parent calls kthread_stop. Now those tests can hit unexpected errors.
>>>>
>>>> Question is how to best approach working around this change. It is of
>>>> course technically possible to rework our code in more than one way,
>>>> although with some cost and impact already felt due reduced pass rates
>>>> in our automated test suites.
>>>>
>>>> Maybe an opt out kthread flag from this new behavior? Would that be
>>>> acceptable as a quick fix? Or any other comments?
>>>
>>> You can opt out by running `clear_tsk_thread_flag(current,
>>> TIF_NOTIFY_SIGNAL);` at the top of your kthread. But you should really
>>> fix your code instead. Were I your reviewer, I wouldn't merge code
>>> that took the lazy path like that. However, that should work, if you
>>> do opt for the quick fix.
>>
>> Also, are you confident that the change will not catch anyone else by
>> surprise? In the original thread I did not spot any concerns about the
>> kthreads being generally unprepared to start receiving EINTR/ERESTARTSYS
>> from random call chains.
> 
> Pretty sure, yea. i915 is unique in its abuse of the API. Keep in mind
> that kthread_stop() also sets KTHREAD_SHOULD_STOP and such. Your code is
> abusing the API by calling kthread_run() followed by kthread_stop().

Hm why is kthread_stop() after kthread_run() abuse? I don't see it in 
kerneldoc that it must not be used for stopping threads.

> As evidence of how broken your code actually is, the kthread_stop()
> function has a comment that makes it clear, "This can also be called
> after kthread_create() instead of calling wake_up_process(): the thread
> will exit without calling threadfn()," yet i915 has attempted to hack
> around it with ridiculous yields and msleeps. For example:
> 
>                  threads[n] = kthread_run(__igt_breadcrumbs_smoketest,
>                                           &t, "igt/%d", n);
> ...
> 
>          yield(); /* start all threads before we begin */
>          msleep(jiffies_to_msecs(i915_selftest.timeout_jiffies));
> ...
>                  err = kthread_stop(threads[n]);
> 
> 
> Or here's another one:
> 
>                  tsk = kthread_run(fn, &thread[i], "igt-%d", i);
> ...
>          msleep(10); /* start all threads before we kthread_stop() */
> ...
>                  status = kthread_stop(tsk);
> 
> I mean come on.
> 
> This is brittle and bad and kind of ridiculous that it shipped this way.
> Now you're asking to extend your brittleness, so that you can avoid the
> work of cleaning up 5 call sites. Just clean up those 5 call sites. It's
> only 5, as far as I can tell.

Yep the yields and sleeps are horrible and will go. But they are also 
not relevant for the topic at hand. Issue is signal_pending() in the 
thread which just happens to now let kthread_stop() exit the thread 
before the work it used to do. And lack of consistent EINTR/ERESTARTSYS 
handling throughout.

Luckily I am almost sure this hasn't "shipped" anywhere real, in the 
sense it is debug only part of the driver.

Never mind, I was not looking for anything more than a suggestion on how 
to maybe work around it in piece as someone is dealing with the affected 
call sites.

kthread_wait below is perhaps a bit too indirect, since overall 
refactoring of the approach will be needed, but thanks anyway.

Thanks,

Tvrtko

>> Right, but our hand is a bit forced at the moment. Since 6.1-rc1 has
>> propagated to our development tree on Monday, our automated testing
>> started failing significantly, which prevents us merging new work until
>> resolved. So a quick fix trumps the ideal road in the short term. Just
>> because it is quick.
> 
> "Short term" -- somehow I can imagine the short term hack will turn into
> a long term one.
> 
> Anyway, what I suspect you might actually want as a bandaid is a
> "kthread_wait()"-like function, that doesn't try to stop the thread with
> KTHREAD_SHOULD_STOP and such, but just waits for the completion:
> 
> diff --git a/include/linux/kthread.h b/include/linux/kthread.h
> index 30e5bec81d2b..2699cc45ad15 100644
> --- a/include/linux/kthread.h
> +++ b/include/linux/kthread.h
> @@ -86,6 +86,7 @@ void free_kthread_struct(struct task_struct *k);
>   void kthread_bind(struct task_struct *k, unsigned int cpu);
>   void kthread_bind_mask(struct task_struct *k, const struct cpumask *mask);
>   int kthread_stop(struct task_struct *k);
> +int kthread_wait(struct task_struct *k);
>   bool kthread_should_stop(void);
>   bool kthread_should_park(void);
>   bool __kthread_should_park(struct task_struct *k);
> diff --git a/kernel/kthread.c b/kernel/kthread.c
> index f97fd01a2932..d581d78a3a26 100644
> --- a/kernel/kthread.c
> +++ b/kernel/kthread.c
> @@ -715,6 +715,22 @@ int kthread_stop(struct task_struct *k)
>   }
>   EXPORT_SYMBOL(kthread_stop);
> 
> +int kthread_wait(struct task_struct *k)
> +{
> +	struct kthread *kthread;
> +	int ret;
> +
> +	get_task_struct(k);
> +	kthread = to_kthread(k);
> +	wake_up_process(k);
> +	wait_for_completion(&kthread->exited);
> +	ret = kthread->result;
> +	put_task_struct(k);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL(kthread_stop);
> +
>   int kthreadd(void *unused)
>   {
>   	struct task_struct *tsk = current;
> 
