Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 207ED2B41AD
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 11:49:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BD1A8825E;
	Mon, 16 Nov 2020 10:49:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 770FE8825E
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Nov 2020 10:49:50 +0000 (UTC)
IronPort-SDR: z98QuUP3GEURQ7U9kKY/fKn/7TG8m926AtevV40x7Gqumwn+4b57HUE4+qi5BOsyK4nBERJWC+
 YdNfk86zCwWw==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="157753360"
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="157753360"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 02:49:49 -0800
IronPort-SDR: PLFPEsGMuZSUvWcCY0vRcjrbaGbKRs+1H67PZ+7TbSzR1iIEPBl/zuRpfVZRdO+RbelVU6PfD9
 jgG33Hjm8OwQ==
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="475480527"
Received: from joejam1x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.3.39])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 02:49:47 -0800
MIME-Version: 1.0
In-Reply-To: <20201115210815.5272-22-sean.z.huang@intel.com>
References: <20201115210815.5272-1-sean.z.huang@intel.com>
 <20201115210815.5272-22-sean.z.huang@intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160552378493.10586.12498711265507162036@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 16 Nov 2020 12:49:45 +0200
Subject: Re: [Intel-gfx] [PATCH 22/27] drm/i915/pxp: Expose session state
 for display protection flip
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Huang, Sean Z (2020-11-15 23:08:10)
> Implement the intel_pxp_gem_object_status() to allow ring0 i915
> display querying the current PXP session state. In the design,
> ring0 display should not perform protection flip on the protected
> buffers if there is no PXP session alive.

No users for this code? Dead code should not be included. If this is
only to be used by following patches, it should only be included at that
point.

It's better to introduce the code in the same patch that uses it, to
make review easier.

Regards, Joonas

> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/pxp/intel_pxp.c | 8 ++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp.h | 2 ++
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 44d17ae27b94..05fe143675b1 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -334,3 +334,11 @@ void intel_pxp_irq_handler(struct intel_gt *gt, u16 iir)
>  end:
>         return;
>  }
> +
> +bool intel_pxp_gem_object_status(struct drm_i915_private *i915, u64 gem_object_metadata)
> +{
> +       if (i915->pxp.r0ctx && i915->pxp.r0ctx->flag_display_hm_surface_keys)
> +               return true;
> +       else
> +               return false;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index c0119ccdab08..eb0e548ce434 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -111,4 +111,6 @@ int i915_pxp_global_terminate_complete_callback(struct drm_i915_private *i915);
>  int intel_pxp_init(struct drm_i915_private *i915);
>  void intel_pxp_uninit(struct drm_i915_private *i915);
>  
> +bool intel_pxp_gem_object_status(struct drm_i915_private *i915, u64 gem_object_metadata);
> +
>  #endif
> -- 
> 2.17.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
