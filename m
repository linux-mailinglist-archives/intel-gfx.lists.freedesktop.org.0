Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B51756EAC5B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 16:10:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4979C10EE2A;
	Fri, 21 Apr 2023 14:10:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FA4C10EE21;
 Fri, 21 Apr 2023 14:00:35 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 87F256477B;
 Fri, 21 Apr 2023 14:00:34 +0000 (UTC)
Received: from rdvivi-mobl4 (unknown [192.55.54.55])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id EBE28C433D2;
 Fri, 21 Apr 2023 14:00:31 +0000 (UTC)
Date: Fri, 21 Apr 2023 10:00:29 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <ZEKW/VslWeV+sGlq@rdvivi-mobl4>
References: <20230421134654.273182-1-andi.shyti@linux.intel.com>
 <20230421134654.273182-2-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230421134654.273182-2-andi.shyti@linux.intel.com>
X-Mailman-Approved-At: Fri, 21 Apr 2023 14:09:20 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/i915_drv: Use proper parameter
 naming in for_each_gt()
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Andi Shyti <andi.shyti@kernel.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 21, 2023 at 03:46:53PM +0200, Andi Shyti wrote:
> for_each_gt() loops through engines in the GT, not in dev_priv.

typo here? ^

with that fixed:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Because it's misleading, call it "gt__" instead of "dev_priv__".
> 
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index fe7eeafe9cff6..c16f8a3cd914f 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -381,11 +381,11 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
>  }
>  
>  /* Simple iterator over all initialised engines */
> -#define for_each_engine(engine__, dev_priv__, id__) \
> +#define for_each_engine(engine__, gt__, id__) \
>  	for ((id__) = 0; \
>  	     (id__) < I915_NUM_ENGINES; \
>  	     (id__)++) \
> -		for_each_if ((engine__) = (dev_priv__)->engine[(id__)])
> +		for_each_if ((engine__) = (gt__)->engine[(id__)])
>  
>  /* Iterator over subset of engines selected by mask */
>  #define for_each_engine_masked(engine__, gt__, mask__, tmp__) \
> -- 
> 2.40.0
> 
