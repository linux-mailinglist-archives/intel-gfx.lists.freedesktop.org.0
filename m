Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOfqJ6wPuWkaoQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 09:24:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7B72A5921
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 09:24:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3DE910E594;
	Tue, 17 Mar 2026 08:24:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=collabora.com header.i=@collabora.com header.b="kUag940w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com
 [148.251.105.195])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A95B910E428;
 Tue, 17 Mar 2026 08:24:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1773735848;
 bh=gT7ZoGuzWlKneb2BYf5Iyt6DDVfn2FhJc0ZIANIIOO0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kUag940wB0JxjUlZuKvzUIjfCLfakoJAbc5OxyD+rmV4W0fpXuZA7VHWZYmRFFHv8
 98SlvE9Oe24nJCzdvzPES7TdTjE3fU22ZfzUrHkqqHlLXlZph5P+KgUJwRNfqH65Ad
 2bd2IDtVZLZJfZQUgHZtnFJ/Vd+SuZjmb6fZ2uWoQxyHAjqmcxfaLddgm/SWs0L2g9
 300WnHAliWndxGAgunhKcD10KQthuqQYSbKC9QS/9nqBAYpLu3npJ1oZ25ehWgVGhG
 uix03hytZKhADeF7/Ag4UdF9NlBYykGsWqReZnqhOWs1jQkQOHXnsrMxyoC6Ku6pzP
 meIqxkB8MrKxw==
Received: from eldfell (unknown [194.136.85.206])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: pq)
 by bali.collaboradmins.com (Postfix) with ESMTPSA id BE8D617E0CF3;
 Tue, 17 Mar 2026 09:24:07 +0100 (CET)
Date: Tue, 17 Mar 2026 10:23:56 +0200
From: Pekka Paalanen <pekka.paalanen@collabora.com>
To: Harry Wentland <harry.wentland@amd.com>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, louis.chauvet@bootlin.com, mwen@igalia.com,
 contact@emersion.fr, alex.hung@amd.com, daniels@collabora.com,
 uma.shankar@intel.com, maarten.lankhorst@intel.com,
 pranay.samala@intel.com, swati2.sharma@intel.com
Subject: Re: [PATCH 01/10] drm/colorop: Add DRM_COLOROP_CSC_FF
Message-ID: <20260317102356.76dadf78@eldfell>
In-Reply-To: <cd9e1aa2-85b8-4add-a3b9-ba7acbd29f60@amd.com>
References: <20260306165307.3233194-1-chaitanya.kumar.borah@intel.com>
 <20260306165307.3233194-2-chaitanya.kumar.borah@intel.com>
 <20260310163229.521186ab@eldfell>
 <53c3f610-942c-46bf-be5f-a4c51625c358@intel.com>
 <20260316105724.47d24409@eldfell>
 <eaaea3f6-76ce-4b20-b7b1-b483594070cd@intel.com>
 <20260316135349.06476e85@eldfell>
 <0969dd82-0212-4fec-b693-e53c6ddd692c@amd.com>
 <20260316180338.0b2f6923@eldfell>
 <cd9e1aa2-85b8-4add-a3b9-ba7acbd29f60@amd.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/TitsDUGOV_T1_aeLDWDGJbe";
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,amd.com:email,collabora.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 2E7B72A5921
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--Sig_/TitsDUGOV_T1_aeLDWDGJbe
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Mon, 16 Mar 2026 13:59:57 -0400
Harry Wentland <harry.wentland@amd.com> wrote:

> On 2026-03-16 12:03, Pekka Paalanen wrote:
> > On Mon, 16 Mar 2026 10:36:44 -0400
> > Harry Wentland <harry.wentland@amd.com> wrote:
> >  =20
> >> On 2026-03-16 07:53, Pekka Paalanen wrote: =20
> >>> On Mon, 16 Mar 2026 16:04:32 +0530
> >>> "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
> >>>    =20
> >>>> On 3/16/2026 2:27 PM, Pekka Paalanen wrote:   =20

...

> >>>>> Unfortunately, BT.601, BT.709 and BT.2020 define two separate thing=
s each:
> >>>>> - the YCbCr<->RGB conversion, and
> >>>>> - the colorspace primaries (and white point, but that is the same f=
or
> >>>>>    them all).
> >>>>>   =20
> >>
> >> Would it make sense to treat these as two separate things in terms
> >> of colorops? =20
> >=20
> > Hi Harry,
> >=20
> > no, if your hardware not care. There are no semantics for the numbers
> > in the UAPI, it's just whatever numbers, and mathematical operations on
> > them.
> >=20
> > I suspect that your hardware does care, though, and actually has
> > separate hardware elements for the YCbCr conversion and the colorspace
> > conversion matrix. After all, one has to be able to put a LUT or a
> > curve between the two to make sense.
> >=20
> > IOW, two different colorops, yes. But different colorop types? Maybe
> > that depends on whether they would have the same colorop properties or
> > not.
> >  =20
>=20
> If I understand you correctly you're saying we can have a single
> colorop type to represent either type. A client of the API needs
> to understand what it's doing with the colorop and can use it
> as either a YCbCr conversion matrix in the case of YCbCr-to-RGB
> conversion, or an NPM for conversion of linear, normalized data
> from one set of primaries to another.
>=20
> Is that understanding correct?

