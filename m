Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5752161DA
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 01:08:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1F446E057;
	Mon,  6 Jul 2020 23:08:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BE356E057
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 23:08:44 +0000 (UTC)
IronPort-SDR: kE0XtRQ3MJ7u0CLkKrWbXnCmnUhzl8bTii3KBKUmiHKn1sO+tV8u4RQrS+n+1r3cG0OZ0opez7
 PzvQHlm17P4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9674"; a="134978523"
X-IronPort-AV: E=Sophos;i="5.75,321,1589266800"; d="scan'208";a="134978523"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2020 16:08:43 -0700
IronPort-SDR: /bRLkHUOwlqsE8CXvUHg3c4TFtAN0pudKH0MCYgNVffKo7uy9ZxwfXjQ3YwavGuXpfokXeYXe4
 dcWpyX+fekhg==
X-IronPort-AV: E=Sophos;i="5.75,321,1589266800"; d="scan'208";a="315321771"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2020 16:08:43 -0700
Date: Mon, 6 Jul 2020 16:08:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200706230842.GD2081034@mdroper-desk1.amr.corp.intel.com>
References: <20200624193249.20725-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200624193249.20725-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Implement new combo
 phy initialization step
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 24, 2020 at 12:32:49PM -0700, Jos=E9 Roberto de Souza wrote:
> This is new step that was recently added to the combo phy
> initialization.
> =

> v2:
> - using intel_de_rmw()

Actually, I'm not sure whether this is valid; I believe we always have
to read from a lane register and can only write to the group registers:

        "Reads using a port group address usually cannot return correct
        data. For read/modify/write to a group, the read should be to
        one of the lane addresses, then the write to the group address."

> =

> BSpec: 49291
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_combo_phy.c    | 23 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h               |  7 ++++++
>  2 files changed, 30 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu=
/drm/i915/display/intel_combo_phy.c
> index 77b04bb3ec62..115069833348 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -264,6 +264,18 @@ static bool icl_combo_phy_verify_state(struct drm_i9=
15_private *dev_priv,
>  	if (!icl_combo_phy_enabled(dev_priv, phy))
>  		return false;
>  =

> +	if (INTEL_GEN(dev_priv) >=3D 12) {
> +		ret &=3D check_phy_reg(dev_priv, phy, ICL_PORT_TX_DW8_GRP(phy),
> +				     ICL_PORT_TX_DW8_ODCC_CLK_SEL |
> +				     ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK,
> +				     ICL_PORT_TX_DW8_ODCC_CLK_SEL |
> +				     ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2);

If I'm reading the bspec correctly, it looks like both 00 and 01
represent div2 for this register.  So maybe rather than looking for 01
exactly here we should just check that bit 30 is off?


> +
> +		ret &=3D check_phy_reg(dev_priv, phy, ICL_PORT_PCS_DW1_GRP(phy),
> +				     DCC_MODE_SELECT_MASK,
> +				     DCC_MODE_SELECT_CONTINUOSLY);
> +	}
> +
>  	ret =3D cnl_verify_procmon_ref_values(dev_priv, phy);
>  =

>  	if (phy_is_master(dev_priv, phy)) {
> @@ -375,6 +387,17 @@ static void icl_combo_phys_init(struct drm_i915_priv=
ate *dev_priv)
>  		intel_de_write(dev_priv, ICL_PHY_MISC(phy), val);
>  =

>  skip_phy_misc:
> +		if (INTEL_GEN(dev_priv) >=3D 12) {

We may want to keep an eye on this part of the bspec; there seems to be
something a bit off with the bspec tagging of this block and I'm not
100% sure it was actually intended to apply to RKL too or not.

It seems like the bspec has these steps as the very first thing, even
before the "check whether the PHY is already initialized" step.
But since we're checking that the bits are set the way we want in the
verify function too, I don't think the ordering should matter.

> +			intel_de_rmw(dev_priv, ICL_PORT_TX_DW8_GRP(phy),
> +				     ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK,
> +				     ICL_PORT_TX_DW8_ODCC_CLK_SEL |
> +				     ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2);

As noted above, maybe we should just clear bit 30 and leave bit 29 set
however it already was?


Matt

> +
> +			intel_de_rmw(dev_priv, ICL_PORT_PCS_DW1_GRP(phy),
> +				     DCC_MODE_SELECT_MASK,
> +				     DCC_MODE_SELECT_CONTINUOSLY);
> +		}
> +
>  		cnl_set_procmon_ref_values(dev_priv, phy);
>  =

>  		if (phy_is_master(dev_priv, phy)) {
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index f09120cac89a..5469c9029f6d 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1974,6 +1974,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t r=
eg)
>  #define ICL_PORT_PCS_DW1_AUX(phy)	_MMIO(_ICL_PORT_PCS_DW_AUX(1, phy))
>  #define ICL_PORT_PCS_DW1_GRP(phy)	_MMIO(_ICL_PORT_PCS_DW_GRP(1, phy))
>  #define ICL_PORT_PCS_DW1_LN0(phy)	_MMIO(_ICL_PORT_PCS_DW_LN(1, 0, phy))
> +#define   DCC_MODE_SELECT_MASK		(0x3 << 20)
> +#define   DCC_MODE_SELECT_CONTINUOSLY	(0x3 << 20)
>  #define   COMMON_KEEPER_EN		(1 << 26)
>  #define   LATENCY_OPTIM_MASK		(0x3 << 2)
>  #define   LATENCY_OPTIM_VAL(x)		((x) << 2)
> @@ -2072,6 +2074,11 @@ static inline bool i915_mmio_reg_valid(i915_reg_t =
reg)
>  #define   N_SCALAR(x)			((x) << 24)
>  #define   N_SCALAR_MASK			(0x7F << 24)
>  =

> +#define ICL_PORT_TX_DW8_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(8, phy))
> +#define ICL_PORT_TX_DW8_ODCC_CLK_SEL		REG_BIT(31)
> +#define ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK	REG_GENMASK(30, 29)
> +#define ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2	REG_FIELD_PREP(ICL_PORT_TX=
_DW8_ODCC_CLK_DIV_SEL_MASK, 0x1)
> +
>  #define _ICL_DPHY_CHKN_REG			0x194
>  #define ICL_DPHY_CHKN(port)			_MMIO(_ICL_COMBOPHY(port) + _ICL_DPHY_CHKN=
_REG)
>  #define   ICL_DPHY_CHKN_AFE_OVER_PPI_STRAP	REG_BIT(7)
> -- =

> 2.27.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

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
