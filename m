Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JVWOmHvt2mfXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 12:54:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FF6298FC9
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 12:54:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0039410E4C6;
	Mon, 16 Mar 2026 11:54:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=collabora.com header.i=@collabora.com header.b="P/wGhCwb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com
 [148.251.105.195])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2480C10E4CD;
 Mon, 16 Mar 2026 11:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1773662042;
 bh=MYNJIGfDITj9ZeZOXvwH7gIEwz4qBk+zgeOglkEp95k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=P/wGhCwbBTzLyA057sajLvr4VYuRRatNdyLN0JMsLo3OoyAiQCfC1gy/lNWbgNPLI
 Yt8/QFX55WCXn//xsYGb3zgWpLmbDpigMJAwbTcowhxGYaow5Li6YD9zCY5AGHmc0t
 dAj/j0lk+2DtSXlg2dSD0d1gsaoDBNfbOimmXZ/C33Z6o9oB6Gor7le2OcmDcizoKj
 TzwkGaajvZMXzbla3n0iiShW/iEKyaoyEU2wCadCeSmUk3qc7h4storrRu9ICHWuYC
 mp/DRM0XOPQFHRyZIichH1Tx5gde1rwK+iusyJaK6wOnqW9AIxcUQyL80YRbeiOseg
 oxoCBwnT1bNmA==
Received: from eldfell (unknown [194.136.85.206])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: pq)
 by bali.collaboradmins.com (Postfix) with ESMTPSA id 2E48B17E11FF;
 Mon, 16 Mar 2026 12:54:02 +0100 (CET)
Date: Mon, 16 Mar 2026 13:53:49 +0200
From: Pekka Paalanen <pekka.paalanen@collabora.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: <harry.wentland@amd.com>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <louis.chauvet@bootlin.com>, <mwen@igalia.com>, <contact@emersion.fr>,
 <alex.hung@amd.com>, <daniels@collabora.com>, <uma.shankar@intel.com>,
 <maarten.lankhorst@intel.com>, <pranay.samala@intel.com>,
 <swati2.sharma@intel.com>
Subject: Re: [PATCH 01/10] drm/colorop: Add DRM_COLOROP_CSC_FF
Message-ID: <20260316135349.06476e85@eldfell>
In-Reply-To: <eaaea3f6-76ce-4b20-b7b1-b483594070cd@intel.com>
References: <20260306165307.3233194-1-chaitanya.kumar.borah@intel.com>
 <20260306165307.3233194-2-chaitanya.kumar.borah@intel.com>
 <20260310163229.521186ab@eldfell>
 <53c3f610-942c-46bf-be5f-a4c51625c358@intel.com>
 <20260316105724.47d24409@eldfell>
 <eaaea3f6-76ce-4b20-b7b1-b483594070cd@intel.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/P7QkXDCUEVeKGpOC_HDF_hH";
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,collabora.com:dkim]
X-Rspamd-Queue-Id: 99FF6298FC9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--Sig_/P7QkXDCUEVeKGpOC_HDF_hH
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Mon, 16 Mar 2026 16:04:32 +0530
"Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:

> On 3/16/2026 2:27 PM, Pekka Paalanen wrote:
> > On Mon, 16 Mar 2026 12:46:39 +0530
> > "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
> >  =20
> >> Hi Pekka,
> >>
> >> Thank you for looking into the patch. =20
> >=20
> > Hi Chaitanya!
> >=20
> > Replies inline below.
> >  =20
> >>
> >> On 3/10/2026 8:02 PM, Pekka Paalanen wrote: =20
> >>> On Fri,  6 Mar 2026 22:22:58 +0530
> >>> Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> >>>     =20
> >>>> Introduce DRM_COLOROP_CSC_FF, a new colorop type representing a
> >>>> fixed-function Color Space Conversion (CSC) block.
> >>>>
> >>>> Unlike CTM-based colorops, this block does not expose programmable
> >>>> coefficients. Instead, userspace selects one of the predefined
> >>>> hardware modes via a new CSC_FF_TYPE enum property. Supported modes
> >>>> include common YUV->RGB and RGB709->RGB2020 conversions.
> >>>>
> >>>> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.co=
m>

...

