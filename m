Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A45EE35BC1A
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 10:28:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED12A89E5F;
	Mon, 12 Apr 2021 08:28:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 757A589E5F
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 08:28:07 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 856F868C4E; Mon, 12 Apr 2021 10:28:05 +0200 (CEST)
Date: Mon, 12 Apr 2021 10:28:05 +0200
From: Christoph Hellwig <hch@lst.de>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <20210412082805.GD4372@lst.de>
References: <20210412080012.357146277@infradead.org>
 <20210412080611.769864829@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210412080611.769864829@infradead.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH 4/7] mm: Introduce verify_page_range()
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
Cc: jgross@suse.com, sstabellini@kernel.org, keescook@chromium.org,
 intel-gfx@lists.freedesktop.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 chris@chris-wilson.co.uk, linux-mm@kvack.org, boris.ostrovsky@oracle.com,
 hch@lst.de, akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 12, 2021 at 10:00:16AM +0200, Peter Zijlstra wrote:
> +extern int verify_page_range(struct mm_struct *mm,

No need for the extern here.

> +int verify_page_range(struct mm_struct *mm,
> +		      unsigned long addr, unsigned long size,
> +		      int (*fn)(pte_t pte, unsigned long addr, void *data),
> +		      void *data)

A kerneldoc comment would be nice for this function.

Otherwise this looks fine.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
