Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC67524D4C3
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 14:18:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C8EC6E115;
	Fri, 21 Aug 2020 12:18:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2F0C6E115
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Aug 2020 12:18:20 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 2DA22ACCF;
 Fri, 21 Aug 2020 12:18:47 +0000 (UTC)
Date: Fri, 21 Aug 2020 14:18:16 +0200
From: Joerg Roedel <jroedel@suse.de>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200821121816.GJ3354@suse.de>
References: <20200821085011.28878-1-chris@chris-wilson.co.uk>
 <20200821100902.GG3354@suse.de>
 <159800481672.29194.17217138842959831589@build.alporthouse.com>
 <20200821102343.GI3354@suse.de>
 <159800635942.29194.13489565974587679781@build.alporthouse.com>
 <159800988352.29194.8498025838223804532@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159800988352.29194.8498025838223804532@build.alporthouse.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Fri, Aug 21, 2020 at 12:38:03PM +0100, Chris Wilson wrote:
> In the version I tested, I also had
> 
> @@ -2216,7 +2216,7 @@ static int apply_to_pte_range(struct mm_struct *mm, pmd_t *pmd,
> 
>         if (create) {
>                 pte = (mm == &init_mm) ?
> -                       pte_alloc_kernel(pmd, addr) :
> +                       pte_alloc_kernel_track(pmd, addr, mask) :
>                         pte_alloc_map_lock(mm, pmd, addr, &ptl);
>                 if (!pte)
>                         return -ENOMEM;
> 
> And that PGTBL_PMD_MODIFIED makes a difference.

Right, thanks. Added that too.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
