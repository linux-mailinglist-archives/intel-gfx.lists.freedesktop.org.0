Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE227B0713
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 16:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9532610E540;
	Wed, 27 Sep 2023 14:37:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7090C10E53B
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 14:37:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 933F961883;
 Wed, 27 Sep 2023 14:37:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA2F5C433C8;
 Wed, 27 Sep 2023 14:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1695825458;
 bh=qWF+NqYelJaQpG877EqA8MHQS8RmOQ1ooBg3CABBt3o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ASpyUfAFsBsIzxXjNqewgstlIRbwyJjkIJiEF7OUVKitEcngP9KaeVNwNY5gf5nhj
 tkX8wRjXneezmd7BiMz2YQDOXZ5j2YeQx/E9nkkcwPn3Z1TZWxbj6j/WVkBAhbWOwI
 VsutCdQHi4mbSjrfUxulmvA+/dIbycDiPqQ/sZgC/7qqq4SmfuWYs6wPQ9sLuHgUE1
 AR4tEZm75LEaETW0KTsvKg6ik2z4WX0vK1Lf90MC6SA59zbXee+yKe4F9affzCol9+
 n+4ZvVMMoTkpCMeERjAAzDKg62pIzRBlTzI/y0gTiRQzziqL2co+Ucw9+LfAR648qH
 gHH6z2zXcwWBg==
Date: Wed, 27 Sep 2023 16:37:35 +0200
From: Mark Brown <broonie@kernel.org>
To: "Usyskin, Alexander" <alexander.usyskin@intel.com>
Message-ID: <ZRQ+LzIoD+J0BzVp@finisterre.sirena.org.uk>
References: <CY5PR11MB63667FBB6AF5B4331419BDAAEDF1A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <0d60a78b-0305-4cb3-babe-4eefe5001b29@sirena.org.uk>
 <CY5PR11MB63667AB9958A23970B4B0D3EEDF1A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <20230912152102.0dfe7558@xps-13>
 <ee4a85be-aa87-4c40-916c-0a796688ad6f@sirena.org.uk>
 <CY5PR11MB6366427A8DD52D9B8B54F25DEDF9A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <1b93fffe-5aac-42f3-9bbe-a307758673cf@sirena.org.uk>
 <MN2PR11MB40938110726F81D8CE305FB8E5F9A@MN2PR11MB4093.namprd11.prod.outlook.com>
 <0682443d-5219-4aa2-a932-ee3e04c0760e@sirena.org.uk>
 <CY5PR11MB63661B36FFAE9455504DACD6EDC2A@CY5PR11MB6366.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="frZJ4uuKAPwyznhl"
Content-Disposition: inline
In-Reply-To: <CY5PR11MB63661B36FFAE9455504DACD6EDC2A@CY5PR11MB6366.namprd11.prod.outlook.com>
X-Cookie: Save energy:  Drive a smaller shell.
Subject: Re: [Intel-gfx] [PATCH 00/10] drm/i915/spi: spi access for discrete
 graphics
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Michael Walle <michael@walle.cc>, Miquel Raynal <miquel.raynal@bootlin.com>,
 "Winkler, Tomas" <tomas.winkler@intel.com>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>, Pratyush Yadav <pratyush@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--frZJ4uuKAPwyznhl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 27, 2023 at 02:11:47PM +0000, Usyskin, Alexander wrote:

> There is a Discreet Graphic device with embedded SPI (controller & flash).
> The embedded SPI is not visible to OS.
> There is another HW in the chip that gates access to the controller and
> exposes registers for:
> region select; read and write (4 and 8 bytes); erase (4K); error register=
;=20

So assuming that's flash region select it sounds like this is a MTD
controller and the fact that there's SPI isn't really relevant at all
=66rom a programming model point of view and it should probably be
described as a MTD controller of some kind.  Does that sound about
right?

--frZJ4uuKAPwyznhl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUUPigACgkQJNaLcl1U
h9Dztwf/dI2/2yh2ohlcjPRhimWVWsphQDwpbvDH73EC98Z0A1pqnhMEQNvjGP1z
XD16vP3s84PqWGtNhBdn9NNcK0+smsWDEUwQE+16+MQFhuAHvGl24h2WwsmBZ+8l
NtOcREhYq4nNrg0dQ70xDkb6pCecfEN79R6719yk8ryVOMBGa6LmSr3nKlcGeKCa
POiJS/5kcGr2rgi+2suhkSH56OEUsLbKFjOncZN0NPKCmlnf/kieirZTG9XfajjH
W988zzdRAe++RpgHFYFz2pZqGQ648IaexM2Weje2WGYKPKJslmyYaEf+Ru1hV8sE
VyA1NsixeALMQhIttr1yaAB8xzCTig==
=KXto
-----END PGP SIGNATURE-----

--frZJ4uuKAPwyznhl--
