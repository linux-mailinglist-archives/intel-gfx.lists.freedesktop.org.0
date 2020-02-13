Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE2C15CE29
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 23:37:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 962A06E41B;
	Thu, 13 Feb 2020 22:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D2266E41B
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 22:37:32 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 14:37:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,438,1574150400"; d="scan'208";a="227400268"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga008.jf.intel.com with ESMTP; 13 Feb 2020 14:37:31 -0800
Date: Thu, 13 Feb 2020 14:37:31 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Caz Yokoyama <caz.yokoyama@intel.com>
Message-ID: <20200213223731.GM2014153@mdroper-desk1.amr.corp.intel.com>
References: <3e1780946bd06f42b9d9e2a2fd1169923dd52e9f.1581444370.git.caz.yokoyama@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3e1780946bd06f42b9d9e2a2fd1169923dd52e9f.1581444370.git.caz.yokoyama@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: MCHBAR memory info registers
 are moved since GEN 12.
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 11, 2020 at 10:11:42AM -0800, Caz Yokoyama wrote:
> From: "Yokoyama, Caz" <caz.yokoyama@intel.com>
> =

> MAD_INTER_CHANNEL_0_0_0_MCHBAR:
> code name            offset                   DRAM_DDR_TYPE
> SKL                  0x5000                   1:0 DDR4/DDR3/LPDDR3
> TGL                  0x6048/0x6248/0xd800     2:0 DDR4/DDR3/LPDDR3/LPDDR4
> ICL                  0x5000/0x6048/0x48       2:0 DDR4/DDR3/LPDDR3/LPDDR4
> EHL                  0x5000/0x6048            2:0 DDR4/DDR3/LPDDR3/LPDDR4
> CNL                  0x5000                   2:0 DDR4/DDR3/LPDDR3/LPDDR4
> =

> MAD_DIMM_CH0/1_0_0_0_MCHBAR:
> code name              offset CH0/1
> SKL                    0x500c/0x5010
> TGL                    0x6054/0x6058
> EHL                    0x500c/0x5010
> ICL                    0x500c/0x5010
> The bit definition of MAD_DIMM_CH0/1_0_0_0_MCHBAR is same between
> CNL and TGL.

Have you actually sanity checked the register addresses here on real
hardware?  I see the same offsets in the doc as what you've put here,
but since this is a different register database than we get most of our
gfx-specific register details from, it would still be good to double
check that you do indeed get sensible values back when reading from
these addresses before we merge the patch.  Especially since the
database indicates that some of these registers are present at multiple
offsets.

> =

> P_CR_MC_BIOS_REQ_0_0_0 is same on BXT and GLK in terms of its address and
> bit definition.
> BXT_D_CR_DRP0_DUNIT accesses offset 0x1000, 0x1200, 0x1400, 0x1600.
> Its register name is RAM_ACCESS_DATA1. There is no difference between
> BXT and GLK in terms of its address and bit definition.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Yokoyama, Caz <caz.yokoyama@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.c | 15 ++++++++++++---
>  drivers/gpu/drm/i915/i915_reg.h |  6 ++++++
>  2 files changed, 18 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index 516536234e97..b9418583e503 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -806,12 +806,18 @@ skl_dram_get_channels_info(struct drm_i915_private =
*dev_priv)
>  	u32 val;
>  	int ret;
>  =

> -	val =3D I915_READ(SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN);
> +	if (INTEL_GEN(dev_priv) >=3D 12)
> +		val =3D I915_READ(TGL_MAD_DIMM_CH0_0_0_0_MCHBAR);
> +	else
> +		val =3D I915_READ(SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN);
>  	ret =3D skl_dram_get_channel_info(dev_priv, &ch0, 0, val);
>  	if (ret =3D=3D 0)
>  		dram_info->num_channels++;
>  =

> -	val =3D I915_READ(SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN);
> +	if (INTEL_GEN(dev_priv) >=3D 12)
> +		val =3D I915_READ(TGL_MAD_DIMM_CH1_0_0_0_MCHBAR);
> +	else
> +		val =3D I915_READ(SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN);
>  	ret =3D skl_dram_get_channel_info(dev_priv, &ch1, 1, val);
>  	if (ret =3D=3D 0)
>  		dram_info->num_channels++;
> @@ -852,7 +858,10 @@ skl_get_dram_type(struct drm_i915_private *dev_priv)
>  {
>  	u32 val;
>  =

> -	val =3D I915_READ(SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN);
> +	if (INTEL_GEN(dev_priv) >=3D 12)
> +		val =3D I915_READ(TGL_MAD_INTER_CHANNEL_0_0_0_MCHBAR);
> +	else
> +		val =3D I915_READ(SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN);
>  =

>  	switch (val & SKL_DRAM_DDR_TYPE_MASK) {
>  	case SKL_DRAM_DDR_TYPE_DDR3:

I'm not sure if it might be cleaner to create regs structures for each
platform to centralize the platform-selection logic and avoid all the
if/else in the code.  E.g.,

        struct i915_mchbar_regs {
                i915_reg_t mad_inter_channel;
                i915_reg_t mad_dimm_ch0;
                i915_reg_t mad_dimm_ch1;
        };

        static const struct i915_mchbar_regs skl_mchbar_regs =3D {
                .mad_inter_channel =3D SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_M=
CMAIN,
                .mad_dimm_ch0 =3D SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN,
                .mad_dimm_ch1 =3D SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN,
        };

and then use the appropriate regs structure in each of these functions
so that you can just do

        val =3D I915_READ(regs->mad_inter_channel);

and not have to update a bunch of different if-trees if more platforms
show up that move the registers to new offsets.

> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index b09c1d6dc0aa..9f6ec44dad6e 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -10508,6 +10508,9 @@ enum skl_power_gate {
>  #define  SKL_DRAM_DDR_TYPE_LPDDR3		(2 << 0)
>  #define  SKL_DRAM_DDR_TYPE_LPDDR4		(3 << 0)
>  =

> +#define  TGL_MAD_INTER_CHANNEL_0_0_0_MCHBAR _MMIO(MCHBAR_MIRROR_BASE_SNB=
 + 0x6048)

I'd move this line directly under
SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN's definition to help make it
clear that the SKL_DRAM_DDR_TYPE_* bit definitions apply to this
register as well as the SKL variant.  And same idea for the CH0/CH1
registers farther down --- move them directly under their SKL variants.

> +#define  TGL_DRAM_DDR_TYPE_WIO2			(4 << 0)

This isn't used anywhere and should just be dropped.

> +
>  #define SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SN=
B + 0x500C)
>  #define SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SN=
B + 0x5010)
>  #define  SKL_DRAM_S_SHIFT			16
> @@ -10535,6 +10538,9 @@ enum skl_power_gate {
>  #define  CNL_DRAM_RANK_3			(0x2 << 9)
>  #define  CNL_DRAM_RANK_4			(0x3 << 9)
>  =

> +#define TGL_MAD_DIMM_CH0_0_0_0_MCHBAR		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x=
6054)
> +#define TGL_MAD_DIMM_CH1_0_0_0_MCHBAR		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x=
6058)
> +
>  /* Please see hsw_read_dcomp() and hsw_write_dcomp() before using this r=
egister,
>   * since on HSW we can't write to it using I915_WRITE. */
>  #define D_COMP_HSW			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5F0C)
> -- =

> 2.21.0.5.gaeb582a983
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
