Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CE07E1BC2
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 09:16:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E01D010E273;
	Mon,  6 Nov 2023 08:16:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEB0310E273
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 08:16:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C053B603F4;
 Mon,  6 Nov 2023 08:16:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21FA9C433C7;
 Mon,  6 Nov 2023 08:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1699258576;
 bh=cnhFXIot9+bxeuSTIWF8eC4v2lNUjGYhUQ92l0U5q9o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KCvmAv9JSdJxdCoPfKQDSWyPBXgGdExpKmek4Mkb26IYCsg9V6ZxNke2z+E/bNcTk
 pW5U2BQ0ZTt9wEdU180WCGYHfgwP0rkgx3dptOS4Fu5X7m+SoNTro/YpHvGZPXH/lJ
 Q0n0yvnhYquwjkOb1qvfmlCV9T1RjkvURCuGlO7sqEgzU5jSgx7xyL/JWG7UU23qe1
 fjD2ymX3uM18Q53waP3FzhG5NuhoDTeudkXKnLPdnhOfngOubqGJBW7TEk/52Erxja
 Uba7hdV790uZ3uyHzaSlbl17HNXrHuyLDul6u08RZaC99JIq8eSCKS5hnDuUrK7Cla
 HUH0HUWxm0KzQ==
Date: Mon, 6 Nov 2023 09:16:13 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <33o5k2erhqf52uj7to5p7hzj7ptrensnqw4vtrbu3k2wcq3342@ovbzrepkbjwr>
References: <20231030155843.2251023-1-imre.deak@intel.com>
 <20231030155843.2251023-3-imre.deak@intel.com>
 <ZUFa8NvCeWs+XT3X@ideak-desk.fi.intel.com>
 <87lebh4ojd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="ujjc6prprckjgtwo"
Content-Disposition: inline
In-Reply-To: <87lebh4ojd.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 02/30] drm/dp_mst: Fix fractional DSC bpp
 handling
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
Cc: Dave Airlie <airlied@redhat.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Thomas Zimmermann <tzimmermann@suse.de>, Wayne Lin <Wayne.Lin@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 David Francis <David.Francis@amd.com>, Mikita Lipski <mikita.lipski@amd.com>,
 Harry Wentland <harry.wentland@amd.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--ujjc6prprckjgtwo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 01, 2023 at 02:59:50PM +0200, Jani Nikula wrote:
> On Tue, 31 Oct 2023, Imre Deak <imre.deak@intel.com> wrote:
> > On Mon, Oct 30, 2023 at 05:58:15PM +0200, Imre Deak wrote:
> > Hi Lyude, AMD folks et al,
> >
> > could you ack patches 2-9 in this patchset if they are ok and it's ok to
> > merge them via the i915 tree?
>=20
> Need acks from drm-misc maintainers too!
>=20
> Cc: Maxime, Thomas, Maarten

Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--ujjc6prprckjgtwo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZUigzQAKCRDj7w1vZxhR
xWLBAQCLIeeovzUDjijjIisaNrpCMt2ApYYd693VcO+v4f2XCQEA5f5QhjWdOlmr
bI4nyJHmVO+eeDhATCGeUuEYnmfbWgo=
=5UXn
-----END PGP SIGNATURE-----

--ujjc6prprckjgtwo--
