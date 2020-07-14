Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0ED21F78C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 18:43:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C481C6E41A;
	Tue, 14 Jul 2020 16:43:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A36D66E41A
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 16:43:44 +0000 (UTC)
IronPort-SDR: MaUJ1i3lO5H/hWUljMi5sytL/V1jHxErEFPNXXRR/LODyxWlh74dSYHdpIp/Q7/23yUnKaN2+o
 9pYJArPamLyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="233821070"
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="233821070"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 09:43:44 -0700
IronPort-SDR: RW94G419DxwSymZP7NhpdTntbKrODYA4gNz/dblZDz3inXt5TEHnNzlu6XWV7QH4MGrrGib9yq
 T1j9CsVU2Bqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="324599274"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 14 Jul 2020 09:43:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Jul 2020 19:43:41 +0300
Date: Tue, 14 Jul 2020 19:43:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200714164341.GM6112@intel.com>
References: <20200713235334.84263-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200713235334.84263-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v5 1/2] drm/i915/display: Implement HOBL
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

On Mon, Jul 13, 2020 at 04:53:33PM -0700, Jos=E9 Roberto de Souza wrote:
> Hours Of Battery Life is a new GEN12+ power-saving feature that allows
> supported motherboards to use a special voltage swing table for eDP
> panels that uses less power.
> =

> So here if supported by HW, OEM will set it in VBT and i915 will try
> to train link with HOBL vswing table if link training fails it fall
> back to the original table.
> =

> intel_ddi_dp_preemph_max() was optimized to only check the HOBL flag
> instead of do something like is done in intel_ddi_dp_voltage_max()
> because it is only called after the first entry of the voltage swing
> table was loaded so the HOBL flag is valid at that point.
> =

> v3:
> - removed a few parameters of icl_ddi_combo_vswing_program() that
> can be taken from encoder
> =

> v4:
> - using the HOBL vswing table until training fails completely (Ville)
> =

> v5:
> - not reducing lane or link rate when link training fails with HOBL
> active
> - duplicated the HOBL voltage swing entry to match DP spec requirement
> =

> BSpec: 49291
> BSpec: 49399
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Animesh Manna <animesh.manna@intel.com>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 42 +++++++++++++++++++
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  .../drm/i915/display/intel_dp_link_training.c | 19 ++++++---
>  drivers/gpu/drm/i915/i915_reg.h               |  2 +
>  4 files changed, 59 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 2c484b55bcdf..92ae036440fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -706,6 +706,29 @@ static const struct cnl_ddi_buf_trans tgl_combo_phy_=
ddi_translations_dp_hbr2[] =3D
>  	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 900   900      0.0   */
>  };
>  =

