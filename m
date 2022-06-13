Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D39F548510
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jun 2022 14:11:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1279A10E44C;
	Mon, 13 Jun 2022 12:11:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D6DB10E15E;
 Mon, 13 Jun 2022 12:11:21 +0000 (UTC)
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out2.suse.de (Postfix) with ESMTP id ED1C71F38A;
 Mon, 13 Jun 2022 12:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1655122279; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cWi4yPYQYuWcLCZhlzRL/FUwfVjRk7PfFZtsphXFstQ=;
 b=fWc9Ypl2KcwfmmeUMR5vxJsHU3nImiAo3Pbtm/FripjpX/mp8Fjs3Rh1gZ6Tn3ex0cZ3W+
 0OvfKRLBxncV3yGLDHAgrGqvdZlefo3rLxodVymu5Y4osdFhZqLOhmsWXnI11DWNlx/VZ0
 h9lRYJlBhcSh3hyTWiqlBbym/yTUmaw=
Received: from suse.cz (unknown [10.100.201.86])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id 66AB32C141;
 Mon, 13 Jun 2022 12:11:18 +0000 (UTC)
Date: Mon, 13 Jun 2022 14:11:17 +0200
From: Michal Hocko <mhocko@suse.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YqcpZY3Xx7Mk2ROH@dhcp22.suse.cz>
References: <YqIB0bavUeU8Abwl@dhcp22.suse.cz>
 <d4a19481-7a9f-19bf-c270-d89baa0970fc@amd.com>
 <YqIMmK18mb/+s5de@dhcp22.suse.cz>
 <3f7d3d96-0858-fb6d-07a3-4c18964f888e@gmail.com>
 <YqMuq/ZrV8loC3jE@dhcp22.suse.cz>
 <2e7e050e-04eb-0c0a-0675-d7f1c3ae7aed@amd.com>
 <YqNSSFQELx/LeEHR@dhcp22.suse.cz>
 <288528c3-411e-fb25-2f08-92d4bb9f1f13@gmail.com>
 <Yqbq/Q5jz2ou87Jx@dhcp22.suse.cz>
 <b8b9aba5-575e-8a34-e627-79bef4ed7f97@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b8b9aba5-575e-8a34-e627-79bef4ed7f97@amd.com>
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
 Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linux-tegra@vger.kernel.org, alexander.deucher@amd.com,
 akpm@linux-foundation.org, linux-media@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon 13-06-22 13:50:28, Christian K�nig wrote:
> Am 13.06.22 um 09:45 schrieb Michal Hocko:
> > On Sat 11-06-22 10:06:18, Christian K�nig wrote:
> > > Am 10.06.22 um 16:16 schrieb Michal Hocko:
[...]
> > > Alternative I could try to track the "owner" of a buffer (e.g. a shmem
> > > file), but then it can happen that one processes creates the object and
> > > another one is writing to it and actually allocating the memory.
> > If you can enforce that the owner is really responsible for the
> > allocation then all should be fine. That would require MAP_POPULATE like
> > semantic and I suspect this is not really feasible with the existing
> > userspace. It would be certainly hard to enforce for bad players.
> 
> I've tried this today and the result was: "BUG: Bad rss-counter state
> mm:000000008751d9ff type:MM_FILEPAGES val:-571286".
> 
> The problem is once more that files are not informed when the process
> clones. So what happened is that somebody called fork() with an mm_struct
> I've accounted my pages to. The result is just that we messed up the
> rss_stats and� the the "BUG..." above.
> 
> The key difference between normal allocated pages and the resources here is
> just that we are not bound to an mm_struct in any way.

It is not really clear to me what exactly you have tried.
-- 
Michal Hocko
SUSE Labs
