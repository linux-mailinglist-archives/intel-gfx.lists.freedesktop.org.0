Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4016C44E1
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 09:26:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10F5310E3B0;
	Wed, 22 Mar 2023 08:26:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62BFB10E3B0
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 08:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679473571; x=1711009571;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Niys41EZoZrkTuCgXoJ+OklFEMeFLpjrqAguxY3+VLM=;
 b=Amp0/da4ZfkjjKHA1Sx4o0C+MDtiLkaBMvrIlWlWxI7eVgv8McLjFkFQ
 UuCnQVTA8WOuhVqXQjIZkPchlmZVbkRhnqKzE+ySwRSA8yR3Jwu6v9K5+
 VL6wJdNbIQI+JNrnUTYZnIhyOVkI2Q3OMm8Q3rO9BAUVKz6UR45NUI8Bd
 nxbfwZD5Nl8mdYTMkvb4QMSc5ZhXyo9e875hwSazTV/kw1Pm6C2yK5xHa
 JaSDLeakFoLtlUYRUTSsWioLqUUvSHkydUHY6ZRidghSl5DNrt5viqdU9
 7XT6Bbs8QBM4pTZoJCFhmmJsACfwy1QgGRPuuqV81OGNUS/YW3LIPcsmN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="404040338"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="404040338"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 01:26:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="712133326"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="712133326"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 01:26:04 -0700
Date: Wed, 22 Mar 2023 10:25:57 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <ZBq7lfJEsrEJcfiZ@intel.com>
References: <20230322010138.663264-1-vinod.govindapillai@intel.com>
 <20230322010138.663264-2-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230322010138.663264-2-vinod.govindapillai@intel.com>
Subject: Re: [Intel-gfx] [PATCH v1 1/2] drm/i915/reg: fix QGV points
 register access offsets
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 22, 2023 at 03:01:37AM +0200, Vinod Govindapillai wrote:
> Wrong offsets are calculated to read QGV point registers. Fix it
> to read from the correct registers.
> 
> Bspec: 64602
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index d22ffd7a32dc..ae8ba090c0f4 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7724,12 +7724,12 @@ enum skl_power_gate {
>  #define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
>  #define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
>  
> -#define MTL_MEM_SS_INFO_QGV_POINT_LOW(point)	 _MMIO(0x45710 + (point) * 2)
> +#define MTL_MEM_SS_INFO_QGV_POINT_LOW(point)	 _MMIO(0x45710 + (point) * 2 * 0x4)

Omg, how did we screw up so badly here? Basically were reading bogus values. _Excellent_ finding Vinod.

The only thing is that 2 * 0x4 looks a bit complicated to read. 
Wonder if we could just organize it that way:

#define MTL_MEM_SS_INFO_QGV_POINT_OFFSET       0x45710

#define MTL_MEM_SS_INFO_QGV_POINT_LOW(point)   _MMIO(MTL_MEM_SS_INFO_QGV_POINT_OFFSET + (point) * 2 * 0x4)
#define MTL_MEM_SS_INFO_QGV_POINT_HIGH(point)  _MMIO(MTL_MEM_SS_INFO_QGV_POINT_OFFSET + ((point) * 2 + 1) * 0x4)

Or you may just leave 0x45710, point is that this way we don't need that 0x45714 which isn't
mentioned anywhere, so we don't have some additional magic numbers to change potentially, if we need to
do that once again. Probably also having more readable code, could save us from such issues like
you found..

Anyway up to you - you may just leave it as is, I don't insist.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>


>  #define   MTL_TRCD_MASK			REG_GENMASK(31, 24)
>  #define   MTL_TRP_MASK			REG_GENMASK(23, 16)
>  #define   MTL_DCLK_MASK			REG_GENMASK(15, 0)
>  
> -#define MTL_MEM_SS_INFO_QGV_POINT_HIGH(point)	 _MMIO(0x45714 + (point) * 2)
> +#define MTL_MEM_SS_INFO_QGV_POINT_HIGH(point)	 _MMIO(0x45714 + (point) * 2 * 0x4)
>  #define   MTL_TRAS_MASK			REG_GENMASK(16, 8)
>  #define   MTL_TRDPRE_MASK		REG_GENMASK(7, 0)
>  
> -- 
> 2.34.1
> 
