Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A291F6C4DE2
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 15:36:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED3CA10E976;
	Wed, 22 Mar 2023 14:36:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74DAF10E976
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 14:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679495791; x=1711031791;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=59G3zI6ZnIn8wjZ1We6q03CpProvUmg9KeUGhP6hHEQ=;
 b=VcsD/8L7eACmL1ycEvqh8/mvxZrw1Fp2R+96QJMhkXfuQtZyQel83TwT
 zWKwdEPqa1aL+5FOCePQLMfm/EUc2BN2huE6Tqrca7JABo4uPNAtSyf4/
 9NgIFYNwUGwlePCdto3Q2uR3BapYCeBaI4uQPH8mXOUjKSc/x8DaC6avK
 bQ50CheaM4YJYV5lNStsAQwh4LhFPPlGqX8Ja+aif+RD8D9ZYU4IKK+bl
 1m4SFQa4x77oBjfqurZJugx64TSSfoKNDyG4DoiBzg2V9f3+XOQdkTQ/B
 vmILTAJBA18EQEHT2mrHQO8SxCJG8zKQEfKtmiUQ0q509SMqcrIpeNQFU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="337951546"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="337951546"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 07:36:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="684334331"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="684334331"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 22 Mar 2023 07:36:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Mar 2023 16:36:28 +0200
Date: Wed, 22 Mar 2023 16:36:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <ZBsSbERoJlz0KE9z@intel.com>
References: <20230322142051.714161-1-vinod.govindapillai@intel.com>
 <20230322142051.714161-2-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230322142051.714161-2-vinod.govindapillai@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/reg: fix QGV points
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

On Wed, Mar 22, 2023 at 04:20:50PM +0200, Vinod Govindapillai wrote:
> Wrong offsets are calculated to read QGV point registers. Fix it
> to read from the correct registers.
> 
> v2: Avoid magic number and better handling the second bitgroup
> 
> Bspec: 64602
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index d22ffd7a32dc..74468ed9dc9d 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7724,12 +7724,13 @@ enum skl_power_gate {
>  #define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
>  #define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
>  
> -#define MTL_MEM_SS_INFO_QGV_POINT_LOW(point)	 _MMIO(0x45710 + (point) * 2)
> +#define MTL_MEM_SS_INFO_QGV_POINT_OFFSET	0x45710
> +#define MTL_MEM_SS_INFO_QGV_POINT_LOW(point)	_MMIO(MTL_MEM_SS_INFO_QGV_POINT_OFFSET + (point) * 2 * 0x4)
>  #define   MTL_TRCD_MASK			REG_GENMASK(31, 24)
>  #define   MTL_TRP_MASK			REG_GENMASK(23, 16)
>  #define   MTL_DCLK_MASK			REG_GENMASK(15, 0)
>  
> -#define MTL_MEM_SS_INFO_QGV_POINT_HIGH(point)	 _MMIO(0x45714 + (point) * 2)
> +#define MTL_MEM_SS_INFO_QGV_POINT_HIGH(point)	_MMIO(MTL_MEM_SS_INFO_QGV_POINT_OFFSET + 4 + (point) * 2 * 0x4)

The normal style is to just do '(point) * 8' and '(point) * 8 + 4'

>  #define   MTL_TRAS_MASK			REG_GENMASK(16, 8)
>  #define   MTL_TRDPRE_MASK		REG_GENMASK(7, 0)
>  
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
