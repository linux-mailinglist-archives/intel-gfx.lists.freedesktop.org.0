Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF3A507314
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Apr 2022 18:37:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABCDE10E293;
	Tue, 19 Apr 2022 16:37:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BB3F10E293
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Apr 2022 16:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650386267; x=1681922267;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Bo/ppWI3TarsuXtIMDfM2b3LSaS/VoHOMj4aTtbIJok=;
 b=Jm+GPIPmYgWgNBkNfjFmVx4oCsmftlkosCP7S0nSV1J5z5Ij6alx+IPc
 bOozxEqARziqBzuzyqnbOeVHkTniudQe96be/LkugZ2tktqXeGPjDfzFl
 N5yQcjl2rnX8OTG7V9T9UVHRyZ8d25vRaBSNMOiCagI10M2J4E2BXDLTA
 VmFWyYKmgeKRHE1Zyy/u1+llAGgBW9sbzsKQEUHW/8Vl/WdA+cAJFju4O
 F6oTm99DNuab61Qr8e0TIYVLc6Jdk5UPAlGMZZpyNyVgmheZlIeeJ7KmE
 joRDrM4keMqdqb0g6s4Ka3zrMyDLPvnz7shWYUoRCAH1HD3+b765uMwWm A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="263570521"
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; d="scan'208";a="263570521"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 09:37:47 -0700
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; d="scan'208";a="561771313"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 09:37:46 -0700
Date: Tue, 19 Apr 2022 09:37:45 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <Yl7lWSXdcdldw976@mdroper-desk1.amr.corp.intel.com>
References: <20220419144454.173973-1-jose.souza@intel.com>
 <20220419144454.173973-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220419144454.173973-2-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Add workaround
 22014263786
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

On Tue, Apr 19, 2022 at 07:44:54AM -0700, José Roberto de Souza wrote:
> This workaround fixes screen flickers with FBC.
> 
> BSpec: 33450
> BSpec: 52890
> BSpec: 54369
> BSpec: 66624
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 9 +++++++++
>  drivers/gpu/drm/i915/i915_reg.h          | 1 +
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 670835318a1f1..b7bdb0739744a 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -811,6 +811,14 @@ static void intel_fbc_program_cfb(struct intel_fbc *fbc)
>  	fbc->funcs->program_cfb(fbc);
>  }
>  
> +static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
> +{
> +	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,dg2,adlp */
> +	if (DISPLAY_VER(fbc->i915) >= 11)
> +		intel_de_rmw(fbc->i915, ILK_DPFC_CHICKEN(fbc->id), 0,
> +			     DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
> +}
> +
>  static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
>  {
>  	struct drm_i915_private *i915 = fbc->i915;
> @@ -1462,6 +1470,7 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
>  
>  	intel_fbc_update_state(state, crtc, plane);
>  
> +	intel_fbc_program_workarounds(fbc);
>  	intel_fbc_program_cfb(fbc);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index fef71b242706a..0ec7123197fcb 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1400,6 +1400,7 @@
>  #define   DPFC_HT_MODIFY			REG_BIT(31) /* pre-ivb */
>  #define   DPFC_NUKE_ON_ANY_MODIFICATION		REG_BIT(23) /* bdw+ */
>  #define   DPFC_CHICKEN_COMP_DUMMY_PIXEL		REG_BIT(14) /* glk+ */
> +#define   DPFC_CHICKEN_FORCE_SLB_INVALIDATION	REG_BIT(13) /* icl+ */
>  #define   DPFC_DISABLE_DUMMY0			REG_BIT(8) /* ivb+ */
>  
>  #define GLK_FBC_STRIDE(fbc_id)	_MMIO_PIPE((fbc_id), 0x43228, 0x43268)
> -- 
> 2.35.3
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
