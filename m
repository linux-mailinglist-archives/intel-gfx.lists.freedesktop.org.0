Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C092E27AF5F
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Sep 2020 15:49:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A17389DA7;
	Mon, 28 Sep 2020 13:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80AC389D99
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Sep 2020 13:49:22 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601300961;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZPRcfwQHKC2fzth2lFnB86hMh6O4PAAXZstrTjhDpTo=;
 b=TVhevIZFNHH4N+menYfDBXG6gzpcpjyu2rkfwgRNiaUehbflx0GWHJut7ATsPvUQUSwHJX
 vuAvITIfA5vXc3qRyFO17Ea5x8S+FzavB5xJpYdl6mqZ3c3ZhFqTDggEK/nwKOGyx6ILSt
 TiRtB3t+DffbMRq/S9iVPJkcxP/vqA8=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-496-WjmvAn5YNs65PyBwF8qPRQ-1; Mon, 28 Sep 2020 09:49:20 -0400
X-MC-Unique: WjmvAn5YNs65PyBwF8qPRQ-1
Received: by mail-qt1-f197.google.com with SMTP id y53so658269qth.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Sep 2020 06:49:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZPRcfwQHKC2fzth2lFnB86hMh6O4PAAXZstrTjhDpTo=;
 b=e8ZJvd9MUkGnc/MP+Uo2A744+6MVvHu1SxnWSSAVXTvW7R6zqotzB5p909QR4XwRsL
 FN0Pjv0yzLGickZrioyE5cVhYkvEeUoSQE+oiDkPEnrkNpYSnw31jU5fAyesPDNI0e5P
 9ZYD2QQBMfMbcGz8EIX10xav+bUjYF9N9MMGkahT7jcrfgGL0kU5l0Hc8iYNCw4VqjLY
 T1Y98bYoCTNAYf0zlMVILVR9vw47PTCzBAMKjfX7hDrDPhlM2ctpOo8Ne0FuoKvc4Wsy
 gydegQit4bGGTJFifUJQwzXhxQ1XOgfJpJa+72Dszoesjem+xPW6f8ZkuyRxIiLLMtBD
 R59Q==
X-Gm-Message-State: AOAM532/V6FFhdKWcFkZOK9VgjwOupNcg3H3/a/K5GoK3zbK7EqngwLI
 5IVIjl3Oy40bE18bJTYJtjxpLZEhJhD64E0QYYzLTcLi4H2VVz5tJk1ng/RsLf5nC198rzCYBvW
 VQyAqHgtv0CXQeAT2z3eesWq6zR7J
X-Received: by 2002:a05:620a:1265:: with SMTP id
 b5mr1421244qkl.27.1601300958596; 
 Mon, 28 Sep 2020 06:49:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw7EfJ8Bp1KV++ds154SpHMgSNAH4325MMjG5+mA4ZooFq5WnmfF7McEFUcmtTsUN+E0veqMw==
X-Received: by 2002:a05:620a:1265:: with SMTP id
 b5mr1421222qkl.27.1601300958209; 
 Mon, 28 Sep 2020 06:49:18 -0700 (PDT)
Received: from xz-x1 (bras-vprn-toroon474qw-lp130-11-70-53-122-15.dsl.bell.ca.
 [70.53.122.15])
 by smtp.gmail.com with ESMTPSA id m3sm1042063qkh.10.2020.09.28.06.49.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Sep 2020 06:49:17 -0700 (PDT)
Date: Mon, 28 Sep 2020 09:49:15 -0400
From: Peter Xu <peterx@redhat.com>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Message-ID: <20200928134915.GA5904@xz-x1>
References: <CAHmME9ppPhLLtS4Vd5g-Yz9dZUUc7V_yjA8qOkYs4HsnGWtpcQ@mail.gmail.com>
 <20200928103507.2164-1-Jason@zx2c4.com>
MIME-Version: 1.0
In-Reply-To: <20200928103507.2164-1-Jason@zx2c4.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=peterx@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Subject: Re: [Intel-gfx] [PATCH] mm: do not rely on mm == current->mm in
 __get_user_pages_locked
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
Cc: jgg@ziepe.ca, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk, linux-mm@kvack.org,
 akpm@linux-foundation.org, torvalds@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 28, 2020 at 12:35:07PM +0200, Jason A. Donenfeld wrote:
