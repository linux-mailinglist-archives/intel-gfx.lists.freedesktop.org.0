Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7738460C2D8
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 06:52:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F44310E0F4;
	Tue, 25 Oct 2022 04:52:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D29610E07B
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 04:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666673537; x=1698209537;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Xclpbz6CzoT2N4k2dsAPSkon8bbf3eyJSQvC5r5ayqc=;
 b=QV0C7nmxrTM3cYE3SuZLJGM4qYjvqraSg0fdiGUH4JWU06qQ7wu7s21w
 WTJc8qJmXAzTPsl6lAtOAs0UFrAujq2QV+uE2u4PXx/1TY9FUp7fqRnQ7
 o8NBJtkH9Y2dvsMJ5hWoEdYgp33tTTN7BMRspfZble+2DXzz9NWm96+3v
 QRQFAKOoi2xk7kszTyd5FvZoRL+7yRth4uPgkIPQEMsf8Wpg7Qw/9mhlt
 8wlFjTLE3qVC7IvCKEkXZ9gB9FzU6lsDj+ereA+mWcuPqXjx7mqxc/Rh6
 iZpKOWzmqsJSTRdRo0LNaNAzcuj0FgJcThCduY1eJgXR6FkgUn3CsexwD A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="287306317"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="287306317"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 21:52:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="582644348"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="582644348"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga003.jf.intel.com with SMTP; 24 Oct 2022 21:52:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Oct 2022 07:52:07 +0300
Date: Tue, 25 Oct 2022 07:52:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <Y1drd2gzxUJWdz5F@intel.com>
References: <20220822111816.760285417@infradead.org>
 <20220822114649.055452969@infradead.org>
 <Y1LVYaPCCP3BBS4g@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y1LVYaPCCP3BBS4g@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Oct 21, 2022 at 08:22:41PM +0300, Ville Syrjälä wrote:
> On Mon, Aug 22, 2022 at 01:18:22PM +0200, Peter Zijlstra wrote:
> > +#ifdef CONFIG_LOCKDEP
> > +	/*
> > +	 * It's dangerous to freeze with locks held; there be dragons there.
> > +	 */
> > +	if (!(state & __TASK_FREEZABLE_UNSAFE))
> > +		WARN_ON_ONCE(debug_locks && p->lockdep_depth);
> > +#endif
> 
> We now seem to be hitting this sporadically in the intel gfx CI.
> 
> I've spotted it on two machines so far:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12270/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109950v1/shard-snb5/igt@kms_flip@flip-vs-suspend-interruptible@a-vga1.html

Sadly no luck in reproducing this locally so far. In the meantime
I added the following patch into our topic/core-for-CI branch in
the hopes of CI stumbling on it again and dumping a bit more data:

--- a/kernel/freezer.c
+++ b/kernel/freezer.c
@@ -125,8 +125,16 @@ static int __set_task_frozen(struct task_struct *p, void *arg)
 	/*
 	 * It's dangerous to freeze with locks held; there be dragons there.
 	 */
-	if (!(state & __TASK_FREEZABLE_UNSAFE))
-		WARN_ON_ONCE(debug_locks && p->lockdep_depth);
+	if (!(state & __TASK_FREEZABLE_UNSAFE)) {
+		static bool warned = false;
+
+		if (!warned && debug_locks && p->lockdep_depth) {
+			debug_show_held_locks(p);
+			WARN(1, "%s/%d holding locks while freezing\n",
+			     p->comm, task_pid_nr(p));
+			warned = true;
+		}
+	}
 #endif
 
 	WRITE_ONCE(p->__state, TASK_FROZEN);
-- 
2.37.4

-- 
Ville Syrjälä
Intel
