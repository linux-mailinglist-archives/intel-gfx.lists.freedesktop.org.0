Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1967D8E53
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 07:59:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7812710E925;
	Fri, 27 Oct 2023 05:59:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3DF310E925
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 05:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698386395; x=1729922395;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hlUu98V2CF/zQuZ1GeoRkrpQ5VoUAzoOVAK3ftIsL58=;
 b=hhy6i8Q4XbiUwjGAM/rPsVyBg6K2pyLE9nMzSA2SNy3vnCS8syuBtpWn
 BQxuxjv7tWb6DHuoYS773w17qKwPQ9jYPTsroLdcZvjx87e6gXu9EhrYo
 haYjnbfGzbAEfznvORdJQdcL+0FFSPR/4KwktcCrs/idqQ0mqKSkp7bri
 TJcg3XRc7omBDxdGvR97INLOGMrxk5HrQrZGzj4YuvQCsCedCb6n0tcRY
 MrrPWJjGNiuM177lVhPtMfwaz3lyAyzGIUpZSfybNWynVDLC3d0LH0j+8
 krbFVT0ZKW1e6yw6vtDKlqhNztC1HrJMMLzE/NLLfws8JpLmSvPCFoI06 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="531980"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; 
   d="scan'208";a="531980"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 22:59:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="932974564"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="932974564"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Oct 2023 22:59:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 26 Oct 2023 22:59:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 26 Oct 2023 22:59:53 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 26 Oct 2023 22:59:53 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 26 Oct 2023 22:59:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JippVJYgRjJ25Fx/kOF/jH/N234ub/WHD5nY732GT/M1Ik0SgbV4TNxnQqK+jJVeYOs3yAKHGtkh+MYSYlV5oZ/NIQb4nsQQtXWHGnFSnrs6Ag91adyZk0/Xdx/ylqky5tXVOmznotwVrfKvvFD+xl2n9ZL0pnmdEWwiIoEVTkdR1myMXwtG2Gy/KcMAty0LHanyr4A6tDNTKbL2oPB0ajWwJ00IpC4RLoYjiqRRoSPO6z3/taVW9TU0mPFrmGnKGJP4DhQkPq89GSJbm3le1E7wtsMMVaP0oF4y88exGTGc1ecMAcANuA8c1HCcSe9BYLoWBsrkPqfe+1aOj3AkVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K6DX+2phuMRPO/hNcjdtm1w1Hz9voSR2tNHd1mX+wwQ=;
 b=c4jTzlp3SraHtUfIqAVrmd1zStTXZPNx5kKz6OHB+bqHuqkeM0jUWbv2iZYxUg35ZDpJDnQi5B61B8Du7PGwlXvStQ2IENE7plS4U8xNC72hJwbwVX3knkQRJkfLuZQW4zc53MUnRO6FkeFkc/BiPHMXtZL0DNf4d1/CPASR/sKidOeglLaLE+D7FkUt/Tj5v6A0a6Gsj2Ya5L99wLPRn4ZgeYriMXjdZbuEexiEfQimns+hPR0yFR0QxIRk/ySCSmLL6f0xPpDuR4EzbNbW5S662f8DrFUyfgkigyXTND4T0x7f7xZeP/msxfFTslohkv+QUY+8ABczkKkTy97uNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by MW3PR11MB4682.namprd11.prod.outlook.com (2603:10b6:303:2e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.22; Fri, 27 Oct
 2023 05:59:46 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::d35c:f42b:fdf7:36bb]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::d35c:f42b:fdf7:36bb%5]) with mapi id 15.20.6933.022; Fri, 27 Oct 2023
 05:59:45 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915/dsb: DSB code refactoring
Thread-Index: AQHZ+dGOHcLFEmZeB0uPflZoX2Fuq7BcPumAgAEBBaA=
Date: Fri, 27 Oct 2023 05:59:45 +0000
Message-ID: <BL1PR11MB5979B66B0F9B7A336FA1EB51F9DCA@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20231008101206.1665236-1-animesh.manna@intel.com>
 <ZTp4ib-FKyX0r9ct@intel.com>
