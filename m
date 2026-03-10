Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFU/GZwrsGl7gwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 15:33:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9B32520CD
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 15:32:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C3E410E158;
	Tue, 10 Mar 2026 14:32:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=collabora.com header.i=@collabora.com header.b="aaWkO08D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com
 [148.251.105.195])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A59010E158;
 Tue, 10 Mar 2026 14:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1773153175;
 bh=qQPA0em+yVcig65Vsh8WumcNnPD9SM/zDZ6+Ka10/d0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=aaWkO08DB0iMdT6zJyPDkBMtnGcj0SNtYkuF9hO9e1svoH1AIpmSLa0wyAeTqxJL7
 CA09gF0cuHcmZcfzV58CP6hiL9LaAyQynL3ROOmR/wOZTZHZS1iuy36GZBiFcKoAv9
 iWFXnxiuN9nVKzc2O2YtzE5A5jJIwMR7PdZVJn2tRpyfVk2ONq+jHjmHtStdPD48Q6
 ZTbo+Jfa/BmIKiknT1J4zRHO3qTSBDLP04Bvk+fTT9rdZBsVZSnmWOKOqXaMKA4gA7
 bT4TISvaCdUDmZfWU2egEVwtqdL+WTHzdaQ6+mx5S/BSMVKq0zvRrnRXL2JmMnxtXV
 QUpzFnY3HeaTg==
Received: from eldfell (unknown [194.136.85.206])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: pq)
 by bali.collaboradmins.com (Postfix) with ESMTPSA id 822AF17E0D25;
 Tue, 10 Mar 2026 15:32:54 +0100 (CET)
Date: Tue, 10 Mar 2026 16:32:29 +0200
From: Pekka Paalanen <pekka.paalanen@collabora.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, harry.wentland@amd.com,
 louis.chauvet@bootlin.com, mwen@igalia.com, contact@emersion.fr,
 alex.hung@amd.com, daniels@collabora.com, uma.shankar@intel.com,
 maarten.lankhorst@intel.com, pranay.samala@intel.com,
 swati2.sharma@intel.com
Subject: Re: [PATCH 01/10] drm/colorop: Add DRM_COLOROP_CSC_FF
Message-ID: <20260310163229.521186ab@eldfell>
In-Reply-To: <20260306165307.3233194-2-chaitanya.kumar.borah@intel.com>
References: <20260306165307.3233194-1-chaitanya.kumar.borah@intel.com>
 <20260306165307.3233194-2-chaitanya.kumar.borah@intel.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/MFoGoNaOk1KviB3flGmdAb5";
 protocol="application/pgp-signature"; micalg=pgp-sha256
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: BF9B32520CD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.91 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pekka.paalanen@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	NEURAL_HAM(-0.00)[-0.992];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,collabora.com:dkim]
X-Rspamd-Action: no action

--Sig_/MFoGoNaOk1KviB3flGmdAb5
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri,  6 Mar 2026 22:22:58 +0530
Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:

