Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8930828CD4A
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 13:58:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BC2B6E8CC;
	Tue, 13 Oct 2020 11:58:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 028326E8CC
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 11:58:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22701516-1500050 for multiple; Tue, 13 Oct 2020 12:58:31 +0100
MIME-Version: 1.0
In-Reply-To: <20201013111839.96637-1-matthew.auld@intel.com>
References: <20201013111839.96637-1-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 13 Oct 2020 12:58:31 +0100
Message-ID: <160259031106.2946.5754638300794869595@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execbuf: don't allow zero batch_len
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-10-13 12:18:39)
> As per the ABI batch_len is u32, however if the batch_len is left unset,
> then the kernel will just assume batch_len is the size of the whole
> batch object, however since the vma->size is u64, while the batch_len is
> just u32 we can end up with batch_len = 0 if we are given too large batch
> object(e.g 1ULL << 32), which doesn't look the intended behaviour and
> probably leads to explosions on some HW.
> 
> Testcase: igt/gem_exec_params/larger-than-life-batch
> Fixes: 0b5372727be3 ("drm/i915/cmdparser: Use cached vmappings")

Nah. That's setting exec_len used for dispatch, not for parsing, which
is still using 

i915_gem_execbuffer_parse(engine, &shadow_exec_entry,
			  params->batch->obj,
			  eb,
			  args->batch_start_offset,
			  args->batch_len,
			  drm_is_current_master(file));
(and args->batch_len is straight from userspace and passed onwards)

It's right up until 435e8fc059db ("drm/i915: Allow parsing of unsized batches")
where we are using the user value of batch_len for allocating the shadow
object and parsing.

Fixes: 435e8fc059db ("drm/i915: Allow parsing of unsized batches")

> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 4b09bcd70cf4..80c738c72e6e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -869,8 +869,13 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
>                 return -EINVAL;
>         }
>  
> -       if (eb->batch_len == 0)
> +       if (eb->batch_len == 0) {
>                 eb->batch_len = eb->batch->vma->size - eb->batch_start_offset;

if (overflows_type(eb->batch->vma->size - eb->batch_start_offset, eb->batch_len))

It should not have caused the cmdparser any trouble though, it should
have been quite happy to copy nothing and reject the batch for reaching
the end too early (with a very slim chance of a stale
MI_BATCH_BUFFER_END to the rescue).

intel_gt_get_buffer_pool() looks suspect given a size of 0, it will
either give the largest object it has cached or break upon
creating/allocating internal pages.

In terms of HW fail, only gen2 used the parameter and it has a very
limited batch/GTT size.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
