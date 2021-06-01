Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB08D39772E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 17:50:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A679E6E45C;
	Tue,  1 Jun 2021 15:50:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F15726E081;
 Tue,  1 Jun 2021 15:50:28 +0000 (UTC)
IronPort-SDR: aMJXG61/mE66fOhrJ3KLxYe3mOQyxlaso7d4W4kE062rpjQU+ouSSG6wPxURQD+TBBS+3Clp3C
 /E8uoipZxxFA==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="183254920"
X-IronPort-AV: E=Sophos;i="5.83,240,1616482800"; d="scan'208";a="183254920"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 08:50:28 -0700
IronPort-SDR: J39Du4ayNBRTxftYn6kFhKmmf+auHdqer89alSNL4QXUZE9CEUZc8bKt9qN7/02g0yxmspmPgO
 Gz13g6+rcPBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,240,1616482800"; d="scan'208";a="445378048"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 01 Jun 2021 08:50:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Jun 2021 18:50:24 +0300
Date: Tue, 1 Jun 2021 18:50:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anisse Astier <anisse@astier.eu>
Message-ID: <YLZXQLh2Qmxs+CWU@intel.com>
References: <20210531204642.4907-1-anisse@astier.eu>
 <20210531204642.4907-2-anisse@astier.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210531204642.4907-2-anisse@astier.eu>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/opregion: add support for
 mailbox #5 EDID
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 31, 2021 at 10:46:41PM +0200, Anisse Astier wrote:
> The ACPI OpRegion Mailbox #5 ASLE extension may contain an EDID to be
> used for the embedded display. Add support for using it via by adding
> the EDID to the list of available modes on the connector, and use it for
> eDP when available.
> =

> If a panel's EDID is broken, there may be an override EDID set in the
> ACPI OpRegion mailbox #5. Use it if available.

Looks like Windows uses the ACPI _DDC method instead. We should probably
do the same, just in case some crazy machine stores the EDID somewhere
else.

> =

> Fixes the GPD Win Max display.
> =

> Based on original patch series by: Jani Nikula <jani.nikula@intel.com>
> https://patchwork.kernel.org/project/intel-gfx/patch/20200828061941.17051=
-1-jani.nikula@intel.com/
> =

> Changes:
>  - EDID is copied and validated with drm_edid_is_valid
>  - Mode is now added via drm_add_edid_modes instead of using override
>    mechanism
>  - squashed the two patches
> =

> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Anisse Astier <anisse@astier.eu>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c       |  3 +
>  drivers/gpu/drm/i915/display/intel_opregion.c | 69 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_opregion.h |  8 +++
>  3 files changed, 79 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 5c9222283044..43fb485c0e02 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5191,6 +5191,9 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  		goto out_vdd_off;
>  	}
>  =

> +	/* Set up override EDID, if any, from ACPI OpRegion */
> +	intel_opregion_edid_probe(intel_connector);
> +
>  	mutex_lock(&dev->mode_config.mutex);
>  	edid =3D drm_get_edid(connector, &intel_dp->aux.ddc);
>  	if (edid) {
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/=
drm/i915/display/intel_opregion.c
> index dfd724e506b5..ef8d38f041eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -196,6 +196,8 @@ struct opregion_asle_ext {
>  #define ASLE_IUER_WINDOWS_BTN		(1 << 1)
>  #define ASLE_IUER_POWER_BTN		(1 << 0)
>  =

> +#define ASLE_PHED_EDID_VALID_MASK	0x3
> +
>  /* Software System Control Interrupt (SWSCI) */
>  #define SWSCI_SCIC_INDICATOR		(1 << 0)
>  #define SWSCI_SCIC_MAIN_FUNCTION_SHIFT	1
> @@ -909,8 +911,10 @@ int intel_opregion_setup(struct drm_i915_private *de=
v_priv)
>  		opregion->asle->ardy =3D ASLE_ARDY_NOT_READY;
>  	}
>  =

> -	if (mboxes & MBOX_ASLE_EXT)
> +	if (mboxes & MBOX_ASLE_EXT) {
>  		drm_dbg(&dev_priv->drm, "ASLE extension supported\n");
> +		opregion->asle_ext =3D base + OPREGION_ASLE_EXT_OFFSET;
> +	}
>  =

>  	if (intel_load_vbt_firmware(dev_priv) =3D=3D 0)
>  		goto out;
> @@ -1037,6 +1041,68 @@ intel_opregion_get_panel_type(struct drm_i915_priv=
ate *dev_priv)
>  	return ret - 1;
>  }
>  =

