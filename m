Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8559C35BC18
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 10:27:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E69176E226;
	Mon, 12 Apr 2021 08:27:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC3706E226
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 08:27:23 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id B930E68C4E; Mon, 12 Apr 2021 10:27:21 +0200 (CEST)
Date: Mon, 12 Apr 2021 10:27:21 +0200
From: Christoph Hellwig <hch@lst.de>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <20210412082721.GC4372@lst.de>
References: <20210412080012.357146277@infradead.org>
 <20210412080611.702979288@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210412080611.702979288@infradead.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH 3/7] xen/gntdev: Remove
 apply_to_page_range() use from module
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

On Mon, Apr 12, 2021 at 10:00:15AM +0200, Peter Zijlstra wrote:
> --- a/drivers/xen/grant-table.c
> +++ b/drivers/xen/grant-table.c
> @@ -1591,6 +1591,43 @@ int gnttab_init(void)
>  }
>  EXPORT_SYMBOL_GPL(gnttab_init);
>  
> +#include <xen/gntdev.h>
> +#include "gntdev-common.h"

Can't we keep the includes at the top of the file?

Otherwise looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
