Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B96A604F66
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 20:16:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3E5610E094;
	Wed, 19 Oct 2022 18:16:34 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08D2610E094
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 18:16:28 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4BB4961952;
 Wed, 19 Oct 2022 18:16:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 095CDC433D6;
 Wed, 19 Oct 2022 18:16:26 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
 dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com
 header.b="BjBz+QUC"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105; 
 t=1666203384;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=cSTlcvbWCQV46hKyN/WwzOSO9mEGaoHC5fxYkgN+K9o=;
 b=BjBz+QUC/8vFC9vphuEfkyMIxEuMfFUefuqlqegfm56+zlZwBr9YSL7eDfH4WkPJtw/oP4
 BPqwkc6QrtKJ3Egb536fX3zAWkiTb0vVvKGQaIFyWsJMBUnVmHzosQOkRXR7L48x8APPUj
 6YrueDqQs4wDNviedVpnEC0oL0M6E+c=
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id acdc3595
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO); 
 Wed, 19 Oct 2022 18:16:24 +0000 (UTC)
Date: Wed, 19 Oct 2022 12:16:22 -0600
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <Y1A+9kN6bwfXeqVt@zx2c4.com>
References: <0029af41-bf24-9972-10ac-f52e1bdcbf08@linux.intel.com>
 <CAHmME9o25v0kZUV-7qEY=6XXAyOA7q0sG8gpQfxHgr3sSVdsWw@mail.gmail.com>
 <41455798-1dcb-135f-516d-25ab9a8082f5@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <41455798-1dcb-135f-516d-25ab9a8082f5@linux.intel.com>
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

On Wed, Oct 19, 2022 at 06:57:38PM +0100, Tvrtko Ursulin wrote:
> 
> On 19/10/2022 17:00, Jason A. Donenfeld wrote:
> > On Wed, Oct 19, 2022 at 7:31 AM Tvrtko Ursulin
> > <tvrtko.ursulin@linux.intel.com> wrote:
> >>
> >>
> >> Hi,
> >>
> >> A question regarding a7c01fa93aeb ("signal: break out of wait loops on
> >> kthread_stop()") if I may.
> >>
> >> We have a bunch code in i915, possibly limited to self tests (ie debug
> >> builds) but still important for our flows, which spawn kernel threads
> >> and exercises parts of the driver.
> >>
> >> Problem we are hitting with this patch is that code did not really need
> >> to be signal aware until now. Well to say that more accurately - we were
> >> able to test the code which is normally executed from userspace, so is
> >> signal aware, but not worry about -ERESTARTSYS or -EINTR within the test
> >> cases itself.
> >>
> >> For example threads which exercise an internal API for a while until the
> >> parent calls kthread_stop. Now those tests can hit unexpected errors.
> >>
> >> Question is how to best approach working around this change. It is of
> >> course technically possible to rework our code in more than one way,
> >> although with some cost and impact already felt due reduced pass rates
> >> in our automated test suites.
> >>
> >> Maybe an opt out kthread flag from this new behavior? Would that be
> >> acceptable as a quick fix? Or any other comments?
> > 
> > You can opt out by running `clear_tsk_thread_flag(current,
> > TIF_NOTIFY_SIGNAL);` at the top of your kthread. But you should really
> > fix your code instead. Were I your reviewer, I wouldn't merge code
> > that took the lazy path like that. However, that should work, if you
> > do opt for the quick fix.
>
> Also, are you confident that the change will not catch anyone else by 
> surprise? In the original thread I did not spot any concerns about the 
> kthreads being generally unprepared to start receiving EINTR/ERESTARTSYS 
> from random call chains.

Pretty sure, yea. i915 is unique in its abuse of the API. Keep in mind
that kthread_stop() also sets KTHREAD_SHOULD_STOP and such. Your code is
abusing the API by calling kthread_run() followed by kthread_stop().

As evidence of how broken your code actually is, the kthread_stop()
function has a comment that makes it clear, "This can also be called
after kthread_create() instead of calling wake_up_process(): the thread
will exit without calling threadfn()," yet i915 has attempted to hack
around it with ridiculous yields and msleeps. For example:

                threads[n] = kthread_run(__igt_breadcrumbs_smoketest,
                                         &t, "igt/%d", n);
...

        yield(); /* start all threads before we begin */
        msleep(jiffies_to_msecs(i915_selftest.timeout_jiffies));
...
                err = kthread_stop(threads[n]);


Or here's another one:

                tsk = kthread_run(fn, &thread[i], "igt-%d", i);
...
        msleep(10); /* start all threads before we kthread_stop() */
...
                status = kthread_stop(tsk);

I mean come on.

This is brittle and bad and kind of ridiculous that it shipped this way.
Now you're asking to extend your brittleness, so that you can avoid the
work of cleaning up 5 call sites. Just clean up those 5 call sites. It's
only 5, as far as I can tell.


> Right, but our hand is a bit forced at the moment. Since 6.1-rc1 has 
> propagated to our development tree on Monday, our automated testing 
> started failing significantly, which prevents us merging new work until 
> resolved. So a quick fix trumps the ideal road in the short term. Just 
> because it is quick.

"Short term" -- somehow I can imagine the short term hack will turn into
a long term one.

Anyway, what I suspect you might actually want as a bandaid is a
"kthread_wait()"-like function, that doesn't try to stop the thread with
KTHREAD_SHOULD_STOP and such, but just waits for the completion:

diff --git a/include/linux/kthread.h b/include/linux/kthread.h
index 30e5bec81d2b..2699cc45ad15 100644
--- a/include/linux/kthread.h
+++ b/include/linux/kthread.h
@@ -86,6 +86,7 @@ void free_kthread_struct(struct task_struct *k);
 void kthread_bind(struct task_struct *k, unsigned int cpu);
 void kthread_bind_mask(struct task_struct *k, const struct cpumask *mask);
 int kthread_stop(struct task_struct *k);
+int kthread_wait(struct task_struct *k);
 bool kthread_should_stop(void);
 bool kthread_should_park(void);
 bool __kthread_should_park(struct task_struct *k);
diff --git a/kernel/kthread.c b/kernel/kthread.c
index f97fd01a2932..d581d78a3a26 100644
--- a/kernel/kthread.c
+++ b/kernel/kthread.c
@@ -715,6 +715,22 @@ int kthread_stop(struct task_struct *k)
 }
 EXPORT_SYMBOL(kthread_stop);

+int kthread_wait(struct task_struct *k)
+{
+	struct kthread *kthread;
+	int ret;
+
+	get_task_struct(k);
+	kthread = to_kthread(k);
+	wake_up_process(k);
+	wait_for_completion(&kthread->exited);
+	ret = kthread->result;
+	put_task_struct(k);
+
+	return ret;
+}
+EXPORT_SYMBOL(kthread_stop);
+
 int kthreadd(void *unused)
 {
 	struct task_struct *tsk = current;

