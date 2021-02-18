Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E35E31E81A
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Feb 2021 10:49:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C90556E3AC;
	Thu, 18 Feb 2021 09:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03E516E3AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Feb 2021 09:49:18 +0000 (UTC)
IronPort-SDR: WB16r3R6KAfSnZSRlfShfBXHAyJ0A+eT6DfL1+ToV2Z4XXbIN3RkH7Wi9SmfjG2sw+rKNd4XKx
 njYj6GH3Yo+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="244909003"
X-IronPort-AV: E=Sophos;i="5.81,186,1610438400"; d="scan'208";a="244909003"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2021 01:49:18 -0800
IronPort-SDR: NP6a+DOSWEaEeCjPNJhH5vjacxJCsa/izqu+KBmhaj/Xr+M3s1y52/SZYQ1amy0+aixdvseJDL
 vRO1EfDl98Eg==
X-IronPort-AV: E=Sophos;i="5.81,186,1610438400"; d="scan'208";a="378350425"
Received: from oogunmoy-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.147.202])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2021 01:49:17 -0800
Date: Thu, 18 Feb 2021 01:49:16 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Winkler, Tomas" <tomas.winkler@intel.com>
Message-ID: <20210218094916.brm7j62if573xu5c@ldmartin-desk1>
References: <20210216181925.650082-1-tomas.winkler@intel.com>
 <20210216181925.650082-4-tomas.winkler@intel.com>
 <87blcjarof.fsf@intel.com>
 <b08989f480564bbea5ce187797e9e30b@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b08989f480564bbea5ce187797e9e30b@intel.com>
Subject: Re: [Intel-gfx] [RFC PATCH 3/9] drm/i915/spi: add driver for on-die
 spi device
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
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Usyskin,
 Alexander" <alexander.usyskin@intel.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 17, 2021 at 08:58:12PM +0000, Winkler, Tomas wrote:
>>
>> On Tue, 16 Feb 2021, Tomas Winkler <tomas.winkler@intel.com> wrote:
>> > Add the platform driver for i915 on-die spi device, exposed via mfd
>> > framework.
>> >
>> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> > Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/Kconfig             |   2 +
>> >  drivers/gpu/drm/i915/Makefile            |   3 +
>> >  drivers/gpu/drm/i915/spi/intel_spi_drv.c | 116
>> > +++++++++++++++++++++++
>> >  3 files changed, 121 insertions(+)
>> >  create mode 100644 drivers/gpu/drm/i915/spi/intel_spi_drv.c
>> >
>> > diff --git a/drivers/gpu/drm/i915/Kconfig
>> > b/drivers/gpu/drm/i915/Kconfig index abcaa8da45ac..13c870e5878e 100644
>> > --- a/drivers/gpu/drm/i915/Kconfig
>> > +++ b/drivers/gpu/drm/i915/Kconfig
>> > @@ -27,6 +27,8 @@ config DRM_I915
>> >  	select CEC_CORE if CEC_NOTIFIER
>> >  	select VMAP_PFN
>> >  	select MFD_CORE
>> > +	select MTD
>>
>> Selecting MTD does not seem to be a popular thing to do, which is usually a
>> clue it's probably the wrong thing to do.
>Depends, if it is not selected you'll end with wrongly configured system.

no. I believe the idea is that having a CONFIG_I915_SPI, you could do

	depends on MTD

like the other drivers doing similar thing:

	git grep MTD -- ':(exclude)drivers/mtd' ':(exclude)arch/' '*Kconfig'

Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