> Introduce DRM_COLOROP_CSC_FF, a new colorop type representing a
> fixed-function Color Space Conversion (CSC) block.
>=20
> Unlike CTM-based colorops, this block does not expose programmable
> coefficients. Instead, userspace selects one of the predefined
> hardware modes via a new CSC_FF_TYPE enum property. Supported modes
> include common YUV->RGB and RGB709->RGB2020 conversions.
>=20
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/drm_atomic.c      |   4 ++
>  drivers/gpu/drm/drm_atomic_uapi.c |   4 ++
>  drivers/gpu/drm/drm_colorop.c     | 105 ++++++++++++++++++++++++++++++
>  include/drm/drm_colorop.h         |  72 ++++++++++++++++++++
>  include/uapi/drm/drm_mode.h       |  13 ++++
>  5 files changed, 198 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
> index 04925166df98..7296b844e3fd 100644
> --- a/drivers/gpu/drm/drm_atomic.c
> +++ b/drivers/gpu/drm/drm_atomic.c
> @@ -844,6 +844,10 @@ static void drm_atomic_colorop_print_state(struct dr=
m_printer *p,
>  			   drm_get_colorop_lut3d_interpolation_name(colorop->lut3d_interpolat=
ion));
>  		drm_printf(p, "\tdata blob id=3D%d\n", state->data ? state->data->base=
.id : 0);
>  		break;
> +	case DRM_COLOROP_CSC_FF:
> +		drm_printf(p, "\tcsc_ff_type=3D%s\n",
> +			   drm_get_colorop_csc_ff_type_name(state->csc_ff_type));
> +		break;
>  	default:
>  		break;
>  	}
> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atom=
ic_uapi.c
> index 87de41fb4459..9af73325aa93 100644
> --- a/drivers/gpu/drm/drm_atomic_uapi.c
> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> @@ -757,6 +757,8 @@ static int drm_atomic_colorop_set_property(struct drm=
_colorop *colorop,
>  	} else if (property =3D=3D colorop->data_property) {
>  		return drm_atomic_color_set_data_property(colorop, state,
>  							  property, val);
> +	} else if (property =3D=3D colorop->csc_ff_type_property) {
> +		state->csc_ff_type =3D val;
>  	} else {
>  		drm_dbg_atomic(colorop->dev,
>  			       "[COLOROP:%d:%d] unknown property [PROP:%d:%s]\n",
> @@ -789,6 +791,8 @@ drm_atomic_colorop_get_property(struct drm_colorop *c=
olorop,
>  		*val =3D colorop->lut3d_interpolation;
>  	else if (property =3D=3D colorop->data_property)
>  		*val =3D (state->data) ? state->data->base.id : 0;
> +	else if (property =3D=3D colorop->csc_ff_type_property)
> +		*val =3D state->csc_ff_type;
>  	else
>  		return -EINVAL;
> =20
> diff --git a/drivers/gpu/drm/drm_colorop.c b/drivers/gpu/drm/drm_colorop.c
> index f421c623b3f0..49422c625f4d 100644
> --- a/drivers/gpu/drm/drm_colorop.c
> +++ b/drivers/gpu/drm/drm_colorop.c
> @@ -68,6 +68,7 @@ static const struct drm_prop_enum_list drm_colorop_type=
_enum_list[] =3D {
>  	{ DRM_COLOROP_CTM_3X4, "3x4 Matrix"},
>  	{ DRM_COLOROP_MULTIPLIER, "Multiplier"},
>  	{ DRM_COLOROP_3D_LUT, "3D LUT"},
> +	{ DRM_COLOROP_CSC_FF, "CSC Fixed-Function"},

Hi,

the fundamental idea seems fine to me, but I have a lot to say about the
nomenclature.

What would you think of a more readable name DRM_COLOROP_FIXED_MATRIX
"Fixed Matrix"?

Alternatively DRM_COLOROP_ENUM_MATRIX "Enumerated Matrix".

>  };
> =20
>  static const char * const colorop_curve_1d_type_names[] =3D {
> @@ -90,6 +91,13 @@ static const struct drm_prop_enum_list drm_colorop_lut=
3d_interpolation_list[] =3D
>  	{ DRM_COLOROP_LUT3D_INTERPOLATION_TETRAHEDRAL, "Tetrahedral" },
>  };
> =20
> +static const char * const colorop_csc_ff_type_names[] =3D {
> +	[DRM_COLOROP_CSC_FF_YUV601_RGB601]   =3D "YUV601 to RGB601",
> +	[DRM_COLOROP_CSC_FF_YUV709_RGB709]   =3D "YUV709 to RGB709",
> +	[DRM_COLOROP_CSC_FF_YUV2020_RGB2020] =3D "YUV2020 to RGB2020",
> +	[DRM_COLOROP_CSC_FF_RGB709_RGB2020]  =3D "RGB709 to RGB2020",

I'd suggest names:

"YCbCr 601 to RGB"
"YCbCr 709 to RGB"
"YCbCr 2020 NC to RGB"
"RGB709 to RGB2020"

or something in that direction.

The relevant ITU-R BT specifications use YCbCr nomenclature IIRC. Wrt.
YCbCr-to-RGB conversion, there is no RGB601, RGB709 or RGB2020. There
is only some RGB, and which primaries it uses is not always tied to
which YCbCr conversion was used.

For YCbCr 2020 I feel it's nice to remember, that there are two
different conversions in the specification: the simple matrix one
called "non-constant luminance", and the complex one called "constant
luminance". Hence "NC".

It's also good to recall that YCbCr-RGB conversions are done in an
electrical space, while RGB709-to-RGB2020 conversion must be done in the
optical space. It is up to the userspace to arrange the neighbouring
colorops to use the fixed matrix right.

> +};
> +
>  /* Init Helpers */
> =20
>  static int drm_plane_colorop_init(struct drm_device *dev, struct drm_col=
orop *colorop,
> @@ -459,6 +467,80 @@ int drm_plane_colorop_3dlut_init(struct drm_device *=
dev, struct drm_colorop *col
>  }
>  EXPORT_SYMBOL(drm_plane_colorop_3dlut_init);
> =20
> +/**
> + * drm_plane_colorop_csc_ff_init - Initialize a DRM_COLOROP_CSC_FF
> + *
> + * @dev: DRM device
> + * @colorop: The drm_colorop object to initialize
> + * @plane: The associated drm_plane
> + * @funcs: control functions for the new colorop
> + * @supported_csc_ff: A bitfield of supported drm_plane_colorop_csc_ff_t=
ype enum values,
> + *                    created using BIT(csc_ff_type) and combined with t=
he OR '|'
> + *                    operator.
> + * @flags: bitmask of misc, see DRM_COLOROP_FLAG_* defines.
> + * @return zero on success, -E value on failure
> + */
> +int drm_plane_colorop_csc_ff_init(struct drm_device *dev, struct drm_col=
orop *colorop,
> +				  struct drm_plane *plane, const struct drm_colorop_funcs *funcs,
> +				  u64 supported_csc_ff, uint32_t flags)
> +{
> +	struct drm_prop_enum_list enum_list[DRM_COLOROP_CSC_FF_COUNT];
> +	int i, len;
> +
> +	struct drm_property *prop;
> +	int ret;
> +
> +	if (!supported_csc_ff) {
> +		drm_err(dev,
> +			"No supported CSC op for new CSC FF colorop on [PLANE:%d:%s]\n",
> +			plane->base.id, plane->name);
> +		return -EINVAL;
> +	}
> +
> +	if ((supported_csc_ff & -BIT(DRM_COLOROP_CSC_FF_COUNT)) !=3D 0) {
> +		drm_err(dev, "Unknown CSC provided on [PLANE:%d:%s]\n",
> +			plane->base.id, plane->name);
> +		return -EINVAL;
> +	}
> +
> +	ret =3D drm_plane_colorop_init(dev, colorop, plane, funcs, DRM_COLOROP_=
CSC_FF, flags);
> +	if (ret)
> +		return ret;
> +
> +	len =3D 0;
> +	for (i =3D 0; i < DRM_COLOROP_CSC_FF_COUNT; i++) {
> +		if ((supported_csc_ff & BIT(i)) =3D=3D 0)
> +			continue;
> +
> +		enum_list[len].type =3D i;
> +		enum_list[len].name =3D colorop_csc_ff_type_names[i];
> +		len++;
> +	}
> +
> +	if (WARN_ON(len <=3D 0))
> +		return -EINVAL;
> +
> +	prop =3D drm_property_create_enum(dev, DRM_MODE_PROP_ATOMIC, "CSC_FF_TY=
PE",
> +					enum_list, len);

The Color Space Conversion Fixed-Function type is always "fixed
matrix", right?

The name for the colorop property to choose one of the supported
matrices could be... "matrix"? "choice"?

Does the property name need to be unique over all colorop types?

> +
> +	if (!prop)
> +		return -ENOMEM;
> +
> +	colorop->csc_ff_type_property =3D prop;
> +	/*
> +	 * Default to the first supported CSC mode as provided by the driver.
> +	 * Intuitively this should be something that keeps the colorop in pixel=
 bypass
> +	 * mode but that is already handled via the standard colorop bypass
> +	 * property.
> +	 */
> +	drm_object_attach_property(&colorop->base, colorop->csc_ff_type_propert=
y,
> +				   enum_list[0].type);
> +	drm_colorop_reset(colorop);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(drm_plane_colorop_csc_ff_init);
> +
>  static void __drm_atomic_helper_colorop_duplicate_state(struct drm_color=
op *colorop,
>  							struct drm_colorop_state *state)
>  {
> @@ -513,6 +595,13 @@ static void __drm_colorop_state_reset(struct drm_col=
orop_state *colorop_state,
>  						      &val);
>  		colorop_state->curve_1d_type =3D val;
>  	}
> +
> +	if (colorop->csc_ff_type_property) {
> +		drm_object_property_get_default_value(&colorop->base,
> +						      colorop->csc_ff_type_property,
> +						      &val);
> +		colorop_state->csc_ff_type =3D val;
> +	}
>  }
> =20
>  /**
> @@ -551,6 +640,7 @@ static const char * const colorop_type_name[] =3D {
>  	[DRM_COLOROP_CTM_3X4] =3D "3x4 Matrix",
>  	[DRM_COLOROP_MULTIPLIER] =3D "Multiplier",
>  	[DRM_COLOROP_3D_LUT] =3D "3D LUT",
> +	[DRM_COLOROP_CSC_FF] =3D "CSC Fixed-Function",
>  };

Why are there two arrays with the same DRM_COLOROP_* =3D name association?
drm_colorop_type_enum_list is the first one.

> =20
>  static const char * const colorop_lu3d_interpolation_name[] =3D {
> @@ -607,6 +697,21 @@ const char *drm_get_colorop_lut3d_interpolation_name=
(enum drm_colorop_lut3d_inte
>  	return colorop_lu3d_interpolation_name[type];
>  }
> =20
> +/**
> + * drm_get_colorop_csc_ff_type_name: return a string for interpolation t=
ype
> + * @type: csc ff type to compute name of
> + *
> + * In contrast to the other drm_get_*_name functions this one here retur=
ns a
> + * const pointer and hence is threadsafe.
> + */
> +const char *drm_get_colorop_csc_ff_type_name(enum drm_colorop_csc_ff_typ=
e type)
> +{
> +	if (WARN_ON(type >=3D ARRAY_SIZE(colorop_csc_ff_type_names)))
> +		return "unknown";
> +
> +	return colorop_csc_ff_type_names[type];
> +}
> +
>  /**
>   * drm_colorop_set_next_property - sets the next pointer
>   * @colorop: drm colorop
> diff --git a/include/drm/drm_colorop.h b/include/drm/drm_colorop.h
> index bd082854ca74..2cd8e0779c2a 100644
> --- a/include/drm/drm_colorop.h
> +++ b/include/drm/drm_colorop.h
> @@ -134,6 +134,60 @@ enum drm_colorop_curve_1d_type {
>  	DRM_COLOROP_1D_CURVE_COUNT
>  };
> =20
> +/**
> + * enum drm_colorop_csc_ff_type - type of CSC Fixed-Function
> + *
> + * Describes a CSC operation to be applied by the DRM_COLOROP_CSC_FF col=
orop.

It's a matrix operation. It seems to me that "CSC operation" is more
specific and does not fit the YCbCr-to-RGB conversion.

> + */
> +enum drm_colorop_csc_ff_type {
> +	/**
> +	 * @DRM_COLOROP_CSC_FF_YUV601_RGB601
> +	 *
> +	 * enum string "YUV601 to RGB601"
> +	 *
> +	 * Selects the fixed-function CSC preset that converts YUV
> +	 * (BT.601) colorimetry to RGB (BT.601).

This selects the matrix that converts YCbCr into RGB
according to the BT.601 coefficients.

> +	 */
> +	DRM_COLOROP_CSC_FF_YUV601_RGB601,
> +
> +	/**
> +	 * @DRM_COLOROP_CSC_FF_YUV709_RGB709:
> +	 *
> +	 * enum string "YUV709 to RGB709"
> +	 *
> +	 * Selects the fixed-function CSC preset that converts YUV
> +	 * (BT.709) colorimetry to RGB (BT.709).

This selects the matrix that converts YCbCr into RGB
according to the BT.709 coefficients.

> +	 */
> +	DRM_COLOROP_CSC_FF_YUV709_RGB709,
> +
> +	/**
> +	 * @DRM_COLOROP_CSC_FF_YUV2020_RGB2020:
> +	 *
> +	 * enum string "YUV2020 to RGB2020"
> +	 *
> +	 * Selects the fixed-function CSC preset that converts YUV
> +	 * (BT.2020) colorimetry to RGB (BT.2020).

This selects the matrix that converts YCbCr into RGB
according to the BT.2020 non-constant luminance coefficients.

> +	 */
> +	DRM_COLOROP_CSC_FF_YUV2020_RGB2020,
> +
> +	/**
> +	 * @DRM_COLOROP_CSC_FF_RGB709_RGB2020:
> +	 *
> +	 * enum string "RGB709 to RGB2020"
> +	 *
> +	 * Selects the fixed-function CSC preset that converts RGB
> +	 * (BT.709) colorimetry to RGB (BT.2020).

This selects the matrix that converts optical RGB from BT.709 primaries
to BT.2020 primaries.

> +	 */
> +	DRM_COLOROP_CSC_FF_RGB709_RGB2020,
> +
> +	/**
> +	 * @DRM_COLOROP_CSC_FF_COUNT:
> +	 *
> +	 * enum value denoting the size of the enum
> +	 */
> +	DRM_COLOROP_CSC_FF_COUNT
> +};
> +
>  /**
>   * struct drm_colorop_state - mutable colorop state
>   */
> @@ -183,6 +237,13 @@ struct drm_colorop_state {
>  	 */
>  	struct drm_property_blob *data;
> =20
> +	/**
> +	 * @csc_ff_type:
> +	 *
> +	 * Type of Fixed function CSC.
> +	 */
> +	enum drm_colorop_csc_ff_type csc_ff_type;
> +
>  	/** @state: backpointer to global drm_atomic_state */
>  	struct drm_atomic_state *state;
>  };
> @@ -368,6 +429,13 @@ struct drm_colorop {
>  	 */
>  	struct drm_property *data_property;
> =20
> +	/**
> +	 * @csc_ff_type_property:
> +	 *
> +	 * Sub-type for DRM_COLOROP_CSC_FF type.
> +	 */
> +	struct drm_property *csc_ff_type_property;
> +
>  	/**
>  	 * @next_property:
>  	 *
> @@ -424,6 +492,9 @@ int drm_plane_colorop_3dlut_init(struct drm_device *d=
ev, struct drm_colorop *col
>  				 uint32_t lut_size,
>  				 enum drm_colorop_lut3d_interpolation_type interpolation,
>  				 uint32_t flags);
> +int drm_plane_colorop_csc_ff_init(struct drm_device *dev, struct drm_col=
orop *colorop,
> +				  struct drm_plane *plane, const struct drm_colorop_funcs *funcs,
> +				  u64 supported_csc_ff, uint32_t flags);
> =20
>  struct drm_colorop_state *
>  drm_atomic_helper_colorop_duplicate_state(struct drm_colorop *colorop);
> @@ -480,6 +551,7 @@ drm_get_colorop_lut1d_interpolation_name(enum drm_col=
orop_lut1d_interpolation_ty
> =20
>  const char *
>  drm_get_colorop_lut3d_interpolation_name(enum drm_colorop_lut3d_interpol=
ation_type type);
> +const char *drm_get_colorop_csc_ff_type_name(enum drm_colorop_csc_ff_typ=
e type);
> =20
>  void drm_colorop_set_next_property(struct drm_colorop *colorop, struct d=
rm_colorop *next);
> =20
> diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
> index 3693d82b5279..f7808e7ea984 100644
> --- a/include/uapi/drm/drm_mode.h
> +++ b/include/uapi/drm/drm_mode.h
> @@ -968,6 +968,19 @@ enum drm_colorop_type {
>  	 *         color =3D lut3d[index]
>  	 */
>  	DRM_COLOROP_3D_LUT,
> +
> +	/**
> +	 * @DRM_COLOROP_CSC_FF:
> +	 *
> +	 * enum string "CSC Fixed-Function"
> +	 *
> +	 * A fixed-function Color Space Conversion block where the coefficients
> +	 * are not programmable but selected from predefined hardware modes via
> +	 * the CSC_FF_TYPE enum property. The driver advertises the supported
> +	 * CSC modes through this property.

This would be a lot more obvious if it was called a "fixed matrix"
operation or such. The current wording never mentions "matrix".

> +	 */
> +	DRM_COLOROP_CSC_FF,
> +
>  };
> =20
>  /**

Thanks,
pq

--Sig_/MFoGoNaOk1KviB3flGmdAb5
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmmwK30ACgkQI1/ltBGq
qqeKwQ//QINU4VCENkR+VsMDNo3hzSNXzGXYlfKUxmwKw0YzYoU3htndWlxJ3Vk8
Zz9FaY9MfY8W7pkBlqPmbh8SMKYtMFWXMiDzVGVkphFUUN95if8O6sdpR9ehYKPZ
FlQSLI/CppSQ3d5AqdLVYgmDfbW8GEfpEspsf+rB19VwvJyL7qbrboyWauXLprEF
y5qGySuxUh/WC68eoymwlaZHfEwpybwsC+mBL9ZeA79n3mPS3lfGrIvYx3uhwxQY
/ucuc8ImyduyqOvYqiQqOQy5FbOhe2CVfzx1+keiMYDn3iZXAvR8aKhEo3C5vUPv
EtZY+KaiaB7iHV1cNyIrAfzxEq1yj9xUHeryxuAojm03sEy+7wVmmkP5VhvL6ede
x2bY/gMXrG04QN7yxMHZ3y1Qed+w3B0Yj3f+wgrmNxRR+JvA9X6tTh3Mdf9ogvky
S3y/oV/gFxmvcRlHcXvm968q1a+1gGxGAtjiHBi9t/jRbgevyMZA17U/41zbosvP
5/mhqn8nX6aRs8wz5Xd3TQd8pFuUX9oKudaXj4VjH/lWZFjO/AAZLN1uHNzSjwy6
gw1RGpt+2h3ObRxA6ikiomJ6w+DQysyMGfIpggelrNtqZbH/JfCgmzGLZON5pepp
wTwRQteVJW0/HdUcqNCYDCv+RfuoKhsK3nU4lk0yOG4S2JGF0L8=
=+2Hz
-----END PGP SIGNATURE-----

--Sig_/MFoGoNaOk1KviB3flGmdAb5--
