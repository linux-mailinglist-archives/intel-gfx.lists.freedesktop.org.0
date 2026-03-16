Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEuIN+0puGnhZgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 17:03:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A26F29CFA6
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 17:03:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AFF010E3BD;
	Mon, 16 Mar 2026 16:03:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=collabora.com header.i=@collabora.com header.b="fi9YGVlo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com
 [148.251.105.195])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2574710E3BD;
 Mon, 16 Mar 2026 16:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1773677032;
 bh=xUJjtr2yHreSmN5lOL0RK5jVYVKI2rJOw8/uwUSHKZ8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fi9YGVloG7gyNlRvNqILN5xPdEK/g94lCemjpUuz0vbPMftU7Majpfj65mE9L1sRp
 iNiWpNFQK0pqnhJavz/S0Dfg93zbAOPQGZUaXCloZtz/UTWGo/+zIy4dS91KVdSI8r
 hIIiql1b+Yg+PO9seYHawdC84gEDwPZzMNSO/QFOiXFpjbTciA22DKvv1w8NvVo8bM
 9YL+NSWqL14doLSr/Dkbcba/6vUuO++ERuKEqBIrTfEbPSsEitdaAFQ6dkciwEM9rq
 GjBnsMrZTrGLx6VEg7JQD0ILTuuoy76F0+hGqn8rpvFQMF+mAyVoqJgcIJEf0pQ6/0
 P5OUXGxsemWJg==
Received: from eldfell (unknown [194.136.85.206])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: pq)
 by bali.collaboradmins.com (Postfix) with ESMTPSA id 2834817E05B5;
 Mon, 16 Mar 2026 17:03:52 +0100 (CET)
Date: Mon, 16 Mar 2026 18:03:38 +0200
From: Pekka Paalanen <pekka.paalanen@collabora.com>
To: Harry Wentland <harry.wentland@amd.com>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, louis.chauvet@bootlin.com, mwen@igalia.com,
 contact@emersion.fr, alex.hung@amd.com, daniels@collabora.com,
 uma.shankar@intel.com, maarten.lankhorst@intel.com,
 pranay.samala@intel.com, swati2.sharma@intel.com
Subject: Re: [PATCH 01/10] drm/colorop: Add DRM_COLOROP_CSC_FF
Message-ID: <20260316180338.0b2f6923@eldfell>
In-Reply-To: <0969dd82-0212-4fec-b693-e53c6ddd692c@amd.com>
References: <20260306165307.3233194-1-chaitanya.kumar.borah@intel.com>
 <20260306165307.3233194-2-chaitanya.kumar.borah@intel.com>
 <20260310163229.521186ab@eldfell>
 <53c3f610-942c-46bf-be5f-a4c51625c358@intel.com>
 <20260316105724.47d24409@eldfell>
 <eaaea3f6-76ce-4b20-b7b1-b483594070cd@intel.com>
 <20260316135349.06476e85@eldfell>
 <0969dd82-0212-4fec-b693-e53c6ddd692c@amd.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/+a4oZIkuvnRaN=Q1_tNK/=R";
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
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,wiley.com:url,collabora.com:dkim,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 4A26F29CFA6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--Sig_/+a4oZIkuvnRaN=Q1_tNK/=R
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Mon, 16 Mar 2026 10:36:44 -0400
Harry Wentland <harry.wentland@amd.com> wrote:

