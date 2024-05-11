Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF4F8C2E4D
	for <lists+intel-gfx@lfdr.de>; Sat, 11 May 2024 02:58:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9926710E555;
	Sat, 11 May 2024 00:58:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZR84lJtU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA10D10E555;
 Sat, 11 May 2024 00:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715389116; x=1746925116;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=8lgwyml+tkvQ/nC1/qg3G71qM1pLkPi2H4zs22OKwDw=;
 b=ZR84lJtUD5EymTuDnw0Sxvyh+/HlQetcO6T/rZTWJtpGSJNGd1enckuP
 SW2Hnv1wqfXD0+esQMC5PIBMEhuOgl57V6ZpI+yX2Gbe/B9Bj+RuCgpIE
 nLathcVVu1mS/ipr0FXGVI7SgKvUk5vbzG/5A/fBUJbby35BsUN7dOUrl
 U3uhUAC159VOqiMpGeEmUJ6/d5XzPVVoe7SZhPT8/1C8/IgVEBhPNlwIi
 LwePojQA8dnkshNi0s04rNVk4o56RyKKIy+/DNcg+24408ySfIwdojiaA
 c+vfJxott63wBDWfD2jYCmlMZSV8m1cjHHJEjwA6gxdQOUhl4a9kjwJQH A==;
X-CSE-ConnectionGUID: GIPr6b91QLKr/ZcT+x2FyQ==
X-CSE-MsgGUID: ULirSVSDRCaNP+kfMHv6ag==
X-IronPort-AV: E=McAfee;i="6600,9927,11069"; a="11332013"
X-IronPort-AV: E=Sophos;i="6.08,152,1712646000"; 
 d="asc'?scan'208";a="11332013"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 17:58:36 -0700
X-CSE-ConnectionGUID: sgS5JLcERn2kGpzLFCrGpA==
X-CSE-MsgGUID: /fH+lYfuQ+qqooujeyf+ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,152,1712646000"; 
 d="asc'?scan'208";a="30345173"
