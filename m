Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 214C04AB938
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Feb 2022 12:02:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 046C710F812;
	Mon,  7 Feb 2022 11:02:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEAB010F812
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Feb 2022 11:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644231729; x=1675767729;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=9lU6l8ERjP64G0LN4dKAoaYjaMThNRSCYkVhIV9EoT4=;
 b=R4BfNqdlYiS59fJ5BaKv3pycBX86JIXtlecZdyFxWnl6zFTaMEeY42z7
 ybcOkp7IabTzex0XXPaBT3GpfABFktdcTxA0GEdFEoyX+q2wxRBsUrI9w
 otaAiBuOYgGxWwAZGhaPiYvrGFBKpUL8EYx4vIpO73K8ih576Zp8iIjIR
 dgw1Bn8Nb80oL8Grg8L62deAKfLmUAae9HA7SWeoWkWDaxoBkET0EtFsr
 1rLa/YMb0ZPUp9kN1RIdeUkv9/9/kOkwEUxUFqUzw1c78//l+d7eyeWOB
 XbSOABq2yQMxFLfFZq54JvoUdwZvctuleem861DfdB+brIW7wBBgsIMaG A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10250"; a="228662149"
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="228662149"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 03:02:09 -0800
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="481549553"
Received: from nbaca1-mobl.ger.corp.intel.com (HELO localhost) ([10.252.18.25])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 03:02:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220206144311.5053-3-anshuman.gupta@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220206144311.5053-1-anshuman.gupta@intel.com>
 <20220206144311.5053-3-anshuman.gupta@intel.com>
Date: Mon, 07 Feb 2022 13:02:01 +0200
Message-ID: <871r0frlcm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/opregion: Register opreg func
 only for disp parts
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, 06 Feb 2022, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> It need to register opregion_func only for graphics sku
> which has display. Use HAS_DISPLAY() to register
> opregion_func.
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
> index 19f0558c0fbf..c1b558cdb99e 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -860,6 +860,9 @@ static int intel_opregion_setup(struct drm_i915_private *dev_priv)
>  	BUILD_BUG_ON(sizeof(struct opregion_asle) != 0x100);
>  	BUILD_BUG_ON(sizeof(struct opregion_asle_ext) != 0x400);
>  
> +	if (!opregion->opregion_func)
> +		return 0;
> +
>  	INIT_WORK(&opregion->asle_work, asle_work);
>  
>  	base = opregion->opregion_func->alloc_opregion(dev_priv);
> @@ -1296,9 +1299,9 @@ int intel_opregion_init(struct drm_i915_private *i915)
>  {
>  	struct intel_opregion *opregion = &i915->opregion;
>  
> -	if (IS_DGFX(i915))
> +	if (IS_DGFX(i915) && HAS_DISPLAY(i915))
>  		opregion->opregion_func = &dgfx_opregion_func;
> -	else
> +	else if (!IS_DGFX(i915))
>  		opregion->opregion_func = &igfx_opregion_func;

This does not match the commit message. I don't know whether the code or
the commit message is right.

BR,
Jani.

>  
>  	return intel_opregion_setup(i915);

-- 
Jani Nikula, Intel Open Source Graphics Center