> +/*
> + * Cloned the HOBL entry to comply with the voltage and pre-emphasis ent=
ries
> + * that DisplayPort specification requires
> + */
> +static const struct cnl_ddi_buf_trans tgl_combo_phy_ddi_translations_edp=
_hbr2_hobl[] =3D {
> +						/* VS	pre-emp	*/
> +	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 0	0	*/
> +	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 0	1	*/
> +	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 0	2	*/
> +	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 0	3	*/
> +	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 1	0	*/
> +	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 1	1	*/
> +	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 1	2	*/
> +	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 2	0	*/
> +	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 2	1	*/
> +	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 3	0	*/

We could skip the last entry since that's still legal. Dunno which is
better though.

> +};
> +
> +static bool is_hobl_buf_trans(const struct cnl_ddi_buf_trans *table)
> +{
> +	return table =3D=3D tgl_combo_phy_ddi_translations_edp_hbr2_hobl;
> +}
> +
>  static const struct ddi_buf_trans *
>  bdw_get_buf_trans_edp(struct intel_encoder *encoder, int *n_entries)
>  {
> @@ -1050,6 +1073,16 @@ static const struct cnl_ddi_buf_trans *
>  tgl_get_combo_buf_trans(struct intel_encoder *encoder, int type, int rat=
e,
>  			int *n_entries)
>  {
> +	if (type =3D=3D INTEL_OUTPUT_EDP && dev_priv->vbt.edp.hobl) {
> +		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +
> +		if (!intel_dp->hobl_failed && rate <=3D 540000) {
> +			/* Same table applies to TGL, RKL and DG1 */
> +			*n_entries =3D ARRAY_SIZE(tgl_combo_phy_ddi_translations_edp_hbr2_hob=
l);
> +			return tgl_combo_phy_ddi_translations_edp_hbr2_hobl;
> +		}
> +	}
> +
>  	if (type =3D=3D INTEL_OUTPUT_HDMI || type =3D=3D INTEL_OUTPUT_EDP) {
>  		return icl_get_combo_buf_trans(encoder, type, rate, n_entries);
>  	} else if (rate > 270000) {
> @@ -2392,6 +2425,15 @@ static void icl_ddi_combo_vswing_program(struct in=
tel_encoder *encoder,
>  		level =3D n_entries - 1;
>  	}
>  =

> +	if (type =3D=3D INTEL_OUTPUT_EDP) {
> +		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +
> +		val =3D EDP4K2K_MODE_OVRD_EN | EDP4K2K_MODE_OVRD_OPTIMIZED;
> +		intel_dp->hobl_active =3D is_hobl_buf_trans(ddi_translations);

Still don't understand why we have these two booleans and this table
comparison. Why not just set the intel_dp->hobl=3Dtrue intiailly
based on vbt, and clear it if and when link training fails?

> +		intel_de_rmw(dev_priv, ICL_PORT_CL_DW10(phy), val,
> +			     intel_dp->hobl_active ? val : 0);
> +	}
> +
>  	/* Set PORT_TX_DW5 */
>  	val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
>  	val &=3D ~(SCALING_MODE_SEL_MASK | RTERM_SELECT_MASK |
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index e8f809161c75..5e6634b55e84 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1375,6 +1375,8 @@ struct intel_dp {
>  =

>  	/* Display stream compression testing */
>  	bool force_dsc_en;
> +
> +	u8 hobl_failed : 1, hobl_active : 1;
>  };
>  =

>  enum lspcon_vendor {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index a23ed7290843..f2c8b56be9ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -410,10 +410,17 @@ intel_dp_start_link_train(struct intel_dp *intel_dp)
>  		    intel_connector->base.base.id,
>  		    intel_connector->base.name,
>  		    intel_dp->link_rate, intel_dp->lane_count);
> -	if (!intel_dp_get_link_train_fallback_values(intel_dp,
> -						     intel_dp->link_rate,
> -						     intel_dp->lane_count))
> -		/* Schedule a Hotplug Uevent to userspace to start modeset */
> -		schedule_work(&intel_connector->modeset_retry_work);
> -	return;
> +
> +	if (intel_dp->hobl_active) {
> +		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
> +			    "Link Training failed with HOBL active, not enabling it from now =
on");
> +		intel_dp->hobl_failed =3D true;
> +	} else if (intel_dp_get_link_train_fallback_values(intel_dp,
> +							   intel_dp->link_rate,
> +							   intel_dp->lane_count)) {
> +		return;
> +	}
> +
> +	/* Schedule a Hotplug Uevent to userspace to start modeset */
> +	schedule_work(&intel_connector->modeset_retry_work);
>  }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 86a23ced051b..ea16931c0fa4 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1898,6 +1898,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t r=
eg)
>  #define  PWR_DOWN_LN_3_1_0		(0xb << 4)
>  #define  PWR_DOWN_LN_MASK		(0xf << 4)
>  #define  PWR_DOWN_LN_SHIFT		4
> +#define  EDP4K2K_MODE_OVRD_EN		(1 << 3)
> +#define  EDP4K2K_MODE_OVRD_OPTIMIZED	(1 << 2)
>  =

>  #define ICL_PORT_CL_DW12(phy)		_MMIO(_ICL_PORT_CL_DW(12, phy))
>  #define   ICL_LANE_ENABLE_AUX		(1 << 0)
> -- =

> 2.27.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
