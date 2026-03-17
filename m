Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOFlGMFguWlsCwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 15:10:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE64F2AB82B
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 15:10:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8907610E665;
	Tue, 17 Mar 2026 14:10:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=collabora.com header.i=@collabora.com header.b="k81ps8L6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com
 [148.251.105.195])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7868510E5C9;
 Tue, 17 Mar 2026 14:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1773756603;
 bh=mMG2aIP3veFf7ab9T5YQWN4fAdSMBTKrwwcb3rV/1Vo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=k81ps8L6xl/vmDTgwo5kRzeLTZ9zFEhe8T6kZns2BjLbGbTjKK+AeUjfpLPMfvqTr
 Uof02h6zowgPkVbhfImsV+QT6bnkTr+O+KAXnXp1kILu5qIPalDe4AnH58uXWvDFr8
 go5wWkHo78hZBrrlrLQXjt4oOG/zWcXgYqHXgFYeKRxj92SE14JM2kNPwNGFr5Vz6Q
 m8ZUItFHemtXNLT1795YyyZTIHoae4mD5YpqB0pVkMU214zMBnRtgj5CjvoQiBg6TZ
 wq0o3g02qJwbCT23VsFjfNWRsWpxB77KIfnYPeD+0vc7SK1Byf4K4PScwGchICrLCr
 icQkPXxbHZ97w==
Received: from eldfell (unknown [194.136.85.206])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: pq)
 by bali.collaboradmins.com (Postfix) with ESMTPSA id 48F9B17E0FA3;
 Tue, 17 Mar 2026 15:10:03 +0100 (CET)
Date: Tue, 17 Mar 2026 16:09:51 +0200
From: Pekka Paalanen <pekka.paalanen@collabora.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: Harry Wentland <harry.wentland@amd.com>,
 <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <louis.chauvet@bootlin.com>,
 <mwen@igalia.com>, <contact@emersion.fr>, <alex.hung@amd.com>,
 <daniels@collabora.com>, <uma.shankar@intel.com>,
 <maarten.lankhorst@intel.com>, <pranay.samala@intel.com>,
 <swati2.sharma@intel.com>
Subject: Re: [PATCH 01/10] drm/colorop: Add DRM_COLOROP_CSC_FF
Message-ID: <20260317160951.407ee82a@eldfell>
In-Reply-To: <306d456f-4015-4b28-9fd8-b671d4c01929@intel.com>
References: <20260306165307.3233194-1-chaitanya.kumar.borah@intel.com>
 <20260306165307.3233194-2-chaitanya.kumar.borah@intel.com>
 <3cc8bd83-8a19-488b-b5bf-b71f75c18e74@amd.com>
 <306d456f-4015-4b28-9fd8-b671d4c01929@intel.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/UXs5mYAJtEir5IyuCBoLZVW";
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,collabora.com:dkim]
X-Rspamd-Queue-Id: BE64F2AB82B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--Sig_/UXs5mYAJtEir5IyuCBoLZVW
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Tue, 17 Mar 2026 17:59:27 +0530
"Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:

> AFAIU, the block I wanted to represent is Full Range YCbCr -> Full Range=
=20
> RGB. We have the following configuration in our plane.
>=20
> [YUV range correction Block] -> [Degamma LUT] -> [PRESET CSC] -> [Gamma L=
UT]
>=20
> With the legacy "COLOR RANGE" property, selecting limited range enabled=20
> the YUV range correction block.
>=20
> I still need to figure out what use-case does the degamma LUT in between=
=20
> the Range correction block and the Preset CSC serve since YCbCr to RGB=20
> conversion will take place in non-linear domain. But it makes me wonder=20

Hi Chaitanya,

yes, that is peculiar indeed. At least "Degamma LUT" is usable with RGB
framebuffers.

> if we can have "COLOR ENCODING" and "COLOR RANGE" property within the=20
> same colorop like you have been implementing in [1] or should they be=20
> represented by separate colorops.

If there is another operation in between (Degamma LUT) that you want to
expose, then range-conversion and fixed-matrix operations need to have
their own colorops. The chain of colorops cannot go backwards.

OTOH, if there is a single hardware operation that does both
range-conversion and fixed-matrix, then there is no problem for a
driver to translate the pair of colorops into hardware configuration.
So it sounds like they should be defined as separate colorops, and then
drivers usually expose them together. Unless the hardware cannot do all
combinations of their values.


Thanks,
pq

> Uma please weigh in if you have something to add or disagree with.
>=20
> =3D=3D
> Chaitanya
>=20
> [1] https://gitlab.freedesktop.org/hwentland/linux/-/commits/csc-colorop
>=20

--Sig_/UXs5mYAJtEir5IyuCBoLZVW
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmm5YK8ACgkQI1/ltBGq
qqcFqxAAnavVQ1zVA7R6Az97rZC3PV0R3XsvTaucqdizvayLaJCdHHV8mjxfY4hi
6nXBsiY8SF+kfQ/mA4P3Q/YVHq20EiCON7MxRPwUOh8A0ag0tGVKLTXd9diOSOZV
Oh5N9WNhVaabMKeI1Zg3q0eMDFtRU5BJSTq65LrBGfT+5OUaZtFCjoB3lwiI2j8t
3c5mh0sjefM/lFTcjMHWUtajI8NT4Mgf8sD/U37x5hsQ9z7EDISCTpOX2tKYSmXJ
DQs+DdiObC2a/OR1+BhS1NQDlLoqLCVYCXkwJtWIliw2oZXlCFGf5NU4vFGvT0qT
KIDwS3xhzY+CdBuJG0D2tiSBDDOF4KEUrtgTDsg1Tq91YB9JzHRLlUZacSozSTFw
WwHO6VTSnj+od+n6s1C/2Cbx3XGOEKCcZdqFRny5vOCw+vhX2ivMj1vdoZ3KMFE5
P/Bn0ZH3eNF2nylJq05zaBPLqYMXVrWGw2Rm6wjqGCY4DbIg/9yYju3HoX5ciDay
8MwudEHYarA2M9mD1kjDn8ENZNSOoHNWZezxB9b20k+h0TyJqLRz4YcCMvaUx6zL
lSgbQakIOdCymLUsf902ZoqWa1uVzbaEBgvI5tuzEYC8d29ue/MzAhO1P+S1UbPx
5XlMufUag0dMoMUJ89nOP/dh4i0RRZxXhZSVDVy52idTuJ7+BuM=
=+5uI
-----END PGP SIGNATURE-----

--Sig_/UXs5mYAJtEir5IyuCBoLZVW--
