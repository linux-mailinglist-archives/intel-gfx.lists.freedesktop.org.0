Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D195D320689
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Feb 2021 18:56:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07E7C6E1E8;
	Sat, 20 Feb 2021 17:56:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 790246E1E8
 for <intel-gfx@lists.freedesktop.org>; Sat, 20 Feb 2021 17:56:24 +0000 (UTC)
IronPort-SDR: 5pigb859txssLZXmKW+F8wZ9WBbXS1o/CXZR8koq7iDHKmOJZrVPin/Us4yMrfWIoEEXy/pvZ/
 nyol0ocYjGgg==
X-IronPort-AV: E=McAfee;i="6000,8403,9901"; a="171245626"
X-IronPort-AV: E=Sophos;i="5.81,193,1610438400"; d="scan'208";a="171245626"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2021 09:56:23 -0800
IronPort-SDR: 64IZRj4XcA7JeOQeVSxnh7Paj02UWEJlMG/3ngHRO1a2fasVDRqaufgMEFGs19i7sNYxP7GocW
 Xo6XeN1L4gSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,193,1610438400"; d="scan'208";a="387841258"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga008.fm.intel.com with ESMTP; 20 Feb 2021 09:56:23 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Sat, 20 Feb 2021 09:56:22 -0800
Received: from hasmsx602.ger.corp.intel.com (10.184.107.142) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Sat, 20 Feb 2021 09:56:21 -0800
Received: from hasmsx602.ger.corp.intel.com ([10.184.107.142]) by
 HASMSX602.ger.corp.intel.com ([10.184.107.142]) with mapi id 15.01.2106.002;
 Sat, 20 Feb 2021 19:56:19 +0200
From: "Winkler, Tomas" <tomas.winkler@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [RFC PATCH 3/9] drm/i915/spi: add driver for on-die
 spi device
Thread-Index: AQHXBJBcj4Goi4XIwEe9K9Ji08dc+apcDHIAgADGOPCAALlRAIAAJMVwgAJKVQCAAVwC4A==
Date: Sat, 20 Feb 2021 17:56:19 +0000
Message-ID: <6f49005359df46328226498724eecbcc@intel.com>
References: <20210216181925.650082-1-tomas.winkler@intel.com>
 <20210216181925.650082-4-tomas.winkler@intel.com> <87blcjarof.fsf@intel.com>
 <b08989f480564bbea5ce187797e9e30b@intel.com>
 <20210218094916.brm7j62if573xu5c@ldmartin-desk1>
 <23876b68716b4c5085145b54029b90bc@intel.com>
 <20210219225926.ldwxla7b6bppx6dz@ldmartin-desk1>
In-Reply-To: <20210219225926.ldwxla7b6bppx6dz@ldmartin-desk1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.184.70.1]
MIME-Version: 1.0
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
Cc: Vignesh
 Raghavendra <vigneshr@ti.com>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Usyskin,
 Alexander" <alexander.usyskin@intel.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> On Thu, Feb 18, 2021 at 10:06:08PM -0800, Winkler, Tomas wrote:
> >
> >>
> >> On Wed, Feb 17, 2021 at 08:58:12PM +0000, Winkler, Tomas wrote:
> >> >>
> >> >> On Tue, 16 Feb 2021, Tomas Winkler <tomas.winkler@intel.com>
> wrote:
> >> >> > Add the platform driver for i915 on-die spi device, exposed via
> >> >> > mfd framework.
> >> >> >
> >> >> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >> >> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> >> >> > Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> >> >> > ---
> >> >> >  drivers/gpu/drm/i915/Kconfig             |   2 +
> >> >> >  drivers/gpu/drm/i915/Makefile            |   3 +
> >> >> >  drivers/gpu/drm/i915/spi/intel_spi_drv.c | 116
> >> >> > +++++++++++++++++++++++
> >> >> >  3 files changed, 121 insertions(+)  create mode 100644
> >> >> > drivers/gpu/drm/i915/spi/intel_spi_drv.c
> >> >> >
> >> >> > diff --git a/drivers/gpu/drm/i915/Kconfig
> >> >> > b/drivers/gpu/drm/i915/Kconfig index abcaa8da45ac..13c870e5878e
> >> >> > 100644
> >> >> > --- a/drivers/gpu/drm/i915/Kconfig
> >> >> > +++ b/drivers/gpu/drm/i915/Kconfig
> >> >> > @@ -27,6 +27,8 @@ config DRM_I915
> >> >> >  	select CEC_CORE if CEC_NOTIFIER
> >> >> >  	select VMAP_PFN
> >> >> >  	select MFD_CORE
> >> >> > +	select MTD
> >> >>
> >> >> Selecting MTD does not seem to be a popular thing to do, which is
> >> >> usually a clue it's probably the wrong thing to do.
> >> >Depends, if it is not selected you'll end with wrongly configured system.
> >>
> >> no. I believe the idea is that having a CONFIG_I915_SPI, you could do
> >>
> >> 	depends on MTD
> >>
> >> like the other drivers doing similar thing:
> >>
> >> 	git grep MTD -- ':(exclude)drivers/mtd' ':(exclude)arch/' '*Kconfig'
> > I know the pattern and it can be done, the issue is that mtd is used mostly
> in embedded systems so it is not selected by the desktop distros.
> >The intel spi both on PCH and in GFX takes this into different direction and
> usage.
> 
> humn... but then we have a problem here. You're saying most of the people
> won't need it because it's used only for manufacturing*.
> And yet you want it to be force selected on everybody?  That doesn't sound
> like a good plan.
It depends, whether manufacturing is done on shipping OS or not, both approaches are in use.
One approach for the first case can be that the distro prevent the module loading via modprobe.d 
and it's forcefully loaded during manufacturing.  Still it should be compiled and signed.
> 
> Lucas De Marchi
> 
> 
> * it may actually also be useful for kernel developers too, to dump its content
> and validate the parser, help debug other systems, etc.
True.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
