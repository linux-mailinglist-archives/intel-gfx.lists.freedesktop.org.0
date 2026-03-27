Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHvEGdCzxmmiNgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 17:44:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8330347A3A
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 17:43:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E921510E3CC;
	Fri, 27 Mar 2026 16:43:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="K7RNr0jB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E97710E3CC;
 Fri, 27 Mar 2026 16:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=BINe5VahrxEruN6rxwODM4u4HsY0IVSQhq1Wvv0EbGk=; b=K7RNr0jBHMBreSkUMC6GHsQ8xq
 oj2iL/08cw+kAmOBPchjcuwG9elTEsrg+leMiYYGGbG0gOlKfiS/sfvctQ2ti0tk4mmou3PgpXwZ4
 WoFQiKKhLqK7lJhFqYeCO27jaFRdKsjLJ0tgntyjx/UcMU9i4pN30WppvJSKn505TJJc8ymPVphxY
 7bRzXLuNWA0U2B5L3YHrn5j0JD6MqRskdTgiqufutlq7USF/rPaV4Jd/NdvhecsJnysxzMaMj4+kQ
 aY2HZT6vPMNrYxXGEJaE5MZEtYrV2oyNbeJZENpwcmfAy6yYfKzU0GVh4Ff/2+tDIoF8iXuST5cs8
 jfsIOuOg==;
Received: from
 2001-1c00-8d85-4b00-266e-96ff-fe07-7dcc.cable.dynamic.v6.ziggo.nl
 ([2001:1c00:8d85:4b00:266e:96ff:fe07:7dcc]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1w6AHq-000000026WF-1d7E; Fri, 27 Mar 2026 16:43:54 +0000
Received: by noisy.programming.kicks-ass.net (Postfix, from userid 1000)
 id DC218300E56; Fri, 27 Mar 2026 17:43:53 +0100 (CET)
Date: Fri, 27 Mar 2026 17:43:53 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: willy@infradead.org, linux-kernel@vger.kernel.org,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, ravitejax.veesam@intel.com
Subject: Re: Regression on linux-next (next-20260324 )
Message-ID: <20260327164353.GM3739106@noisy.programming.kicks-ass.net>
References: <af005996-05e9-4336-8450-d14ca652ba5d@intel.com>
 <20260327163100.GL3738010@noisy.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260327163100.GL3738010@noisy.programming.kicks-ass.net>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[infradead.org:s=casper.20170209];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[infradead.org : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[peterz@infradead.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,infradead.org:email]
X-Rspamd-Queue-Id: B8330347A3A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 27, 2026 at 05:31:00PM +0100, Peter Zijlstra wrote:
> On Fri, Mar 27, 2026 at 07:09:26PM +0530, Borah, Chaitanya Kumar wrote:
> > Hello Matthew,
> > 
> > Hope you are doing well. I am Chaitanya from the linux graphics team in
> > Intel.
> > 
> > This mail is regarding a regression we are seeing in our CI runs[1] on
> > linux-next repository.
> > 
> > Since the version next-20260324 [2], we are seeing the following regression
> > 
> > `````````````````````````````````````````````````````````````````````````````````
> > <5>[  157.361977] [IGT] Inactivity timeout exceeded. Killing the current
> > test with SIGQUIT.
> > <6>[  157.362097] sysrq: HELP : loglevel(0-9) reboot(b) crash(c)
> > show-all-locks(d) terminate-all-tasks(e) memory-full-oom-kill(f)
> > kill-all-tasks(i) thaw-filesystems(j) sak(k)
> > show-backtrace-all-active-cpus(l) show-memory-usage(m) nice-all-RT-tasks(n)
> > poweroff(o) show-registers(p) show-all-timers(q) unraw(r) sync(s)
> > show-task-states(t) unmount(u) force-fb(v) show-blocked-tasks(w)
> > dump-ftrace-buffer(z) replay-kernel-logs(R)
> > <6>[  157.399543] sysrq: Show State
> > <6>[  157.403061] task:systemd         state:S stack:0     pid:1 tgid:1
> > ppid:0      task_flags:0x400100 flags:0x00080000
> > <6>[  157.403067] Call Trace:
> > <6>[  157.403069]  <TASK>
> > <6>[  157.403072]  __schedule+0x5d7/0x1ef0
> > <6>[  157.403078]  ? lock_acquire+0xc4/0x300
> > <6>[  157.403084]  ? schedule+0x10e/0x180
> > <6>[  157.403087]  ? lock_release+0xcd/0x2b0
> > <6>[  157.403092]  schedule+0x3a/0x180
> > <6>[  157.403094]  schedule_hrtimeout_range_clock+0x112/0x120
> > <6>[  157.403097]  ? do_epoll_wait+0x3e4/0x5b0
> > <6>[  157.403102]  ? lock_release+0xcd/0x2b0
> > <6>[  157.403104]  ? _raw_spin_unlock_irq+0x27/0x70
> > <6>[  157.403106]  ? do_epoll_wait+0x3e4/0x5b0
> > <6>[  157.403110]  schedule_hrtimeout_range+0x13/0x30
> > `````````````````````````````````````````````````````````````````````````````````
> > Details log can be found in [3].
> > 
> > After bisecting the tree, the following patch [4] seems to be the first
> > "bad" commit
> > 
> > `````````````````````````````````````````````````````````````````````````````````````````````````````````
> > commit 25500ba7e77ce9d3d9b5a1929d41a2ee2e23f6fe
> > Author: Matthew Wilcox (Oracle) willy@infradead.org
> > Date:   Thu Mar 5 19:55:43 2026 +0000
> > 
> >     locking/mutex: Remove the list_head from struct mutex
> > `````````````````````````````````````````````````````````````````````````````````````````````````````````
> > 
> > We could not revert the patch because of merge conflict but resetting to the
> > parent of the commit seems to fix the issue.
> > 
> > Could you please check why the patch causes this regression and provide a
> > fix if necessary?
> 
> Does this help?

More tidy version of the same...

---
diff --git a/kernel/locking/ww_mutex.h b/kernel/locking/ww_mutex.h
index b1834ab7e782..bb8b410779d4 100644
--- a/kernel/locking/ww_mutex.h
+++ b/kernel/locking/ww_mutex.h
@@ -42,7 +42,7 @@ __ww_waiter_last(struct mutex *lock)
 	struct mutex_waiter *w = lock->first_waiter;
 
 	if (w)
-		w = list_prev_entry(w, list);
+		w = __ww_waiter_prev(lock, w);
 	return w;
 }
 
