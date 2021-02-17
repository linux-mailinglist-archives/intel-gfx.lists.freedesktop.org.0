Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E70631D9C3
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 13:50:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 171C86E512;
	Wed, 17 Feb 2021 12:50:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3D4B6E512
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 12:50:55 +0000 (UTC)
IronPort-SDR: LcPaT69xoA09PqXq836GLsnyIEZXGRjoC4yUemgGjCEWLJScb1QNiW5lxJ7wBKEI75MF09j4bU
 Q5wdnrDZxdLQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="179676865"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="179676865"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 04:50:55 -0800
IronPort-SDR: 1xoWIcreRXVLB9dvQY0qVUrxYQEyo5sK8LGezDM3JqcPxV/og5mRpTMoabZSZGtWbzZP78nviY
 B9PnAMwBZoVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="377989206"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga002.jf.intel.com with ESMTP; 17 Feb 2021 04:50:54 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Feb 2021 04:50:54 -0800
Received: from hasmsx602.ger.corp.intel.com (10.184.107.142) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Feb 2021 04:50:53 -0800
Received: from hasmsx602.ger.corp.intel.com ([10.184.107.142]) by
 HASMSX602.ger.corp.intel.com ([10.184.107.142]) with mapi id 15.01.2106.002;
 Wed, 17 Feb 2021 14:50:51 +0200
From: "Winkler, Tomas" <tomas.winkler@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, "Vignesh
 Raghavendra" <vigneshr@ti.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [RFC PATCH 0/9] drm/i915/spi: discrete graphics internal spi
Thread-Index: AQHXBJBTlGMG4b5GwU+w3NO1EU5QQapcBr6AgABF+AA=
Date: Wed, 17 Feb 2021 12:50:51 +0000
Message-ID: <062fec6f494b48fab840c64742fe767d@intel.com>
References: <20210216181925.650082-1-tomas.winkler@intel.com>
 <87k0r7asmg.fsf@intel.com>
In-Reply-To: <87k0r7asmg.fsf@intel.com>
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
> 
> What's the plan wrt i915/spi maintainership?

My suggestions is that this will be maintained by myself, as the major consumer is the manufacturing line.
It will be a separate section in MAINTAINERS file.

Thanks
Tomas


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