> >>>> diff --git a/drivers/gpu/drm/drm_colorop.c b/drivers/gpu/drm/drm_col=
orop.c
> >>>> index f421c623b3f0..49422c625f4d 100644
> >>>> --- a/drivers/gpu/drm/drm_colorop.c
> >>>> +++ b/drivers/gpu/drm/drm_colorop.c
> >>>> @@ -68,6 +68,7 @@ static const struct drm_prop_enum_list drm_colorop=
_type_enum_list[] =3D {
> >>>>    	{ DRM_COLOROP_CTM_3X4, "3x4 Matrix"},
> >>>>    	{ DRM_COLOROP_MULTIPLIER, "Multiplier"},
> >>>>    	{ DRM_COLOROP_3D_LUT, "3D LUT"},
> >>>> +	{ DRM_COLOROP_CSC_FF, "CSC Fixed-Function"}, =20
> >>>
> >>> Hi,
> >>>
> >>> the fundamental idea seems fine to me, but I have a lot to say about =
the
> >>> nomenclature.
> >>>
> >>> What would you think of a more readable name DRM_COLOROP_FIXED_MATRIX
> >>> "Fixed Matrix"?
> >>>
> >>> Alternatively DRM_COLOROP_ENUM_MATRIX "Enumerated Matrix".
> >>>     =20
> >>
> >> I was intentionally staying away from the word matrix because there was
> >> no programmable matrix but it would make sense to name it something li=
ke
> >> DRM_COLOROP_FIXED_MATRIX (or *_PRESET_MATRIX for that matter).
> >> =20
> >>>>    };
> >>>>   =20
> >>>>    static const char * const colorop_curve_1d_type_names[] =3D {
> >>>> @@ -90,6 +91,13 @@ static const struct drm_prop_enum_list drm_coloro=
p_lut3d_interpolation_list[] =3D
> >>>>    	{ DRM_COLOROP_LUT3D_INTERPOLATION_TETRAHEDRAL, "Tetrahedral" },
> >>>>    };
> >>>>   =20
> >>>> +static const char * const colorop_csc_ff_type_names[] =3D {
> >>>> +	[DRM_COLOROP_CSC_FF_YUV601_RGB601]   =3D "YUV601 to RGB601",
> >>>> +	[DRM_COLOROP_CSC_FF_YUV709_RGB709]   =3D "YUV709 to RGB709",
> >>>> +	[DRM_COLOROP_CSC_FF_YUV2020_RGB2020] =3D "YUV2020 to RGB2020",
> >>>> +	[DRM_COLOROP_CSC_FF_RGB709_RGB2020]  =3D "RGB709 to RGB2020", =20
> >>>
> >>> I'd suggest names:
> >>>
> >>> "YCbCr 601 to RGB"
> >>> "YCbCr 709 to RGB"
> >>> "YCbCr 2020 NC to RGB"
> >>> "RGB709 to RGB2020"
> >>>
> >>> or something in that direction.
> >>>
> >>> The relevant ITU-R BT specifications use YCbCr nomenclature IIRC. Wrt.
> >>> YCbCr-to-RGB conversion, there is no RGB601, RGB709 or RGB2020. There
> >>> is only some RGB, and which primaries it uses is not always tied to
> >>> which YCbCr conversion was used.
> >>>    =20
> >>
> >> What I understand from this is that the BT.709(et al.) only defines the
> >> matrix that is used for YCbCr->RGB, "what" RGB it is defined by the
> >> primaries (which comes with metadata?). =20
> >=20
> > Unfortunately, BT.601, BT.709 and BT.2020 define two separate things ea=
ch:
> > - the YCbCr<->RGB conversion, and
> > - the colorspace primaries (and white point, but that is the same for
> >    them all).
> >=20
> > BT.601 actually has two different sets of primaries. Bt.2020 defines
> > two different YCbCr conversions. BT.709 uses the same primaries as
> > sRGB, but is different from sRGB on all other aspects.
> >=20
> > Therefore, when you refer to any one of these, you also need to be
> > clear whether you are referring to the YCbCr conversion or to the
> > primaries.
> >  =20
>=20
> In that case, if the HW block says that it does YCbCr to RGB conversion=20
> using rec BT.709, the resultant RGB follows the primaries as described=20
> by BT.709 or mathematically it does not really matter?

Hi,

the resultant RGB may or may not follow BT.709 primaries, and knowing
the primaries is important for further processing in general.

YCbCr<->RGB conversion does not change the primaries. What went in,
will come out.

> >> I will read up on why our HW names these bits as such. =20
> >=20
> > Sure, but keep in mind that your hardware naming is irrelevant for the
> > UAPI design. =20
>=20
> Understood, I just want to make sure that the HW does exactly what we=20
> will advertise through the UAPI.

Precisely.


Thanks,
pq

> >>> For YCbCr 2020 I feel it's nice to remember, that there are two
> >>> different conversions in the specification: the simple matrix one
> >>> called "non-constant luminance", and the complex one called "constant
> >>> luminance". Hence "NC".
> >>>
> >>> It's also good to recall that YCbCr-RGB conversions are done in an
> >>> electrical space, while RGB709-to-RGB2020 conversion must be done in =
the
> >>> optical space. It is up to the userspace to arrange the neighbouring
> >>> colorops to use the fixed matrix right.
> >>>     =20
> >>
> >> Ack on the above.

--Sig_/P7QkXDCUEVeKGpOC_HDF_hH
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmm3700ACgkQI1/ltBGq
qqdrsQ/+Lx2AlZuBNc3Dm53Kku7wDcq+aJ8d1yvQK4sz/VtwGZa6nFOuZJC2EYhB
W84HTue5NbDADOU9oOLRSUOL0AVadFqgoFWB1nW8MRqmsKSqn1jFseFbJY0W0LwR
l5PQ0tspHJO5zGaA0WvU15b8lz26Lc5ZvFWZ3PWNK3thQvxLQNSD72Zw+nGVNad4
efYp86BS+y62z4/H6D/+aIxmy8W/9Bs1uftcpT8JV/rVw3V+ctXC8xYWsxZe0U5N
+BzRFBGT/wvJcUOpsjuxI9ZW3y/Gp8no95FcRwNbWTMG2jx6DAZU3DCfIn07OnvU
H0GJVo6Pll4jFqxfg+33kooVekKBKDltYk3WOPVlrR69TVNivwbmVjUYbprLQBY3
FGxdrCMTJc3yE8t9BLLbQo/KhtBlfV5Nt08kUVaYDvU7jQSKjId4vEwfbFqHmQrZ
XM+UnAVl+tIxHqMO83WRLHVGa1wSQ1T3R0/ya5xtBVNsiultZyAu/+bUSohU1z8U
j1Qdj9k8Vo07PTUb0MAEmotAbFtg0GEJ6XHEGxrsN3RH+YoNmelO6C5KZoSKE6t5
efAnRDWg5ZDlDDz29UbIgASNv63NHMHpkhE3TzsvAm2b+VATdfsJZAhit6+pYPlt
IP/+nDP1oO3UjT70ewkVmMGd8kQGcee/QSkyaQPbGlrX7+YBrUY=
=+7nM
-----END PGP SIGNATURE-----

--Sig_/P7QkXDCUEVeKGpOC_HDF_hH--
