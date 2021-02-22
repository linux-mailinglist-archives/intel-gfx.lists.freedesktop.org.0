Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83BD8321525
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 12:31:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD47E6E947;
	Mon, 22 Feb 2021 11:31:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 488FA6E947
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 11:31:00 +0000 (UTC)
IronPort-SDR: tM4dA2wZzObd8+5vWBS9+d+CwKJHZrnNES1j5aF4Q3YL/Nr0ZL/b4kjcMJquDGEjVPyNrm3KdF
 GRF3G9QiAzsg==
X-IronPort-AV: E=McAfee;i="6000,8403,9902"; a="171546764"
X-IronPort-AV: E=Sophos;i="5.81,197,1610438400"; d="scan'208";a="171546764"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 03:30:59 -0800
IronPort-SDR: YbD29sYxXz1R+7wjyIr3QtF0L45UQP9h44HLwp+8IjWOq58YjgTZ50Ea6HNr358EAYqgBOozX0
 OYeI94D+Ge+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,197,1610438400"; d="scan'208";a="379975893"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga002.jf.intel.com with ESMTP; 22 Feb 2021 03:30:59 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Feb 2021 03:30:59 -0800
Received: from hasmsx602.ger.corp.intel.com (10.184.107.142) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Feb 2021 03:30:57 -0800
Received: from hasmsx602.ger.corp.intel.com ([10.184.107.142]) by
 HASMSX602.ger.corp.intel.com ([10.184.107.142]) with mapi id 15.01.2106.002;
 Mon, 22 Feb 2021 13:30:56 +0200
From: "Winkler, Tomas" <tomas.winkler@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, "Vignesh
 Raghavendra" <vigneshr@ti.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [RFC PATCH 2/9] drm/i915/spi: intel_spi_region map
Thread-Index: AQHXBJBVKwf5piBMOke5w08ZELz+LapcCZsAgAC3KiCABxx5AIAANLrA
Date: Mon, 22 Feb 2021 11:30:56 +0000
Message-ID: <ef89f4dc32d843df84719b8fcf11d385@intel.com>
References: <20210216181925.650082-1-tomas.winkler@intel.com>
 <20210216181925.650082-3-tomas.winkler@intel.com> <87eehfas5d.fsf@intel.com>
 <9768d50298114d7daf9736f17c6ed009@intel.com> <87v9akfltn.fsf@intel.com>
In-Reply-To: <87v9akfltn.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.184.70.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH 2/9] drm/i915/spi: intel_spi_region map
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Usyskin,
 Alexander" <alexander.usyskin@intel.com>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


> On Wed, 17 Feb 2021, "Winkler, Tomas" <tomas.winkler@intel.com> wrote:
> >> On Tue, 16 Feb 2021, Tomas Winkler <tomas.winkler@intel.com> wrote:
> >> > Add the dGFX spi region map and convey it via mfd cell platform
> >> > data to the spi child device.
> >> >
> >> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> >> > Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/spi/intel_spi.c | 9 +++++++++
> >> > drivers/gpu/drm/i915/spi/intel_spi.h | 5 +++++
> >> >  2 files changed, 14 insertions(+)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/spi/intel_spi.c
> >> > b/drivers/gpu/drm/i915/spi/intel_spi.c
> >> > index 07da7197bd5d..6f83f24f7208 100644
> >> > --- a/drivers/gpu/drm/i915/spi/intel_spi.c
> >> > +++ b/drivers/gpu/drm/i915/spi/intel_spi.c
> >> > @@ -14,11 +14,20 @@ static const struct resource spi_resources[] = {
> >> >  	DEFINE_RES_MEM_NAMED(GEN12_GUNIT_SPI_BASE, 0x80, "i915-
> >> spi-mmio"),
> >> > };
> >> >
> >> > +static const struct i915_spi_region regions[I915_SPI_REGIONS] = {
> >> > +	[0] = { .name = "DESCRIPTOR", },
> >> > +	[2] = { .name = "GSC", },
> >> > +	[11] = { .name = "OptionROM", },
> >> > +	[12] = { .name = "DAM", },
> >> > +};
> >> > +
> >> >  static const struct mfd_cell intel_spi_cell = {
> >> >  	.id = 2,
> >> >  	.name = "i915-spi",
> >> >  	.num_resources = ARRAY_SIZE(spi_resources),
> >> >  	.resources = spi_resources,
> >> > +	.platform_data = (void *)regions,
> >> > +	.pdata_size    = sizeof(regions),
> >> >  };
> >> >
> >> >  void intel_spi_init(struct intel_spi *spi, struct drm_i915_private
> >> > *dev_priv) diff --git a/drivers/gpu/drm/i915/spi/intel_spi.h
> >> > b/drivers/gpu/drm/i915/spi/intel_spi.h
> >> > index 276551fed993..6b5bf053f7d3 100644
> >> > --- a/drivers/gpu/drm/i915/spi/intel_spi.h
> >> > +++ b/drivers/gpu/drm/i915/spi/intel_spi.h
> >> > @@ -8,6 +8,11 @@
> >> >
> >> >  struct drm_i915_private;
> >> >
> >> > +#define I915_SPI_REGIONS 13
> >> > +struct i915_spi_region {
> >> > +	const char *name;
> >> > +};
> >>
> >> Does this need to be exposed to the rest of i915?
> > This part is between the device which is part of i915 and the driver.
> >>If we're trying to isolate
> >> spi/, I'd prefer it if this header was the only header included from
> >>the rest of  i915, and contained the minimum required information.
> >
> >> As the driver has grown bigger, we've tried to minimize the
> >> interconnections between the modules, and it's slow going. Let's try
> >> to keep the new parts isolated.
> >>
> > So do you prefer we create another header or duplicate the structure
> definition?
> 
> I didn't see the struct being used in i915, or am I missing something?
This file is part of i915
 
> Have a header that contains the interface exposed to the rest of i915, and
> another header with stuff internal to spi/?

The spi `device` is part of i915 (as a mfd cell) and  struct i915_spi_region is  passed to the spi `driver` as platform_data of the device.
In order for driver to be able to understand  it needs to know ' struct i915_spi_region' 

Thanks
Tomas

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