In-Reply-To: <ZTp4ib-FKyX0r9ct@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|MW3PR11MB4682:EE_
x-ms-office365-filtering-correlation-id: 9ab109dc-5864-4a97-1839-08dbd6b1eb73
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MxqWZaAUVLTY6uAmOXYFEsFwqN19W2waKd/xHmHxati1bArechsC3Os7Eggn+yC7d0/4uxBc5HTpETDHKxNHlN2Qd25BJ34wPa2ayB0eo392I2O6MWa8HfoitYS+wdtwujY3tUXBD+/M3YXrkiLnAZqtbgYK8k+2gtSpaEOTrDXo8MT7YLLEHB02gsYBFrOLFBA3ni4FcmrkaAcoEQzNx57OOV23ysdydr22WXvMvcs34gnTE/uWaFP1b9+x4yPVShrbO+23mxveOc58+EQfConTHiXCbH9rL7seoCwzzxD9WkgYVtK7fqOuimOsLuE/fVS3nwTXzsYnYipika1q+aC1hPCP6D7S1ZCBbst/5TAK+plOqzcu04kN4xHt2dowmKOUE7DfxMxKybSy+PzAmhyvgvrw/OzMtF39R/zgzX9AYBnqTCGal46TTQdnSuOYcjaPUar4Fczr9jW87Jgb9edLCAbePPhzkH8rOvrVyaIXx/DOfa83rRZyemfFUoV7tSKVg2IqfIROpbrosTTvyxGv7H/NGOrTF2iPQ0uwt9kHqxUZoNFX9s11tsnlQ/Be6vf1xtbrbNOrRop8svtL0e4eilsRCAg4AIg89E3xIRYlfgrJB4LY3kq+EA9V3rRttsOmwJPm8Og/dC7AL0UFf1hqy0zfELU2foHBQzOb65w=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(366004)(376002)(136003)(346002)(230922051799003)(230173577357003)(230273577357003)(186009)(451199024)(64100799003)(1800799009)(33656002)(86362001)(38100700002)(2906002)(30864003)(83380400001)(55016003)(66574015)(5660300002)(9686003)(82960400001)(41300700001)(122000001)(76116006)(66556008)(66446008)(66476007)(54906003)(64756008)(71200400001)(316002)(6916009)(52536014)(53546011)(6506007)(7696005)(66946007)(38070700009)(8676002)(478600001)(4326008)(26005)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?xgonTY/LRj+oPk9SOBxuhhTT9iH7XLZ9KXIn1kZwqfx37D43dChABP6sOs?=
 =?iso-8859-1?Q?aWbGl35LvpJzoCt1xLLiPdm8jkTfv9Ao/qNe0f0q/PFhMqYB1/W9Hgj8Q4?=
 =?iso-8859-1?Q?NHPl/YhplfB6x+vuzaoYXWafyd13hgAx3wd3Vs5SX5HYlh50zzy8XM7670?=
 =?iso-8859-1?Q?DZTwgbxwcktF7Td84MuJC+fMGTrtrav1aIS8rQJWsLEd1OBVqk2xwBngFY?=
 =?iso-8859-1?Q?vLA1MUdzl7WytIMhGGESRrq/SGcMl2xEde3rEkdj8ynr+QU/vDtdV7tZX3?=
 =?iso-8859-1?Q?gUciMZDQuFhWkI6+SQJ4fk3kEXnjYIaL+UrnO2Gh3rZSmvSZ7tvWmrelOs?=
 =?iso-8859-1?Q?HhZf93603/JY4YOFQ24vtuM9nia7JonWOwfZ4M6D+nMu2BXZG1pZGMgWVy?=
 =?iso-8859-1?Q?zlSmKj2PfH0b/Nc9xpGCAD9B/ilcSmR39ehryoQdEVDyM3I0E6w59Z/tnq?=
 =?iso-8859-1?Q?RYdXE9+Jti+qcB5LSOvVY21pD46NXxK+k7YVB6jzu5DgDzmI0AxX1XF9Zh?=
 =?iso-8859-1?Q?WDTzLRrsFDngK+hfQXDtXQyR6hOta1Po+ivxtQ8muLQZB8UJnRbZPSXR3W?=
 =?iso-8859-1?Q?/Dlw4cG49QEj3P/PveyiDSQYktKvq/unFj8QsRDC4BGpQmrEEOK7hYTmlE?=
 =?iso-8859-1?Q?XgZf5eN9imrcNIArWGZoWaH1MVIIRNqcWWe99v6iu9PnLuk2ckBV4OlXYG?=
 =?iso-8859-1?Q?48GbhAgODRMk3qDaBXQKUCT58GxP+KYujsajACZBytc4D43in/T4F7UASH?=
 =?iso-8859-1?Q?4k1W7+OE2RerZHu0vAA93mQeWr2pnZcfMpxC9h0+WN4bAoWqr8+x1i3e6X?=
 =?iso-8859-1?Q?73p6RVf5+aYs6L+f2/V3VIAVbt1vrtLPPl5HAedCF+RZsUepqu9icj6+ZI?=
 =?iso-8859-1?Q?WHC5ylEIcpXXzRPLeoA96NxBtGzcUo9al8DCxUd2CfQZoyOC4tIuS6B/MO?=
 =?iso-8859-1?Q?NKF22+/WFaXyLlPA8TEOrqsCYjHQhdhQjL4386IVgg/b6e7L0gN5qEjnpb?=
 =?iso-8859-1?Q?udvCnSr2SJb3FnMMlyokZoeHX+Ve2SwcCc43PgEMRDlXatDuF6PZFAl4fM?=
 =?iso-8859-1?Q?FAV1Ek6MJ/gm4y/eILRET7JzwHSFASeQFtVLHxNuVMHz8TVEYeGd492gzi?=
 =?iso-8859-1?Q?E8ESmYhoodWhzv+6RziTiLnWYnaH+h/LV/pKW1GU1Qwl2nvkct5MmLvg4x?=
 =?iso-8859-1?Q?QpHlWJwNsr0oozcEcVmoomPh6KperPTcz1TCahLtH2XIBrYkqa+t91PAeY?=
 =?iso-8859-1?Q?O6L8Ry/PZ+uFwCZJEhx1eawHbmuxFIdyHRC7Q3QtJbsHVzCEfOOZFNm5Jk?=
 =?iso-8859-1?Q?nYk4Ei26+jw6pDVTCxGCkN9ywvyQVSbMNbbMeeUlGhqJhFILWJ9rxgFeZh?=
 =?iso-8859-1?Q?iAMqKhzKasz1/NyEmaLgMTL4VDzAPbhhgPvH3DjrSkRInnTA9YJo8e04gU?=
 =?iso-8859-1?Q?Czr7+6Zf+lGLZ+Gbl1QMzWXNNQk94Mo0loYNhhJk4tgElU4i6IpscoOuIp?=
 =?iso-8859-1?Q?/05UW2k7W6vGYGvEM59Oe3sXU7fMx7udUwRuYYFzWKyx8T+kONnTu01PPY?=
 =?iso-8859-1?Q?2UPlyHIrW1PJx53jiQnJVrBR0xQ4Vl8rVCNlUn6ujYerAVW2LPjYPKdtFf?=
 =?iso-8859-1?Q?5r4N0sCeZc1VXqoTmEw2H0mIJfPjeTmQ9r?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ab109dc-5864-4a97-1839-08dbd6b1eb73
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2023 05:59:45.0473 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: samh1SGnwDvWnMEV3UUL5xfHna1zHRAJevXZqoJA6IHOZy3aSCdvPx8YKsMy4r1YWT8DobCRqw/yOMdESjxyeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4682
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dsb: DSB code refactoring
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Thursday, October 26, 2023 8:03 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dsb: DSB code refactoring
>=20
> On Sun, Oct 08, 2023 at 03:42:06PM +0530, Animesh Manna wrote:
> > Refactor DSB implementation to be compatible with Xe driver.
> >
> > v1: RFC version.
> > v2: Make intel_dsb structure opaque from external usage. [Jani]
> > v3: Rebased on latest.
> >
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile                 |  1 +
> >  drivers/gpu/drm/i915/display/intel_dsb.c      | 84 ++++++++-----------
> >  .../gpu/drm/i915/display/intel_dsb_buffer.c   | 64 ++++++++++++++
> >  .../gpu/drm/i915/display/intel_dsb_buffer.h   | 26 ++++++
> >  4 files changed, 126 insertions(+), 49 deletions(-)  create mode
> > 100644 drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> >
> > diff --git a/drivers/gpu/drm/i915/Makefile
> > b/drivers/gpu/drm/i915/Makefile index dec78efa452a..7c3f91c2375a
> > 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -260,6 +260,7 @@ i915-y +=3D \
> >  	display/intel_dpt.o \
> >  	display/intel_drrs.o \
> >  	display/intel_dsb.o \
> > +	display/intel_dsb_buffer.o \
> >  	display/intel_fb.o \
> >  	display/intel_fb_pin.o \
> >  	display/intel_fbc.o \
> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > index 3e32aa49b8eb..ec89d968a873 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > @@ -13,12 +13,13 @@
> >  #include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dsb.h"
> > +#include "intel_dsb_buffer.h"
> >  #include "intel_dsb_regs.h"
> >  #include "intel_vblank.h"
> >  #include "intel_vrr.h"
> >  #include "skl_watermark.h"
> >
> > -struct i915_vma;
> > +#define CACHELINE_BYTES 64
> >
> >  enum dsb_id {
> >  	INVALID_DSB =3D -1,
> > @@ -31,8 +32,7 @@ enum dsb_id {
> >  struct intel_dsb {
> >  	enum dsb_id id;
> >
> > -	u32 *cmd_buf;
> > -	struct i915_vma *vma;
> > +	struct intel_dsb_buffer dsb_buf;
> >  	struct intel_crtc *crtc;
> >
> >  	/*
> > @@ -108,15 +108,17 @@ static void intel_dsb_dump(struct intel_dsb
> > *dsb)  {
> >  	struct intel_crtc *crtc =3D dsb->crtc;
> >  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > -	const u32 *buf =3D dsb->cmd_buf;
> >  	int i;
> >
> >  	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] DSB %d commands {\n",
> >  		    crtc->base.base.id, crtc->base.name, dsb->id);
> >  	for (i =3D 0; i < ALIGN(dsb->free_pos, 64 / 4); i +=3D 4)
> >  		drm_dbg_kms(&i915->drm,
> > -			    " 0x%08x: 0x%08x 0x%08x 0x%08x 0x%08x\n",
> > -			    i * 4, buf[i], buf[i+1], buf[i+2], buf[i+3]);
> > +			    " 0x%08x: 0x%08x 0x%08x 0x%08x 0x%08x\n", i * 4,
> > +			    intel_dsb_buffer_read(&dsb->dsb_buf, i),
> > +			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 1),
> > +			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 2),
> > +			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 3));
> >  	drm_dbg_kms(&i915->drm, "}\n");
> >  }
> >
> > @@ -128,8 +130,6 @@ static bool is_dsb_busy(struct drm_i915_private
> > *i915, enum pipe pipe,
> >
> >  static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
> > {
> > -	u32 *buf =3D dsb->cmd_buf;
> > -
> >  	if (!assert_dsb_has_room(dsb))
> >  		return;
> >
> > @@ -138,14 +138,13 @@ static void intel_dsb_emit(struct intel_dsb
> > *dsb, u32 ldw, u32 udw)
> >
> >  	dsb->ins_start_offset =3D dsb->free_pos;
> >
> > -	buf[dsb->free_pos++] =3D ldw;
> > -	buf[dsb->free_pos++] =3D udw;
> > +	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, ldw);
> > +	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, udw);
> >  }
> >
> >  static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb,
> >  					u32 opcode, i915_reg_t reg)
> >  {
> > -	const u32 *buf =3D dsb->cmd_buf;
> >  	u32 prev_opcode, prev_reg;
> >
> >  	/*
> > @@ -156,8 +155,10 @@ static bool intel_dsb_prev_ins_is_write(struct
> intel_dsb *dsb,
> >  	if (dsb->free_pos =3D=3D 0)
> >  		return false;
> >
> > -	prev_opcode =3D buf[dsb->ins_start_offset + 1] &
> ~DSB_REG_VALUE_MASK;
> > -	prev_reg =3D buf[dsb->ins_start_offset + 1] & DSB_REG_VALUE_MASK;
> > +	prev_opcode =3D intel_dsb_buffer_read(&dsb->dsb_buf,
> > +					    dsb->ins_start_offset + 1) >>
> DSB_OPCODE_SHIFT;
> > +	prev_reg =3D  intel_dsb_buffer_read(&dsb->dsb_buf,
> > +					  dsb->ins_start_offset + 1) &
> DSB_REG_VALUE_MASK;
> >
> >  	return prev_opcode =3D=3D opcode && prev_reg =3D=3D
> > i915_mmio_reg_offset(reg);  } @@ -190,6 +191,8 @@ static bool
> > intel_dsb_prev_ins_is_indexed_write(struct intel_dsb *dsb, i915_reg_
> > void intel_dsb_reg_write(struct intel_dsb *dsb,
> >  			 i915_reg_t reg, u32 val)
> >  {
> > +	u32 old_val;
> > +
> >  	/*
> >  	 * For example the buffer will look like below for 3 dwords for auto
> >  	 * increment register:
> > @@ -213,31 +216,32 @@ void intel_dsb_reg_write(struct intel_dsb *dsb,
> >  			       (DSB_BYTE_EN << DSB_BYTE_EN_SHIFT) |
> >  			       i915_mmio_reg_offset(reg));
> >  	} else {
> > -		u32 *buf =3D dsb->cmd_buf;
> > -
> >  		if (!assert_dsb_has_room(dsb))
> >  			return;
> >
> >  		/* convert to indexed write? */
> >  		if (intel_dsb_prev_ins_is_mmio_write(dsb, reg)) {
> > -			u32 prev_val =3D buf[dsb->ins_start_offset + 0];
> > +			u32 prev_val =3D intel_dsb_buffer_read(&dsb-
> >dsb_buf,
> > +							     dsb-
> >ins_start_offset + 0);
> >
> > -			buf[dsb->ins_start_offset + 0] =3D 1; /* count */
> > -			buf[dsb->ins_start_offset + 1] =3D
> > -				(DSB_OPCODE_INDEXED_WRITE <<
> DSB_OPCODE_SHIFT) |
> > -				i915_mmio_reg_offset(reg);
> > -			buf[dsb->ins_start_offset + 2] =3D prev_val;
> > +			intel_dsb_buffer_write(&dsb->dsb_buf,
> > +					       dsb->ins_start_offset + 0, 1); /*
> count */
> > +			intel_dsb_buffer_write(&dsb->dsb_buf, dsb-
> >ins_start_offset + 1,
> > +					       (DSB_OPCODE_INDEXED_WRITE
> << DSB_OPCODE_SHIFT) |
> > +					       i915_mmio_reg_offset(reg));
> > +			intel_dsb_buffer_write(&dsb->dsb_buf, dsb-
> >ins_start_offset + 2,
> > +prev_val);
> >
> >  			dsb->free_pos++;
> >  		}
> >
> > -		buf[dsb->free_pos++] =3D val;
> > +		intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++,
> val);
> >  		/* Update the count */
> > -		buf[dsb->ins_start_offset]++;
> > +		old_val =3D intel_dsb_buffer_read(&dsb->dsb_buf, dsb-
> >ins_start_offset);
> > +		intel_dsb_buffer_write(&dsb->dsb_buf, dsb-
> >ins_start_offset,
> > +old_val + 1);
> >
> >  		/* if number of data words is odd, then the last dword
> should be 0.*/
> >  		if (dsb->free_pos & 0x1)
> > -			buf[dsb->free_pos] =3D 0;
> > +			intel_dsb_buffer_write(&dsb->dsb_buf, dsb-
> >free_pos, 0);
> >  	}
> >  }
> >
> > @@ -296,8 +300,8 @@ static void intel_dsb_align_tail(struct intel_dsb
> *dsb)
> >  	aligned_tail =3D ALIGN(tail, CACHELINE_BYTES);
> >
> >  	if (aligned_tail > tail)
> > -		memset(&dsb->cmd_buf[dsb->free_pos], 0,
> > -		       aligned_tail - tail);
> > +		intel_dsb_buffer_memset(&dsb->dsb_buf, dsb->free_pos, 0,
> > +					aligned_tail - tail);
> >
> >  	dsb->free_pos =3D aligned_tail / 4;
> >  }
> > @@ -358,7 +362,7 @@ static void _intel_dsb_commit(struct intel_dsb
> *dsb, u32 ctrl,
> >  			  ctrl | DSB_ENABLE);
> >
> >  	intel_de_write_fw(dev_priv, DSB_HEAD(pipe, dsb->id),
> > -			  i915_ggtt_offset(dsb->vma));
> > +			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf));
> >
> >  	if (dewake_scanline >=3D 0) {
> >  		int diff, hw_dewake_scanline;
> > @@ -380,7 +384,7 @@ static void _intel_dsb_commit(struct intel_dsb
> *dsb, u32 ctrl,
> >  	}
> >
> >  	intel_de_write_fw(dev_priv, DSB_TAIL(pipe, dsb->id),
> > -			  i915_ggtt_offset(dsb->vma) + tail);
> > +			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf) + tail);
> >  }
> >
> >  /**
> > @@ -405,7 +409,7 @@ void intel_dsb_wait(struct intel_dsb *dsb)
> >  	enum pipe pipe =3D crtc->pipe;
> >
> >  	if (wait_for(!is_dsb_busy(dev_priv, pipe, dsb->id), 1)) {
> > -		u32 offset =3D i915_ggtt_offset(dsb->vma);
> > +		u32 offset =3D intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf);
> >
> >  		intel_de_write_fw(dev_priv, DSB_CTRL(pipe, dsb->id),
> >  				  DSB_ENABLE | DSB_HALT);
> > @@ -442,12 +446,9 @@ struct intel_dsb *intel_dsb_prepare(const struct
> > intel_crtc_state *crtc_state,  {
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > -	struct drm_i915_gem_object *obj;
> >  	intel_wakeref_t wakeref;
> >  	struct intel_dsb *dsb;
> > -	struct i915_vma *vma;
> >  	unsigned int size;
> > -	u32 *buf;
> >
> >  	if (!HAS_DSB(i915))
> >  		return NULL;
> > @@ -461,28 +462,13 @@ struct intel_dsb *intel_dsb_prepare(const struct
> intel_crtc_state *crtc_state,
> >  	/* ~1 qword per instruction, full cachelines */
> >  	size =3D ALIGN(max_cmds * 8, CACHELINE_BYTES);
> >
> > -	obj =3D i915_gem_object_create_internal(i915, PAGE_ALIGN(size));
> > -	if (IS_ERR(obj))
> > -		goto out_put_rpm;
> > -
> > -	vma =3D i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
> > -	if (IS_ERR(vma)) {
> > -		i915_gem_object_put(obj);
> > +	if (!intel_dsb_buffer_create(crtc, &dsb->dsb_buf, size))
> >  		goto out_put_rpm;
> > -	}
> > -
> > -	buf =3D i915_gem_object_pin_map_unlocked(vma->obj,
> I915_MAP_WC);
> > -	if (IS_ERR(buf)) {
> > -		i915_vma_unpin_and_release(&vma,
> I915_VMA_RELEASE_MAP);
> > -		goto out_put_rpm;
> > -	}
> >
> >  	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> >
> >  	dsb->id =3D DSB1;
> > -	dsb->vma =3D vma;
> >  	dsb->crtc =3D crtc;
> > -	dsb->cmd_buf =3D buf;
> >  	dsb->size =3D size / 4; /* in dwords */
> >  	dsb->free_pos =3D 0;
> >  	dsb->ins_start_offset =3D 0;
> > @@ -510,6 +496,6 @@ struct intel_dsb *intel_dsb_prepare(const struct
> intel_crtc_state *crtc_state,
> >   */
> >  void intel_dsb_cleanup(struct intel_dsb *dsb)  {
> > -	i915_vma_unpin_and_release(&dsb->vma,
> I915_VMA_RELEASE_MAP);
> > +	intel_dsb_buffer_cleanup(&dsb->dsb_buf);
> >  	kfree(dsb);
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> > b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> > new file mode 100644
> > index 000000000000..723937591831
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> > @@ -0,0 +1,64 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright 2023, Intel Corporation.
> > + */
> > +
> > +#include "gem/i915_gem_internal.h"
> > +#include "i915_drv.h"
> > +#include "i915_vma.h"
> > +#include "intel_display_types.h"
> > +#include "intel_dsb_buffer.h"
> > +
> > +u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf) {
> > +	return i915_ggtt_offset(dsb_buf->vma); }
> > +
> > +void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32
> > +idx, u32 val) {
> > +	dsb_buf->cmd_buf[idx] =3D val;
> > +}
> > +
> > +u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx)
> > +{
> > +	return dsb_buf->cmd_buf[idx];
> > +}
> > +
> > +void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32
> > +idx, u32 val, u32 sz) {
> > +	memset(&dsb_buf->cmd_buf[idx], val, sz); }
>=20
> What's the point in abstracting that stuff?

