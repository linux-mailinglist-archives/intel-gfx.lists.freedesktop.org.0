Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A2A79D0D2
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 14:14:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89EA710E232;
	Tue, 12 Sep 2023 12:14:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5493F10E232
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 12:14:37 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id BF61060D29;
 Tue, 12 Sep 2023 12:14:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B434C433C7;
 Tue, 12 Sep 2023 12:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1694520876;
 bh=XkmC7wK5Cc/UAqB4TBuSfa6MYKHMEOm7EQvizmgqOAw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cVwai/lZtzmhpP30W6mex7F/Nfm+WrGAkueHjspW5LDRArScWMNMZNn7+V7ykhMPg
 1dPtNAnZDtVQV7TFxILZ1H0MsBUDZzciBv16NI4o1jkOHRJYlNN5YzH4DXBUL2pGj3
 9lMPgpMUaCrciKUL9lebhyyKD8MGIiVaZQl89YdtCSSYwx/xNIH+lMffDRucHZUD/W
 pzkqcFfKpXgKxTO6WZeDkCNLVkQmTKqe+zS9U/t6cw3xkLaRaghx39pf72eIcLAMaU
 v/k3JZohIaLYH7wns1+pqiVKHteNrHhhD/OeA/fkbmntvx9g9whmguxwYSw6Q82rud
 05XGxDZtr2rQw==
Date: Tue, 12 Sep 2023 13:14:29 +0100
From: Mark Brown <broonie@kernel.org>
To: "Usyskin, Alexander" <alexander.usyskin@intel.com>
Message-ID: <0d60a78b-0305-4cb3-babe-4eefe5001b29@sirena.org.uk>
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
 <20230911094233.326fd936@xps-13>
 <CY5PR11MB63667FBB6AF5B4331419BDAAEDF1A@CY5PR11MB6366.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="uKDrHREIXSOB633X"
Content-Disposition: inline
In-Reply-To: <CY5PR11MB63667FBB6AF5B4331419BDAAEDF1A@CY5PR11MB6366.namprd11.prod.outlook.com>
X-Cookie: Victory uber allies!
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Michael Walle <michael@walle.cc>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "Lubart, Vitaly" <vitaly.lubart@intel.com>,
 Pratyush Yadav <pratyush@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--uKDrHREIXSOB633X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 12, 2023 at 10:50:22AM +0000, Usyskin, Alexander wrote:

> The spi controller on discreet graphics card is not visible to user-space.
> Spi access flows are supported by another hardware module and relevant registers are
> available on graphics device memory bar.

No SPI controllers are directly visible to userspace, some SPI devices
are selectively exposed but that needs to be explicitly requested and is
generally discouraged.

--uKDrHREIXSOB633X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUAViIACgkQJNaLcl1U
h9BBwQf9HEhBAYTf1p6rEEjFlaLKxvrdg4ZwS0HnCh7FR7EL1va8yFb1PT8hrn3e
e8q3vfqaz1J5L8wUITwS9oyKzKiwfwwDCxXipW9y0+TSjhFEme5/ravNtEvpXN+M
2hqbmCjp53gDQiz5KKj6F4XsfSHrmLrmCQ+4/qfj1CigXHnxOWuqKJ35tX9y+oDA
4tngywE43hiLIPNTrVFnocrYzviXWoAMpKjESJiXaD/uRQrLUyOi5cLKb9BJgBaG
PqETDDh+9R+G3Rvaa8vrr3UqbU0NxZtm/7FPKW1eTUm7/ferGcyMn2LCUH2G1jdj
u69lmZ5Yhy0LiLVvrL3Ol49IzrUkdQ==
=/F96
-----END PGP SIGNATURE-----

--uKDrHREIXSOB633X--
