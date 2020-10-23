Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F9D296F13
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 14:27:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00E0F6E525;
	Fri, 23 Oct 2020 12:27:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 405B26E525;
 Fri, 23 Oct 2020 12:27:11 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5262967373; Fri, 23 Oct 2020 14:19:41 +0200 (CEST)
Date: Fri, 23 Oct 2020 14:19:41 +0200
From: Christoph Hellwig <hch@lst.de>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20201023121941.GB18499@lst.de>
References: <20201023113401.GG282278@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023113401.GG282278@mwanda>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix a crash in shmem_pin_map()
 error handling
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
Cc: dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 23, 2020 at 02:34:01PM +0300, Dan Carpenter wrote:
> There is a signedness bug in shmem_pin_map() error handling because "i"
> is unsigned.  The "while (--i >= 0)" will loop forever until the system
> crashes.

I actually sent a patch to Andrew before the end of the merge window
to use a for loop with a new j iterator to fix this based on your
automated report, but it looks like that didn't go in.

> Fixes: bfed6708d6c9 ("drm/i915: use vmap in shmem_pin_map")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/gpu/drm/i915/gt/shmem_utils.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
> index f011ea42487e..7eb542018219 100644
> --- a/drivers/gpu/drm/i915/gt/shmem_utils.c
> +++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
> @@ -52,8 +52,9 @@ struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
>  void *shmem_pin_map(struct file *file)
>  {
>  	struct page **pages;
> -	size_t n_pages, i;
> +	size_t n_pages;
>  	void *vaddr;
> +	int i;
>  
>  	n_pages = file->f_mapping->host->i_size >> PAGE_SHIFT;
>  	pages = kvmalloc_array(n_pages, sizeof(*pages), GFP_KERNEL);

This assumes we never have more than INT_MAX worth of pages before
a failure. 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
