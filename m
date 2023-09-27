Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDA27B0764
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 16:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51D5A10E1D8;
	Wed, 27 Sep 2023 14:54:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net
 [IPv6:2001:4b98:dc4:8::221])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A56710E06C
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 14:54:50 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 1F837240013;
 Wed, 27 Sep 2023 14:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1695826488;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bU7T7dDQ/dHFd7LrSzq4NNGKbKWAKTZ4mfNpbgF6ZUs=;
 b=bh26dm8STTmIX6aEY3yids5BNROji9NHQGCOkljcLJGC7bWQN0oVyOYBbPx8EDjBWSUOhI
 kZlgWMO10lk3atwHM1kAVX27i0xASK7A1e+nfUzrjb2Xg6uNXXXTu++hyN2wXoU7cwNdy0
 hFIpSIr3igF9xMGLltEJ8R9cP7nRW3LXTxsocJd9Ha+COgsVI+DmGUQFre4pi0hPCf6uuO
 81rLsrDdebLX/bqTcmFAiWGh2863Q5KfTaG3AUzOKMKt4N1HCzB9QKh2kRgmINHh6GLOkE
 yK+sCCVNwpUWbTpGLujlpRxy+fiuTIx5/uIV9fENKj3PD9H0dzqZ5YAOtT8TYw==
Date: Wed, 27 Sep 2023 16:54:38 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20230927165350.470bea0f@xps-13>
In-Reply-To: <ZRQ+LzIoD+J0BzVp@finisterre.sirena.org.uk>
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
 <ZRQ+LzIoD+J0BzVp@finisterre.sirena.org.uk>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: miquel.raynal@bootlin.com
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
 Alexander" <alexander.usyskin@intel.com>, Michael Walle <michael@walle.cc>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "Winkler, Tomas" <tomas.winkler@intel.com>,
 "Lubart, Vitaly" <vitaly.lubart@intel.com>,
 Pratyush Yadav <pratyush@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Mark,

broonie@kernel.org wrote on Wed, 27 Sep 2023 16:37:35 +0200:

> On Wed, Sep 27, 2023 at 02:11:47PM +0000, Usyskin, Alexander wrote:
>=20
> > There is a Discreet Graphic device with embedded SPI (controller & flas=
h).
> > The embedded SPI is not visible to OS.
> > There is another HW in the chip that gates access to the controller and
> > exposes registers for:
> > region select; read and write (4 and 8 bytes); erase (4K); error regist=
er;  =20
>=20
> So assuming that's flash region select it sounds like this is a MTD
> controller and the fact that there's SPI isn't really relevant at all
> from a programming model point of view and it should probably be
> described as a MTD controller of some kind.  Does that sound about
> right?

Yeah in this case it seems the best option if the OS only has access to
a very small subset of what the spi controller can do.

Thanks,
Miqu=C3=A8l
