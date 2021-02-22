Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A09073213F7
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 11:17:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B21F6E4BA;
	Mon, 22 Feb 2021 10:17:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95A4A6E4BA
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 10:17:48 +0000 (UTC)
IronPort-SDR: cjn/HcFoxPfbi+us6fOq42U1MGjZjgdbk39f6uIW2uxLNzUs2dqjMwAeiql2gj5RYtsPvQ+z5C
 N4D5ZrPqFp4A==
X-IronPort-AV: E=McAfee;i="6000,8403,9902"; a="248453016"
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="248453016"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 02:17:47 -0800
IronPort-SDR: Oq6ICk0zbZEtWqid/UJlM9O1X8FEWyJrrSZidZGHtZjDD5lLfFDr+bsZYprLZkNnJW1wokS9td
 Yhu1gc5dUkYw==
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="402521300"
Received: from reifs-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.39.145])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 02:17:44 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Winkler\, Tomas" <tomas.winkler@intel.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, "Vivi\,
 Rodrigo" <rodrigo.vivi@intel.com>
In-Reply-To: <9768d50298114d7daf9736f17c6ed009@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210216181925.650082-1-tomas.winkler@intel.com>
 <20210216181925.650082-3-tomas.winkler@intel.com> <87eehfas5d.fsf@intel.com>
 <9768d50298114d7daf9736f17c6ed009@intel.com>
Date: Mon, 22 Feb 2021 12:17:40 +0200
Message-ID: <87v9akfltn.fsf@intel.com>
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

On Wed, 17 Feb 2021, "Winkler, Tomas" <tomas.winkler@intel.com> wrote:
>> On Tue, 16 Feb 2021, Tomas Winkler <tomas.winkler@intel.com> wrote:
>> > Add the dGFX spi region map and convey it via mfd cell platform data
>> > to the spi child device.
>> >
>> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> > Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/spi/intel_spi.c | 9 +++++++++
>> > drivers/gpu/drm/i915/spi/intel_spi.h | 5 +++++
>> >  2 files changed, 14 insertions(+)
>> >
>> > diff --git a/drivers/gpu/drm/i915/spi/intel_spi.c
>> > b/drivers/gpu/drm/i915/spi/intel_spi.c
>> > index 07da7197bd5d..6f83f24f7208 100644
>> > --- a/drivers/gpu/drm/i915/spi/intel_spi.c
>> > +++ b/drivers/gpu/drm/i915/spi/intel_spi.c
>> > @@ -14,11 +14,20 @@ static const struct resource spi_resources[] = {
>> >  	DEFINE_RES_MEM_NAMED(GEN12_GUNIT_SPI_BASE, 0x80, "i915-
>> spi-mmio"),
>> > };
>> >
>> > +static const struct i915_spi_region regions[I915_SPI_REGIONS] = {
>> > +	[0] = { .name = "DESCRIPTOR", },
>> > +	[2] = { .name = "GSC", },
>> > +	[11] = { .name = "OptionROM", },
>> > +	[12] = { .name = "DAM", },
>> > +};
>> > +
>> >  static const struct mfd_cell intel_spi_cell = {
>> >  	.id = 2,
>> >  	.name = "i915-spi",
>> >  	.num_resources = ARRAY_SIZE(spi_resources),
>> >  	.resources = spi_resources,
>> > +	.platform_data = (void *)regions,
>> > +	.pdata_size    = sizeof(regions),
>> >  };
>> >
>> >  void intel_spi_init(struct intel_spi *spi, struct drm_i915_private
>> > *dev_priv) diff --git a/drivers/gpu/drm/i915/spi/intel_spi.h
>> > b/drivers/gpu/drm/i915/spi/intel_spi.h
>> > index 276551fed993..6b5bf053f7d3 100644
>> > --- a/drivers/gpu/drm/i915/spi/intel_spi.h
>> > +++ b/drivers/gpu/drm/i915/spi/intel_spi.h
>> > @@ -8,6 +8,11 @@
>> >
>> >  struct drm_i915_private;
>> >
>> > +#define I915_SPI_REGIONS 13
>> > +struct i915_spi_region {
>> > +	const char *name;
>> > +};
>> 
>> Does this need to be exposed to the rest of i915? 
> This part is between the device which is part of i915 and the driver.
>>If we're trying to isolate
>> spi/, I'd prefer it if this header was the only header included from the rest of
>> i915, and contained the minimum required information.
>
>> As the driver has grown bigger, we've tried to minimize the interconnections
>> between the modules, and it's slow going. Let's try to keep the new parts
>> isolated.
>>
> So do you prefer we create another header or duplicate the structure definition? 

I didn't see the struct being used in i915, or am I missing something?

Have a header that contains the interface exposed to the rest of i915,
and another header with stuff internal to spi/?

BR,
Jani.




-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
