Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3DB4DB7AB
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 18:57:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69F0C10E91C;
	Wed, 16 Mar 2022 17:57:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8451610E91C
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 17:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647453427; x=1678989427;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VCg0bRZohuHuNW8rIoT7YWDl+j/RiGkrC5WUeVjAEZ4=;
 b=i2PW2N8nrP24gT2RwkMbTjH9xo1NBQ+OIPhEr6LUMvWoAkaBkvnbnW9l
 4URnq+0STiL8FI0LleEF1ii2Nk5k7zh5I0Vj3wcA+IwMiRY9R81iERP0v
 ra5WHe0k+HroVwArDq/Mke21A77dcWSB9xA99I4/SQ+r7hPGNS1OD8tlg
 lnrBc7dNTXfcTJRH9cN+KJpxwNHDW9tcEvKGSU7yOPvwaTIksgF8Vc+bB
 JQ55UfyC6wTHAxu6eGR7JuZXlEVqqMzHO7RL3jfl2epKEklz5OSYLSUKx
 Px2JAi+idm30YhyWPmd64E3Wptlozu8PSBJBWufcKtKCB+SJAe5Jkuyw1 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="244130085"
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400"; d="scan'208";a="244130085"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 10:57:04 -0700
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400"; d="scan'208";a="690676451"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 10:57:02 -0700
Date: Wed, 16 Mar 2022 19:57:37 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220316175737.GF21723@intel.com>
References: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
 <20220309164948.10671-9-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220309164948.10671-9-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 8/8] drm/i915: Rename QGV
 request/response bits
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 09, 2022 at 06:49:48PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Name all the ICL_PCODE_SAGV_DE_MEM_SS_CONFIG request/response
> bits in a manner that we can actually understand what they're
> doing.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c |  9 +++++----
>  drivers/gpu/drm/i915/i915_reg.h         | 18 ++++++++++++------
>  2 files changed, 17 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index b794545ff81d..395e48930b08 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -124,8 +124,8 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
>  	/* bspec says to keep retrying for at least 1 ms */
>  	ret = skl_pcode_request(dev_priv, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG,
>  				points_mask,
> -				ICL_PCODE_POINTS_RESTRICTED_MASK,
> -				ICL_PCODE_POINTS_RESTRICTED,
> +				ICL_PCODE_REP_QGV_MASK | ADLS_PCODE_REP_PSF_MASK,
> +				ICL_PCODE_REP_QGV_SAFE | ADLS_PCODE_REP_PSF_SAFE,
>  				1);
>  
>  	if (ret < 0) {
> @@ -833,7 +833,7 @@ static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
>  	if (num_psf_gv_points > 0)
>  		psf_points = GENMASK(num_psf_gv_points - 1, 0);
>  
> -	return ADLS_QGV_PT(qgv_points) | ADLS_PSF_PT(psf_points);
> +	return ICL_PCODE_REQ_QGV_PT(qgv_points) | ADLS_PCODE_REQ_PSF_PT(psf_points);
>  }
>  
>  static int intel_bw_check_data_rate(struct intel_atomic_state *state, bool *changed)
> @@ -1000,7 +1000,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
>  	 * actually accepts as a parameter.
>  	 */
>  	new_bw_state->qgv_points_mask =
> -		~(ADLS_QGV_PT(qgv_points) | ADLS_PSF_PT(psf_points)) &
> +		~(ICL_PCODE_REQ_QGV_PT(qgv_points) |
> +		  ADLS_PCODE_REQ_PSF_PT(psf_points)) &
>  		icl_qgv_points_mask(dev_priv);
>  
>  	/*
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 48a12f6c19b4..504499fad97d 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6720,12 +6720,18 @@
>  #define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16) | (0x1 << 8))
>  #define     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO	((0) | (0x2 << 8))
>  #define   ICL_PCODE_SAGV_DE_MEM_SS_CONFIG	0xe
> -#define     ICL_PCODE_POINTS_RESTRICTED		0x0
> -#define     ICL_PCODE_POINTS_RESTRICTED_MASK	0xf
> -#define   ADLS_QGV_PT_MASK			REG_GENMASK(7, 0)
> -#define   ADLS_QGV_PT(x)			REG_FIELD_PREP(ADLS_QGV_PT_MASK, (x))
> -#define   ADLS_PSF_PT_MASK			REG_GENMASK(10, 8)
> -#define   ADLS_PSF_PT(x)			REG_FIELD_PREP(ADLS_PSF_PT_MASK, (x))
> +#define     ICL_PCODE_REP_QGV_MASK		REG_GENMASK(1, 0)
> +#define     ICL_PCODE_REP_QGV_SAFE		REG_FIELD_PREP(ICL_PCODE_REP_QGV_MASK, 0)
> +#define     ICL_PCODE_REP_QGV_POLL		REG_FIELD_PREP(ICL_PCODE_REP_QGV_MASK, 1)
> +#define     ICL_PCODE_REP_QGV_REJECTED		REG_FIELD_PREP(ICL_PCODE_REP_QGV_MASK, 2)
> +#define     ADLS_PCODE_REP_PSF_MASK		REG_GENMASK(3, 2)
> +#define     ADLS_PCODE_REP_PSF_SAFE		REG_FIELD_PREP(ADLS_PCODE_REP_PSF_MASK, 0)
> +#define     ADLS_PCODE_REP_PSF_POLL		REG_FIELD_PREP(ADLS_PCODE_REP_PSF_MASK, 1)
> +#define     ADLS_PCODE_REP_PSF_REJECTED		REG_FIELD_PREP(ADLS_PCODE_REP_PSF_MASK, 2)
> +#define     ICL_PCODE_REQ_QGV_PT_MASK		REG_GENMASK(7, 0)
> +#define     ICL_PCODE_REQ_QGV_PT(x)		REG_FIELD_PREP(ICL_PCODE_REQ_QGV_PT_MASK, (x))
> +#define     ADLS_PCODE_REQ_PSF_PT_MASK		REG_GENMASK(10, 8)
> +#define     ADLS_PCODE_REQ_PSF_PT(x)		REG_FIELD_PREP(ADLS_PCODE_REQ_PSF_PT_MASK, (x))
>  #define   GEN6_PCODE_READ_D_COMP		0x10
>  #define   GEN6_PCODE_WRITE_D_COMP		0x11
>  #define   ICL_PCODE_EXIT_TCCOLD			0x12
> -- 
> 2.34.1
> 
