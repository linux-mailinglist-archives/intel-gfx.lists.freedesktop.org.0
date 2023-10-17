Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCB17CC542
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Oct 2023 15:55:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F156D10E03A;
	Tue, 17 Oct 2023 13:55:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 105364 seconds by postgrey-1.36 at gabe;
 Tue, 17 Oct 2023 13:55:52 UTC
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
 [217.70.183.201])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D008110E03A
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Oct 2023 13:55:52 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id D77461BF20C;
 Tue, 17 Oct 2023 13:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1697550951;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1Z6gVCFPuEuJIFunX0VOelwyUIXfBj0PBvgXhm0ZGQQ=;
 b=Wgds58OkXOn8H5VPDGztH7JkI+hlB5VsgKWSl8e9uMvWgKbC9XOOXpR6lzLGY/HrhLu0MW
 r6+8zj+p6OnfePnwdPAt8lPirYYgGlk5er4MbgplmdwoacJpd3lrP0Q2x6C2UTW3sBmkGA
 xajpZ01MaV7XC2hzCtBvWmrWBDNnLTuIm9W4JUaA48R/kp0uXtGPnaJjP+dO55yHHNbxHU
 fH1cblDDL81jl3Xx4eqtotvJt6l9bUilLIC1Tpws3+yQCbgD80MzjUtgXUBXGS9aaBADju
 IBLXLbCv5iy5P7hmaeSsREu7q2gRRODj0+iQoFkrunFEG/x/iYX6jjjmRL+3Iw==
Date: Tue, 17 Oct 2023 15:55:44 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Usyskin, Alexander" <alexander.usyskin@intel.com>
Message-ID: <20231017155544.6cceb6a6@xps-13>
In-Reply-To: <CY5PR11MB6366850CCE851BCA05A9DC2BEDD6A@CY5PR11MB6366.namprd11.prod.outlook.com>
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
 <20230910123949.1251964-7-alexander.usyskin@intel.com>
 <20231016103939.67445bee@xps-13>
 <CY5PR11MB6366850CCE851BCA05A9DC2BEDD6A@CY5PR11MB6366.namprd11.prod.outlook.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: miquel.raynal@bootlin.com
Subject: Re: [Intel-gfx] [PATCH 06/10] drm/i915/spi: spi register with mtd
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
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "Winkler, Tomas" <tomas.winkler@intel.com>,
 "Lubart, Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Alexander,

alexander.usyskin@intel.com wrote on Tue, 17 Oct 2023 11:54:41 +0000:

> Hi Miquel,=20
>=20
> > > +static int i915_spi_init_mtd(struct i915_spi *spi, struct device *de=
vice,
> > > +			     unsigned int nparts)
> > > +{
> > > +	unsigned int i;
> > > +	unsigned int n;
> > > +	struct mtd_partition *parts =3D NULL;
> > > +	int ret;
> > > +
> > > +	dev_dbg(device, "registering with mtd\n");
> > > +
> > > +	spi->mtd.owner =3D THIS_MODULE;
> > > +	spi->mtd.dev.parent =3D device;
> > > +	spi->mtd.flags =3D MTD_CAP_NORFLASH | MTD_WRITEABLE;
> > > +	spi->mtd.type =3D MTD_DATAFLASH;
> > > +	spi->mtd.priv =3D spi;
> > > +	spi->mtd._write =3D i915_spi_write;
> > > +	spi->mtd._read =3D i915_spi_read;
> > > +	spi->mtd._erase =3D i915_spi_erase;
> > > +	spi->mtd._get_device =3D i915_spi_get_device;
> > > +	spi->mtd._put_device =3D i915_spi_put_device;
> > > +	spi->mtd.writesize =3D SZ_1; /* 1 byte granularity */ =20
> >=20
> > You say writesize should be aligned with 4 in your next patch? =20
>=20
> We support unaligned write by reading aligned 4bytes,
> replacing changed bytes there and writing whole 4bytes back.
> Is there any problem with this approach?

Is there a reason to do that manually rather than letting the core
handle the complexity?

>=20
> >  =20
> > > +	spi->mtd.erasesize =3D SZ_4K; /* 4K bytes granularity */
> > > +	spi->mtd.size =3D spi->size;
> > > + =20
>=20


Thanks,
Miqu=C3=A8l
