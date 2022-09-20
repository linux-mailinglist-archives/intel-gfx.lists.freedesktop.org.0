Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D565BDE05
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 09:20:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3A9410E313;
	Tue, 20 Sep 2022 07:20:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C92A10E301
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 07:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663658411; x=1695194411;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=513/Vn44H0LFS4aNvadjA0gbHgwfRWTRCjFuAykZXt4=;
 b=I253ObzamOjuf0QCWdZ16ENxEq7EENUi0BIIE4prKBoJ3q9lfh3l+ztw
 +EpGqSi3WL+2mXaiJTnb75p8Zm+YAGKuXgVh02s1M+4hIkPEJTiavhlAP
 VKaTjX5bLcCIl21YdrI/BdLy6D1efHshBTDe7c85nBR/P2VRuA/RxOJBA
 nSd0wm5iPF/nLxhhx3CypR1cyJiQv3NIjWfCeHjms8fT4uTYu5pbhFwOd
 uMJrO4SQcQAUi+xWlDu2T3gBEnqKJZ+KztWTmFfhYvN3cI04wtzXyLWxL
 DLdZJdkM2S5ijhQ6SB+lPevgFuZlpeoemM+mLnlEi2CdtvzDcmWuvYerf w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="300439763"
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="300439763"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 00:20:10 -0700
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="744417224"
Received: from icostanz-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.34.2])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 00:20:09 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220919145659.293492-1-gustavo.sousa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220919145659.293492-1-gustavo.sousa@intel.com>
Date: Tue, 20 Sep 2022 10:19:53 +0300
Message-ID: <87v8pio6li.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move hotplug inversion logic into
 separate helper
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

On Mon, 19 Sep 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Make the code more readable, which will be more apparent as new
> platforms with different hotplug inversion needs are added.
>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 25 ++++++++++++++++---------
>  1 file changed, 16 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index de06f293e173..c53d21ae197f 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -3263,6 +3263,21 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  }
>  
> +static void setup_hotplug_inversion(struct drm_i915_private *dev_priv)
> +{
> +	u32 invert_bits;
> +
> +	if (HAS_PCH_DG1(dev_priv))
> +		invert_bits = INVERT_DDIA_HPD |
> +			      INVERT_DDIB_HPD |
> +			      INVERT_DDIC_HPD |
> +			      INVERT_DDID_HPD;

Nitpick, the indentation will be off compared to automated indentation.

> +	else
> +		return;
> +
> +	intel_uncore_rmw(&dev_priv->uncore, SOUTH_CHICKEN1, 0, invert_bits);
> +}
> +
>  static u32 ibx_hotplug_enables(struct drm_i915_private *i915,
>  			       enum hpd_pin pin)
>  {
> @@ -3413,15 +3428,7 @@ static u32 gen11_hotplug_enables(struct drm_i915_private *i915,
>  
>  static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
>  {
> -	u32 val;
> -
> -	val = intel_uncore_read(&dev_priv->uncore, SOUTH_CHICKEN1);
> -	val |= (INVERT_DDIA_HPD |
> -		INVERT_DDIB_HPD |
> -		INVERT_DDIC_HPD |
> -		INVERT_DDID_HPD);
> -	intel_uncore_write(&dev_priv->uncore, SOUTH_CHICKEN1, val);
> -
> +	setup_hotplug_inversion(dev_priv);

Since you're already in a platform specific function here, seems a bit
odd to call a new generic function that needs to have another if ladder
platform check. What are we gaining here? The end result is
de-duplicating just one line of intel_uncore_rmw(). I'm not convinced.

BR,
Jani.


>  	icp_hpd_irq_setup(dev_priv);
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
