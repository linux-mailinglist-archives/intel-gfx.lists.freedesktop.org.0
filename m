Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4116B24D426
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 13:38:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A336C6EAD2;
	Fri, 21 Aug 2020 11:38:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 174506EAD2
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Aug 2020 11:38:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22197337-1500050 for multiple; Fri, 21 Aug 2020 12:38:05 +0100
MIME-Version: 1.0
In-Reply-To: <159800635942.29194.13489565974587679781@build.alporthouse.com>
References: <20200821085011.28878-1-chris@chris-wilson.co.uk>
 <20200821100902.GG3354@suse.de>
 <159800481672.29194.17217138842959831589@build.alporthouse.com>
 <20200821102343.GI3354@suse.de>
 <159800635942.29194.13489565974587679781@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Joerg Roedel <jroedel@suse.de>
Date: Fri, 21 Aug 2020 12:38:03 +0100
Message-ID: <159800988352.29194.8498025838223804532@build.alporthouse.com>
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

Quoting Chris Wilson (2020-08-21 11:39:19)
> Quoting Joerg Roedel (2020-08-21 11:23:43)
> > On Fri, Aug 21, 2020 at 11:13:36AM +0100, Chris Wilson wrote:
> > > We need to store the initial addr, as here addr == end [or earlier on
> > > earlier], so range is (start, addr).
> > 
> > Right, I missed that, thanks for pointing it out.
> 
> And with that (start, addr)
> 
> Tested-by: Chris Wilson <chris@chris-wilson.co.uk> #x86-32

In the version I tested, I also had

@@ -2216,7 +2216,7 @@ static int apply_to_pte_range(struct mm_struct *mm, pmd_t *pmd,

        if (create) {
                pte = (mm == &init_mm) ?
-                       pte_alloc_kernel(pmd, addr) :
+                       pte_alloc_kernel_track(pmd, addr, mask) :
                        pte_alloc_map_lock(mm, pmd, addr, &ptl);
                if (!pte)
                        return -ENOMEM;

And that PGTBL_PMD_MODIFIED makes a difference.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
