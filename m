Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44ED03C14E1
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 16:09:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31C286E890;
	Thu,  8 Jul 2021 14:09:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C13716E890
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 14:09:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="273349109"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="273349109"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 07:09:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="498438467"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 08 Jul 2021 07:09:26 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 8 Jul 2021 07:09:25 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 8 Jul 2021 19:39:23 +0530
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.008;
 Thu, 8 Jul 2021 19:39:23 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v7 0/3] Set BPP in the kernel
Thread-Index: AQHXc+OkxcNM9pwC5kufUc/DJTt3H6s43+0ggAA89QA=
Date: Thu, 8 Jul 2021 14:09:22 +0000
Message-ID: <e9a520ba633d4ea1a1b9de5c41f4b299@intel.com>
References: <20210708102549.27821-1-vandita.kulkarni@intel.com>
 <968881f36d344e15aa2490d660224124@intel.com>
In-Reply-To: <968881f36d344e15aa2490d660224124@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v7 0/3] Set BPP in the kernel
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Kulkarni, Vandita
> Sent: Thursday, July 8, 2021 3:59 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: Re: [Intel-gfx] [v7 0/3] Set BPP in the kernel
> 
> > -----Original Message-----
> > From: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> > Sent: Thursday, July 8, 2021 3:56 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Nikula, Jani <jani.nikula@intel.com>; Kulkarni, Vandita
> > <vandita.kulkarni@intel.com>
> > Subject: [v7 0/3] Set BPP in the kernel
> >
> > This series adds debugfs entry to force dsc bpp to ceratin valid test
> > value, for validation needs.
> > This series has been tested locally.
> > With the introduction of i915_dsc_bpp debugfs the expectation is that
> > whenever there is force_dsc_en set, force_dsc_bpp should have a valid
> > value for that format which is between bpp to bpp-1.
> Correction : *bpc to bpp-1
> >
> > This makes the older test kms_dp_dsc --basic fail as in that case
> > force_dsc_bpp would be 0 and is not a valid value.

The latest v2 patch fixes this, and if only force_dsc_en is set then default calculated
dsc_bpp would be assigned. (Jani)
Also, if the test sends invalid value, the driver will set the default value.( Jani)

The test app for testing force_dsc_en - basic dsc enable tests would
remain as is.

Thanks,
Vandita

> >
> > Have tested with local changes on the same.
> > The series https://patchwork.freedesktop.org/series/91772/
> > have the base patches and would need some work on the debugfs name
> > change, giving default value for force_dsc_bpp in case of
> > basic-dsc-enable test cases, clearing up of the force_dsc_bpp value while
> exiting the test.
> > Which will be floated shortly.
> >
> > Have added minor fix on the feci debugfs interface.
> > If further changes are needed on the same will float them in a
> > different series.
> >
> > Patnana Venkata Sai (1):
> >   drm/i915/display/dsc: Add Per connector debugfs node for DSC BPP
> >     enable
> >
> > Vandita Kulkarni (2):
> >   drm/i915/display: Add write permissions for fec support
> >   drm/i915/display/dsc: Force dsc BPP
> >
> >  .../drm/i915/display/intel_display_debugfs.c  | 78 ++++++++++++++++++-
> >  .../drm/i915/display/intel_display_types.h    |  1 +
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 17 ++++
> >  3 files changed, 94 insertions(+), 2 deletions(-)
> >
> > --
> > 2.32.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
