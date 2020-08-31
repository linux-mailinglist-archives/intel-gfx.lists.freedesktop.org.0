Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A451F257A9A
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Aug 2020 15:39:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A019898B6;
	Mon, 31 Aug 2020 13:39:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57B52898B6
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Aug 2020 13:39:09 +0000 (UTC)
IronPort-SDR: 62MCBXwJj0oQ6EYm5A+0ayx4pfrgAYNLErftaNVNG67dhfdFpb00WGgfg++WOtPB+pfkvZilhl
 xrY5UBqFJKEw==
X-IronPort-AV: E=McAfee;i="6000,8403,9729"; a="154371398"
X-IronPort-AV: E=Sophos;i="5.76,375,1592895600"; d="scan'208";a="154371398"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2020 06:39:08 -0700
IronPort-SDR: CmzllnoKzkYLAir6A8MJkxvWYTlKPKu5Ca3wFgYvRldB1EOq/a7AbHbqi+FW8JOIATGDoWi4PD
 FmbxIT2XUVMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,375,1592895600"; d="scan'208";a="330694351"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 31 Aug 2020 06:39:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 31 Aug 2020 16:39:05 +0300
Date: Mon, 31 Aug 2020 16:39:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200831133905.GW6112@intel.com>
References: <20200828061941.17051-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200828061941.17051-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add support for
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 28, 2020 at 09:19:40AM +0300, Jani Nikula wrote:
> The ACPI OpRegion Mailbox #5 ASLE extension may contain an EDID to be
> used for the embedded display. Add support for using it via the EDID
> override mechanism.

Abusing the override for this feels a bit odd.

Also I have a vague recollection that there was perhaps some
linkage between the mailbox and the ACPI _DDC stuff:
git://github.com/vsyrjala/linux.git acpi_edid

> =

> Note that the override EDID may be later reset or changed via debugfs,
> as usual.
> =

> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_opregion.c | 46 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_opregion.h |  8 ++++
>  2 files changed, 53 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/=
drm/i915/display/intel_opregion.c
> index de995362f428..13485969fafa 100644
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
> @@ -1041,6 +1045,45 @@ intel_opregion_get_panel_type(struct drm_i915_priv=
ate *dev_priv)
>  	return ret - 1;
>  }
>  =

> +void intel_opregion_edid_override(struct intel_connector *intel_connecto=
r)
> +{
> +	struct drm_connector *connector =3D &intel_connector->base;
> +	struct drm_i915_private *i915 =3D to_i915(connector->dev);
> +	struct intel_opregion *opregion =3D &i915->opregion;
> +	const void *in_edid;
> +	const struct edid *edid;
> +	int len, ret;
> +
> +	if (!opregion->asle_ext)
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
> +	/*
> +	 * FIXME: Might also check drm_edid_is_valid(edid) here but that
> +	 * requires mutable edid.
> +	 */
> +	if (len < EDID_LENGTH * (1 + edid->extensions)) {
> +		drm_dbg_kms(&i915->drm, "Invalid EDID in ACPI OpRegion (Mailbox #5)\n"=
);
> +		return;
> +	}
> +
> +	connector->override_edid =3D false;
> +	ret =3D drm_connector_update_edid_property(connector, edid);
> +	if (ret)
> +		return;
> +
> +	drm_dbg_kms(&i915->drm, "Using OpRegion EDID for [CONNECTOR:%d:%s]\n",
> +		    connector->base.id, connector->name);
> +}
> +
>  void intel_opregion_register(struct drm_i915_private *i915)
>  {
>  	struct intel_opregion *opregion =3D &i915->opregion;
> @@ -1131,6 +1174,7 @@ void intel_opregion_unregister(struct drm_i915_priv=
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
> index 4aa68ffbd30e..b407a0744c40 100644
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
> +void intel_opregion_edid_override(struct intel_connector *connector);
>  =

>  #else /* CONFIG_ACPI*/
>  =

> @@ -117,6 +121,10 @@ static inline int intel_opregion_get_panel_type(stru=
ct drm_i915_private *dev)
>  	return -ENODEV;
>  }
>  =

> +void intel_opregion_edid_override(struct intel_connector *connector)
> +{
> +}
> +
>  #endif /* CONFIG_ACPI */
>  =

>  #endif
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