> It seems likely this block was pasted from internal_get_user_pages_fast,
> which is not passed an mm struct and therefore uses current's. But
> __get_user_pages_locked is passed an explicit mm, and current->mm is not
> always valid. This was hit when being called from i915, which uses:
> 
>   pin_user_pages_remote->
>     __get_user_pages_remote->
>       __gup_longterm_locked->
>         __get_user_pages_locked

Afaict it's not only an "current->mm can be NULL" issue - because this flag is
used to mark "whether the mm pinned any page", so for remote pinning we
definitely should mark the remote mm rather than the current mm, simply because
it's the target mm page table that we'd want to stablize rather than the
current->mm (even if current->mm always existed).

> 
> Before, this would lead to an OOPS:
> 
>   BUG: kernel NULL pointer dereference, address: 0000000000000064
>   #PF: supervisor write access in kernel mode
>   #PF: error_code(0x0002) - not-present page
>   PGD 0 P4D 0
>   Oops: 0002 [#1] SMP
>   CPU: 10 PID: 1431 Comm: kworker/u33:1 Tainted: P S   U     O      5.9.0-rc7+ #140
>   Hardware name: LENOVO 20QTCTO1WW/20QTCTO1WW, BIOS N2OET47W (1.34 ) 08/06/2020
>   Workqueue: i915-userptr-acquire __i915_gem_userptr_get_pages_worker [i915]
>   RIP: 0010:__get_user_pages_remote+0xd7/0x310
>   Code: f5 01 00 00 83 7d 00 01 0f 85 ed 01 00 00 f7 c1 00 00 04 00 0f 84 58 01 00 00 65 48 8b 04 25 00 6d 01 00 48 8b 80 40 03 00 00 <c7> 40 64 01 00 00 00 65 48 8b 04 25 00 6d 01 00 48 c7 44 24 18 00
>   RSP: 0018:ffff888fdfe47de0 EFLAGS: 00010206
>   RAX: 0000000000000000 RBX: 00007fe188531000 RCX: 0000000000040001
>   RDX: 0000000000000001 RSI: 00007fe188531000 RDI: ffff888ff0748f00
>   RBP: ffff888fdfe47e54 R08: ffff888fedc7d7c8 R09: 0000000000000000
>   R10: 0000000000000018 R11: fefefefefefefeff R12: ffff888ff0748f00
>   R13: ffff888fedc7d7c8 R14: ffff888f81fe3a40 R15: 0000000000042003
>   FS:  0000000000000000(0000) GS:ffff888ffc480000(0000) knlGS:0000000000000000
>   CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>   CR2: 0000000000000064 CR3: 0000000002009003 CR4: 00000000003706e0
>   DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
>   DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
>   Call Trace:
>    __i915_gem_userptr_get_pages_worker+0xc8/0x260 [i915]
>    process_one_work+0x1ca/0x390
>    worker_thread+0x48/0x3c0
>    ? rescuer_thread+0x3d0/0x3d0
>    kthread+0x114/0x130
>    ? kthread_create_worker_on_cpu+0x40/0x40
>    ret_from_fork+0x1f/0x30
>   CR2: 0000000000000064
> 
> This commit fixes the problem by using the mm pointer passed to the
> function rather than the bogus one in current.
> 
> Fixes: 008cfe4418b3 ("mm: Introduce mm_struct.has_pinned")
> Cc: Jason Gunthorpe <jgg@ziepe.ca>
> Cc: Peter Xu <peterx@redhat.com>
> Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
> ---
>  mm/gup.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/mm/gup.c b/mm/gup.c
> index dfe781d2ad4c..e869c634cc9a 100644
> --- a/mm/gup.c
> +++ b/mm/gup.c
> @@ -1256,7 +1256,7 @@ static __always_inline long __get_user_pages_locked(struct mm_struct *mm,
>  	}
>  
>  	if (flags & FOLL_PIN)
> -		atomic_set(&current->mm->has_pinned, 1);
> +		atomic_set(&mm->has_pinned, 1);
>  
>  	/*
>  	 * FOLL_PIN and FOLL_GET are mutually exclusive. Traditional behavior
> -- 
> 2.28.0
> 

Thanks!  And sorry for this silly mistake.  I even didn't understand how it was
written, because the normal gup change should have come earlier, anyway...

Reviewed-by: Peter Xu <peterx@redhat.com>

-- 
Peter Xu

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
