Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 295673DA192
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 12:53:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E7D86E05D;
	Thu, 29 Jul 2021 10:53:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD14E6E05D;
 Thu, 29 Jul 2021 10:53:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="234748271"
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="234748271"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 03:53:48 -0700
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="518150162"
Received: from eoghanru-mobl.ger.corp.intel.com (HELO [10.213.215.170])
 ([10.213.215.170])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 03:53:47 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210728155013.1741657-1-matthew.auld@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c5365359-0a0d-2232-5fde-c1f4caf45cc6@linux.intel.com>
Date: Thu, 29 Jul 2021 11:53:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728155013.1741657-1-matthew.auld@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: fixup igt_shrink_thp
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
Cc: dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi Matt,

On 28/07/2021 16:50, Matthew Auld wrote:
> Since the object might still be active here, the shrink_all will simply
> ignore it, which blows up in the test, since the pages will still be
> there. Currently THP is disabled which should result in the test being
> skipped, but if we ever re-enable THP we might start seeing the failure.
> Fix this by forcing I915_SHRINK_ACTIVE.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/selftests/huge_pages.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> index a094f3ce1a90..7a67e880b562 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> @@ -1575,7 +1575,10 @@ static int igt_shrink_thp(void *arg)
>   	 * Now that the pages are *unpinned* shrink-all should invoke
>   	 * shmem to truncate our pages.
>   	 */
> -	i915_gem_shrink_all(i915);
> +	i915_gem_shrink(NULL, i915, -1UL, NULL,
> +			I915_SHRINK_BOUND |
> +			I915_SHRINK_UNBOUND |
> +			I915_SHRINK_ACTIVE);
>   	if (i915_gem_object_has_pages(obj)) {
>   		pr_err("shrink-all didn't truncate the pages\n");
>   		err = -EINVAL;
> 

I did s/shrink-all/shrinking/ locally in the comment above, and in 
pr_err below the call to shrinker. Are you okay if I repost like that 
and with my r-b as part of my series?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
