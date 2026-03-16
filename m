Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNC5NQbGt2kRVQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 09:57:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C330296890
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 09:57:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C232610E386;
	Mon, 16 Mar 2026 08:57:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=collabora.com header.i=@collabora.com header.b="BAdVUFOG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com
 [148.251.105.195])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3F1310E37C;
 Mon, 16 Mar 2026 08:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1773651457;
 bh=x6Q+8eMpH6JxTYEzuYVBWgFh5IKKG7foAfIOI+u8IIA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=BAdVUFOGx2BfnchDQ/MRsYd+hYCaDUny4yUNQtE/cttdo3RbdT0d6NlD6TeTG75hy
 QDb6BZ8WqhXHwNl5kOJ0tjjGWsExHcFsvGizjqTLdQzPmisPqdouqvmN5DZNjYlPbD
 ig/L6BFHo7MyVBnQpzJOs+kbJ5dK8DF27fyfeBQZmQmCphJ7zt7Ygr2tJ7HJR6iZW1
 fWHjRtm3f/pN6q6iz1bXhLwm4DB9n+POr32mn9oRbGP2PIeTCGWu2dRZ4Sl74SeqM9
 o1Lozt65N7YfbTWKZ439eVc17R6/CGWDyycNbe8y2kLs6OzcCJmt8YpYB+ppzQsLAY
 x8GLpXE0vy+kA==
Received: from eldfell (unknown [194.136.85.206])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: pq)
 by bali.collaboradmins.com (Postfix) with ESMTPSA id D2BA917E1330;
 Mon, 16 Mar 2026 09:57:36 +0100 (CET)
Date: Mon, 16 Mar 2026 10:57:24 +0200
From: Pekka Paalanen <pekka.paalanen@collabora.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 <harry.wentland@amd.com>
Cc: <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <louis.chauvet@bootlin.com>,
 <mwen@igalia.com>, <contact@emersion.fr>, <alex.hung@amd.com>,
 <daniels@collabora.com>, <uma.shankar@intel.com>,
 <maarten.lankhorst@intel.com>, <pranay.samala@intel.com>,
 <swati2.sharma@intel.com>
Subject: Re: [PATCH 01/10] drm/colorop: Add DRM_COLOROP_CSC_FF
Message-ID: <20260316105724.47d24409@eldfell>
In-Reply-To: <53c3f610-942c-46bf-be5f-a4c51625c358@intel.com>
References: <20260306165307.3233194-1-chaitanya.kumar.borah@intel.com>
 <20260306165307.3233194-2-chaitanya.kumar.borah@intel.com>
 <20260310163229.521186ab@eldfell>
 <53c3f610-942c-46bf-be5f-a4c51625c358@intel.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/ppUUbMM1t85cLWiz3_=vpVH";
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
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 4C330296890
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--Sig_/ppUUbMM1t85cLWiz3_=vpVH
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Mon, 16 Mar 2026 12:46:39 +0530
"Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:

> Hi Pekka,
>=20
> Thank you for looking into the patch.

Hi Chaitanya!

Replies inline below.

