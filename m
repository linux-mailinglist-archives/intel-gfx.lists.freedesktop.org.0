Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE80588E97
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Aug 2022 16:23:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92F742BAB2;
	Wed,  3 Aug 2022 14:23:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B6BD11A93B
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Aug 2022 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659536573; x=1691072573;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=rYrQy4y4bokIHveQ9fWYQIsNcbGHI6CWRpnfF/kaQ8M=;
 b=iIwmv/kj244BnqO7InaQVM+taUAgYbc+bGq1B5QZ7pHPgnrJ7nSpuajK
 OC/uG/3zaGNfCRt47uQBcFx1qUUClx9SQnadJLwsATYoaAYiwnskQEZla
 4KWMV9UOMH5FGJZYM+q+MrZZhuSQbq0fvPTasd3Bgb6s8lQACPRutuyWZ
 rDX33Ggk3WX/7UIGkkyC70nrsBVr5TYUx86iRuMQHU1BRvBaLdtgzGaK2
 tdHezuSUsIWkdg+tHIAO+OXwBNoPSHwGO3twiYcaw9Tl0C5Jnfmrf72LZ
 FnFxHzI3WeytyuARY4O4WY5j9ZSzTnVT2UQsqm1B1k5f5cDudckpdOd7p Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="270063400"
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="270063400"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 07:22:52 -0700
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="662102581"
Received: from ns1-mobl.gar.corp.intel.com (HELO localhost) ([10.252.59.244])
 by fmsmga008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2022 07:22:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Adrian Larumbe <adrian.larumbe@collabora.com>, daniel@ffwll.ch,
 thomas.hellstrom@linux.intel.com, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220802165155.165576-7-adrian.larumbe@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220802165155.165576-1-adrian.larumbe@collabora.com>
 <20220802165155.165576-7-adrian.larumbe@collabora.com>
Date: Wed, 03 Aug 2022 17:22:48 +0300
Message-ID: <87wnbppft3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: Add module param for enabling
 TTM in sysmem region
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
Cc: adrian.larumbe@collabora.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 02 Aug 2022, Adrian Larumbe <adrian.larumbe@collabora.com> wrote:
> Introduces a new module parameter, 'use_pool_alloc', which defaults to
> 'false'. Its goal is to make the driver fall back on TTM for setting up
> the system memory region, so that object allocation will be done through
> the TTM subsystem rather than shmem objects.
>
> This commit only brings in the new kernel module param, which will be
> used by successive commits.
>
> Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
> ---
>  drivers/gpu/drm/i915/i915_params.c | 6 ++++++
>  drivers/gpu/drm/i915/i915_params.h | 3 ++-
>  2 files changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> index 6fc475a5db61..1af11f030ab1 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -207,6 +207,12 @@ i915_param_named_unsafe(lmem_size, uint, 0400,
>  i915_param_named_unsafe(lmem_bar_size, uint, 0400,
>  			"Set the lmem bar size(in MiB).");
>  
> +i915_param_named_unsafe(use_pool_alloc, bool, 0600,

Do you expect to be able to change this runtime? Or the device specific
debugfs parameter knob?

> +	"Force the driver to use TTM's pool allocator API for smem objects. "
> +	"This will cause TTM to take over BO allocation even in integrated platforms. "
> +	"(default: false)");
> +
> +

Superfluous newline.

>  static __always_inline void _print_param(struct drm_printer *p,
>  					 const char *name,
>  					 const char *type,
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
> index 2733cb6cfe09..992ee2a4947d 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -84,7 +84,8 @@ struct drm_printer;
>  	param(bool, verbose_state_checks, true, 0) \
>  	param(bool, nuclear_pageflip, false, 0400) \
>  	param(bool, enable_dp_mst, true, 0600) \
> -	param(bool, enable_gvt, false, IS_ENABLED(CONFIG_DRM_I915_GVT) ? 0400 : 0)
> +	param(bool, enable_gvt, false, IS_ENABLED(CONFIG_DRM_I915_GVT) ? 0400 : 0) \
> +	param(bool, use_pool_alloc, false, 0600)
>  
>  #define MEMBER(T, member, ...) T member;
>  struct i915_params {

-- 
Jani Nikula, Intel Open Source Graphics Center
