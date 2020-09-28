Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A6427AF47
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Sep 2020 15:43:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA87E89FA9;
	Mon, 28 Sep 2020 13:43:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ACC789FA9;
 Mon, 28 Sep 2020 13:43:00 +0000 (UTC)
IronPort-SDR: 29WUtwEQskCzCdesAWgKU3d06QzlUrCLftX3T0ayUOP/0luZfYSckWleFicWz7uiUzqr+UJFnW
 HnkH/OOL/aSQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9757"; a="246735720"
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; d="scan'208";a="246735720"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 06:42:59 -0700
IronPort-SDR: 4Xk7W23AgLR3wbPMrvyEE+Dm27TAL69CuT9tBEtFttwHr75E7JlhPuuuz8ffGnLPtywsdOjUDX
 UMYA++P5AgXw==
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; d="scan'208";a="488584983"
Received: from lizwalsh-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.251.86.12])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 06:42:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, james.ausmus@intel.com,
 matthew.d.roper@intel.com, jose.souza@intel.com, ville.syrjala@linux.intel.com,
 lucas.demarchi@intel.com, hariom.pandey@intel.com
In-Reply-To: <20200928080931.246347-3-tejaskumarx.surendrakumar.upadhyay@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200928080931.246347-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <20200928080931.246347-3-tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Mon, 28 Sep 2020 16:43:11 +0300
Message-ID: <87a6xaow40.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/edp/jsl: Update vswing table
 for HBR and HBR2
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

On Mon, 28 Sep 2020, Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
> JSL has update in vswing table for eDP

I've thought the TLA for Jasper Lake is JSP, not JSL. At least we have
PCH_JSP for Jasper Lake PCH.

