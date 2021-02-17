Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6338E31DB04
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 14:57:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 625CA898E8;
	Wed, 17 Feb 2021 13:57:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A4208937C
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 13:57:00 +0000 (UTC)
IronPort-SDR: Y1+xDxuu+YY4QsX/pRguTq/B8cMSSmH0Q+zt3Lqb3XALBbCngkc9TtLkGC0YB7k7i0RBqRRiPY
 GnhS/XqhgHjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="162330216"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="162330216"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 05:57:00 -0800
IronPort-SDR: DKgKrtDkr/nFkwXJ0kBzgY78+HaoCo/9ZgAQLEiJgUZoe27E6uiCoel8WPvJUmr3YaVxOCsW6P
 F8c8HrawnOfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="426392650"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Feb 2021 05:56:59 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Feb 2021 05:56:59 -0800
Received: from hasmsx602.ger.corp.intel.com (10.184.107.142) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Feb 2021 05:56:58 -0800
Received: from hasmsx602.ger.corp.intel.com ([10.184.107.142]) by
 HASMSX602.ger.corp.intel.com ([10.184.107.142]) with mapi id 15.01.2106.002;
 Wed, 17 Feb 2021 15:56:56 +0200
From: "Winkler, Tomas" <tomas.winkler@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, "Vignesh
 Raghavendra" <vigneshr@ti.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [RFC PATCH 0/9] drm/i915/spi: discrete graphics internal spi
Thread-Index: AQHXBJBTlGMG4b5GwU+w3NO1EU5QQapcDgwAgAA/+BA=
Date: Wed, 17 Feb 2021 13:56:56 +0000
Message-ID: <c430158c27c5460ba13a989c6f9646d7@intel.com>
References: <20210216181925.650082-1-tomas.winkler@intel.com>
 <878s7narev.fsf@intel.com>
In-Reply-To: <878s7narev.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.184.70.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH 0/9] drm/i915/spi: discrete graphics
 internal spi
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
Cc: "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Usyskin,
 Alexander" <alexander.usyskin@intel.com>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> 
> On Tue, 16 Feb 2021, Tomas Winkler <tomas.winkler@intel.com> wrote:
> > Intel discrete graphic devices have internal spi storage, that holds
> > firmware and oprom images. The spi device is exposed to the user space
> > via mtd framework to be accessed during manufacturing.
> > The device is hardware locked after manufacturing and only read access
> > is provided.
> >
> > The i915 plays role of a multi function device (mfd) and spi device is
> > exposed as its child device. i915_spi platform driver binds to this
> > device.
> >
> > Because the graphic card may undergo reset at any time and basically
> > hot unplug all its child devices, this series also provides a fix to
> > the mtd framework to make the reset graceful.
> >
> > Tomas Winkler (9):
> >   drm/i915/spi: add spi device for discrete graphics
> >   drm/i915/spi: intel_spi_region map
> >   drm/i915/spi: add driver for on-die spi device
> >   drm/i915/spi: implement region enumeration
> >   drm/i915/spi: implement spi access functions
> >   drm/i915/spi: spi register with mtd
> >   drm/i915/spi: mtd: implement access handlers
> >   drm/i915/spi: serialize spi access
> >   mtd: use refcount to prevent corruption
> >
> >  drivers/gpu/drm/i915/Kconfig             |   3 +
> >  drivers/gpu/drm/i915/Makefile            |   6 +
> >  drivers/gpu/drm/i915/i915_drv.c          |   9 +
> >  drivers/gpu/drm/i915/i915_drv.h          |   4 +
> >  drivers/gpu/drm/i915/i915_reg.h          |   1 +
> >  drivers/gpu/drm/i915/spi/intel_spi.c     |  62 +++
> >  drivers/gpu/drm/i915/spi/intel_spi.h     |  24 +
> 
> I'm open to discussion, but after glancing through the series I've got a gut
> feeling spi/ subdir should be purely about the separate module, and the
> above two files should be in i915/ directory instead.

Maybe, I don't have strong feelings about that, it is just a decision from which point you want to look at that.
> 
> As it is, I think it's a bit confusing that spi/ is both about the spi kernel module
> and a singly .c file that's really part of i915.ko. Perhaps that messes up the
> conventional descending to subdirs in the kernel build too?

The intention was to make this capsulated from the file system point of view. 
In general the spi driver could be somewhere in mtd directory, but it doesn't really fit exactly there either.
I don't have a strong opinion about that, if you do I yield. 


Thanks
Tomas

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
