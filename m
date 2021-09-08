Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A4A403B42
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 16:14:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03B256E0F0;
	Wed,  8 Sep 2021 14:14:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B358E6E0F0
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 14:14:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="306055609"
X-IronPort-AV: E=Sophos;i="5.85,278,1624345200"; d="scan'208";a="306055609"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 07:14:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,278,1624345200"; d="scan'208";a="513276073"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga001.jf.intel.com with ESMTP; 08 Sep 2021 07:14:50 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 8 Sep 2021 15:14:48 +0100
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.012;
 Wed, 8 Sep 2021 19:44:46 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Nikula, Jani" <jani.nikula@intel.com>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Chiou,
 Cooper" <cooper.chiou@intel.com>, "Tseng, William" <william.tseng@intel.com>
Thread-Topic: [v4 0/5] DSI driver improvement
Thread-Index: AQHXpKgCb4yF0gh1iEiV7qWRm6c4PquZsn8AgAAOGgCAAG1ZcA==
Date: Wed, 8 Sep 2021 14:14:46 +0000
Message-ID: <2eb9c5a186724fcb9c22b057560b46ff@intel.com>
References: <20210908115607.9633-1-shawn.c.lee@intel.com>
 <87ilzb45s9.fsf@intel.com>
 <CO6PR11MB565118CF686E455D794FF196A3D49@CO6PR11MB5651.namprd11.prod.outlook.com>
In-Reply-To: <CO6PR11MB565118CF686E455D794FF196A3D49@CO6PR11MB5651.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v4 0/5] DSI driver improvement
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
> From: Lee, Shawn C <shawn.c.lee@intel.com>
> Sent: Wednesday, September 8, 2021 6:42 PM
> To: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Kulkarni, Vandita
> <vandita.kulkarni@intel.com>; Chiou, Cooper <cooper.chiou@intel.com>;
> Tseng, William <william.tseng@intel.com>
> Subject: RE: [v4 0/5] DSI driver improvement
>=20
> On Wed, 08 Sep 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> >On Wed, 08 Sep 2021, Lee Shawn C <shawn.c.lee@intel.com> wrote:
> >> v2: Get data length of brightness value more easily while driver try t=
o
> >>     read/write MIPI_DCS_DISPLAY_BRIGHTNESS command.
> >> v3: fix checkpatch warning.
> >
> >The series is v4, what's new here?
> >
> >BR,
> >Jani.
> >
>=20
> We don't change anything, just rebase.
>=20
> Best regards,
> Shawn

Thanks for the patches and reviews.
Pushed v4 based on results on v3 as there is no change.

Thanks,
Vandita
>=20
> >
> >>
> >> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> >>
> >> Lee Shawn C (5):
> >>   drm/i915/dsi: wait for header and payload credit available
> >>   drm/i915/dsi: refine send MIPI DCS command sequence
> >>   drm/i915: Get proper min cdclk if vDSC enabled
> >>   drm/i915/dsi: Retrieve max brightness level from VBT
> >>   drm/i915/dsi: Read/write proper brightness value via MIPI DCS comman=
d
> >>
> >>  drivers/gpu/drm/i915/display/icl_dsi.c        | 50 +++++++++---------=
-
> >>  drivers/gpu/drm/i915/display/intel_bios.c     |  3 ++
> >>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 10 ++++
> >>  .../i915/display/intel_dsi_dcs_backlight.c    | 33 ++++++++----
> >>  drivers/gpu/drm/i915/i915_drv.h               |  1 +
> >>  5 files changed, 62 insertions(+), 35 deletions(-)
> >
> >--
> >Jani Nikula, Intel Open Source Graphics Center
> >

