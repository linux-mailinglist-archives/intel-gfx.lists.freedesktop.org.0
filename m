Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3107324E37F
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Aug 2020 00:34:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11F796E42D;
	Fri, 21 Aug 2020 22:34:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51C086E42D
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Aug 2020 22:34:13 +0000 (UTC)
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8125E20738;
 Fri, 21 Aug 2020 22:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598049253;
 bh=e9TgfbzPxbZ0RMettD6UjC9e/skty4Ij7sI3PWfvkKA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=E5Ry6Ii/g8IEKJsBAvTX0xghUOft+EGvmMStVB6/N9ULp3ZpMRXQs3s0ezsgFilBf
 N6gV871jS2Pyiysa3OKhRrRl3FJKe410XDCgbjddqnkl8k88ua0GbgLIZjHzHzHuBa
 2uMzvkYf96ddYZ9ZWAXJnrXpp2IkefCJHhZD44Cs=
Date: Fri, 21 Aug 2020 15:34:12 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Joerg Roedel <joro@8bytes.org>
Message-Id: <20200821153412.5902e4ed0699615d8de4a595@linux-foundation.org>
In-Reply-To: <20200821123746.16904-1-joro@8bytes.org>
References: <20200821123746.16904-1-joro@8bytes.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
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
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>, linux-mm@kvack.org,
 David Vrabel <david.vrabel@citrix.com>, Pavel Machek <pavel@ucw.cz>,
 Dave Airlie <airlied@redhat.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 21 Aug 2020 14:37:46 +0200 Joerg Roedel <joro@8bytes.org> wrote:

> The __apply_to_page_range() function is also used to change and/or
> allocate page-table pages in the vmalloc area of the address space.
> Make sure these changes get synchronized to other page-tables in the
> system by calling arch_sync_kernel_mappings() when necessary.
> 
> Tested-by: Chris Wilson <chris@chris-wilson.co.uk> #x86-32
> Cc: <stable@vger.kernel.org> # v5.8+

I'm trying to figure out how you figured out that this is 5.8+.  Has a
particular misbehaving commit been identified?

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