>=20
> On 3/10/2026 8:02 PM, Pekka Paalanen wrote:
> > On Fri,  6 Mar 2026 22:22:58 +0530
> > Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> >  =20
> >> Introduce DRM_COLOROP_CSC_FF, a new colorop type representing a
> >> fixed-function Color Space Conversion (CSC) block.
> >>
> >> Unlike CTM-based colorops, this block does not expose programmable
> >> coefficients. Instead, userspace selects one of the predefined
> >> hardware modes via a new CSC_FF_TYPE enum property. Supported modes
> >> include common YUV->RGB and RGB709->RGB2020 conversions.
> >>
> >> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> >> ---
> >>   drivers/gpu/drm/drm_atomic.c      |   4 ++
> >>   drivers/gpu/drm/drm_atomic_uapi.c |   4 ++
> >>   drivers/gpu/drm/drm_colorop.c     | 105 ++++++++++++++++++++++++++++=
++
> >>   include/drm/drm_colorop.h         |  72 ++++++++++++++++++++
> >>   include/uapi/drm/drm_mode.h       |  13 ++++
> >>   5 files changed, 198 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic=
.c
> >> index 04925166df98..7296b844e3fd 100644
> >> --- a/drivers/gpu/drm/drm_atomic.c
> >> +++ b/drivers/gpu/drm/drm_atomic.c
> >> @@ -844,6 +844,10 @@ static void drm_atomic_colorop_print_state(struct=
 drm_printer *p,
> >>   			   drm_get_colorop_lut3d_interpolation_name(colorop->lut3d_interp=
olation));
> >>   		drm_printf(p, "\tdata blob id=3D%d\n", state->data ? state->data->=
base.id : 0);
> >>   		break;
> >> +	case DRM_COLOROP_CSC_FF:
> >> +		drm_printf(p, "\tcsc_ff_type=3D%s\n",
> >> +			   drm_get_colorop_csc_ff_type_name(state->csc_ff_type));
> >> +		break;
> >>   	default:
> >>   		break;
> >>   	}
> >> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_a=
tomic_uapi.c
> >> index 87de41fb4459..9af73325aa93 100644
> >> --- a/drivers/gpu/drm/drm_atomic_uapi.c
> >> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> >> @@ -757,6 +757,8 @@ static int drm_atomic_colorop_set_property(struct =
drm_colorop *colorop,
> >>   	} else if (property =3D=3D colorop->data_property) {
> >>   		return drm_atomic_color_set_data_property(colorop, state,
> >>   							  property, val);
> >> +	} else if (property =3D=3D colorop->csc_ff_type_property) {
> >> +		state->csc_ff_type =3D val;
> >>   	} else {
> >>   		drm_dbg_atomic(colorop->dev,
> >>   			       "[COLOROP:%d:%d] unknown property [PROP:%d:%s]\n",
> >> @@ -789,6 +791,8 @@ drm_atomic_colorop_get_property(struct drm_colorop=
 *colorop,
> >>   		*val =3D colorop->lut3d_interpolation;
> >>   	else if (property =3D=3D colorop->data_property)
> >>   		*val =3D (state->data) ? state->data->base.id : 0;
> >> +	else if (property =3D=3D colorop->csc_ff_type_property)
> >> +		*val =3D state->csc_ff_type;
> >>   	else
> >>   		return -EINVAL;
> >>  =20
> >> diff --git a/drivers/gpu/drm/drm_colorop.c b/drivers/gpu/drm/drm_color=
op.c
> >> index f421c623b3f0..49422c625f4d 100644
> >> --- a/drivers/gpu/drm/drm_colorop.c
> >> +++ b/drivers/gpu/drm/drm_colorop.c
> >> @@ -68,6 +68,7 @@ static const struct drm_prop_enum_list drm_colorop_t=
ype_enum_list[] =3D {
> >>   	{ DRM_COLOROP_CTM_3X4, "3x4 Matrix"},
> >>   	{ DRM_COLOROP_MULTIPLIER, "Multiplier"},
> >>   	{ DRM_COLOROP_3D_LUT, "3D LUT"},
> >> +	{ DRM_COLOROP_CSC_FF, "CSC Fixed-Function"}, =20
> >=20
> > Hi,
> >=20
> > the fundamental idea seems fine to me, but I have a lot to say about the
> > nomenclature.
> >=20
> > What would you think of a more readable name DRM_COLOROP_FIXED_MATRIX
> > "Fixed Matrix"?
> >=20
> > Alternatively DRM_COLOROP_ENUM_MATRIX "Enumerated Matrix".
> >  =20
>=20
> I was intentionally staying away from the word matrix because there was=20
> no programmable matrix but it would make sense to name it something like
> DRM_COLOROP_FIXED_MATRIX (or *_PRESET_MATRIX for that matter).
>=20
> >>   };
> >>  =20
> >>   static const char * const colorop_curve_1d_type_names[] =3D {
> >> @@ -90,6 +91,13 @@ static const struct drm_prop_enum_list drm_colorop_=
lut3d_interpolation_list[] =3D
> >>   	{ DRM_COLOROP_LUT3D_INTERPOLATION_TETRAHEDRAL, "Tetrahedral" },
> >>   };
> >>  =20
> >> +static const char * const colorop_csc_ff_type_names[] =3D {
> >> +	[DRM_COLOROP_CSC_FF_YUV601_RGB601]   =3D "YUV601 to RGB601",
> >> +	[DRM_COLOROP_CSC_FF_YUV709_RGB709]   =3D "YUV709 to RGB709",
> >> +	[DRM_COLOROP_CSC_FF_YUV2020_RGB2020] =3D "YUV2020 to RGB2020",
> >> +	[DRM_COLOROP_CSC_FF_RGB709_RGB2020]  =3D "RGB709 to RGB2020", =20
> >=20
> > I'd suggest names:
> >=20
> > "YCbCr 601 to RGB"
> > "YCbCr 709 to RGB"
> > "YCbCr 2020 NC to RGB"
> > "RGB709 to RGB2020"
> >=20
> > or something in that direction.
> >=20
> > The relevant ITU-R BT specifications use YCbCr nomenclature IIRC. Wrt.
> > YCbCr-to-RGB conversion, there is no RGB601, RGB709 or RGB2020. There
> > is only some RGB, and which primaries it uses is not always tied to
> > which YCbCr conversion was used.
> > =20
>=20
> What I understand from this is that the BT.709(et al.) only defines the=20
> matrix that is used for YCbCr->RGB, "what" RGB it is defined by the=20
> primaries (which comes with metadata?).

Unfortunately, BT.601, BT.709 and BT.2020 define two separate things each:
- the YCbCr<->RGB conversion, and
- the colorspace primaries (and white point, but that is the same for
  them all).

BT.601 actually has two different sets of primaries. Bt.2020 defines
two different YCbCr conversions. BT.709 uses the same primaries as
sRGB, but is different from sRGB on all other aspects.

Therefore, when you refer to any one of these, you also need to be
clear whether you are referring to the YCbCr conversion or to the
primaries.

> I will read up on why our HW names these bits as such.

Sure, but keep in mind that your hardware naming is irrelevant for the
UAPI design.

> > For YCbCr 2020 I feel it's nice to remember, that there are two
> > different conversions in the specification: the simple matrix one
> > called "non-constant luminance", and the complex one called "constant
> > luminance". Hence "NC".
> >=20
> > It's also good to recall that YCbCr-RGB conversions are done in an
> > electrical space, while RGB709-to-RGB2020 conversion must be done in the
> > optical space. It is up to the userspace to arrange the neighbouring
> > colorops to use the fixed matrix right.
> >  =20
>=20
> Ack on the above.
>=20
> >> +};
> >> +
> >>   /* Init Helpers */
> >>  =20
> >>   static int drm_plane_colorop_init(struct drm_device *dev, struct drm=
_colorop *colorop,
> >> @@ -459,6 +467,80 @@ int drm_plane_colorop_3dlut_init(struct drm_devic=
e *dev, struct drm_colorop *col
> >>   }
> >>   EXPORT_SYMBOL(drm_plane_colorop_3dlut_init);
> >>  =20
> >> +/**
> >> + * drm_plane_colorop_csc_ff_init - Initialize a DRM_COLOROP_CSC_FF
> >> + *
> >> + * @dev: DRM device
> >> + * @colorop: The drm_colorop object to initialize
> >> + * @plane: The associated drm_plane
> >> + * @funcs: control functions for the new colorop
> >> + * @supported_csc_ff: A bitfield of supported drm_plane_colorop_csc_f=
f_type enum values,
> >> + *                    created using BIT(csc_ff_type) and combined wit=
h the OR '|'
> >> + *                    operator.
> >> + * @flags: bitmask of misc, see DRM_COLOROP_FLAG_* defines.
> >> + * @return zero on success, -E value on failure
> >> + */
> >> +int drm_plane_colorop_csc_ff_init(struct drm_device *dev, struct drm_=
colorop *colorop,
> >> +				  struct drm_plane *plane, const struct drm_colorop_funcs *funcs,
> >> +				  u64 supported_csc_ff, uint32_t flags)
> >> +{
> >> +	struct drm_prop_enum_list enum_list[DRM_COLOROP_CSC_FF_COUNT];
> >> +	int i, len;
> >> +
> >> +	struct drm_property *prop;
> >> +	int ret;
> >> +
> >> +	if (!supported_csc_ff) {
> >> +		drm_err(dev,
> >> +			"No supported CSC op for new CSC FF colorop on [PLANE:%d:%s]\n",
> >> +			plane->base.id, plane->name);
> >> +		return -EINVAL;
> >> +	}
> >> +
> >> +	if ((supported_csc_ff & -BIT(DRM_COLOROP_CSC_FF_COUNT)) !=3D 0) {
> >> +		drm_err(dev, "Unknown CSC provided on [PLANE:%d:%s]\n",
> >> +			plane->base.id, plane->name);
> >> +		return -EINVAL;
> >> +	}
> >> +
> >> +	ret =3D drm_plane_colorop_init(dev, colorop, plane, funcs, DRM_COLOR=
OP_CSC_FF, flags);
> >> +	if (ret)
> >> +		return ret;
> >> +
> >> +	len =3D 0;
> >> +	for (i =3D 0; i < DRM_COLOROP_CSC_FF_COUNT; i++) {
> >> +		if ((supported_csc_ff & BIT(i)) =3D=3D 0)
> >> +			continue;
> >> +
> >> +		enum_list[len].type =3D i;
> >> +		enum_list[len].name =3D colorop_csc_ff_type_names[i];
> >> +		len++;
> >> +	}
> >> +
> >> +	if (WARN_ON(len <=3D 0))
> >> +		return -EINVAL;
> >> +
> >> +	prop =3D drm_property_create_enum(dev, DRM_MODE_PROP_ATOMIC, "CSC_FF=
_TYPE",
> >> +					enum_list, len); =20
> >=20
> > The Color Space Conversion Fixed-Function type is always "fixed
> > matrix", right?
> >=20
> > The name for the colorop property to choose one of the supported
> > matrices could be... "matrix"? "choice"? =20
>=20
> Ack.
>=20
> >=20
> > Does the property name need to be unique over all colorop types?
> >  =20
>=20
> I am not sure if I understand your question. Could you please elaborate?

Let's say we have two colorop types: MATRIX implements an arbitrary
programmable matrix, and FIXED_MATRIX where you pick the matrix from an
enum.

MATRIX needs a property for the matrix data, I think there is a
colorop property named DATA that takes a blob id and is used by several
colorop types for different kinds of data - they all take a blob id
though.

Ok, so there is no strict requirement for the property to be unique
over all colorop types. But are there any design guidelines here?

Hmm, maybe not.

> >> +
> >> +	if (!prop)
> >> +		return -ENOMEM;
> >> +
> >> +	colorop->csc_ff_type_property =3D prop;
> >> +	/*
> >> +	 * Default to the first supported CSC mode as provided by the driver.
> >> +	 * Intuitively this should be something that keeps the colorop in pi=
xel bypass
> >> +	 * mode but that is already handled via the standard colorop bypass
> >> +	 * property.
> >> +	 */
> >> +	drm_object_attach_property(&colorop->base, colorop->csc_ff_type_prop=
erty,
> >> +				   enum_list[0].type);
> >> +	drm_colorop_reset(colorop);
> >> +
> >> +	return 0;
> >> +}
> >> +EXPORT_SYMBOL(drm_plane_colorop_csc_ff_init);
> >> +
> >>   static void __drm_atomic_helper_colorop_duplicate_state(struct drm_c=
olorop *colorop,
> >>   							struct drm_colorop_state *state)
> >>   {
> >> @@ -513,6 +595,13 @@ static void __drm_colorop_state_reset(struct drm_=
colorop_state *colorop_state,
> >>   						      &val);
> >>   		colorop_state->curve_1d_type =3D val;
> >>   	}
> >> +
> >> +	if (colorop->csc_ff_type_property) {
> >> +		drm_object_property_get_default_value(&colorop->base,
> >> +						      colorop->csc_ff_type_property,
> >> +						      &val);
> >> +		colorop_state->csc_ff_type =3D val;
> >> +	}
> >>   }
> >>  =20
> >>   /**
> >> @@ -551,6 +640,7 @@ static const char * const colorop_type_name[] =3D {
> >>   	[DRM_COLOROP_CTM_3X4] =3D "3x4 Matrix",
> >>   	[DRM_COLOROP_MULTIPLIER] =3D "Multiplier",
> >>   	[DRM_COLOROP_3D_LUT] =3D "3D LUT",
> >> +	[DRM_COLOROP_CSC_FF] =3D "CSC Fixed-Function",
> >>   }; =20
> >=20
> > Why are there two arrays with the same DRM_COLOROP_* =3D name associati=
on?
> > drm_colorop_type_enum_list is the first one.
> >  =20
>=20
> This array is explicitly used by drm_get_colorop_type_name(). Connectors=
=20
> use an enum list for a similar purpose, so colorops could also reuse an=20
> enum list here, provided that the enum array index remains in sync with=20
> the corresponding enum value.
>=20
> >>  =20
> >>   static const char * const colorop_lu3d_interpolation_name[] =3D {
> >> @@ -607,6 +697,21 @@ const char *drm_get_colorop_lut3d_interpolation_n=
ame(enum drm_colorop_lut3d_inte
> >>   	return colorop_lu3d_interpolation_name[type];
> >>   }
> >>  =20
> >> +/**
> >> + * drm_get_colorop_csc_ff_type_name: return a string for interpolatio=
n type
> >> + * @type: csc ff type to compute name of
> >> + *
> >> + * In contrast to the other drm_get_*_name functions this one here re=
turns a
> >> + * const pointer and hence is threadsafe.
> >> + */
> >> +const char *drm_get_colorop_csc_ff_type_name(enum drm_colorop_csc_ff_=
type type)
> >> +{
> >> +	if (WARN_ON(type >=3D ARRAY_SIZE(colorop_csc_ff_type_names)))
> >> +		return "unknown";
> >> +
> >> +	return colorop_csc_ff_type_names[type];
> >> +}
> >> +
> >>   /**
> >>    * drm_colorop_set_next_property - sets the next pointer
> >>    * @colorop: drm colorop
> >> diff --git a/include/drm/drm_colorop.h b/include/drm/drm_colorop.h
> >> index bd082854ca74..2cd8e0779c2a 100644
> >> --- a/include/drm/drm_colorop.h
> >> +++ b/include/drm/drm_colorop.h
> >> @@ -134,6 +134,60 @@ enum drm_colorop_curve_1d_type {
> >>   	DRM_COLOROP_1D_CURVE_COUNT
> >>   };
> >>  =20
> >> +/**
> >> + * enum drm_colorop_csc_ff_type - type of CSC Fixed-Function
> >> + *
> >> + * Describes a CSC operation to be applied by the DRM_COLOROP_CSC_FF =
colorop. =20
> >=20
> > It's a matrix operation. It seems to me that "CSC operation" is more
> > specific and does not fit the YCbCr-to-RGB conversion.
> >  =20
>=20
> Yes makes sense, matrix would be a more generic term.
>=20
> >> + */
> >> +enum drm_colorop_csc_ff_type {
> >> +	/**
> >> +	 * @DRM_COLOROP_CSC_FF_YUV601_RGB601
> >> +	 *
> >> +	 * enum string "YUV601 to RGB601"
> >> +	 *
> >> +	 * Selects the fixed-function CSC preset that converts YUV
> >> +	 * (BT.601) colorimetry to RGB (BT.601). =20
> >=20
> > This selects the matrix that converts YCbCr into RGB
> > according to the BT.601 coefficients.
> >  =20
> >> +	 */
> >> +	DRM_COLOROP_CSC_FF_YUV601_RGB601,
> >> +
> >> +	/**
> >> +	 * @DRM_COLOROP_CSC_FF_YUV709_RGB709:
> >> +	 *
> >> +	 * enum string "YUV709 to RGB709"
> >> +	 *
> >> +	 * Selects the fixed-function CSC preset that converts YUV
> >> +	 * (BT.709) colorimetry to RGB (BT.709). =20
> >=20
> > This selects the matrix that converts YCbCr into RGB
> > according to the BT.709 coefficients.
> >  =20
> >> +	 */
> >> +	DRM_COLOROP_CSC_FF_YUV709_RGB709,
> >> +
> >> +	/**
> >> +	 * @DRM_COLOROP_CSC_FF_YUV2020_RGB2020:
> >> +	 *
> >> +	 * enum string "YUV2020 to RGB2020"
> >> +	 *
> >> +	 * Selects the fixed-function CSC preset that converts YUV
> >> +	 * (BT.2020) colorimetry to RGB (BT.2020). =20
> >=20
> > This selects the matrix that converts YCbCr into RGB
> > according to the BT.2020 non-constant luminance coefficients.
> >  =20
> >> +	 */
> >> +	DRM_COLOROP_CSC_FF_YUV2020_RGB2020,
> >> +
> >> +	/**
> >> +	 * @DRM_COLOROP_CSC_FF_RGB709_RGB2020:
> >> +	 *
> >> +	 * enum string "RGB709 to RGB2020"
> >> +	 *
> >> +	 * Selects the fixed-function CSC preset that converts RGB
> >> +	 * (BT.709) colorimetry to RGB (BT.2020). =20
> >=20
> > This selects the matrix that converts optical RGB from BT.709 primaries
> > to BT.2020 primaries.
> >  =20
>=20
> Ack on the documentation.
>=20
> >> +	 */
> >> +	DRM_COLOROP_CSC_FF_RGB709_RGB2020,
> >> +
> >> +	/**
> >> +	 * @DRM_COLOROP_CSC_FF_COUNT:
> >> +	 *
> >> +	 * enum value denoting the size of the enum
> >> +	 */
> >> +	DRM_COLOROP_CSC_FF_COUNT
> >> +};
> >> +
> >>   /**
> >>    * struct drm_colorop_state - mutable colorop state
> >>    */
> >> @@ -183,6 +237,13 @@ struct drm_colorop_state {
> >>   	 */
> >>   	struct drm_property_blob *data;
> >>  =20
> >> +	/**
> >> +	 * @csc_ff_type:
> >> +	 *
> >> +	 * Type of Fixed function CSC.
> >> +	 */
> >> +	enum drm_colorop_csc_ff_type csc_ff_type;
> >> +
> >>   	/** @state: backpointer to global drm_atomic_state */
> >>   	struct drm_atomic_state *state;
> >>   };
> >> @@ -368,6 +429,13 @@ struct drm_colorop {
> >>   	 */
> >>   	struct drm_property *data_property;
> >>  =20
> >> +	/**
> >> +	 * @csc_ff_type_property:
> >> +	 *
> >> +	 * Sub-type for DRM_COLOROP_CSC_FF type.
> >> +	 */
> >> +	struct drm_property *csc_ff_type_property;
> >> +
> >>   	/**
> >>   	 * @next_property:
> >>   	 *
> >> @@ -424,6 +492,9 @@ int drm_plane_colorop_3dlut_init(struct drm_device=
 *dev, struct drm_colorop *col
> >>   				 uint32_t lut_size,
> >>   				 enum drm_colorop_lut3d_interpolation_type interpolation,
> >>   				 uint32_t flags);
> >> +int drm_plane_colorop_csc_ff_init(struct drm_device *dev, struct drm_=
colorop *colorop,
> >> +				  struct drm_plane *plane, const struct drm_colorop_funcs *funcs,
> >> +				  u64 supported_csc_ff, uint32_t flags);
> >>  =20
> >>   struct drm_colorop_state *
> >>   drm_atomic_helper_colorop_duplicate_state(struct drm_colorop *coloro=
p);
> >> @@ -480,6 +551,7 @@ drm_get_colorop_lut1d_interpolation_name(enum drm_=
colorop_lut1d_interpolation_ty
> >>  =20
> >>   const char *
> >>   drm_get_colorop_lut3d_interpolation_name(enum drm_colorop_lut3d_inte=
rpolation_type type);
> >> +const char *drm_get_colorop_csc_ff_type_name(enum drm_colorop_csc_ff_=
type type);
> >>  =20
> >>   void drm_colorop_set_next_property(struct drm_colorop *colorop, stru=
ct drm_colorop *next);
> >>  =20
> >> diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
> >> index 3693d82b5279..f7808e7ea984 100644
> >> --- a/include/uapi/drm/drm_mode.h
> >> +++ b/include/uapi/drm/drm_mode.h
> >> @@ -968,6 +968,19 @@ enum drm_colorop_type {
> >>   	 *         color =3D lut3d[index]
> >>   	 */
> >>   	DRM_COLOROP_3D_LUT,
> >> +
> >> +	/**
> >> +	 * @DRM_COLOROP_CSC_FF:
> >> +	 *
> >> +	 * enum string "CSC Fixed-Function"
> >> +	 *
> >> +	 * A fixed-function Color Space Conversion block where the coefficie=
nts
> >> +	 * are not programmable but selected from predefined hardware modes =
via
> >> +	 * the CSC_FF_TYPE enum property. The driver advertises the supported
> >> +	 * CSC modes through this property. =20
> >=20
> > This would be a lot more obvious if it was called a "fixed matrix"
> > operation or such. The current wording never mentions "matrix".
> >  =20
>=20
> Ack.
>=20
> I also wanted throw this question out there. Since we have introduced=20
> YUV to RGB conversion colorop which essentially replaces the color=20
> encoding property, would this also be the right time to bring in=20
> something to replace the color range property.

Yes.

> I recall Harry mentioning in the cover letter of the original series=20
> that he was working on something along those lines.

Reading Harry's latest blog post it sounds he has done similar work as
you.

Harry's blog link seems dead, but the post is available at
https://planet.freedesktop.org/
titled "Harry Wentland: Plane Color Pipeline, CSC, 3D LUT, and KWin"
with links to patches.


Thanks,
pq

>=20
> =3D=3D
> Chaitanya
>=20
> >> +	 */
> >> +	DRM_COLOROP_CSC_FF,
> >> +
> >>   };
> >>  =20
> >>   /** =20
> >=20
> > Thanks,
> > pq =20
>=20


--Sig_/ppUUbMM1t85cLWiz3_=vpVH
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmm3xfQACgkQI1/ltBGq
qqf/Ew/8DlkdPSHMfs70plYMVmym+7i5yjfBt+q1bNWvu+Z8urKXxj1Sd9v+mP3u
GBMcAvTGROfMCcN/ak3rMov5GbeSdD7JbpVOMZv80C5ZFEBr6ofAINmDtkzZP/fK
Xw+0Uy9zDGZX42hsQWO4zWksiIvIVuSwtTyMXzEo5gfUjQe55NOkz79pHF7ideKJ
XnOIPoPBh6axWm4/druIzqg6n1BOlI4vWzMEDCCDLXrQUuU40PIEAb81tX3IBfoh
S5LcZBoTBHMfTdnXcor8Ce8pfxWOVKZBPFKt+bKDpc6Zkk+L5uaLx9CWvgSu4Uu+
ntbJxdOn7TxjAThaZa3N5/TGgU/FQ/nSfMmsGGgS85UQKgtRFhhBJq5zaRHNLmi2
AA1biO/MV0b/EdYn/lXGU6QUFwUHLNztdCzR90qpAlQXELtN0MlZKvtvuNuKmRst
RV2CY6oE3QWvF3PNUx3riw6u3kSQ7DZD1jZjXCnj5zoM5OVMLwQBbK3gdZT6XWcj
nj1wYDIhdaDYCc4KDHgODOtOT9eD77rz1jMktcagjpY5qufay34nuR/jA+oqVvtH
sQnIGoYwfJR3Em9TWf4YuUyg8E2QGJIHhVTGLu6m8Drf4R/aVRAoDmODJNY8PaqU
UO7kD1y7jbgTe3BmYoCJ9scRW/jAUAqXToFEKYdV1zRI3oQDG8M=
=YyWZ
-----END PGP SIGNATURE-----

--Sig_/ppUUbMM1t85cLWiz3_=vpVH--
