Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D99E1A09F7
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 11:23:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CC9B6E7EA;
	Tue,  7 Apr 2020 09:23:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ABB76E7EA
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 09:23:01 +0000 (UTC)
IronPort-SDR: qUpduqELBpiTOQ8fyuSyDMKfxGGgTdMZCWL4zr9HPStfHllslg3F1SLCuDi3eYVAAhJHoG+o8l
 vfBES2/qg0uw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 02:23:00 -0700
IronPort-SDR: NAPbsIgRxzORLI267roqzaDbDBAgA1LSXEEjNw9onmRClkwQGzf/L4Yyj8AqB68Ff/aWBWG1Qx
 2KTlJd0qq2EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="242030476"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 07 Apr 2020 02:22:59 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 4AECC5C3A0B; Tue,  7 Apr 2020 12:21:16 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200407085930.19421-1-chris@chris-wilson.co.uk>
References: <20200407085930.19421-1-chris@chris-wilson.co.uk>
Date: Tue, 07 Apr 2020 12:21:16 +0300
Message-ID: <87tv1vodmb.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Promote 'remain' to unsigned
 long
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Tidy the code by casting remain to unsigned long once for the duration
> of eb_relocate_vma()
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index d9ab517bbce9..c95dc09c4c93 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1508,11 +1508,11 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
>  	struct drm_i915_gem_relocation_entry stack[N_RELOC(512)];
>  	struct drm_i915_gem_relocation_entry __user *urelocs;
>  	const struct drm_i915_gem_exec_object2 *entry = ev->exec;
> -	unsigned int remain;
> +	unsigned long remain;
>  
>  	urelocs = u64_to_user_ptr(entry->relocs_ptr);
>  	remain = entry->relocation_count;
> -	if (unlikely((unsigned long)remain > N_RELOC(ULONG_MAX)))
> +	if (unlikely(remain > N_RELOC(ULONG_MAX)))
>  		return -EINVAL;
>  
>  	/*
> @@ -1520,13 +1520,12 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
>  	 * to read. However, if the array is not writable the user loses
>  	 * the updated relocation values.
>  	 */
> -	if (unlikely(!access_ok(urelocs, remain*sizeof(*urelocs))))
> +	if (unlikely(!access_ok(urelocs, remain * sizeof(*urelocs))))
>  		return -EFAULT;
>  
>  	do {
>  		struct drm_i915_gem_relocation_entry *r = stack;
> -		unsigned int count =
> -			min_t(unsigned int, remain, ARRAY_SIZE(stack));
> +		unsigned int count = min(remain, ARRAY_SIZE(stack));
>  		unsigned int copied;
>  
>  		/*
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
