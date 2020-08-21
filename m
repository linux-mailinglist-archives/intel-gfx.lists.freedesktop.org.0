Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F6524D20C
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 12:14:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3C4F6EACB;
	Fri, 21 Aug 2020 10:14:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 172946EACB
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Aug 2020 10:14:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22196233-1500050 for multiple; Fri, 21 Aug 2020 11:13:37 +0100
MIME-Version: 1.0
In-Reply-To: <20200821100902.GG3354@suse.de>
References: <20200821085011.28878-1-chris@chris-wilson.co.uk>
 <20200821100902.GG3354@suse.de>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Joerg Roedel <jroedel@suse.de>
Date: Fri, 21 Aug 2020 11:13:36 +0100
Message-ID: <159800481672.29194.17217138842959831589@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] mm: Track page table modifications in
 __apply_to_page_range() construction
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-mm@kvack.org,
 David Vrabel <david.vrabel@citrix.com>, Pavel Machek <pavel@ucw.cz>,
 Dave Airlie <airlied@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Joerg Roedel (2020-08-21 11:09:02)
> @@ -2333,6 +2339,7 @@ static int __apply_to_page_range(struct mm_struct *mm, unsigned long addr,
>         pgd_t *pgd;
>         unsigned long next;
>         unsigned long end = addr + size;
> +       pgtbl_mod_mask mask = 0;
>         int err = 0;
>  
>         if (WARN_ON(addr >= end))
> @@ -2343,11 +2350,14 @@ static int __apply_to_page_range(struct mm_struct *mm, unsigned long addr,
>                 next = pgd_addr_end(addr, end);
>                 if (!create && pgd_none_or_clear_bad(pgd))
>                         continue;
> -               err = apply_to_p4d_range(mm, pgd, addr, next, fn, data, create);
> +               err = apply_to_p4d_range(mm, pgd, addr, next, fn, data, create, &mask);
>                 if (err)
>                         break;
>         } while (pgd++, addr = next, addr != end);
>  
> +       if (mask & ARCH_PAGE_TABLE_SYNC_MASK)
> +               arch_sync_kernel_mappings(addr, addr + size);

We need to store the initial addr, as here addr == end [or earlier on
earlier], so range is (start, addr).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
