Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A43A424E3F8
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Aug 2020 01:39:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 182046EC1F;
	Fri, 21 Aug 2020 23:39:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B9C46EC1F
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Aug 2020 23:39:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22203819-1500050 for multiple; Sat, 22 Aug 2020 00:39:11 +0100
MIME-Version: 1.0
In-Reply-To: <20200821153412.5902e4ed0699615d8de4a595@linux-foundation.org>
References: <20200821123746.16904-1-joro@8bytes.org>
 <20200821153412.5902e4ed0699615d8de4a595@linux-foundation.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andrew Morton <akpm@linux-foundation.org>, Joerg Roedel <joro@8bytes.org>
Date: Sat, 22 Aug 2020 00:39:09 +0100
Message-ID: <159805314945.32652.6355592202796435703@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2] mm: Track page table modifications in
 __apply_to_page_range()
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
Cc: Joerg Roedel <jroedel@suse.de>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, linux-mm@kvack.org,
 David Vrabel <david.vrabel@citrix.com>, Pavel Machek <pavel@ucw.cz>,
 Dave Airlie <airlied@redhat.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Andrew Morton (2020-08-21 23:34:12)
> On Fri, 21 Aug 2020 14:37:46 +0200 Joerg Roedel <joro@8bytes.org> wrote:
> 
> > The __apply_to_page_range() function is also used to change and/or
> > allocate page-table pages in the vmalloc area of the address space.
> > Make sure these changes get synchronized to other page-tables in the
> > system by calling arch_sync_kernel_mappings() when necessary.
> > 
> > Tested-by: Chris Wilson <chris@chris-wilson.co.uk> #x86-32
> > Cc: <stable@vger.kernel.org> # v5.8+
> 
> I'm trying to figure out how you figured out that this is 5.8+.  Has a
> particular misbehaving commit been identified?

The two commits of relevance, in my eyes, were

  2ba3e6947aed ("mm/vmalloc: track which page-table levels were modified")
  86cf69f1d893 ("x86/mm/32: implement arch_sync_kernel_mappings()")

I can reproduce the failure on v5.8, but not on v5.7. A bisect would
seem to be plausible.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