For xe driver the memset implementation will be done differently, so create=
d this abstraction. The same thing is followed other xe-refactoring code as=
 well.
If you want me to change the code any specific way please let me, will try =
to modify accordingly.=20

Regards,
Animesh

>=20
> > +
> > +bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct
> > +intel_dsb_buffer *dsb_buf, u32 size) {
> > +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > +	struct drm_i915_gem_object *obj;
> > +	struct i915_vma *vma;
> > +	u32 *buf;
> > +
> > +	obj =3D i915_gem_object_create_internal(i915, PAGE_ALIGN(size));
> > +	if (IS_ERR(obj))
> > +		return false;
> > +
> > +	vma =3D i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
> > +	if (IS_ERR(vma)) {
> > +		i915_gem_object_put(obj);
> > +		return false;
> > +	}
> > +
> > +	buf =3D i915_gem_object_pin_map_unlocked(vma->obj,
> I915_MAP_WC);
> > +	if (IS_ERR(buf)) {
> > +		i915_vma_unpin_and_release(&vma,
> I915_VMA_RELEASE_MAP);
> > +		return false;
> > +	}
> > +
> > +	dsb_buf->vma =3D vma;
> > +	dsb_buf->cmd_buf =3D buf;
> > +
> > +	return true;
> > +}
> > +
> > +void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf) {
> > +	i915_vma_unpin_and_release(&dsb_buf->vma,
> I915_VMA_RELEASE_MAP); }
> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> > b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> > new file mode 100644
> > index 000000000000..7dbfd23b52a9
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> > @@ -0,0 +1,26 @@
> > +/* SPDX-License-Identifier: MIT
> > + *
> > + * Copyright =A9 2023 Intel Corporation  */
> > +
> > +#ifndef _INTEL_DSB_BUFFER_H
> > +#define _INTEL_DSB_BUFFER_H
> > +
> > +#include <linux/types.h>
> > +
> > +struct intel_crtc;
> > +struct i915_vma;
> > +
> > +struct intel_dsb_buffer {
> > +	u32 *cmd_buf;
> > +	struct i915_vma *vma;
> > +};
> > +
> > +u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf);
> > +void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32
> > +idx, u32 val);
> > +u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx);
> > +void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32
> > +idx, u32 val, u32 sz); bool intel_dsb_buffer_create(struct intel_crtc
> > +*crtc, struct intel_dsb_buffer *dsb_buf, u32 size); void
> > +intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf);
> > +
> > +#endif
> > --
> > 2.29.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
