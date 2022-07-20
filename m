Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0607557B695
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jul 2022 14:39:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 214578BAB4;
	Wed, 20 Jul 2022 12:39:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAB098BAAD
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jul 2022 12:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658320748; x=1689856748;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=HorjjZ9mrLHFNvn/yyY/M4PhqfkZ7SdxueVg5CIwvoA=;
 b=Ahs8NQtmvEt3PxZ8KA7bVLj/wK/7GkkED8ZAoMeEht3t+IswAGlzK/bu
 Nn2NznB46aOzjbYOs2nh6fQLSivr9CiUfsD3PcrsStGkXoUvc5mvvnUrp
 92hcoWTJmGwNyocPlIo/EzafiqA4wRKOLy5ts3aHCTuRoL9N6F0WkUVbN
 mGzMyG3h0T5QQiwlrzjT/LsKewXKAYGisQBr3WNFCGDD7E5/RrZp07lTd
 u67pjbBaOtHn8nj0KF7qHiJzCNxWl68Xgc104nNzMef3oCIIUCRm2rEHv
 fI/I1+v0phdFTpBww5G+AtC1bBwA2bdCtDMoVIu0vQ5jxqxiKFeF+/J1e A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10413"; a="286775958"
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="286775958"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 05:39:07 -0700
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="625648935"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.23.226])
 ([10.213.23.226])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 05:39:04 -0700
Message-ID: <4b029bf0-63da-5ac1-5c69-ad3673bd6f35@intel.com>
Date: Wed, 20 Jul 2022 14:39:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220720122321.18270-1-nirmoy.das@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
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
Cc: matthew.auld@intel.com, chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 20.07.2022 14:23, Nirmoy Das wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
> 
> We report object allocation failures to userspace with ENOMEM, yet we
> still show the memory warning after failing to shrink device allocated
> pages. While this warning is similar to other system page allocation
> failures, it is superfluous to the ENOMEM provided directly to
> userspace.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4936
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


Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

>   			}
>   		} while (1);
>   

