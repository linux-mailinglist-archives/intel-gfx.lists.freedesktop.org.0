Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D074F7A93DA
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 13:30:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F3CC10E5C9;
	Thu, 21 Sep 2023 11:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 008E610E5C9
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 11:29:58 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id DCE5DCE21AB;
 Thu, 21 Sep 2023 11:29:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29E7EC4AF6F;
 Thu, 21 Sep 2023 11:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1695295795;
 bh=Ext4rimGIoGT3bXvzPenFTpDt2WMJxS49gIia4owWc8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Zv6YcEYb7UC7rqfYJgUO35aeycrbZ0zyWESB3wYQYjCH6uVGrfS2OukBjC67YcWuN
 hQGVZ6NLd7e2/AnC18Y3I0YFq75rqRGBioWcfIMhqM6yvcNY07SdkDQf/sM4YW0CJm
 2L/slTChvn8eCQE8dJDsODIpiRdCP3gGbCUjFQ4Eti2qYhNaaAn+FHPZ80mzLCs3ef
 5Zm5Vpw8NAtN891NkdVhudg+6Fl0hXhY3IoLAWUWqHz142KYoZXimV0W7lcL3b94aB
 nZzsk4ykxQgatBFjaVD20RTn/V03bFCkPVqe7lUGXb9guQO7KvdY/w8UY9C+bi8P0P
 3Dx12uODB5qEw==
Date: Thu, 21 Sep 2023 12:29:48 +0100
From: Mark Brown <broonie@kernel.org>
To: "Winkler, Tomas" <tomas.winkler@intel.com>
Message-ID: <0682443d-5219-4aa2-a932-ee3e04c0760e@sirena.org.uk>
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
 <20230911094233.326fd936@xps-13>
 <CY5PR11MB63667FBB6AF5B4331419BDAAEDF1A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <0d60a78b-0305-4cb3-babe-4eefe5001b29@sirena.org.uk>
 <CY5PR11MB63667AB9958A23970B4B0D3EEDF1A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <20230912152102.0dfe7558@xps-13>
 <ee4a85be-aa87-4c40-916c-0a796688ad6f@sirena.org.uk>
 <CY5PR11MB6366427A8DD52D9B8B54F25DEDF9A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <1b93fffe-5aac-42f3-9bbe-a307758673cf@sirena.org.uk>
 <MN2PR11MB40938110726F81D8CE305FB8E5F9A@MN2PR11MB4093.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="TbJgxN7ogP82Dbhu"
Content-Disposition: inline
In-Reply-To: <MN2PR11MB40938110726F81D8CE305FB8E5F9A@MN2PR11MB4093.namprd11.prod.outlook.com>
X-Cookie: Caution: Keep out of reach of children.
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
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Usyskin,
 Alexander" <alexander.usyskin@intel.com>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Michael Walle <michael@walle.cc>, Miquel Raynal <miquel.raynal@bootlin.com>,
 "Lubart, Vitaly" <vitaly.lubart@intel.com>,
 Pratyush Yadav <pratyush@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--TbJgxN7ogP82Dbhu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 20, 2023 at 09:00:08PM +0000, Winkler, Tomas wrote:

> > This sounds like there's some sort of MFD rather than or as well as a flash
> > chip, or possibly multiple SPI devices?

> Yes, the driver doesn't talk to SPI controller directly it goes via
> another layer, so all SPI standard HW is not accessible, but we wish
> to expose the MTD interface.

Perhaps if you described clearly and directly the actual system you are
trying to model then it would be easier to tell how it fits into the
kernel?  What is the actual interface here - how does the host interact
with the flash?

Also to repeat: please fix your mail client to word wrap within
paragraphs at something substantially less than 80 columns.  Doing this
makes your messages much easier to read and reply to.

--TbJgxN7ogP82Dbhu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUMKSwACgkQJNaLcl1U
h9Dr/gf/U44zGy1AYE+35ZjjSS7dDQgRpfGj5ajOErQ9jy2QKpcmpGqq/xA4QY2B
TWlCSRUoJzCC2zRk1Nt/d55doPhqWVeLp1y5VQYETSmi+GfE+SyQJCwlLH3mAlSN
3WbxMjhiwhns7qZ15S1HXxvaAgouXLWWj73DtKSSgJUMf6I4gbVBJqdHTNzFnwAG
G6d3NsFqVYxERwFMA3O5w25eAJuHAvgjJ7598r4j+rVXOuaGkXmrX60JKGKGEeIy
t0LG6le16nOY9fgCekQh+kn6E9vergns8QxcvT+10vWDdktTWL3YSuhYpQXDkTXv
MZNGLRv0ky7hzY1gqMfmW0afZKLnCQ==
=FmsF
-----END PGP SIGNATURE-----

--TbJgxN7ogP82Dbhu--
