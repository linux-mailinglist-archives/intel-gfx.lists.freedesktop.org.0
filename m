Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A7D7A4982
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 14:24:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5534210E280;
	Mon, 18 Sep 2023 12:24:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 106704 seconds by postgrey-1.36 at gabe;
 Tue, 12 Sep 2023 13:21:07 UTC
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net
 [IPv6:2001:4b98:dc4:8::227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A172310E235
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 13:21:07 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 075BB2000C;
 Tue, 12 Sep 2023 13:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1694524865;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZZWZL1Aw34+UH6DNxwAGQdMbtI0hmjsgK4JYw4ZgLak=;
 b=IQp4OLO/cIRSSzuN/DBJ9UArUhb8+kmnpScQeZrHsvqW/4vTtTDQw51/81qrq6MfQ6HIJu
 eSTXwBivKA37CSBJhez2Sonb70bV2gvNRX9VeMpAmv7ixRcoUPtv0IKo4U64klUwGygKG7
 0isaTNY/APmtMAkO0hsr02mnrrUtKtYRADky80lJ1Ig+H4KDn4IRMzoAjjCNcBMDHlXyrf
 E9XvvwkzKdiMdR46CMIMcNFq536ahn6gSpdps16XVSJisojj5YCNGyDYoa2i9AKyr36Q2y
 OthlWc9qU07hOTHej6RQEJRwcJx5gvrTbsMOwksrlkcyeyx8kMYHZnS8XR/kYw==
Date: Tue, 12 Sep 2023 15:21:02 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Usyskin, Alexander" <alexander.usyskin@intel.com>
Message-ID: <20230912152102.0dfe7558@xps-13>
In-Reply-To: <CY5PR11MB63667AB9958A23970B4B0D3EEDF1A@CY5PR11MB6366.namprd11.prod.outlook.com>
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
 <20230911094233.326fd936@xps-13>
 <CY5PR11MB63667FBB6AF5B4331419BDAAEDF1A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <0d60a78b-0305-4cb3-babe-4eefe5001b29@sirena.org.uk>
 <CY5PR11MB63667AB9958A23970B4B0D3EEDF1A@CY5PR11MB6366.namprd11.prod.outlook.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: miquel.raynal@bootlin.com
X-Mailman-Approved-At: Mon, 18 Sep 2023 12:24:43 +0000
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
 Michael Walle <michael@walle.cc>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>, Mark Brown <broonie@kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "Lubart, Vitaly" <vitaly.lubart@intel.com>,
 Pratyush Yadav <pratyush@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

alexander.usyskin@intel.com wrote on Tue, 12 Sep 2023 13:15:58 +0000:

> >  =20
> > > The spi controller on discreet graphics card is not visible to user-s=
pace.
> > > Spi access flows are supported by another hardware module and relevan=
t =20
> > registers are =20
> > > available on graphics device memory bar. =20
> >=20
> > No SPI controllers are directly visible to userspace, some SPI devices
> > are selectively exposed but that needs to be explicitly requested and is
> > generally discouraged. =20
>=20
> What are the options here? Explicitly request exception is the one.
> Any other way to add access to flash memory connected in such way?

Register a spi controller with at least spi-mem ops, as suggested
previously, is the standard way I guess. If you're not willing to do
so, it must be justified, I guess?

Thanks,
Miqu=C3=A8l
