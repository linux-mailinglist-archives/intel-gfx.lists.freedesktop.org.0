Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC69292A78
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 17:31:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 390586E943;
	Mon, 19 Oct 2020 15:31:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3442B6E943
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 15:31:11 +0000 (UTC)
IronPort-SDR: A6edjr97ITBeKOfRNla/0ZvRV9v5JziweP1Xtz39mwGmDVVqPujYY1qMgpp0k9C+wcmffGBPGh
 UHQ0oPxkuIOQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9778"; a="167129395"
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="167129395"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 08:31:10 -0700
IronPort-SDR: JlwIkCBKjBMdgxBxeAYAf72uEGVNmaJiZ2FewDGNO8WlQFDDnpnJeztIM157mOzd7amL2RTEBO
 /Sv6yK6mRRGA==
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="532668306"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 08:31:10 -0700
Date: Mon, 19 Oct 2020 08:31:09 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20201019153109.GP3805439@mdroper-desk1.amr.corp.intel.com>
References: <20201016201837.85845-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201016201837.85845-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Program DBUF_CTL tracker
 state service
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

On Fri, Oct 16, 2020 at 01:18:37PM -0700, Jos=E9 Roberto de Souza wrote:
> This sequence is not part of "Sequences to Initialize Display" but
> as noted in the MBus page the DBUF_CTL.Tracker_state_service needs
> to be set to 8.
> =

> BSpec: 49213
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 13 +++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h                    | 14 +++++++++-----
>  2 files changed, 22 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 45806cfc679a..db36ab02e7d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -4771,6 +4771,17 @@ static void gen9_dbuf_disable(struct drm_i915_priv=
ate *dev_priv)
>  	gen9_dbuf_slices_update(dev_priv, 0);
>  }
>  =

> +static void gen12_dbuf_slices_config(struct drm_i915_private *dev_priv)
> +{
> +	const int num_slices =3D INTEL_INFO(dev_priv)->num_supported_dbuf_slice=
s;
> +	enum dbuf_slice slice;
> +
> +	for (slice =3D DBUF_S1; slice < num_slices; slice++)

Minor nitpick; if we're starting from symbolic value DBUF_S1, we should
probably end at 'DBUF_S1 + num_slices' for consistency.

> +		intel_de_rmw(dev_priv, DBUF_CTL_S(slice),
> +			     DBUF_TRACKER_STATE_SERVICE_MASK,
> +			     DBUF_TRACKER_STATE_SERVICE(8));
> +}
> +
>  static void icl_mbus_init(struct drm_i915_private *dev_priv)
>  {
>  	unsigned long abox_regs =3D INTEL_INFO(dev_priv)->abox_mask;
> @@ -5340,6 +5351,8 @@ static void icl_display_core_init(struct drm_i915_p=
rivate *dev_priv,
>  	/* 4. Enable CDCLK. */
>  	intel_cdclk_init_hw(dev_priv);
>  =

> +	if (INTEL_GEN(dev_priv) >=3D 12)
> +		gen12_dbuf_slices_config(dev_priv);
>  	/* 5. Enable DBUF. */

Minor nitpick: should there be a blank between these additions and the
comment?

Aside from those two minor things,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

>  	gen9_dbuf_enable(dev_priv);
>  =

> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 6d97e6286c2d..c38901e2f81c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7927,11 +7927,15 @@ enum {
>  #define DISP_ARB_CTL2	_MMIO(0x45004)
>  #define  DISP_DATA_PARTITION_5_6	(1 << 6)
>  #define  DISP_IPC_ENABLE		(1 << 3)
> -#define _DBUF_CTL_S1			0x45008
> -#define _DBUF_CTL_S2			0x44FE8
> -#define DBUF_CTL_S(slice)		_MMIO(_PICK_EVEN(slice, _DBUF_CTL_S1, _DBUF_C=
TL_S2))
> -#define  DBUF_POWER_REQUEST		(1 << 31)
> -#define  DBUF_POWER_STATE		(1 << 30)
> +
> +#define _DBUF_CTL_S1				0x45008
> +#define _DBUF_CTL_S2				0x44FE8
> +#define DBUF_CTL_S(slice)			_MMIO(_PICK_EVEN(slice, _DBUF_CTL_S1, _DBUF_=
CTL_S2))
> +#define  DBUF_POWER_REQUEST			REG_BIT(31)
> +#define  DBUF_POWER_STATE			REG_BIT(30)
> +#define  DBUF_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(23, 19)
> +#define  DBUF_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_TRACKER_STAT=
E_SERVICE_MASK, x)
> +
>  #define GEN7_MSG_CTL	_MMIO(0x45010)
>  #define  WAIT_FOR_PCH_RESET_ACK		(1 << 1)
>  #define  WAIT_FOR_PCH_FLR_ACK		(1 << 0)
> -- =

> 2.28.0
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
