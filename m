Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 969492943C8
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 22:20:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 028456E0D1;
	Tue, 20 Oct 2020 20:20:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 995666E0D1
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 20:20:16 +0000 (UTC)
IronPort-SDR: vOcW0ey/a4KOsdKC4ZCgjjIbb9MEAOBGO3ei0Utxrlc1DtVALJJ4mKhFkBy2aR16eL1j/JTSXM
 Bki9fTKYT+Cw==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="164665798"
X-IronPort-AV: E=Sophos;i="5.77,398,1596524400"; d="scan'208";a="164665798"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 13:20:16 -0700
IronPort-SDR: IETKaO7XNRLmCf+TE7MO2Yjh3d+L+r+PsGfzodccwSQ0YWVL6VcjUBpCe7YiJFsmbHcR9e9WkV
 lItxkbn2LBcA==
X-IronPort-AV: E=Sophos;i="5.77,398,1596524400"; d="scan'208";a="358654421"
Received: from gtax-ubuntu-1910.fm.intel.com ([10.105.23.76])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 13:20:15 -0700
Date: Tue, 20 Oct 2020 20:18:21 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20201020201816.GA6055@gtax-ubuntu-1910.fm.intel.com>
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-3-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201016104444.1492028-3-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 02/61] drm/i915: Add missing -EDEADLK
 handling to execbuf pinning
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 16, 2020 at 12:43:45PM +0200, Maarten Lankhorst wrote:
> i915_vma_pin may fail with -EDEADLK when we start locking page tables,
> so ensure we handle this correctly.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 23 +++++++++++++++----
>  1 file changed, 18 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index a199336792fb..0f5efced0b87 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -419,13 +419,14 @@ static u64 eb_pin_flags(const struct drm_i915_gem_exec_object2 *entry,
>  	return pin_flags;
>  }
>  
> -static inline bool
> +static inline int
>  eb_pin_vma(struct i915_execbuffer *eb,
>  	   const struct drm_i915_gem_exec_object2 *entry,
>  	   struct eb_vma *ev)
>  {
>  	struct i915_vma *vma = ev->vma;
>  	u64 pin_flags;
> +	int err;
>  
>  	if (vma->node.size)
>  		pin_flags = vma->node.start;
> @@ -438,16 +439,24 @@ eb_pin_vma(struct i915_execbuffer *eb,
>  
>  	/* Attempt to reuse the current location if available */
>  	/* TODO: Add -EDEADLK handling here */

Drop the TODO?

> -	if (unlikely(i915_vma_pin_ww(vma, &eb->ww, 0, 0, pin_flags))) {
> +	err = i915_vma_pin_ww(vma, &eb->ww, 0, 0, pin_flags);
> +	if (err == -EDEADLK)
> +		return err;
> +
> +	if (unlikely(err)) {
>  		if (entry->flags & EXEC_OBJECT_PINNED)
>  			return false;
>  
>  		/* Failing that pick any _free_ space if suitable */
> -		if (unlikely(i915_vma_pin_ww(vma, &eb->ww,
> +		err = i915_vma_pin_ww(vma, &eb->ww,
>  					     entry->pad_to_size,
>  					     entry->alignment,
>  					     eb_pin_flags(entry, ev->flags) |
> -					     PIN_USER | PIN_NOEVICT)))
> +					     PIN_USER | PIN_NOEVICT);
> +		if (err == -EDEADLK)
> +			return err;
> +
> +		if (unlikely(err))
>  			return false;

Confusing to return a boolean 'false' while the return value of this
function is an int. Return '0' if that is the intent, which I believe it
based on how the caller handles the return. 

>  	}
>  
> @@ -900,7 +909,11 @@ static int eb_validate_vmas(struct i915_execbuffer *eb)
>  		if (err)
>  			return err;
>  

Can't say I love the triple comparison of the return values, but if you
need to do this I'd put all of comparison in the same clause. Just my
opinion.

Matt

> -		if (eb_pin_vma(eb, entry, ev)) {
> +		err = eb_pin_vma(eb, entry, ev);
> +		if (err < 0)
> +			return err;
> +
> +		if (err > 0) {
>  			if (entry->offset != vma->node.start) {
>  				entry->offset = vma->node.start | UPDATE;
>  				eb->args->flags |= __EXEC_HAS_RELOC;
> -- 
> 2.28.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
