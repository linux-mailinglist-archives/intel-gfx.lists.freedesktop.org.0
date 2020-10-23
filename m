Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5D329716A
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 16:37:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 660B66E0F0;
	Fri, 23 Oct 2020 14:37:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com
 [IPv6:2607:f8b0:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A0346E0F0
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 14:37:15 +0000 (UTC)
Received: by mail-ot1-x341.google.com with SMTP id k68so1520568otk.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 07:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ue1eoYp/rV3X5fZ+14rS63RmMW1v9BsYmIiuPRkgMlc=;
 b=M8kF83YM7xkRfHNyf/imBorp00wSjhbgh/S8X7DXov96K6NtfkVZ7v9QVfIAfZA9H9
 O7EQwr6GuFK75XbpMbj/wQE2MrtKGKUaELIbUX3Dj3BYu3iF0wd3dYl4sruBBDTnyJgg
 Zx8zI5CS4WAbjTeKFiU1Htb5hwRJFgP2ypNP8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ue1eoYp/rV3X5fZ+14rS63RmMW1v9BsYmIiuPRkgMlc=;
 b=UTNURJTlQwyjo5tEv0KD6XOQI/xuQPjRQs19hu49MtFM9CXqDXobZTZPT312jdqjTK
 FbQJkgesAu6MBepeC145towfEcqLQm+Zj4s4ecYtDRxb1HV5dE4bLaDOrx4BAdwL8+Gc
 SlztyzefcdfuUz2fy5mIoSA2UP8PmxL2t0ptkSsm6J62TwCkmu3Gdn2p1vHFnwURn+zr
 bB2oGtKZYZCO9+/AWjTvG0lkVGwXI6QOKyOOx2H8F2hzvQkPJbUEbl2Dtg4sgZDqWVFn
 9p79XnAvSSHmYQ5+8mZ3V8u73yPmr84P+auKY7OQl9VXa4J6rg8RybjB1ak7AVCUssm1
 F1rA==
X-Gm-Message-State: AOAM533CNDGaSvEyk86vRka0JHeMgMV9LX5S4ZNqAnsoWO5C+FlZ5JlY
 LlDHtzCrKPMyiYLg7KdwFa/YjJOHnXia0mUfN56fgw==
X-Google-Smtp-Source: ABdhPJyi58HmdEa7AIVzkzyqQTfTPkHR4zZzgTo7KlLhbs3gCVZsj5F1oZVA2pGhIrfdST5nhUdlVgXIJM7T0/Qt6U4=
X-Received: by 2002:a05:6830:1647:: with SMTP id
 h7mr1951924otr.281.1603463832695; 
 Fri, 23 Oct 2020 07:37:12 -0700 (PDT)
MIME-Version: 1.0
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-4-daniel.vetter@ffwll.ch>
 <20201023141619.GC20115@casper.infradead.org>
In-Reply-To: <20201023141619.GC20115@casper.infradead.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 23 Oct 2020 16:37:01 +0200
Message-ID: <CAKMK7uESHHHzEC2U3xVKQEBZqS5xwQJeYFpwMz3b8OaoFEYcUQ@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [Intel-gfx] [PATCH 04/65] mm: Extract might_alloc() debug check
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Dave Chinner <david@fromorbit.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Linux MM <linux-mm@kvack.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Christoph Lameter <cl@linux.com>, Michel Lespinasse <walken@google.com>,
 Ingo Molnar <mingo@kernel.org>, Pekka Enberg <penberg@kernel.org>,
 David Rientjes <rientjes@google.com>, Waiman Long <longman@redhat.com>,
 "Paul E . McKenney" <paulmck@kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Qian Cai <cai@lca.pw>, Thomas Gleixner <tglx@linutronix.de>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Vlastimil Babka <vbabka@suse.cz>,
 Randy Dunlap <rdunlap@infradead.org>, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 23, 2020 at 4:16 PM Matthew Wilcox <willy@infradead.org> wrote:
>
> On Fri, Oct 23, 2020 at 02:21:15PM +0200, Daniel Vetter wrote:
> > Note that unlike fs_reclaim_acquire/release gfpflags_allow_blocking
> > does not consult the PF_MEMALLOC flags. But there is no flag
> > equivalent for GFP_NOWAIT, hence this check can't go wrong due to
> > memalloc_no*_save/restore contexts.
>
> I have a patch series that adds memalloc_nowait_save/restore.

tbh this was a typoed git send-email, but thanks for the heads-up,
I'll adjust the patch accordingly.

Cheers, Daniel

> https://lore.kernel.org/linux-mm/20200625113122.7540-7-willy@infradead.org/



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
