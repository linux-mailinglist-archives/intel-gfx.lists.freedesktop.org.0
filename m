Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3A15E759A
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 10:21:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3465310E4D9;
	Fri, 23 Sep 2022 08:21:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C38210E4D9
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 08:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663921278; x=1695457278;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=WleXf7sQM48StY8JKaqB2KtfCXizea3jlohecqfPPFE=;
 b=HVXUau033+K0ycx8S6xrTrLenRnReQTuJ52yvkrb+5qrGeq32CEtX0ey
 oizqbK5CiSGA807a1OLXE09ZTEd2UKv6QNbSLAD5kVB0lNrU/v6hZ3UVi
 ky1e4EhZBZ1kuklSyyQaKfDnL4c4EpL3bgqFyLQR089Zy9H0DMFyFbywT
 ojWona4XgYnj6yZxyl12pxRoUAG4RCq4v1VX31/q+uYMOLkiyGBOfk/Wj
 QwuRvctW6JFFGOs55gH8tENgn3Y7GR2iV4e2iLhtF+GZQXdKLXtW8gKaL
 DXWf/yH5FXt9k32WfFxoejLmRKjSoR7ZdRh+ltoCSrZ+CRS6pWeDauvdI w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="283639007"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="283639007"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 01:21:17 -0700
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="650870968"
Received: from armannov-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.61.93])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 01:21:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220922164949.163985-1-gustavo.sousa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220922164949.163985-1-gustavo.sousa@intel.com>
Date: Fri, 23 Sep 2022 11:20:57 +0300
Message-ID: <87o7v64i3a.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Move hotplug inversion logic
 into separate helper
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 22 Sep 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Use *_hpd_invert() helpers whenever possible to isolate logic specific
> to hotplug inversion from common HPD setup logic to improve readability
> and maintainability of the source code.
>
> While we only define dg1_hpd_invert() here, future platforms are likely
> to have different hotplug inversion needs, thus it makes sense grouping
> different implementations under a common suffix.
>
> v2: Fix coding style and prefer to use small *_hdp_invert() helpers
>     instead of a generic one.
>
> CC: Jani Nikula <jani.nikula@linux.intel.com>
> CC: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_irq.c | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index de06f293e173..87cb05b3b6ce 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -3411,17 +3411,18 @@ static u32 gen11_hotplug_enables(struct drm_i915_private *i915,
>  	}
>  }
>  
> +static void dg1_hpd_invert(struct drm_i915_private *i915)
> +{
> +	u32 val = (INVERT_DDIA_HPD |
> +		   INVERT_DDIB_HPD |
> +		   INVERT_DDIC_HPD |
> +		   INVERT_DDID_HPD);
> +	intel_uncore_rmw(&i915->uncore, SOUTH_CHICKEN1, 0, val);
> +}
> +
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
> +	dg1_hpd_invert(dev_priv);
>  	icp_hpd_irq_setup(dev_priv);
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
