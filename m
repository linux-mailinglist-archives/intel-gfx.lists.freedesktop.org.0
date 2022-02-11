Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 606D94B2355
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 11:39:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14B6310E1D7;
	Fri, 11 Feb 2022 10:39:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5A8110E1D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 10:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=OF/IgiH+v6IN/Pzp4IQTqAUh7fLzy/AMqRrw5uRs6QM=; b=LbJP76jKebDs3mjRSiss+VrY7f
 dyaOfWlffhDUHwB5AhCZaYYvYgwPKcloLfHaKYcpTn89ucITWQacDwWZdCUpXsJ1W4aPGDu1CoKWg
 Rfzrrf4xgw1gmNI7TdQWjDRc8mKeLyhdnOKMRPCY5pRyEN3Wib9vTBUNOwdD95nCv5VqFC6/0V7FQ
 Haq8I+dR+Ow1pT7b6qWtQv5lKaUKPND5wFWM1sqdcOOios9N3Wn/zaVMAzaStBFXvrfKDhY+htVJN
 9uOg2NJnn422jyJBwlc67KqBfJSE0Vw19ZHFnLq5WuwjQtRMOFXBa8cNi2XxrR2RAgKJ34Y8iRUb+
 Lw5VTLVQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=worktop.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nITKd-00AJv5-4D; Fri, 11 Feb 2022 10:39:15 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
 id 12A749853C7; Fri, 11 Feb 2022 11:39:14 +0100 (CET)
Date: Fri, 11 Feb 2022 11:39:13 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Namhyung Kim <namhyung@kernel.org>
Message-ID: <20220211103913.GR23216@worktop.programming.kicks-ass.net>
References: <20220208184208.79303-1-namhyung@kernel.org>
 <20220209090908.GK23216@worktop.programming.kicks-ass.net>
 <CAM9d7cgq+jxu6FJuKhZkprn7dO4DiG5pDjmYZzneQYTfKOM85g@mail.gmail.com>
 <YgTXUQ9CBoo3+A+c@hirez.programming.kicks-ass.net>
 <CAM9d7cgPFLjQyopX04MwG6Leq6DwDJF2q6BxOL_Nw6J2LEZF4g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAM9d7cgPFLjQyopX04MwG6Leq6DwDJF2q6BxOL_Nw6J2LEZF4g@mail.gmail.com>
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

On Thu, Feb 10, 2022 at 09:55:27PM -0800, Namhyung Kim wrote:

> So you are ok with adding two new tracepoints, even if they are
> similar to what we already have in lockdep/lock_stat, right?

Yeah, I don't think adding tracepoints to the slowpaths of the various
locks should be a problem.
