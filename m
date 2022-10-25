Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD37E60CA4B
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 12:49:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EBA210E1AA;
	Tue, 25 Oct 2022 10:49:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79D7D10E0A4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 10:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=mzKf4zO+aOND3THi9Mu4VLFu+cDOF5LRRU7uDWVved8=; b=drAwqS4LP96zpDpHwpq6MvvMJS
 oOTRW1UAGrBCGBEMp6DVBnhjWagPeCZZheSoI2DkIlACY/RTvB5Zir3QnK0z1kY90/WamBX8qPZY9
 YG/GkldNcOnAZwsGfT7LLcA0dJ8TTauzyiYGFiZuAgfysMVz1BaBVhX4n6mK3xQ9T5XyzSkRi33Wf
 BpEvK/RbO6MVc993r74jWuRyXSzg7FNx85l+uO3M7J6yvC/+ionBv/MtYZmY0nDfiXy+tX7sIALe9
 3eRtjO4N//w2SWmnv2imoBiJzCsJflmaA3DTd6iVXu4UO+yR9BE1nS489Kb9lva2nxJ63cpjphGfF
 FBnihckg==;
Received: from j130084.upc-j.chello.nl ([24.132.130.84]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1onHUl-00GC5g-Nh; Tue, 25 Oct 2022 10:49:19 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 3E39A30008D;
 Tue, 25 Oct 2022 12:49:13 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 1EB092C431FB4; Tue, 25 Oct 2022 12:49:13 +0200 (CEST)
Date: Tue, 25 Oct 2022 12:49:13 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Y1e/Kd+1UQqeSwzY@hirez.programming.kicks-ass.net>
References: <20220822111816.760285417@infradead.org>
 <20220822114649.055452969@infradead.org>
 <Y1LVYaPCCP3BBS4g@intel.com> <Y1drd2gzxUJWdz5F@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y1drd2gzxUJWdz5F@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 6/6] freezer,
 sched: Rewrite core freezer logic
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
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 bigeasy@linutronix.de, rjw@rjwysocki.net, oleg@redhat.com, rostedt@goodmis.org,
 mingo@kernel.org, mgorman@suse.de, intel-gfx@lists.freedesktop.org,
 tj@kernel.org, Will Deacon <will@kernel.org>, dietmar.eggemann@arm.com,
 ebiederm@xmission.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 25, 2022 at 07:52:07AM +0300, Ville Syrjälä wrote:
> On Fri, Oct 21, 2022 at 08:22:41PM +0300, Ville Syrjälä wrote:
> > On Mon, Aug 22, 2022 at 01:18:22PM +0200, Peter Zijlstra wrote:
> > > +#ifdef CONFIG_LOCKDEP
> > > +	/*
> > > +	 * It's dangerous to freeze with locks held; there be dragons there.
> > > +	 */
> > > +	if (!(state & __TASK_FREEZABLE_UNSAFE))
> > > +		WARN_ON_ONCE(debug_locks && p->lockdep_depth);
> > > +#endif
> > 
> > We now seem to be hitting this sporadically in the intel gfx CI.
> > 
> > I've spotted it on two machines so far:
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12270/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109950v1/shard-snb5/igt@kms_flip@flip-vs-suspend-interruptible@a-vga1.html
> 
> Sadly no luck in reproducing this locally so far. In the meantime
> I added the following patch into our topic/core-for-CI branch in
> the hopes of CI stumbling on it again and dumping a bit more data:
> 
> --- a/kernel/freezer.c
> +++ b/kernel/freezer.c
> @@ -125,8 +125,16 @@ static int __set_task_frozen(struct task_struct *p, void *arg)
>  	/*
>  	 * It's dangerous to freeze with locks held; there be dragons there.
>  	 */
> -	if (!(state & __TASK_FREEZABLE_UNSAFE))
> -		WARN_ON_ONCE(debug_locks && p->lockdep_depth);
> +	if (!(state & __TASK_FREEZABLE_UNSAFE)) {
> +		static bool warned = false;
> +
> +		if (!warned && debug_locks && p->lockdep_depth) {
> +			debug_show_held_locks(p);
> +			WARN(1, "%s/%d holding locks while freezing\n",
> +			     p->comm, task_pid_nr(p));
> +			warned = true;
> +		}
> +	}
>  #endif
>  
>  	WRITE_ONCE(p->__state, TASK_FROZEN);

That seems reasonable. But note that this constraint isn't new; the
previous freezer had much the same constraint but perhaps it wasn't
triggered for mysterious raisins. see the previous
try_to_freeze_unsafe() function.
