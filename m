Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B172035DB60
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 11:36:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 277AC6E2B6;
	Tue, 13 Apr 2021 09:36:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3C566E2B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 09:36:55 +0000 (UTC)
IronPort-SDR: npRsccdfDPyb0BitMEQwhaW8wmDQTTwgIsIIp5BhCgsGkhXzS9VTIOH/jNU4wQpOs+X20Vu8ZD
 P84DolWQJRxA==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="181503131"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="181503131"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 02:36:55 -0700
IronPort-SDR: PG6wNpibnpay7QCczE80TlCIEeIzkclfdqgv5py30HR3uGlmdO8yodbsd+uZPLQfVLNUqgpiEm
 XDmTNEu3TMlg==
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="417794608"
Received: from alinapar-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.36.253])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 02:36:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210413051002.92589-7-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210413051002.92589-1-lucas.demarchi@intel.com>
 <20210413051002.92589-7-lucas.demarchi@intel.com>
Date: Tue, 13 Apr 2021 12:36:49 +0300
Message-ID: <87tuoah6fi.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 06/12] drm/i915/selftests: replace unused
 mask with simple version
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

On Mon, 12 Apr 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> Since its introduction 2 years ago, we never used the mask to span more
> than one gen. Replace gen_mask a single number and start using the new
> GRAPHICS_VER().
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/selftest_workarounds.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> index 19850489a3fc..64937ec3f2dc 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> @@ -927,7 +927,7 @@ static int scrub_whitelisted_registers(struct intel_context *ce)
>  
>  struct regmask {
>  	i915_reg_t reg;
> -	unsigned long gen_mask;
> +	u8 graphics_ver;
>  };
>  
>  static bool find_reg(struct drm_i915_private *i915,
> @@ -938,7 +938,7 @@ static bool find_reg(struct drm_i915_private *i915,
>  	u32 offset = i915_mmio_reg_offset(reg);
>  
>  	while (count--) {
> -		if (INTEL_INFO(i915)->gen_mask & tbl->gen_mask &&
> +		if (GRAPHICS_VER(i915) == tbl->graphics_ver &&
>  		    i915_mmio_reg_offset(tbl->reg) == offset)
>  			return true;
>  		tbl++;
> @@ -951,8 +951,8 @@ static bool pardon_reg(struct drm_i915_private *i915, i915_reg_t reg)
>  {
>  	/* Alas, we must pardon some whitelists. Mistakes already made */
>  	static const struct regmask pardon[] = {
> -		{ GEN9_CTX_PREEMPT_REG, INTEL_GEN_MASK(9, 9) },
> -		{ GEN8_L3SQCREG4, INTEL_GEN_MASK(9, 9) },
> +		{ GEN9_CTX_PREEMPT_REG, 9 },
> +		{ GEN8_L3SQCREG4, 9 },
>  	};
>  
>  	return find_reg(i915, reg, pardon, ARRAY_SIZE(pardon));
> @@ -974,7 +974,7 @@ static bool writeonly_reg(struct drm_i915_private *i915, i915_reg_t reg)
>  {
>  	/* Some registers do not seem to behave and our writes unreadable */
>  	static const struct regmask wo[] = {
> -		{ GEN9_SLICE_COMMON_ECO_CHICKEN1, INTEL_GEN_MASK(9, 9) },
> +		{ GEN9_SLICE_COMMON_ECO_CHICKEN1, 9 },
>  	};
>  
>  	return find_reg(i915, reg, wo, ARRAY_SIZE(wo));

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
