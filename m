Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C739457C80E
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 11:49:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBC6E8D12C;
	Thu, 21 Jul 2022 09:49:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4C158D12C
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 09:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658396996; x=1689932996;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=oPoAeocvwZituJvyNw3VH9CWUZeNNcxOCo5o1yAip+8=;
 b=MrkyWGKTZg/kGuM1m9ms3R4BBgpXAZI+1hTKQqrINwMq3gnBH+8J+Bzo
 Ch2UGIjGt/wnxvqrFgaXFgCo4ANRQiuOJA0WqUyWv6v4CMumPkr3L2rU5
 h09BOeNoks8SByZXjI6yPGkbMIbHgzqIVkjDChcP2eJ1oLmPwMUNd/zso
 k1snBeh3DL2Y3yycfN2oCzYqTjSLlZxhzmQtXyine0XMGVlDBZ00GtLXH
 LgT7ZzIyvZ/f7yUl0kd6EQsnn9Pf2s4v7cvl4Rvs1Y7mPVrmDiHB/hjwV
 FzS8XtETGJwqHP0NocdcScUHDmIn8Sa5B4KfdhJ2nvGE9+rFulWBc50j3 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="350991942"
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="350991942"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 02:49:56 -0700
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="573676276"
Received: from armstron-mobl.gar.corp.intel.com (HELO [10.213.154.150])
 ([10.213.154.150])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 02:49:53 -0700
Message-ID: <31613498-5b96-766a-f9e8-8a73f0022089@intel.com>
Date: Thu, 21 Jul 2022 10:49:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-GB
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220720122321.18270-1-nirmoy.das@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220720122321.18270-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Suppress oom warning for shmemfs
 object allocation failure
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
Cc: chris.p.wilson@intel.com, andrzej.hajda@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 20/07/2022 13:23, Nirmoy Das wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
> 
> We report object allocation failures to userspace with ENOMEM, yet we
> still show the memory warning after failing to shrink device allocated
> pages. While this warning is similar to other system page allocation
> failures, it is superfluous to the ENOMEM provided directly to
> userspace.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4936

Is it not possible that this triggers OOM warning when calling 
sg_alloc_table() or similar? I guess shmem_read_mapping_page_gfp() is 
the most likely spot where this triggers OOM, but that doesn't have to 
be the case?

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> index 4eed3dd90ba8..4466173e1bcc 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -137,7 +137,7 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
>   				 * trigger the out-of-memory killer and for
>   				 * this we want __GFP_RETRY_MAYFAIL.
>   				 */
> -				gfp |= __GFP_RETRY_MAYFAIL;
> +				gfp |= __GFP_RETRY_MAYFAIL | __GFP_NOWARN;
>   			}
>   		} while (1);
>   