>
> BSpec: 21257
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 67 ++++++++++++++++++++++--
>  1 file changed, 64 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 4d06178cd76c..fa08463bcf2e 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -582,6 +582,34 @@ static const struct cnl_ddi_buf_trans ehl_combo_phy_ddi_translations_dp[] = {
>  	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 900   900      0.0   */
>  };
>  
> +static const struct cnl_ddi_buf_trans jsl_combo_phy_ddi_translations_edp_hbr[] = {
> +						/* NT mV Trans mV db    */
> +	{ 0x8, 0x7F, 0x3F, 0x00, 0x00 },	/* 200   200      0.0   */
> +	{ 0x8, 0x7F, 0x38, 0x00, 0x07 },	/* 200   250      1.9   */
> +	{ 0x1, 0x7F, 0x33, 0x00, 0x0C },	/* 200   300      3.5   */
> +	{ 0xA, 0x35, 0x36, 0x00, 0x09 },	/* 200   350      4.9   */
> +	{ 0x8, 0x7F, 0x3F, 0x00, 0x00 },	/* 250   250      0.0   */
> +	{ 0x1, 0x7F, 0x38, 0x00, 0x07 },	/* 250   300      1.6   */
> +	{ 0xA, 0x35, 0x35, 0x00, 0x0A },	/* 250   350      2.9   */
> +	{ 0x1, 0x7F, 0x3F, 0x00, 0x00 },	/* 300   300      0.0   */
> +	{ 0xA, 0x35, 0x38, 0x00, 0x07 },	/* 300   350      1.3   */
> +	{ 0xA, 0x35, 0x3F, 0x00, 0x00 },	/* 350   350      0.0   */
> +};
> +
> +static const struct cnl_ddi_buf_trans jsl_combo_phy_ddi_translations_edp_hbr2[] = {
> +						/* NT mV Trans mV db    */
> +	{ 0x8, 0x7F, 0x3F, 0x00, 0x00 },	/* 200   200      0.0   */
> +	{ 0x8, 0x7F, 0x3F, 0x00, 0x00 },	/* 200   250      1.9   */
> +	{ 0x1, 0x7F, 0x3D, 0x00, 0x02 },	/* 200   300      3.5   */
> +	{ 0xA, 0x35, 0x38, 0x00, 0x07 },	/* 200   350      4.9   */
> +	{ 0x8, 0x7F, 0x3F, 0x00, 0x00 },	/* 250   250      0.0   */
> +	{ 0x1, 0x7F, 0x3F, 0x00, 0x00 },	/* 250   300      1.6   */
> +	{ 0xA, 0x35, 0x3A, 0x00, 0x05 },	/* 250   350      2.9   */
> +	{ 0x1, 0x7F, 0x3F, 0x00, 0x00 },	/* 300   300      0.0   */
> +	{ 0xA, 0x35, 0x38, 0x00, 0x07 },	/* 300   350      1.3   */
> +	{ 0xA, 0x35, 0x3F, 0x00, 0x00 },	/* 350   350      0.0   */
> +};
> +
>  struct icl_mg_phy_ddi_buf_trans {
>  	u32 cri_txdeemph_override_11_6;
>  	u32 cri_txdeemph_override_5_0;
> @@ -1069,7 +1097,6 @@ icl_get_mg_buf_trans(struct intel_encoder *encoder, int type, int rate,
>  	*n_entries = ARRAY_SIZE(icl_mg_phy_ddi_translations_rbr_hbr);
>  	return icl_mg_phy_ddi_translations_rbr_hbr;
>  }
> -
>  static const struct cnl_ddi_buf_trans *
>  ehl_get_combo_buf_trans(struct intel_encoder *encoder, int type, int rate,
>  			int *n_entries)
> @@ -1098,6 +1125,34 @@ ehl_get_combo_buf_trans(struct intel_encoder *encoder, int type, int rate,
>  	}
>  }
>  
> +static const struct cnl_ddi_buf_trans *
> +jsl_get_combo_buf_trans(struct intel_encoder *encoder, int type, int rate,
> +			int *n_entries)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +
> +	switch (type) {
> +	case INTEL_OUTPUT_HDMI:
> +		*n_entries = ARRAY_SIZE(icl_combo_phy_ddi_translations_hdmi);
> +		return icl_combo_phy_ddi_translations_hdmi;
> +	case INTEL_OUTPUT_EDP:
> +		if (dev_priv->vbt.edp.low_vswing) {
> +			if (rate > 270000) {
> +				*n_entries = ARRAY_SIZE(jsl_combo_phy_ddi_translations_edp_hbr2);
> +				return jsl_combo_phy_ddi_translations_edp_hbr2;
> +			} else {
> +				*n_entries = ARRAY_SIZE(jsl_combo_phy_ddi_translations_edp_hbr);
> +				return jsl_combo_phy_ddi_translations_edp_hbr;
> +			}
> +		}
> +		/* fall through */
> +	default:
> +		/* All combo DP and eDP ports that do not support low_vswing */
> +		*n_entries = ARRAY_SIZE(icl_combo_phy_ddi_translations_dp_hbr2);
> +		return icl_combo_phy_ddi_translations_dp_hbr2;
> +	}
> +}
> +
>  static const struct cnl_ddi_buf_trans *
>  tgl_get_combo_buf_trans(struct intel_encoder *encoder, int type, int rate,
>  			int *n_entries)
> @@ -2265,9 +2320,12 @@ static u8 intel_ddi_dp_voltage_max(struct intel_dp *intel_dp)
>  			tgl_get_dkl_buf_trans(encoder, encoder->type,
>  					      intel_dp->link_rate, &n_entries);
>  	} else if (INTEL_GEN(dev_priv) == 11) {
> -		if (IS_ELKHARTLAKE(dev_priv))
> +		if (IS_JASPERLAKE(dev_priv))
> +			jsl_get_combo_buf_trans(encoder, encoder->type,
> +					intel_dp->link_rate, &n_entries);
> +		else if (IS_ELKHARTLAKE(dev_priv))
>  			ehl_get_combo_buf_trans(encoder, encoder->type,
> -						intel_dp->link_rate, &n_entries);
> +					intel_dp->link_rate, &n_entries);

This is a good example of a potential trap that having IS_ELKHARTLAKE()
cover both ELK and JSP creates. An unsuspecting coder might change the
if ladder to have IS_ELKHARTLAKE() first, and the subsequent
IS_JASPERLAKE() branch would never be taken.

BR,
Jani.

>  		else if (intel_phy_is_combo(dev_priv, phy))
>  			icl_get_combo_buf_trans(encoder, encoder->type,
>  						intel_dp->link_rate, &n_entries);
> @@ -2454,6 +2512,9 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
>  	if (INTEL_GEN(dev_priv) >= 12)
>  		ddi_translations = tgl_get_combo_buf_trans(encoder, type, rate,
>  							   &n_entries);
> +	else if (IS_JASPERLAKE(dev_priv))
> +		ddi_translations = jsl_get_combo_buf_trans(encoder, type, rate,
> +							   &n_entries);
>  	else if (IS_ELKHARTLAKE(dev_priv))
>  		ddi_translations = ehl_get_combo_buf_trans(encoder, type, rate,
>  							   &n_entries);

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