> On 2026-03-16 07:53, Pekka Paalanen wrote:
> > On Mon, 16 Mar 2026 16:04:32 +0530
> > "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
> >  =20
> >> On 3/16/2026 2:27 PM, Pekka Paalanen wrote: =20
> >>> On Mon, 16 Mar 2026 12:46:39 +0530
> >>> "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
> >>>    =20
> >>>> Hi Pekka,
> >>>>
> >>>> Thank you for looking into the patch.   =20
> >>>
> >>> Hi Chaitanya!
> >>>
> >>> Replies inline below.
> >>>    =20
> >>>>
> >>>> On 3/10/2026 8:02 PM, Pekka Paalanen wrote:   =20
> >>>>> On Fri,  6 Mar 2026 22:22:58 +0530
> >>>>> Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> >>>>>       =20
> >>>>>> Introduce DRM_COLOROP_CSC_FF, a new colorop type representing a
> >>>>>> fixed-function Color Space Conversion (CSC) block.
> >>>>>>
> >>>>>> Unlike CTM-based colorops, this block does not expose programmable
> >>>>>> coefficients. Instead, userspace selects one of the predefined
> >>>>>> hardware modes via a new CSC_FF_TYPE enum property. Supported modes
> >>>>>> include common YUV->RGB and RGB709->RGB2020 conversions.
> >>>>>>
> >>>>>> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.=
com> =20
> >=20
> > ...
> >  =20
> >>>>>> diff --git a/drivers/gpu/drm/drm_colorop.c b/drivers/gpu/drm/drm_c=
olorop.c
> >>>>>> index f421c623b3f0..49422c625f4d 100644
> >>>>>> --- a/drivers/gpu/drm/drm_colorop.c
> >>>>>> +++ b/drivers/gpu/drm/drm_colorop.c
> >>>>>> @@ -68,6 +68,7 @@ static const struct drm_prop_enum_list drm_color=
op_type_enum_list[] =3D {
> >>>>>>    	{ DRM_COLOROP_CTM_3X4, "3x4 Matrix"},
> >>>>>>    	{ DRM_COLOROP_MULTIPLIER, "Multiplier"},
> >>>>>>    	{ DRM_COLOROP_3D_LUT, "3D LUT"},
> >>>>>> +	{ DRM_COLOROP_CSC_FF, "CSC Fixed-Function"},   =20
> >>>>>
> >>>>> Hi,
> >>>>>
> >>>>> the fundamental idea seems fine to me, but I have a lot to say abou=
t the
> >>>>> nomenclature.
> >>>>>
> >>>>> What would you think of a more readable name DRM_COLOROP_FIXED_MATR=
IX
> >>>>> "Fixed Matrix"?
> >>>>>
> >>>>> Alternatively DRM_COLOROP_ENUM_MATRIX "Enumerated Matrix".
> >>>>>       =20
> >>>>
> >>>> I was intentionally staying away from the word matrix because there =
was
> >>>> no programmable matrix but it would make sense to name it something =
like
> >>>> DRM_COLOROP_FIXED_MATRIX (or *_PRESET_MATRIX for that matter).
> >>>>   =20
> >>>>>>    };
> >>>>>>   =20
> >>>>>>    static const char * const colorop_curve_1d_type_names[] =3D {
> >>>>>> @@ -90,6 +91,13 @@ static const struct drm_prop_enum_list drm_colo=
rop_lut3d_interpolation_list[] =3D
> >>>>>>    	{ DRM_COLOROP_LUT3D_INTERPOLATION_TETRAHEDRAL, "Tetrahedral" },
> >>>>>>    };
> >>>>>>   =20
> >>>>>> +static const char * const colorop_csc_ff_type_names[] =3D {
> >>>>>> +	[DRM_COLOROP_CSC_FF_YUV601_RGB601]   =3D "YUV601 to RGB601",
> >>>>>> +	[DRM_COLOROP_CSC_FF_YUV709_RGB709]   =3D "YUV709 to RGB709",
> >>>>>> +	[DRM_COLOROP_CSC_FF_YUV2020_RGB2020] =3D "YUV2020 to RGB2020",
> >>>>>> +	[DRM_COLOROP_CSC_FF_RGB709_RGB2020]  =3D "RGB709 to RGB2020",   =
=20
> >>>>>
> >>>>> I'd suggest names:
> >>>>>
> >>>>> "YCbCr 601 to RGB"
> >>>>> "YCbCr 709 to RGB"
> >>>>> "YCbCr 2020 NC to RGB"
> >>>>> "RGB709 to RGB2020"
> >>>>>
> >>>>> or something in that direction.
> >>>>>
> >>>>> The relevant ITU-R BT specifications use YCbCr nomenclature IIRC. W=
rt.
> >>>>> YCbCr-to-RGB conversion, there is no RGB601, RGB709 or RGB2020. The=
re
> >>>>> is only some RGB, and which primaries it uses is not always tied to
> >>>>> which YCbCr conversion was used.
> >>>>>      =20
> >>>>
> >>>> What I understand from this is that the BT.709(et al.) only defines =
the
> >>>> matrix that is used for YCbCr->RGB, "what" RGB it is defined by the
> >>>> primaries (which comes with metadata?).   =20
> >>>
> >>> Unfortunately, BT.601, BT.709 and BT.2020 define two separate things =
each:
> >>> - the YCbCr<->RGB conversion, and
> >>> - the colorspace primaries (and white point, but that is the same for
> >>>    them all).
> >>> =20
>=20
> Would it make sense to treat these as two separate things in terms
> of colorops?

Hi Harry,

no, if your hardware not care. There are no semantics for the numbers
in the UAPI, it's just whatever numbers, and mathematical operations on
them.

I suspect that your hardware does care, though, and actually has
separate hardware elements for the YCbCr conversion and the colorspace
conversion matrix. After all, one has to be able to put a LUT or a
curve between the two to make sense.

IOW, two different colorops, yes. But different colorop types? Maybe
that depends on whether they would have the same colorop properties or
not.

> I have done some work on a CSC colorop and intend to send out the
> patches in the next couple of days.
>=20
> https://gitlab.freedesktop.org/hwentland/linux/-/commits/csc-colorop
>=20
> It follows the drm_plane's COLOR_RANGE and COLOR_ENCODING semantic
> and is only intended for YCbCr-to-RGB conversion, like the original
> properties on the plane.
>=20
> For the colorspace conversion within RGB (e.g., BT709 to BT2020)
> it might make sense then to have its own colorop if HW works on
> pre-defined transformations, or use the CTM 3x3 or 3x4 matrix ops
> if HW provides a flexible matrix.
>=20
> We might need to think about naming, since colorspace conversion (CSC)
> right now seems to refer to both YCbCr conversion and primaries
> conversion.

Indeed.

YCbCr conversion is usually a matrix operation. H.273 calls it
MatrixCoefficients, but it also lists cases where you need the EOTF in
the mix. I could go with "YCbCr coefficients". The pure matrix forms
are used on electrical pixel values.

The color space conversion matrices that are based on (Normalized)
Primary Matrices (NPM) must be used on optical pixel values. NPM is the
matrix that converts optical RGB values to CIE 1931 XYZ. For an
RGB-to-RGB conversion you need one NPM and another inverse NPM chained.

I guess using CSC for the latter is not obvious enough because it has
been used for the former (color model conversion) as well?

How about "color-primary conversion"?

I stole it from
https://onlinelibrary.wiley.com/doi/pdf/10.1002/9780470994375.app8


Thanks,
pq

> >>> BT.601 actually has two different sets of primaries. Bt.2020 defines
> >>> two different YCbCr conversions. BT.709 uses the same primaries as
> >>> sRGB, but is different from sRGB on all other aspects.
> >>>
> >>> Therefore, when you refer to any one of these, you also need to be
> >>> clear whether you are referring to the YCbCr conversion or to the
> >>> primaries.
> >>>    =20
> >>
> >> In that case, if the HW block says that it does YCbCr to RGB conversio=
n=20
> >> using rec BT.709, the resultant RGB follows the primaries as described=
=20
> >> by BT.709 or mathematically it does not really matter? =20
> >=20
> > Hi,
> >=20
> > the resultant RGB may or may not follow BT.709 primaries, and knowing
> > the primaries is important for further processing in general.
> >=20
> > YCbCr<->RGB conversion does not change the primaries. What went in,
> > will come out.
> >  =20
> >>>> I will read up on why our HW names these bits as such.   =20
> >>>
> >>> Sure, but keep in mind that your hardware naming is irrelevant for the
> >>> UAPI design.   =20
> >>
> >> Understood, I just want to make sure that the HW does exactly what we=
=20
> >> will advertise through the UAPI. =20
> >=20
> > Precisely.
> >=20
> >=20
> > Thanks,
> > pq
> >  =20
> >>>>> For YCbCr 2020 I feel it's nice to remember, that there are two
> >>>>> different conversions in the specification: the simple matrix one
> >>>>> called "non-constant luminance", and the complex one called "consta=
nt
> >>>>> luminance". Hence "NC".
> >>>>>
> >>>>> It's also good to recall that YCbCr-RGB conversions are done in an
> >>>>> electrical space, while RGB709-to-RGB2020 conversion must be done i=
n the
> >>>>> optical space. It is up to the userspace to arrange the neighbouring
> >>>>> colorops to use the fixed matrix right.
> >>>>>       =20
> >>>>
> >>>> Ack on the above. =20
>=20


--Sig_/+a4oZIkuvnRaN=Q1_tNK/=R
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmm4KdoACgkQI1/ltBGq
qqfyvw//YfaPoq8EeWvSv9IobcqOIGx4zG2YnRwtuwQT53mstzj93j6a/A8jkAiM
PQwKUkoZCNTdALa6b6OkIijf49KJd4ZqLH4gDNLP7RFtJvU8/NmFn5oBqTq99mn2
AhxK7RApSc68DC6KhqSmz5XZTDqbbSrhHgrswgmBbcJUt7C5ggvlApQHubBuFFPv
OtfnUccKLJypENTs2mmZK61VESX7YFWHc1kZTcmIDW4YdKN1706uqxUW7/nXrXuO
fzIhM4D3jtXneJGbi7pj4ZmLhEFFvqqc5nJQleMGzFXOjp0QOznm+GnCrrFJQbzU
zFRpZO4shOQpp5xyLHlTfesTn3068F2zGXZwxcFpO5ZOyJRq+pycRxoSZrO/K/XJ
VGSJaijdNSlqOo0iysmOoCEZ2Hkg082l2tva5O7ZYELycbEZMp42774nyfrj2hYk
3YoLaoT2fVHy76EFuTpQL4jUu3rhnFOYfQjiiFaxy2wFrYhYgEWa0eNFuPavJyHA
q43qUwYPQDgisLqPztzqCW1RwEffGtYIo1vXZMjvHDa2rgnzzJgpxrPCTtPHlAaB
rxL9rOLxvTWyZEgvzcxzArVC+BwP0EhbDUKci6BDFst6698g2HuPnXf5CMPN8iHZ
EVTryHHH6xf3muIkFk2SRkcdnZy31mR8sAu3XwdMXoQacfcPQuQ=
=gMwu
-----END PGP SIGNATURE-----

--Sig_/+a4oZIkuvnRaN=Q1_tNK/=R--
