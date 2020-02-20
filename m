Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BA11668C9
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 21:46:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 740946EE43;
	Thu, 20 Feb 2020 20:46:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 300E76EE43
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 20:46:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 12:46:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,465,1574150400"; d="scan'208";a="269733470"
Received: from msatwood-mobl.jf.intel.com (HELO msatwood-mobl) ([10.24.15.21])
 by fmsmga002.fm.intel.com with SMTP; 20 Feb 2020 12:46:27 -0800
Date: Thu, 20 Feb 2020 12:46:23 -0500
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <20200220174623.GB5984@msatwood-mobl>
References: <20200204011032.582737-1-matthew.d.roper@intel.com>
 <20200204011032.582737-2-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204011032.582737-2-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Program MBUS_ABOX{1,
 2}_CTL during display init
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

On Mon, Feb 03, 2020 at 05:10:32PM -0800, Matt Roper wrote:
> On gen11 we only needed to program MBus credits into MBUS_ABOX_CTL
> during display initialization, but on gen12 we're now supposed to
> program the same values into MBUS_ABOX1_CTL and MBUS_ABOX2_CTL as well.
> 
> v2:
>  - Program registers with rmw to preserve contents of unrelated bits.
>  - Switch to the new display uncore helpers.
> 
> Bspec: 49213
> Bspec: 50096
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 4 ++++
>  drivers/gpu/drm/i915/i915_reg.h                    | 2 ++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 529319c962e8..f638691cda6e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -4516,6 +4516,10 @@ static void icl_mbus_init(struct drm_i915_private *dev_priv)
>  		MBUS_ABOX_BW_CREDIT(1);
>  
>  	intel_de_rmw(dev_priv, MBUS_ABOX_CTL, mask, val);
> +	if (INTEL_GEN(dev_priv) >= 12) {
> +		intel_de_rmw(dev_priv, MBUS_ABOX1_CTL, mask, val);
> +		intel_de_rmw(dev_priv, MBUS_ABOX2_CTL, mask, val);
> +	}
>  }
>  
>  static void hsw_assert_cdclk(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 0bd431f6a011..d3df704ee099 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2865,6 +2865,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  #define MI_ARB_STATE	_MMIO(0x20e4) /* 915+ only */
>  
>  #define MBUS_ABOX_CTL			_MMIO(0x45038)
> +#define MBUS_ABOX1_CTL			_MMIO(0x45048)
> +#define MBUS_ABOX2_CTL			_MMIO(0x4504C)
>  #define MBUS_ABOX_BW_CREDIT_MASK	(3 << 20)
>  #define MBUS_ABOX_BW_CREDIT(x)		((x) << 20)
>  #define MBUS_ABOX_B_CREDIT_MASK		(0xF << 16)
> -- 
> 2.24.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
