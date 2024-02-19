Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C2E859F4F
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Feb 2024 10:09:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9D9510E1CF;
	Mon, 19 Feb 2024 09:09:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="ZKwoH0ud";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mslow1.mail.gandi.net (mslow1.mail.gandi.net [217.70.178.240])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 600FE10E1CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Feb 2024 09:09:24 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (unknown [217.70.183.193])
 by mslow1.mail.gandi.net (Postfix) with ESMTP id 300FDC46D8
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Feb 2024 09:09:22 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 39FDD240012;
 Mon, 19 Feb 2024 09:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1708333760;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=H8vWhExmV17xgBupKhlUpM5JsVzLtHrfZFnRIwxZZMw=;
 b=ZKwoH0udRomK3OIA/PKL3qQfxaieAKjDxWRt3K7eg7fBWc+ApQu62ioIdky+i8DejUz0cz
 C9yNTyPskz8oJ4diNJGQ4gSn63C+kmXFAdg49pXmTmf1GTlIH7jpzRuEojPcY6xIcQZz1X
 1dp1uLQCLLXPqZH3XMAMo6TYDl6oW/kgsa1z7pgDHgiZzexiGUQ4B6qNGqWsDrqmhx+7B4
 DOGMFBeoRlmQbxKvxlrKuuRu0utt+SBNjbP3iPyUb6a5ivWycobTaXepaj02bhbklP3O/0
 we5hDXUX8pjx5eBDAuhOTAfi+MeeXBETTAz6/dqEB6U8URRqMQanGW60TKE0DQ==
Date: Mon, 19 Feb 2024 10:09:15 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Usyskin, Alexander" <alexander.usyskin@intel.com>
Cc: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra
 <vigneshr@ti.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas
 Lahtinen <joonas.lahtinen@linux.intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Lubart, Vitaly" <vitaly.lubart@intel.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Winkler, Tomas" <tomas.winkler@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, Michael Walle <michael@walle.cc>, Tudor Ambarus
 <tudor.ambarus@linaro.org>
Subject: Re: [PATCH 06/10] drm/i915/spi: spi register with mtd
Message-ID: <20240219100915.5a778fb9@xps-13>
In-Reply-To: <CY5PR11MB63660FF7942CA400439B76D8ED4E2@CY5PR11MB6366.namprd11.prod.outlook.com>
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
 <20230910123949.1251964-7-alexander.usyskin@intel.com>
 <20231016103939.67445bee@xps-13>
 <CY5PR11MB6366850CCE851BCA05A9DC2BEDD6A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <20231017155544.6cceb6a6@xps-13>
 <CY5PR11MB63663DB0C17321A1A0C46FF3EDD6A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <20231017164615.5b58fcc6@xps-13>
 <CY5PR11MB6366383C8C0DCA9B3D41BF63EDB2A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <20231114101324.39569e96@xps-13>
 <CY5PR11MB63660FF7942CA400439B76D8ED4E2@CY5PR11MB6366.namprd11.prod.outlook.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: miquel.raynal@bootlin.com
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

Hi Alexander,

alexander.usyskin@intel.com wrote on Wed, 14 Feb 2024 12:16:00 +0000:

> Hi Miquel
>=20
> Intel Gfx in infinite wisdom decided to create another driver - Xe and
> the spi driver part of this series should be moved to some common locatio=
n.
> Should it be drivers/mtd or drivers/spi, or some other place?

It probably depends on the framework they decided to register into. I'm
sorry but I interacted in this thread more than 3 months ago, I no
longer remember most of the details.

If this is a driver for a spi controller (even a limited one) then it
should be drivers/spi/ I guess.

Thanks,
Miqu=C3=A8l
