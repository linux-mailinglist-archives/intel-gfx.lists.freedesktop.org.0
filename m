Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DACD410083
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 23:06:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3864C6E064;
	Fri, 17 Sep 2021 21:06:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF0DB6E064
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 21:06:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="222532005"
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="222532005"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 14:06:01 -0700
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="546638659"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 14:06:00 -0700
Date: Sat, 18 Sep 2021 00:05:57 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <20210917210557.GH729837@ideak-desk.fi.intel.com>
References: <20210917205241.231527-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210917205241.231527-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display/dmc: Set
 DC_STATE_DEBUG_MASK_CORES after firmware load
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

On Fri, Sep 17, 2021 at 01:52:39PM -0700, José Roberto de Souza wrote:
> Specification asks for DC_STATE_DEBUG_MASK_CORES to be set for all
> platforms that supports DMC, not only for geminilake and broxton.

According to the spec it's only required for BXT and GLK, see
Bspec 4234, 49193, 49194.

The register description is a bit vague, would need to be clarified
probably.

> While at is also taking the oportunity to simply the code.
> 
> BSpec: 7402
> BSpec: 49436
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 16 +++-------------
>  1 file changed, 3 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index b0268552b2863..2dc9d632969db 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -255,20 +255,10 @@ intel_get_stepping_info(struct drm_i915_private *i915,
>  
>  static void gen9_set_dc_state_debugmask(struct drm_i915_private *dev_priv)
>  {
> -	u32 val, mask;
> -
> -	mask = DC_STATE_DEBUG_MASK_MEMORY_UP;
> -
> -	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> -		mask |= DC_STATE_DEBUG_MASK_CORES;
> -
>  	/* The below bit doesn't need to be cleared ever afterwards */
> -	val = intel_de_read(dev_priv, DC_STATE_DEBUG);
> -	if ((val & mask) != mask) {
> -		val |= mask;
> -		intel_de_write(dev_priv, DC_STATE_DEBUG, val);
> -		intel_de_posting_read(dev_priv, DC_STATE_DEBUG);
> -	}
> +	intel_de_rmw(dev_priv, DC_STATE_DEBUG, 0,
> +		     DC_STATE_DEBUG_MASK_CORES | DC_STATE_DEBUG_MASK_MEMORY_UP);
> +	intel_de_posting_read(dev_priv, DC_STATE_DEBUG);
>  }
>  
>  /**
> -- 
> 2.33.0
> 
