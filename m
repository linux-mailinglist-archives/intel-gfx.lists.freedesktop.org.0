Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F06B6265061
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 22:15:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B7D16E1A2;
	Thu, 10 Sep 2020 20:15:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C3806E1A2
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 20:15:30 +0000 (UTC)
IronPort-SDR: NuVov6pF72wORTt/8HXE0wQmtLqcree4HFojLWv6dFM2WoSHPleq1/DnEw3dBnSEdVixR3FjnG
 ejAS2a7ZBbVQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="146347636"
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="146347636"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 13:15:29 -0700
IronPort-SDR: iU6WmuOj95tuXMN26AGlY7HXvpF8obhUT7eQhJ3dBd8gVzrQmms8A+R9ll83FSqYnZAG3XY3rg
 yfVLm9vNee/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="342053032"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Sep 2020 13:15:25 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 6677A5C2042; Thu, 10 Sep 2020 23:14:19 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200910100850.GD79916@mwanda>
References: <20200910100850.GD79916@mwanda>
Date: Thu, 10 Sep 2020 23:14:19 +0300
Message-ID: <87363p4cf8.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix an error code
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
Cc: David Airlie <airlied@linux.ie>, kernel-janitors@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Dan Carpenter <dan.carpenter@oracle.com> writes:

> This code should use "vma[1]" instead of "vma".  The "vma" is a variable
> is a valid pointer.

Not quite getting the last sentence with my non native english parser.
"vma" is array would make sense.

>
> Fixes: 6b05030496f7 ("drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
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
> -- 
> 2.28.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
