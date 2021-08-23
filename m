Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2833F4D19
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 17:13:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D322C89FEC;
	Mon, 23 Aug 2021 15:13:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D782689FEC
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 15:13:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="278134172"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="278134172"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 08:13:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="425789289"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga003.jf.intel.com with ESMTP; 23 Aug 2021 08:13:18 -0700
Received: from pgsmsx602.gar.corp.intel.com (10.108.199.137) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 23 Aug 2021 16:13:16 +0100
Received: from pgsmsx602.gar.corp.intel.com ([10.108.199.137]) by
 pgsmsx602.gar.corp.intel.com ([10.108.199.137]) with mapi id 15.01.2242.010;
 Mon, 23 Aug 2021 23:13:14 +0800
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Saarinen, Jani" <jani.saarinen@intel.com>,
 =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, "Deak,
 Imre" <imre.deak@intel.com>
CC: "Lee, Shawn C" <shawn.c.lee@intel.com>, "Almahallawy, Khaled"
 <khaled.almahallawy@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Chiou, Cooper" <cooper.chiou@intel.com>,
 "Tseng, William" <william.tseng@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dp: return proper DPRX link
 training result
Thread-Index: AQHXcnpSmyNLzxvMw0+cznTwPSNpB6s2llyAgAAkzQCAQuYHgIAAEtsAgAOKDACAA9F10IAAbfXA
Date: Mon, 23 Aug 2021 15:13:14 +0000
Message-ID: <04a5e1d8e2b54893adaab9298d77da66@intel.com>
References: <20210706152541.25021-1-shawn.c.lee@intel.com>
 <bc5e0ada3f3270a8e1531486ba4302dcdb1c80e6.camel@intel.com>
 <CO6PR11MB56513D4354949879295355E3A31A9@CO6PR11MB5651.namprd11.prod.outlook.com>
 <CO6PR11MB565113D39F6A44130F72386DA3FF9@CO6PR11MB5651.namprd11.prod.outlook.com>
 <20210818161712.GA2831921@ideak-desk.fi.intel.com>
 <YSAqlKSixZ9CNWNz@intel.com>
 <DM8PR11MB565526AB906B71F99CE24C8BE0C49@DM8PR11MB5655.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB565526AB906B71F99CE24C8BE0C49@DM8PR11MB5655.namprd11.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: return proper DPRX link
 training result
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

Here is the gitlab issue https://gitlab.freedesktop.org/drm/intel/-/issues/=
4002

Lakshmi.
-----Original Message-----
From: Saarinen, Jani <jani.saarinen@intel.com>=20
Sent: Monday, August 23, 2021 1:39 AM
To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>; Deak, Imre <imre.dea=
k@intel.com>; Vudum, Lakshminarayana <lakshminarayana.vudum@intel.com>
Cc: Lee, Shawn C <shawn.c.lee@intel.com>; Almahallawy, Khaled <khaled.almah=
allawy@intel.com>; intel-gfx@lists.freedesktop.org; Chiou, Cooper <cooper.c=
hiou@intel.com>; Tseng, William <william.tseng@intel.com>
Subject: RE: [Intel-gfx] [PATCH] drm/i915/dp: return proper DPRX link train=
ing result

Hi,=20

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of=20
> Ville Syrj=E4l=E4
> Sent: lauantai 21. elokuuta 2021 1.20
> To: Deak, Imre <imre.deak@intel.com>
> Cc: Lee, Shawn C <shawn.c.lee@intel.com>; Almahallawy, Khaled=20
> <khaled.almahallawy@intel.com>; intel-gfx@lists.freedesktop.org;=20
> Chiou, Cooper <cooper.chiou@intel.com>; Tseng, William=20
> <william.tseng@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: return proper DPRX link=20
> training result
>=20
> On Wed, Aug 18, 2021 at 07:17:12PM +0300, Imre Deak wrote:
> > On Wed, Aug 18, 2021 at 06:09:43PM +0300, Lee, Shawn C wrote:
> > > On Tue, 2021-07-07, Lee Shawn C <shawn.c.lee@intel.com> wrote:
> > > >On Tue, 2021-07-07, Almahallawy, Khaled=20
> > > ><khaled.almahallawy@intel.com>
> wrote:
> > > >>I believe Imre's LT fallback:
> > > >>https://github.com/ideak/linux/commits/linktraining-fallback-fix =20
> > > >>and Chrome
> user space fix:
> > > >>https://chromium-review.googlesource.com/c/chromium/src/+/300348
> > > >>7 should address Chrome concerns for LT failure and LTTPRs
> > > >>
> > > >
> > > >Thanks for comment! The new fallback patch should help on this DPRX =
problem.
> > > >One more thing. If driver did not handle DPRX link train failed prop=
erly.
> > > >It would impact link layer compliance test case in below.
> > > >
> > > >400.3.1.3
> > > >400.3.1.4
> > > >400.3.1.6
> > > >400.3.1.12
> > > >400.3.1.13
> > > >400.3.1.14
> > > >
> > > >Best regards,
> > > >Shawn
> > > >
> > >
> > > Hi all, before Imre's patch series land on upstream driver. The=20
> > > link train failed handling works for LTTPR only. But DPRX does=20
> > > not. Could you please consider to have this change as temporary solut=
ion? Thanks!
> >
> > I sent already fixing this, see
> > https://lore.kernel.org/intel-gfx/20201027133600.3656665-1-imre.deak
> > @i
> > ntel.com/
> >
> > but it fell through the cracks. Applied now your patch, thanks.
>=20
> We seem to have a tgl that fails consistently at DPRX link training:
> https://intel-gfx-ci.01.org/tree/drm-tip/fi-tgl-1115g4.html
Yes, @Vudum, Lakshminarayana what is gitlab issue for this?=20
[Lakshmi] https://gitlab.freedesktop.org/drm/intel/-/issues/4002
>=20
> Previously the error went unnoticed.
>=20
> --
> Ville Syrj=E4l=E4
> Intel

