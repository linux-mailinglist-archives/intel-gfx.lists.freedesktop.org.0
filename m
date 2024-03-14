Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0D387BE0C
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 14:51:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7071010FB55;
	Thu, 14 Mar 2024 13:51:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XG0hcTN1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AF8610FB55
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Mar 2024 13:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710424286; x=1741960286;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=s2QfwmHx+eHO0F0r+W/eVHRJVag95FPW0teAcufPxvI=;
 b=XG0hcTN1YKDC1dD2f2mC8sAJMTjzQjt5jDZ9RdRhUCo1CEQJXnje8jsu
 ij/slEDT18Yid/6ka7lxNFRzRPXXxL8TVzlQITIgBSuS/uaK4uQhI8orP
 ASNW98gPVtWhlbL2EZDvyot79NFIrtq5mgdNr4DEIZkVg4Uh+l3ahqUrn
 oCPVbb9JGHaFk0iM+sWQOaqNDwtPzE/5mgcNoxHIQA+h2beEC0ZyUBnt2
 gAGGdiTCGXHuP1rAzbysOsEpuMDfAyenxx5z0+D6/FDUbznq6VgaO3Ov8
 Xvepsy+stOmTATCuTyjD2olDpbCtOjR/d6YXGyqr9Uf9uaHEwOoBbll0p g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="5106200"
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; 
   d="scan'208";a="5106200"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 06:51:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="12187948"
Received: from unknown (HELO intel.com) ([10.247.118.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 06:51:21 -0700
Date: Thu, 14 Mar 2024 14:51:14 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com,
 matthew.d.roper@intel.com, lionel.g.landwerlin@intel.com,
 chris.p.wilson@linux.intel.com, brian.welty@intel.com
Subject: Re: [PATCH v2] drm/i915/gem: Execbuffer objects must have struct
 pages.
Message-ID: <ZfMA0gxTBOScdyy3@ashyti-mobl2.lan>
References: <20240312145506.3091929-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240312145506.3091929-1-jonathan.cavitt@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

On Tue, Mar 12, 2024 at 07:55:06AM -0700, Jonathan Cavitt wrote:
> We cannot write requests to objects without struct pages, so escape
> early if the requests are bound to objects that lack them.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

is this a fix? Do you need

Fixes: 544460c33821 ("drm/i915: Multi-BB execbuf")
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: <stable@vger.kernel.org> # v5.16+

?

Andi

> ---
> 
> v2: s/vma-obj/vma->obj
> 
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index d3a771afb083e..adb4f9e78cb49 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -3313,6 +3313,13 @@ eb_requests_create(struct i915_execbuffer *eb, struct dma_fence *in_fence,
>  	unsigned int i;
>  
>  	for_each_batch_create_order(eb, i) {
> +		/* Do not write requests to objects without struct pages. */
> +		if (eb->batches[i]->vma &&
> +		    !i915_gem_object_has_struct_page(eb->batches[i]->vma->obj)) {
> +			out_fence = ERR_PTR(-EINVAL);
> +			return out_fence;
> +		}
> +
>  		/* Allocate a request for this batch buffer nice and early. */
>  		eb->requests[i] = i915_request_create(eb_find_context(eb, i));
>  		if (IS_ERR(eb->requests[i])) {
> -- 
> 2.25.1
