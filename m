Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A14B12FFF45
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 10:35:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 065746E9C8;
	Fri, 22 Jan 2021 09:35:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 559536E9C8
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 09:35:49 +0000 (UTC)
IronPort-SDR: AJpe5AnvFPar45+aZTn7E+g0phgLCRCLCym2RgOUgEr2ofyPbIA0lAvnXvfIlJi5dLbScQJYee
 lpmSOF2Hh5tA==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="178644053"
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="178644053"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 01:35:48 -0800
IronPort-SDR: 6w5Rm8YgJM4MLpyB41LYCPsHchnnA0/+Lj3Av8n/8mgZOUzvqXU0ZL4oFyIGOXrstzBe8iVhT6
 oI0H/XWXcxIQ==
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="385687954"
Received: from blaschkj-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.44.247])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 01:35:45 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210122091058.5145-1-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210122091058.5145-1-chris@chris-wilson.co.uk>
Date: Fri, 22 Jan 2021 11:35:42 +0200
Message-ID: <874kj9l3f5.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Restrict DRM_I915_DEBUG to
 developer builds
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 22 Jan 2021, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Let's not encourage everybody to build i915's debug code, and certainly
> not the build robots who need to scrutinise the production build. Since
> CI will complain if the debug build is broken, having the other build
> bots focus on the builds we don't cover ourselves should improve the
> build coverage.

I don't disagree with this, although I wrote in another mail that I'm
not sure DRM_I915_DEBUG should select DRM_I915_WERROR. I think they
should be two separate things.

Even so, for this change,

Acked-by: Jani Nikula <jani.nikula@intel.com>

>
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Fixes: 4f86975f539d ("drm/i915: Add DEBUG_GEM to the recommended CI config")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/Kconfig.debug | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
> index e2d33f1abb3d..5b457fb2d268 100644
> --- a/drivers/gpu/drm/i915/Kconfig.debug
> +++ b/drivers/gpu/drm/i915/Kconfig.debug
> @@ -19,6 +19,8 @@ config DRM_I915_WERROR
>  config DRM_I915_DEBUG
>  	bool "Enable additional driver debugging"
>  	depends on DRM_I915
> +	depends on EXPERT # only for developers
> +	depends on !COMPILE_TEST # never built by robots
>  	select PCI_MSI # ... for iommu enabled by default
>  	select IOMMU_API
>  	select IOMMU_IOVA

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