Received: from unknown (HELO mizzik.localnet) ([10.125.111.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 17:58:35 -0700
From: Kenneth Graunke <kenneth.w.graunke@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 Matt Roper <matthew.d.roper@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 "Chery, Nanley G" <nanley.g.chery@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Souza, Jose" <jose.souza@intel.com>,
 "Mathew, Alwin" <alwin.mathew@intel.com>,
 "Zhang, Jianxun" <jianxun.zhang@intel.com>,
 "Syrjala, Ville" <ville.syrjala@linux.intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
Subject: Re: [RFC PATCH 0/3] Introducing I915_FORMAT_MOD_4_TILED_XE2_CCS
 Modifier for Xe2
Date: Fri, 10 May 2024 17:58:34 -0700
Message-ID: <22290768.EfDdHjke4D@mizzik>
In-Reply-To: <20240507225657.GI5615@mdroper-desk1.amr.corp.intel.com>
References: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
 <20240507225657.GI5615@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart7670975.EvYhyI6sBW";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
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

--nextPart7670975.EvYhyI6sBW
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Kenneth Graunke <kenneth.w.graunke@intel.com>
Date: Fri, 10 May 2024 17:58:34 -0700
Message-ID: <22290768.EfDdHjke4D@mizzik>
In-Reply-To: <20240507225657.GI5615@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0

On Tuesday, May 7, 2024 3:56:57=E2=80=AFPM PDT Matt Roper wrote:
> On Mon, May 06, 2024 at 09:52:35PM +0300, Juha-Pekka Heikkila wrote:
> > These patches introduce I915_FORMAT_MOD_4_TILED_XE2_CCS modifier, which,
> > from the kernel's perspective, behaves similarly to=20
`I915_FORMAT_MOD_4_TILED`.
> > This new modifier is primarily intended for user space to effectively=20
monitor
> > compression status, especially when dealing with a mix of compressed and
> > uncompressed buffers.
> >=20
> > The addition of this modifier facilitates user space in managing=20
compression
> > status, particularly when utilizing both compressed and uncompressed=20
buffers
> > concurrently. To leverage compression for these buffers, user space
> > applications must configure the appropriate Page Attribute Table (PAT)=
=20
index.
> > Display engine will treat all Tile4 as if it were compressed under all
> > circumstances on Xe2 architecture.
>=20
> I may have missed some discussion about this, but I thought the previous
> consensus was that we didn't want/need new modifiers for compression on
> Xe2?  If a userspace client (or the display hardware) receives a buffer
> of unknown origin and unknown compression status, it's always fine to
> select a compressed PAT when binding the buffer to read since even for
> uncompressed buffers the CCS metadata will accurately reflect the
> compression status.  Unlike Xe1, where generating content without
> compression enabled would leave random garbage in the FlatCCS area, Xe2
> will set the corresponding FlatCCS to '0x0' for each block, indicating
> uncompressed data.
>=20
> Can you explain more what the benefit of handling these modifiers
> explicitly is?
>=20
>=20
> Matt

Thanks, Matt!  I'm a bit late in getting up to speed with the Xe2 compressi=
on=20
changes; this is really good information.

As I understand it...all blocks on the GPU behave in the way you mentioned,=
=20
where generating uncompressed data via the GPU will set FlatCCS =3D 0, so y=
ou=20
can assume a compressed PAT entry and everything works.

One snag is...I've heard that CPU access doesn't work that way.  So, if you=
=20
mmap a buffer on the CPU, and write data with the CPU, then I think we're b=
ack=20
to the "FlatCCS contains uninitialized garbage" case, where it's unsafe to=
=20
assume a compressed PAT.  And... we don't really know when sharing buffers=
=20
whether the other side is going to want to do CPU access.

It would be really nice to assume compression by default, though, which got=
 me=20
thinking: if we mmap a buffer via DRM_XE_GEM_MMAP_OFFSET, could xe.ko disab=
le=20
compression for us?  So, resolve any outstanding CCS data, and then switch =
any=20
PAT entries to uncompressed.  Mapping would block until that resolve is don=
e. =20
It could leave compression off forever (once you CPU map a buffer, it's nev=
er=20
compressed again).  Or it could turn CCS back on when map count reaches 0 (=
but=20
frankly I'm not sure that's terribly important, and sounds more complex).

As I understand it, at least on discrete GPUs, the kernel already has to do=
=20
something similar for eviction, when migrating BOs to system memory (which=
=20
doesn't support compression).  So this would be doing basically the same=20
"resolve and disable CCS" step the kernel can presumably already do, but no=
w=20
on mmap as well.

What do you think?  Viable?  Crazy?  Have I missed something?

=2D-Ken
--nextPart7670975.EvYhyI6sBW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE6OtbNAgc4e6ibv4ZW1vaBx1JzDgFAmY+wroACgkQW1vaBx1J
zDh01hAAoE+m6gTviPNvVjvxBA77VHjyhEmw6YIeSJVfkZ/529nyur2D3Igml7El
5e7oPmUlMDlTkw9S7EQKGXKp6VNe1/WoMkp9NcJt1eUaFCSgydQ7+7o++lBQRx21
jy8METg/0evbn6INd7Uw6Mpw7MfsJpY8pSy4hOKUYsjRNX1A6pVIev618QGgSym+
V+YTpHqsJud4DLHwlF0ISli0ybdcGdTij/hVist1jB84zroV9Vy0Yh1rUZsnTJti
B6+6xon0FRWWsIkUi6YMKowL3tXmXMBn3R5hramguVsrG0sZdVgRSVzD8E9okECv
CEHwzRyXY+FEZ1/TqzNlLke2x7+eEFl/FS6fEfOSANxRJ9GENvmp3rknGo1xThMy
irGdTy1UGYRrCB8Y53E7zzsgvt6LxNUfu/ge9iMtAqvMnSFNuY+zgXB+ur4md7+p
EI3ZRYG7gzuAaZffrZOLwUCVPO84r0dOpOQ050L5zzGy5waSe/xctLH3qW3KT6QQ
OoBSH3QKFiTPL0fca32Fuj/XVcNQoOd3/MMsNtj++0xK0+z/qTy5rAmSBSc2yscP
0H6q1JVxNVRaeNZ3L2+lJAOx24Vu0+bCc6gwH22rfehwNbJ75/YEzQGbIMTgYgir
rBIyiMGLt55T39TtGa7vdoJfSy58BhWJ41jo67cdfxnQSiLxVxY=
=kZoF
-----END PGP SIGNATURE-----

--nextPart7670975.EvYhyI6sBW--



