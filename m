Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB66C7EACBA
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 10:13:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35FFE10E1E2;
	Tue, 14 Nov 2023 09:13:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
 [217.70.183.195])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72E3210E1E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 09:13:31 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id AF65360006;
 Tue, 14 Nov 2023 09:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1699953209;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZXmsKLNlIkRZMpVqTBmk5kgsfULJhH/NpiCWOxqXxtY=;
 b=cnhAecl47Pph553zwzCpGbMzCwKPl4F+Aqw9i6T5ZgP9NEYIDf1z1phS/tErjuIK6MPb0H
 dOo15Y2zyGDmq66Y9BvE+eTm+3AesXDFfGevrIT6dLX8seutsVB9tOU/0UpyhTy62RE2tr
 cLdWlgZXg9rk0uGRB+DmEtv+sC4Orw9vfbAmeoESiaMhBsfJYL8slJArKgBuoLo4aPxCkA
 ASQ9/GvIGOzYqAA98R9hcbobLAecCFqxZaH5YqUN/ryCeGuJS+eW9nmZReTG9IvV/5yIsh
 2tBer13nDxMyqAkHcHHEGGF+HZqbeDo0c5Pl6xKePWaTa6VAnh/nOyMxt0lhHg==
Date: Tue, 14 Nov 2023 10:13:24 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Usyskin, Alexander" <alexander.usyskin@intel.com>
Message-ID: <20231114101324.39569e96@xps-13>
In-Reply-To: <CY5PR11MB6366383C8C0DCA9B3D41BF63EDB2A@CY5PR11MB6366.namprd11.prod.outlook.com>
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
 <20230910123949.1251964-7-alexander.usyskin@intel.com>
 <20231016103939.67445bee@xps-13>
 <CY5PR11MB6366850CCE851BCA05A9DC2BEDD6A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <20231017155544.6cceb6a6@xps-13>
 <CY5PR11MB63663DB0C17321A1A0C46FF3EDD6A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <20231017164615.5b58fcc6@xps-13>
 <CY5PR11MB6366383C8C0DCA9B3D41BF63EDB2A@CY5PR11MB6366.namprd11.prod.outlook.com>
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
 Tudor Ambarus <tudor.ambarus@linaro.org>, Michael Walle <michael@walle.cc>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "Winkler, Tomas" <tomas.winkler@intel.com>,
 "Lubart, Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Alexander,

+ Michael and Tudor

Folks, any interesting thought about the below discussion?

alexander.usyskin@intel.com wrote on Tue, 14 Nov 2023 08:47:34 +0000:

> >  =20
> > > > > > > +	spi->mtd.writesize =3D SZ_1; /* 1 byte granularity */ =20
> > > > > >
> > > > > > You say writesize should be aligned with 4 in your next patch? =
=20
> > > > >
> > > > > We support unaligned write by reading aligned 4bytes,
> > > > > replacing changed bytes there and writing whole 4bytes back.
> > > > > Is there any problem with this approach? =20
> > > >
> > > > Is there a reason to do that manually rather than letting the core
> > > > handle the complexity?
> > > > =20
> > > I was not aware that core can do this. The core implements above logic
> > > if I put SZ_4 here and caller try to write, say, one byte?
> > > And sync multiple writers?
> > > If so, I can remove manual work, I think, and make the patches smalle=
r. =20
> >=20
> > I haven't checked in detail but I would expect this yes. Please have a
> > round of tests and if it works, please simplify this part.
> >=20
> > Thanks,
> > Miqu=C3=A8l =20
>=20
> When I put SZ_4 here the "mtd_debug info /dev/mtd0" prints "mtd.writesize=
 =3D 4",
> but "mtd_debug write /dev/mtd0 128 1 c" passes one byte to
> i915_spi_write (mtd._write callback).
> I suppose that mtd subsystem do not support this.
> Or I did something wrong?
>=20


Thanks,
Miqu=C3=A8l
