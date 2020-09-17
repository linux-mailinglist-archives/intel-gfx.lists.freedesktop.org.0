Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F37A926D982
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 12:49:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9BAC6E137;
	Thu, 17 Sep 2020 10:49:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 416596E137
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 10:49:41 +0000 (UTC)
IronPort-SDR: vyY27t7ob9uKKLZ00JtAqozvL4iEHk5XbflTLMa3t550LpwuUnHVH9gWbTGLLeTCS3F3Ioi9gD
 C7/gFDLXRJoQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="157056381"
X-IronPort-AV: E=Sophos;i="5.76,436,1592895600"; d="scan'208";a="157056381"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 03:49:39 -0700
IronPort-SDR: cQkJHJmiMdNqqGqmsHhuUzDnip2jjo6a1dsj7uQDH8WzYH8o2AMmMX49QP+IvwWB8k5o3wB3SU
 yT2cGXg6XorQ==
X-IronPort-AV: E=Sophos;i="5.76,436,1592895600"; d="scan'208";a="483698085"
Received: from jroorda-mobl1.ger.corp.intel.com (HELO [10.252.40.25])
 ([10.252.40.25])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 03:49:36 -0700
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
References: <20200911075243.GG12635@kadam>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <7c10479e-31ad-5392-b2d6-0264cc845c3d@linux.intel.com>
Date: Thu, 17 Sep 2020 12:49:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200911075243.GG12635@kadam>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix an error code
 i915_gem_object_copy_blt()
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 kernel-janitors@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 11-09-2020 om 09:52 schreef Dan Carpenter:
> This code should use "vma[1]" instead of "vma".  The "vma" variable is a
> valid pointer.
>
> Fixes: 6b05030496f7 ("drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
> v2: Fix confusing typo in the commit message
>
>  drivers/gpu/drm/i915/gem/i915_gem_object_blt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
> index d93eb36160c9..aee7ad3cc3c6 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
> @@ -364,7 +364,7 @@ int i915_gem_object_copy_blt(struct drm_i915_gem_object *src,
>  
>  	vma[1] = i915_vma_instance(dst, vm, NULL);
>  	if (IS_ERR(vma[1]))
> -		return PTR_ERR(vma);
> +		return PTR_ERR(vma[1]);
>  
>  	i915_gem_ww_ctx_init(&ww, true);
>  	intel_engine_pm_get(ce->engine);

Thanks, applied to drm-intel-gt-next. :)

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
