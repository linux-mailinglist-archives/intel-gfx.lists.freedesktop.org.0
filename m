Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8811A17A4F4
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 13:12:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E30B06E2E1;
	Thu,  5 Mar 2020 12:12:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1322B6E2E1
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 12:12:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 04:12:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="413501141"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 05 Mar 2020 04:12:04 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 3D6455C1DDA; Thu,  5 Mar 2020 14:10:47 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200304205143.106693-1-matthew.auld@intel.com>
References: <20200304205143.106693-1-matthew.auld@intel.com>
Date: Thu, 05 Mar 2020 14:10:47 +0200
Message-ID: <87tv333su0.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: properly sanity check
 batch_start_offset
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

Matthew Auld <matthew.auld@intel.com> writes:

> Check the edge case where batch_start_offset sits exactly on the batch
> size.
>
> Testcase: igt/gem_exec_params/invalid-batch-start-offset
> Fixes: 0b5372727be3 ("drm/i915/cmdparser: Use cached vmappings")
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 7bb27f382af7..5247de18a3d0 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2714,7 +2714,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>  		goto err_vma;
>  	}
>  
> -	if (range_overflows_t(u64,
> +	if (eb.batch_start_offset == eb.batch->vma->size ||
> +	    range_overflows_t(u64,
>  			      eb.batch_start_offset, eb.batch_len,

Can we sanitize the batch_len apriori?

Not that this would not work,
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  			      eb.batch->vma->size)) {
>  		drm_dbg(&i915->drm, "Attempting to use out-of-bounds batch\n");
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
