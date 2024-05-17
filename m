Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5BE8C8749
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 15:35:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1EA110EEBD;
	Fri, 17 May 2024 13:35:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DGIIxI/K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 714C310EEBA;
 Fri, 17 May 2024 13:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715952920; x=1747488920;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=uRVtvJuzB3CgNHEO7wA1x/iXBo0uTwMhxq3nnv3MBOE=;
 b=DGIIxI/KWvuxES+0reBC+gOAXs++G2+QSSr4mxdT7suhmFCuoyKD+8lV
 qJjDakOcemclHgZGcscESrGUr1GlovcvUwsxZVz7D8i15pb83jE15eawv
 mmpPe5UtN7cG1DUfuboJEowglvK26+lfz+WJvKE5ZzIm9GW1e4AFAdQBh
 zE3rt7uaE5fqauOVpnwqCz39kq8XvpRH9Fv8/6fpdKBHhZGIIcLtEORjc
 PIkiquR1CKNRMRUiv1J4SBDchslaUJer5/qEC/i/zclVpL/e3napHuabF
 WZsxooA/DeORduP0F0SSV8doJzYIry8OlLST+qKkR21RLJzW6LBBOPk3g g==;
X-CSE-ConnectionGUID: HIz/g0u1S7Kv3a2iUsbUfA==
X-CSE-MsgGUID: dKgixPGXTaKaXljQ1yrJEw==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="23266061"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="23266061"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 06:35:19 -0700
X-CSE-ConnectionGUID: LqOQMN0KSNS1BHFruhD4gA==
X-CSE-MsgGUID: Ahhxp96VR12lcN3n6t4nWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="31721885"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.32])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 06:35:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Subject: Re: [PATCH 2/3] drm/print: Improve drm_dbg_printer
In-Reply-To: <20240517125730.2304-3-michal.wajdeczko@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240517125730.2304-1-michal.wajdeczko@intel.com>
 <20240517125730.2304-3-michal.wajdeczko@intel.com>
Date: Fri, 17 May 2024 16:35:12 +0300
Message-ID: <87pltka7e7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 17 May 2024, Michal Wajdeczko <michal.wajdeczko@intel.com> wrote:
> With recent introduction of a generic drm dev printk function, we
> can now store and use location where drm_dbg_printer was invoked
> and output it's symbolic name like we do for all drm debug prints.
>
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/drm_print.c | 3 +--
>  include/drm/drm_print.h     | 2 ++
>  2 files changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_print.c b/drivers/gpu/drm/drm_print.c
> index a2b60c8245a1..0a205fdee7cf 100644
> --- a/drivers/gpu/drm/drm_print.c
> +++ b/drivers/gpu/drm/drm_print.c
> @@ -191,8 +191,7 @@ void __drm_printfn_dbg(struct drm_printer *p, struct va_format *vaf)
>  	if (!__drm_debug_enabled(category))
>  		return;
>  
> -	/* Note: __builtin_return_address(0) is useless here. */
> -	__drm_dev_vprintk(dev, KERN_DEBUG, NULL, p->prefix, vaf);
> +	__drm_dev_vprintk(dev, KERN_DEBUG, p->origin, p->prefix, vaf);
>  }
>  EXPORT_SYMBOL(__drm_printfn_dbg);
>  
> diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
> index bb1801c58544..761ce01761b7 100644
> --- a/include/drm/drm_print.h
> +++ b/include/drm/drm_print.h
> @@ -175,6 +175,7 @@ struct drm_printer {
>  	void (*printfn)(struct drm_printer *p, struct va_format *vaf);
>  	void (*puts)(struct drm_printer *p, const char *str);
>  	void *arg;
> +	const void *origin;
>  	const char *prefix;
>  	enum drm_debug_category category;
>  };
> @@ -332,6 +333,7 @@ static inline struct drm_printer drm_dbg_printer(struct drm_device *drm,
>  	struct drm_printer p = {
>  		.printfn = __drm_printfn_dbg,
>  		.arg = drm,
> +		.origin = (void *)_THIS_IP_, /* it's fine as we will be inlined */

Not that it makes a difference, but I guess I'd cast to (const void *)
to match the member.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>  		.prefix = prefix,
>  		.category = category,
>  	};

-- 
Jani Nikula, Intel
