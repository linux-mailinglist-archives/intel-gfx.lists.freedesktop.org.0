Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0DB465DF5
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 06:37:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F0056EAB4;
	Thu,  2 Dec 2021 05:37:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90A076EAB4
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Dec 2021 05:37:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="216644883"
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="216644883"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 21:37:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="500575084"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 01 Dec 2021 21:37:17 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 21:37:17 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 21:37:16 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2308.020;
 Wed, 1 Dec 2021 21:37:16 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [v3 0/3]  Introduce Raptor Lake S
Thread-Index: AQHX5p8UU1xhPMXB6EqwDz5l2hOGbqweFNeAgACbK3A=
Date: Thu, 2 Dec 2021 05:37:16 +0000
Message-ID: <c03bbd8ba6f04daf9b60453c1dfe950e@intel.com>
References: <20211201103320.2211867-1-anusha.srivatsa@intel.com>
 <878rx4ikha.fsf@intel.com>
In-Reply-To: <878rx4ikha.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v3 0/3]  Introduce Raptor Lake S
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



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, December 1, 2021 5:52 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [v3 0/3] Introduce Raptor Lake S
>=20
> On Wed, 01 Dec 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> > Raptor Lake S(RPL-S) is a version 12
> > Display, Media and Render. For all i915 purposes it is the same as
> > Alder Lake S (ADL-S).
> >
> > The series introduces it as a subplatform of ADL-S. The one difference
> > is the GuC submission which is default on RPL-S but was not the case
> > with ADL-S.
>=20
> Acked-by: Jani Nikula <jani.nikula@intel.com>
>=20
> on the series, did not check the pci ids in spec.

Thanks for the ack.

Anusha
> >
> > Anusha Srivatsa (3):
> >   drm/i915/rpl-s: Add PCI IDS for Raptor Lake S
> >   drm/i915/rpl-s: Add PCH Support for Raptor Lake S
> >   drm/i915/rpl-s: Enable guc submission by default
> >
> >  arch/x86/kernel/early-quirks.c           | 1 +
> >  drivers/gpu/drm/i915/gt/uc/intel_uc.c    | 2 +-
> >  drivers/gpu/drm/i915/i915_drv.h          | 2 ++
> >  drivers/gpu/drm/i915/i915_pci.c          | 1 +
> >  drivers/gpu/drm/i915/intel_device_info.c | 7 +++++++
> > drivers/gpu/drm/i915/intel_device_info.h | 3 +++
> >  drivers/gpu/drm/i915/intel_pch.c         | 1 +
> >  drivers/gpu/drm/i915/intel_pch.h         | 1 +
> >  include/drm/i915_pciids.h                | 9 +++++++++
> >  9 files changed, 26 insertions(+), 1 deletion(-)
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
