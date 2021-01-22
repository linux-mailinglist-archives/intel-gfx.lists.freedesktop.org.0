Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1072FFED4
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 09:58:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7645D6E101;
	Fri, 22 Jan 2021 08:58:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 425886E0ED
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 08:58:29 +0000 (UTC)
IronPort-SDR: DFD86VcpXtocn/Jj9krW9+sKxmd5qZo1PUsoeUep6zdSpSi1F1L0vKXvfA7hfJgbyeN5p3A32Z
 acknezEkxDvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="159196786"
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="159196786"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 00:58:29 -0800
IronPort-SDR: HjiaapnV3XYy4sutfpr+0JlkOB5/SnZVO64mQpH/WI4r5+nxObpjK+vOqkNgzTe/30VCq4SMLr
 lsqKUq37/XYg==
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="385677286"
Received: from blaschkj-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.44.247])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 00:58:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210114111817.3849-1-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210114111817.3849-1-chris@chris-wilson.co.uk>
Date: Fri, 22 Jan 2021 10:58:24 +0200
Message-ID: <877do5l55b.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add DEBUG_GEM to the recommended
 CI config
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

On Thu, 14 Jan 2021, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Now that i915 compiles cleanly with Werror, we can enforce enabling
> DEBUG_GEM when selecting the default debug config.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/Kconfig.debug | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
> index 0fb7fd0ef717..3701bae5b855 100644
> --- a/drivers/gpu/drm/i915/Kconfig.debug
> +++ b/drivers/gpu/drm/i915/Kconfig.debug
> @@ -39,10 +39,12 @@ config DRM_I915_DEBUG
>  	select DRM_DEBUG_SELFTEST
>  	select DMABUF_SELFTESTS
>  	select SW_SYNC # signaling validation framework (igt/syncobj*)
> +	select DRM_I915_WERROR

I think this line should be removed to fix [1]. Keep DRM_I915_WERROR
orthogonal.

BR,
Jani.


[1] http://lore.kernel.org/r/20210122115918.63b56fa1@canb.auug.org.au


> +	select DRM_I915_DEBUG_GEM
> +	select DRM_I915_DEBUG_MMIO
> +	select DRM_I915_DEBUG_RUNTIME_PM
>  	select DRM_I915_SW_FENCE_DEBUG_OBJECTS
>  	select DRM_I915_SELFTEST
> -	select DRM_I915_DEBUG_RUNTIME_PM
> -	select DRM_I915_DEBUG_MMIO
>  	select BROKEN # for prototype uAPI
>  	default n
>  	help

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
