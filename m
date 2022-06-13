Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 274725485A7
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jun 2022 16:11:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18FE910E7E8;
	Mon, 13 Jun 2022 14:11:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6B6110E7E8;
 Mon, 13 Jun 2022 14:11:31 +0000 (UTC)
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out1.suse.de (Postfix) with ESMTP id 55EEF21BF6;
 Mon, 13 Jun 2022 14:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1655129490; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9E+o4Ky9bBY7s0UMfZpgf+q0GGL3GUPMLh+CXNxGns8=;
 b=nonkym9/vs+hiD9DrLlSt8bXIOiX+sGqXWJEFlSqj0bab/6szJrEIzEQXNcn2iKV8aUJko
 fm5MrnZUcboOH3W064euvLQTExmPomsFbHbWqVqkUN4OcYaUaEVRD1jQsjgfDkxE1JSpXG
 9vWHbrw+WA20V32PwtEuztdW/OkWLaE=
Received: from suse.cz (unknown [10.100.201.86])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id E9DBD2C141;
 Mon, 13 Jun 2022 14:11:29 +0000 (UTC)
Date: Mon, 13 Jun 2022 16:11:29 +0200
From: Michal Hocko <mhocko@suse.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YqdFkfLVFUD5K6EK@dhcp22.suse.cz>
References: <YqIMmK18mb/+s5de@dhcp22.suse.cz>
 <3f7d3d96-0858-fb6d-07a3-4c18964f888e@gmail.com>
 <YqMuq/ZrV8loC3jE@dhcp22.suse.cz>
 <2e7e050e-04eb-0c0a-0675-d7f1c3ae7aed@amd.com>
 <YqNSSFQELx/LeEHR@dhcp22.suse.cz>
 <288528c3-411e-fb25-2f08-92d4bb9f1f13@gmail.com>
 <Yqbq/Q5jz2ou87Jx@dhcp22.suse.cz>
 <b8b9aba5-575e-8a34-e627-79bef4ed7f97@amd.com>
 <YqcpZY3Xx7Mk2ROH@dhcp22.suse.cz>
 <34daa8ab-a9f4-8f7b-0ea7-821bc36b9497@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <34daa8ab-a9f4-8f7b-0ea7-821bc36b9497@gmail.com>
Subject: Re: [Intel-gfx] [PATCH 03/13] mm: shmem: provide oom badness for
 shmem files
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
Cc: andrey.grodzovsky@amd.com, linux-mm@kvack.org,
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 hughd@google.com, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linux-fsdevel@vger.kernel.org, viro@zeniv.linux.org.uk,
 linux-tegra@vger.kernel.org, alexander.deucher@amd.com,
 akpm@linux-foundation.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon 13-06-22 14:55:54, Christian K�nig wrote:
> Am 13.06.22 um 14:11 schrieb Michal Hocko:
> > [SNIP]
> > > > > Alternative I could try to track the "owner" of a buffer (e.g. a shmem
> > > > > file), but then it can happen that one processes creates the object and
> > > > > another one is writing to it and actually allocating the memory.
> > > > If you can enforce that the owner is really responsible for the
> > > > allocation then all should be fine. That would require MAP_POPULATE like
> > > > semantic and I suspect this is not really feasible with the existing
> > > > userspace. It would be certainly hard to enforce for bad players.
> > > I've tried this today and the result was: "BUG: Bad rss-counter state
> > > mm:000000008751d9ff type:MM_FILEPAGES val:-571286".
> > > 
> > > The problem is once more that files are not informed when the process
> > > clones. So what happened is that somebody called fork() with an mm_struct
> > > I've accounted my pages to. The result is just that we messed up the
> > > rss_stats and� the the "BUG..." above.
> > > 
> > > The key difference between normal allocated pages and the resources here is
> > > just that we are not bound to an mm_struct in any way.
> > It is not really clear to me what exactly you have tried.
> 
> I've tried to track the "owner" of a driver connection by keeping a
> reference to the mm_struct who created this connection inside our file
> private and then use add_mm_counter() to account all the allocations of the
> driver to this mm_struct.
> 
> This works to the extend that now the right process is killed in an OOM
> situation. The problem with this approach is that the driver is not informed
> about operations like fork() or clone(), so what happens is that after a
> fork()/clone() we have an unbalanced rss-counter.

Yes, I do not think you can make per-process accounting without a
concept of the per-process ownership.

> Let me maybe get back to the initial question: We have resources which are
> not related to the virtual address space of a process, how should we tell
> the OOM killer about them?

I would say memcg, but we have discussed this already...

I do not think that exposing a resource (in a form of a counter
or something like that) is sufficient. The existing oom killer
implementation is hevily process centric (with memcg extension for
grouping but not changing the overall design in principle). If you
want to make it aware of resources which are not directly accounted to
processes then a a new implementation is necessary IMHO. You would need
to evaluate those resources and kill all the tasks that can hold on that
resource.

This is also the reason why I am not really fan of the per file
badness because it adds a notion of resource that is not process bound
in general so it will add all sorts of weird runtime corner cases which
are impossible to anticipate [*]. Maybe that will work in some scenarios
but definitely not something to be done by default without users opting
into that and being aware of consequences. 

There have been discussions that the existing oom implementation cannot
fit all potential usecases so maybe we need to finally decide to use a
plugable, BPFable etc architecture allow implementations that fit
specific needs.

[*] I know it is not directly related but kinda similar. In the past
we used to have heuristics to consider work done as a resource . That is
kill younger processes preferably to reduce the damage.  This has turned
out to have a very unpredictable behavior and many complains by
users. Situation has improved when the selection was solely based on
rss. This has its own cons of course but at least they are predictable.
-- 
Michal Hocko
SUSE Labs
