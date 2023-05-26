Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D2571271D
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 14:58:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B92C110E1A6;
	Fri, 26 May 2023 12:58:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 281F910E1A6
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 12:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685105889; x=1716641889;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ogGvf2CxGG13dczWVpcuQ8rDvUNH3Z0IyjcNc/RhVEg=;
 b=mTWbH+eeOPXFaFQFrMJsbWuGanYN0xKiE/tR9yIF95YHd0XMkWP3ChdN
 4cVcJi7toRFcNGrKnngaOYRBYaFCgbFeoqSgwyh4XosQsK2S9Y0usnkWL
 +sCdKhJk50ht+E7UEjMkVqbdm1Pl4SZ8iB4dSF+sEX/uHFLUSaUIclS0b
 aCGyjlELxZThko6nR7jQdkWWzCRbJEc/AIUNDjMGR3RuQfUl/R6MatBGe
 JcjzIWVWHZlIMyL6Rr4m/3q7ecluAA3NPQIKCi3SYChboRaQtyP0sK0JM
 XrgMK3TdfHAt7VXTqAxwychzHOG7qE1eIByqeiFyy9Bpnzqx8Q6rBnurY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="382438939"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="382438939"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 05:58:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="682709520"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="682709520"
Received: from schoenfm-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.249.39.253])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 05:58:04 -0700
Date: Fri, 26 May 2023 14:58:01 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
Message-ID: <ZHCs2RU6+SNkq0GA@ashyti-mobl2.lan>
References: <f6b876f1-4dd7-4d96-bee5-966817cc1644@kili.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f6b876f1-4dd7-4d96-bee5-966817cc1644@kili.mountain>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: fix an error code in
 copy()
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
Cc: Thomas =?iso-8859-15?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Matthew Auld <matthew.auld@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dan,

On Fri, May 26, 2023 at 02:59:31PM +0300, Dan Carpenter wrote:
> Return the error code if i915_gem_object_create_internal() fails,
> instead of returning success.
> 
> Fixes: cf586021642d ("drm/i915/gt: Pipelined page migration")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> ---
>  drivers/gpu/drm/i915/gt/selftest_migrate.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm/i915/gt/selftest_migrate.c
> index e677f2da093d..a26429fd5326 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
> @@ -55,8 +55,10 @@ static int copy(struct intel_migrate *migrate,
>  
>  	sz = src->base.size;
>  	dst = i915_gem_object_create_internal(i915, sz);
> -	if (IS_ERR(dst))
> +	if (IS_ERR(dst)) {
> +		err = PTR_ERR(dst);
>  		goto err_free_src;
> +	}

I think it was intentional to return '0' when
i915_gem_object_create_internal() failed, as we are not testing
object creation here.

I don't really mind this patch, but, on the other hand, returning
an error value here might provide a biased information.

Thanks,
Andi

>  
>  	for_i915_gem_ww(&ww, err, true) {
>  		err = i915_gem_object_lock(src, &ww);
> -- 
> 2.39.2