Yes. It's mostly a question of taste, whether we want matrices
conventionally used in different contexts in the same enum. I think
it's fine.

> >> I have done some work on a CSC colorop and intend to send out the
> >> patches in the next couple of days.
> >>
> >> https://gitlab.freedesktop.org/hwentland/linux/-/commits/csc-colorop
> >>
> >> It follows the drm_plane's COLOR_RANGE and COLOR_ENCODING semantic
> >> and is only intended for YCbCr-to-RGB conversion, like the original
> >> properties on the plane.
> >>
> >> For the colorspace conversion within RGB (e.g., BT709 to BT2020)
> >> it might make sense then to have its own colorop if HW works on
> >> pre-defined transformations, or use the CTM 3x3 or 3x4 matrix ops
> >> if HW provides a flexible matrix.
> >>
> >> We might need to think about naming, since colorspace conversion (CSC)
> >> right now seems to refer to both YCbCr conversion and primaries
> >> conversion. =20
> >=20
> > Indeed.
> >=20
> > YCbCr conversion is usually a matrix operation. H.273 calls it
> > MatrixCoefficients, but it also lists cases where you need the EOTF in
> > the mix. I could go with "YCbCr coefficients". The pure matrix forms
> > are used on electrical pixel values.
> >=20
> > The color space conversion matrices that are based on (Normalized)
> > Primary Matrices (NPM) must be used on optical pixel values. NPM is the
> > matrix that converts optical RGB values to CIE 1931 XYZ. For an
> > RGB-to-RGB conversion you need one NPM and another inverse NPM chained.
> >  =20
>=20
> This could be expressed in a single matrix, right?

Naturally. y =3D N * (M * x) =3D (N * M) * x, where N, M are matrices and
x, y are column vectors.

> I intend to send out my patches as an RFC either way, but I think I
> could just as well work with the CSC_FF colorop. I'll have a look at
> basing my work on this.


Thanks,
pq


> > I guess using CSC for the latter is not obvious enough because it has
> > been used for the former (color model conversion) as well?
> >=20
> > How about "color-primary conversion"?
> >=20
> > I stole it from
> > https://onlinelibrary.wiley.com/doi/pdf/10.1002/9780470994375.app8
> >=20
> >=20
> > Thanks,
> > pq

--Sig_/TitsDUGOV_T1_aeLDWDGJbe
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmm5D5wACgkQI1/ltBGq
qqcuPQ/8DYGoaFXGnbHDP5IYvChGSMwmWlF4ogMhGM/zuzrqL0Dr0pTpYhtlv6O6
jQi8yCxmTBaCjhOeu+cZuP0JuaRJyfJtpyQvLN7YotPemQXzmHPvL3oEZMdPMPvP
Uv41SUcr1JVLk+7J9jao+lhi9YzUI4WYKFLB73+RB6jpCdB+NUNL/wuRi2lEtFa/
ZgvWCdEzU2ghTLVv5bj25/A4vTR/LVVhLBeGtfVKziVDlznfrmh1v3Wvxv3Gbw0x
GsNz/Eu2Uv6DY5u610v6Nse2PiSksVaDALocdVvX4PBcI8wKs+kdEYb+EMigGrn3
LcA2ACOQw2gsb1mbfo39yTv5g4kRzMPCqjAh3uHGdKShEDMar5LxCLK37KvvwDLx
tvAEoDxonKZe+q8saGwpYs45Wg2v5tBGlU5tWM8J5FjnjVUvW9/hk4yjVrLB3Eqi
aVVOHsrvNIyfqi20zeMOApPHCgSwM3Yt2PFZfmTL+hUbMrVwJB3LRcV56uOIigZS
fl6tAvMab5+/yutxxWenMqJ/h24lqgFWpied6aIK0qEtx/Bhdy4WEU3lgouZL/OR
Rjh1s8gvDfvu3Pw7Hc3ihVkYSOvX4hnbtTepiIsAbyhO0fQ1vREjONHBNiMimC3O
ydTrB2Ok3B4k/b6TcLpGahkKrcP8kRShNdRhP4sqvOAfiKQKaMY=
=LNQa
-----END PGP SIGNATURE-----

--Sig_/TitsDUGOV_T1_aeLDWDGJbe--
