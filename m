Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDC91D4146
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 00:44:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59B866E3A2;
	Thu, 14 May 2020 22:44:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8663E6E3A2
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 22:44:11 +0000 (UTC)
IronPort-SDR: PuqG600jwXDqcHPv2Wo4y8r7FWnHHsc6fK/K0GTr4BD7obp1b/fwJUzyE36mFkYKN0vUGT4cSk
 49LlJrA1AcxA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 15:44:10 -0700
IronPort-SDR: aphSUC0bVuWX57n2l/ttQ5J/abrUD4b3Yvdfzzbz6zOLYVtMqlRSQlGTfXhKeTJ+VKynWzQNCX
 fj0MSh9piQdA==
X-IronPort-AV: E=Sophos;i="5.73,392,1583222400"; d="scan'208";a="251831627"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.202])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 15:44:09 -0700
Date: Thu, 14 May 2020 15:42:56 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200514224256.GB2129902@intel.com>
References: <20200514154006.4761-1-jani.nikula@intel.com>
 <20200514154006.4761-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514154006.4761-2-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/params: fix
 i915.fake_lmem_start module param sysfs permissions
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 14, 2020 at 06:40:04PM +0300, Jani Nikula wrote:
> fake_lmem_start does not need to be mutable via module param sysfs. It's
> only used during driver probe.
> 
> Fixes: 1629224324b6 ("drm/i915/lmem: add the fake lmem region")
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_params.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> index add00ec1f787..a3dde770226d 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -173,7 +173,7 @@ i915_param_named(enable_gvt, bool, 0400,
>  #endif
>  
>  #if IS_ENABLED(CONFIG_DRM_I915_UNSTABLE_FAKE_LMEM)
> -i915_param_named_unsafe(fake_lmem_start, ulong, 0600,
> +i915_param_named_unsafe(fake_lmem_start, ulong, 0400,
>  	"Fake LMEM start offset (default: 0)");
>  #endif
>  
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
