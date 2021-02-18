Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FD431E88E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Feb 2021 11:50:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C489A6E400;
	Thu, 18 Feb 2021 10:50:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6591F6E400
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Feb 2021 10:50:41 +0000 (UTC)
IronPort-SDR: 0V9Qj+wjItsYKEqBo1CynKybEWohDf7LbxL7k9wHfHYznN6MMpB31cs/7Kh2tNKRsnEzydWnNe
 CFVLJYr4zS0g==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="170597838"
X-IronPort-AV: E=Sophos;i="5.81,187,1610438400"; d="scan'208";a="170597838"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2021 02:50:39 -0800
IronPort-SDR: EUdxesrgedfBn4nDZhOsPrlSfp+UlHEiEtI4pRA/NSV6qLxONqAIGvVWTCE3Mw6EkvVmjXA+TK
 LHbJHzoyB2yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,187,1610438400"; d="scan'208";a="385838866"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 18 Feb 2021 02:50:38 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 18 Feb 2021 02:50:38 -0800
Received: from hasmsx602.ger.corp.intel.com (10.184.107.142) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 18 Feb 2021 02:50:36 -0800
Received: from hasmsx602.ger.corp.intel.com ([10.184.107.142]) by
 HASMSX602.ger.corp.intel.com ([10.184.107.142]) with mapi id 15.01.2106.002;
 Thu, 18 Feb 2021 12:50:34 +0200
From: "Winkler, Tomas" <tomas.winkler@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [RFC PATCH 3/9] drm/i915/spi: add driver for on-die
 spi device
Thread-Index: AQHXBJBcj4Goi4XIwEe9K9Ji08dc+apcDHIAgADGOPCAALlRAIAAMDVA
Date: Thu, 18 Feb 2021 10:50:34 +0000
Message-ID: <b21d2b43a98f4947b062fe31bd350566@intel.com>
References: <20210216181925.650082-1-tomas.winkler@intel.com>
 <20210216181925.650082-4-tomas.winkler@intel.com> <87blcjarof.fsf@intel.com>
 <b08989f480564bbea5ce187797e9e30b@intel.com>
 <20210218094916.brm7j62if573xu5c@ldmartin-desk1>
In-Reply-To: <20210218094916.brm7j62if573xu5c@ldmartin-desk1>
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

> 
> On Wed, Feb 17, 2021 at 08:58:12PM +0000, Winkler, Tomas wrote:
> >>
> >> On Tue, 16 Feb 2021, Tomas Winkler <tomas.winkler@intel.com> wrote:
> >> > Add the platform driver for i915 on-die spi device, exposed via mfd
> >> > framework.
> >> >
> >> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> >> > Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/Kconfig             |   2 +
> >> >  drivers/gpu/drm/i915/Makefile            |   3 +
> >> >  drivers/gpu/drm/i915/spi/intel_spi_drv.c | 116
> >> > +++++++++++++++++++++++
> >> >  3 files changed, 121 insertions(+)  create mode 100644
> >> > drivers/gpu/drm/i915/spi/intel_spi_drv.c
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/Kconfig
> >> > b/drivers/gpu/drm/i915/Kconfig index abcaa8da45ac..13c870e5878e
> >> > 100644
> >> > --- a/drivers/gpu/drm/i915/Kconfig
> >> > +++ b/drivers/gpu/drm/i915/Kconfig
> >> > @@ -27,6 +27,8 @@ config DRM_I915
> >> >  	select CEC_CORE if CEC_NOTIFIER
> >> >  	select VMAP_PFN
> >> >  	select MFD_CORE
> >> > +	select MTD
> >>
> >> Selecting MTD does not seem to be a popular thing to do, which is
> >> usually a clue it's probably the wrong thing to do.
> >Depends, if it is not selected you'll end with wrongly configured system.
> 
> no. I believe the idea is that having a CONFIG_I915_SPI, you could do
> 
> 	depends on MTD
> 
> like the other drivers doing similar thing:
> 
> 	git grep MTD -- ':(exclude)drivers/mtd' ':(exclude)arch/' '*Kconfig'
MTD is usually used on embedded systems rather than on general distros, i915_spi and actually a bit redefines its usage 
so w/o forceful select, it won't be enabled.

> 
> Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