> +/**
> + * intel_opregion_edid_probe - Add EDID from ACPI OpRegion mailbox #5
> + * @intel_connector: eDP connector
> + *
> + * This reads the ACPI Opregion mailbox #5 to extract the EDID that is p=
assed
> + * to it.
> + *
> + * Will take a lock on the DRM mode_config to add the EDID; make sure it=
 isn't
> + * called with lock taken.
> + *
> + */
> +void intel_opregion_edid_probe(struct intel_connector *intel_connector)
> +{
> +	struct drm_connector *connector =3D &intel_connector->base;
> +	struct drm_i915_private *i915 =3D to_i915(connector->dev);
> +	struct intel_opregion *opregion =3D &i915->opregion;
> +	const void *in_edid;
> +	const struct edid *edid;
> +	struct edid *new_edid;
> +	int len, ret, num;
> +
> +	if (!opregion->asle_ext || connector->override_edid)
> +		return;
> +
> +	in_edid =3D opregion->asle_ext->bddc;
> +
> +	/* Validity corresponds to number of 128-byte blocks */
> +	len =3D (opregion->asle_ext->phed & ASLE_PHED_EDID_VALID_MASK) * 128;
> +	if (!len || !memchr_inv(in_edid, 0, len))
> +		return;
> +
> +	edid =3D in_edid;
> +
> +	if (len < EDID_LENGTH * (1 + edid->extensions)) {
> +		drm_dbg_kms(&i915->drm, "Invalid EDID in ACPI OpRegion (Mailbox #5)\n"=
);
> +		return;
> +	}
> +	new_edid =3D drm_edid_duplicate(edid);
> +	if (!new_edid) {
> +		drm_err(&i915->drm, "Cannot duplicate EDID\n");
> +		return;
> +	}
> +	if (!drm_edid_is_valid(new_edid)) {
> +		kfree(new_edid);
> +		drm_dbg_kms(&i915->drm, "Cannot validate EDID in ACPI OpRegion (Mailbo=
x #5)\n");
> +		return;
> +	}
> +
> +	ret =3D drm_connector_update_edid_property(connector, new_edid);
> +	if (ret) {
> +		kfree(new_edid);
> +		return;
> +	}
> +
> +	mutex_lock(&connector->dev->mode_config.mutex);
> +	num =3D drm_add_edid_modes(connector, new_edid);
> +	mutex_unlock(&connector->dev->mode_config.mutex);
> +
> +	drm_dbg_kms(&i915->drm, "Using OpRegion EDID for [CONNECTOR:%d:%s], add=
ed %d mode(s)\n",
> +		    connector->base.id, connector->name, num);
> +}
> +
>  void intel_opregion_register(struct drm_i915_private *i915)
>  {
>  	struct intel_opregion *opregion =3D &i915->opregion;
> @@ -1127,6 +1193,7 @@ void intel_opregion_unregister(struct drm_i915_priv=
ate *i915)
>  	opregion->acpi =3D NULL;
>  	opregion->swsci =3D NULL;
>  	opregion->asle =3D NULL;
> +	opregion->asle_ext =3D NULL;
>  	opregion->vbt =3D NULL;
>  	opregion->lid_state =3D NULL;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/=
drm/i915/display/intel_opregion.h
> index 4aa68ffbd30e..c1ecfcbb6f55 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.h
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.h
> @@ -29,12 +29,14 @@
>  #include <linux/pci.h>
>  =

>  struct drm_i915_private;
> +struct intel_connector;
>  struct intel_encoder;
>  =

>  struct opregion_header;
>  struct opregion_acpi;
>  struct opregion_swsci;
>  struct opregion_asle;
> +struct opregion_asle_ext;
>  =

>  struct intel_opregion {
>  	struct opregion_header *header;
> @@ -43,6 +45,7 @@ struct intel_opregion {
>  	u32 swsci_gbda_sub_functions;
>  	u32 swsci_sbcb_sub_functions;
>  	struct opregion_asle *asle;
> +	struct opregion_asle_ext *asle_ext;
>  	void *rvda;
>  	void *vbt_firmware;
>  	const void *vbt;
> @@ -71,6 +74,7 @@ int intel_opregion_notify_encoder(struct intel_encoder =
*intel_encoder,
>  int intel_opregion_notify_adapter(struct drm_i915_private *dev_priv,
>  				  pci_power_t state);
>  int intel_opregion_get_panel_type(struct drm_i915_private *dev_priv);
> +void intel_opregion_edid_probe(struct intel_connector *connector);
>  =

>  #else /* CONFIG_ACPI*/
>  =

> @@ -117,6 +121,10 @@ static inline int intel_opregion_get_panel_type(stru=
ct drm_i915_private *dev)
>  	return -ENODEV;
>  }
>  =

> +void intel_opregion_edid_probe(struct intel_connector *connector)
> +{
> +}
> +
>  #endif /* CONFIG_ACPI */
>  =

>  #endif
> -- =

> 2.31.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
