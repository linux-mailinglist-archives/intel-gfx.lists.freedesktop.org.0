Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACAC4DAD8C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 10:31:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AF5710E3A0;
	Wed, 16 Mar 2022 09:31:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6167710E3A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 09:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647423064; x=1678959064;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=1Wld1xBNdhJo46xsU3x0WutMRTusiUTtuO6DD3qcz8A=;
 b=lD3VRo8Xc3Hr8M/quDWZmYakKXDlK136GgwZ0DtrLAyPyFOb3pB9CaJM
 9+lJGyBenG1gZT8Vr1+p45tiyr4zZN5ZLCaPznqD3zXfRJDrYtgCmPrZe
 J0mWjMoqi6/of6tkm5mKuD1EqDJMiovZ8HARSl70lvnQBguZnaB9+qvGL
 DUtBZJqQEIEHqEYcil0mHH8VCykVIHxJ9HEb6/w/CDN9gM4mxub5EiY6R
 17q4bypg+ogkqAdG844y5PqAQEm++F/ZoldPSpVI6VdqFzkyM3kKZS5kA
 LG6yNV9G+GwGV8IoTUX8OlYT/h844Axzc1xeKw9Axmr6VQDyaVz1uaBEz g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="254093453"
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="254093453"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 02:31:03 -0700
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="540835842"
Received: from jgarrosx-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.34.45])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 02:30:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220220163730.5021-5-anshuman.gupta@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220220163730.5021-1-anshuman.gupta@intel.com>
 <20220220163730.5021-5-anshuman.gupta@intel.com>
Date: Wed, 16 Mar 2022 11:30:56 +0200
Message-ID: <87ilsent0v.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 4/6] drm/i915/opregion: Cond dgfx
 opregion func registration
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
Cc: lucas.demarchi@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, 20 Feb 2022, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> DGFX ASLS and OPROM OpRegion are only supported on the GFX Cards,
> which supports Display Engine. Register opregion function accordingly
> using the HAS_DISPLAY(). And early return intel_opregion_setup()
> if no opregion func to avoid NULL pointer oops.
>
> v2:
> - Change the commit log.
>
> Cc: Badal Nilawar <badal.nilawar@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_opregion.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index eca2d3a4f72b..562161a929d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -894,6 +894,9 @@ static int intel_opregion_setup(struct drm_i915_private *dev_priv)
>  	BUILD_BUG_ON(sizeof(struct opregion_asle) != 0x100);
>  	BUILD_BUG_ON(sizeof(struct opregion_asle_ext) != 0x400);
>  
> +	if (!opregion->opregion_func)
> +		return 0;
> +
>  	INIT_WORK(&opregion->asle_work, asle_work);
>  
>  	base = opregion->opregion_func->alloc_opregion(dev_priv);
> @@ -1348,9 +1351,9 @@ int intel_opregion_init(struct drm_i915_private *i915)
>  {
>  	struct intel_opregion *opregion = &i915->opregion;
>  
> -	if (IS_DGFX(i915))
> +	if (IS_DGFX(i915) && HAS_DISPLAY(i915))
>  		opregion->opregion_func = &dgfx_opregion_func;
> -	else
> +	else if (!IS_DGFX(i915))
>  		opregion->opregion_func = &igfx_opregion_func;

IOW, and IMO much clearer:

	if (dgfx) {
		if (has_dislay)
			...
	} else {
		...
	}

>  
>  	return intel_opregion_setup(i915);

-- 
Jani Nikula, Intel Open Source Graphics Center
