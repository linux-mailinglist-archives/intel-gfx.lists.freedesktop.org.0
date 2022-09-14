Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C865B869B
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 12:50:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BC4C10E004;
	Wed, 14 Sep 2022 10:50:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAE5A88F94
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 10:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663152644; x=1694688644;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7q4Lvjz7suUK86LJZNjFOThdJqWc3R5WSKjtKPQrzwY=;
 b=Y4EQzU+TSabvftSlhur1egoULuVakg0yuXi4R4XqJv/ftZ9Mol3KNay3
 AsMeIxt73b9qWSS01nSOornk35iLsi1R/t+VOe1f6Z1CWIfbuX0tDjygE
 GB8P+zx20uZksBEwIgfhmaie8BEfjsHj15qSsq4ae6D7fgHy6Av+GwZwC
 2IQ9nPgOKTAbQOhyuqLLDn/XxNMqDicdlxGiuQmDDr4BkV81csH/k06i0
 +QhZsUa7MAcF5crTnEEa2ecriGl9bkIMftv8PVp0K4GrvxnFP+eq35tZi
 vyy8a64fsPy9nYz9ZxMrSIFv+oBZaPCynCUwJfiNQBatfOJ0sIRnMmbuM A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="384690336"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="384690336"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 03:50:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="612470178"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 14 Sep 2022 03:50:43 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 03:50:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 14 Sep 2022 03:50:42 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 14 Sep 2022 03:50:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f0NiQIvmnkEgTAW/OuBsEeqj7KusaH/CR+PjVSi5+lAOcSDv0tyYDH66U2UnO6+6KXdfdiynvCxRTaiLo4yQ9aTyukn3jwpCc85v6PXwj+WRUK6AScl7o4keVIkHrLrMpSacytzQgFiHgeVe5FIdbtS8QX6EBLaZhjPifEit3F22CnDfPuUhAkOrfBDc/THrRq9s45ZqBKhaH7RJfIRzIqI8HDeYjoG/0B+vfXDjyV8mArWlhJbUjthe3A1AkDQb1phpvUs2BkTUaetIXXrNO6gTZjpy9A7QAGEd8masN142Ch6cLTWLklLgJysJv9kqrB+UxXrzN2YIDuzs7fuOAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dH8UZvn+qJ1j34KISd2orPxFbPeQqlGgiTjMjC68rp8=;
 b=LyRfYcgMzxx1zzqZxmurj0vVm6f71eSA/jJPXpDP0v/LmoRLyLdj5+gWIgSWVnR+O+idKsj1MJPXbAe10tTZ+q9weOOUUWw/iPrK1I1ZVuTmm6dLxXwgUgjRuupjmgNK99+6dtV6+XH/XPm1AztNLIkqaC9SDh71fGUwhtlluRmU1wDKHUi6aZxSG9HGtOpE0pLGRNZq4vkRzbOZipP6zk/khFYtpfe77oNKLpFwZjN62lnMhwEEy6O9cRLnUYXtQLV/A+xFfJrSaRzEPax2QiLpf12iKSJSl+MCGfrl6TtL9meH7pZwcbMjotO+geRGZ/u0Cc6FN6UG+yJjDO8mcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 PH8PR11MB7070.namprd11.prod.outlook.com (2603:10b6:510:216::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Wed, 14 Sep
 2022 10:50:40 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3083:6b7c:8c2a:c200]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3083:6b7c:8c2a:c200%5]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 10:50:40 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
Thread-Index: AQHYwaOE/EXAADz+NkeUK0QgUHi7O63WeiyAgAhR7zA=
Date: Wed, 14 Sep 2022 10:50:40 +0000
Message-ID: <DM6PR11MB3177451D1F3A10D00706461ABA469@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220906034803.4094252-1-arun.r.murthy@intel.com>
 <DM6PR11MB31775117B7388776D2E6DFD2BA439@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB31775117B7388776D2E6DFD2BA439@DM6PR11MB3177.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|PH8PR11MB7070:EE_
x-ms-office365-filtering-correlation-id: 1e96af79-b2b2-42f3-9510-08da963ef6f9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8/vuGx780OS0HZ/i+5PIoaxSmgOKUoWeL72cFXNMHGIvcBlCcm+vK2sncmBgXhYV/agV3FKLNd7jljm+LjzXTseeFib0hbToFwqYWVry8CEc8hemuDa0xmgQP7TMZDkkDviZl8lPeY+xjz9Pt+EHHS2VJl2zqzNtFIuQv9t80z6Xsud80OLlCjAM6QuZMwgZykL/agKPh0KcF96mm5yG1Zb8FSZu0r7WJuV8MBEOXP4OltDXJezGzrVdD2TYEMCV9Sb+z8BkHgzEbordwWaSQwYxbxms15GsM5L+0yGnEj/Bc5k73u+Kv8Z167zymfeRu6y4eqYfyWufdtt9370wK9kDvH5KWYmwsk0rqBmKgmHr6DqiSuEgMTE3+ijDkTeDs8rj/t9+cI55IQEvoqsUIw+mOquT2kZd47nqQamxy2c06+8WW1o58mVNk+HOcSvghcJiV4Xfg5gJkdLUJTJLkS27RF9+GKZ78yPUAa5hysGS3h1PYeGdZnmYn6BwPp4x4uEle8tU2dVDgPdTY8B9Z0Bme51DJE8qy+xEJ+Z/fy3OlI8eduYvm68WFQTCwT9THU/JR5Xh4vV5/AhClEN8FCZ/2TmeCd8Z/EB9Jps0Yvb6rm0A23WSLA+CHKkbW7JBRbP7SsJQ1WKaMPtYvAjUraoS0eybAFlz+sRHqemIkJgtyGDZcNMOygq9SAjp8mb0AwbXYnuhbUpp2rD/i+ZO/2vkGv+ntm6+tiljWsphNR28g7v3eX0+bBjzlzix/8N2tAOxHQ+V+mBblPXKZBznYA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(396003)(376002)(346002)(136003)(451199015)(55236004)(122000001)(82960400001)(107886003)(41300700001)(71200400001)(66446008)(52536014)(66476007)(38100700002)(110136005)(66946007)(76116006)(66556008)(64756008)(9686003)(86362001)(4326008)(26005)(8676002)(5660300002)(6506007)(33656002)(55016003)(2906002)(478600001)(53546011)(186003)(7696005)(38070700005)(316002)(8936002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4sKj+SgIOX5UP6q4fyrsWQHtOLtyvAGmsoHrfWLbwswd7+crzInrIBvtuvcK?=
 =?us-ascii?Q?DPTvnFN5S5OklSp3fWd3HqvmYp25mA2x0MJ5oEuVctrm0GEhXw/UUKEP2x6V?=
 =?us-ascii?Q?ujWn34LkAcRSCJ5ABdw4/RN9gdYVwUjO8LKrfOXXr/itvGysnTZjTVNCPzq8?=
 =?us-ascii?Q?nZr1QNp/pn3fXLKwYqGDheN7ui8mK+5Hh36MsBKjdXjPstjR6R0EdJIrZg0u?=
 =?us-ascii?Q?Jf9WiJ2BOXud217exV/dIEx7RaFIVe7HJBpk3Sn8136K5Q6fJK9ALnsgeKzu?=
 =?us-ascii?Q?ORgr6zcTC9QUXWbzjnDwpK1Ucx2fuxQ7qVa4qt9e6BxSDk4Et3dhhM4YZJcv?=
 =?us-ascii?Q?OYRoEb3+WWtb4GRqp3159xh6VmuJMHYLhCy72DXCwxBSbpQsQbMlIzDc2586?=
 =?us-ascii?Q?jiunW5mJyf7TXPExLbJ8Fm9SbBfL2yMvl++x7r0pB1vWHnX0LHlgT4nHwgrM?=
 =?us-ascii?Q?EstrhpFM7uCgOH8qij3ZNpU7VuMWdEEW+0u2cpMtNCNWSKzOhK9+6tNuOAHP?=
 =?us-ascii?Q?+Ky+cvDD4fg3CJgpUw8lvehYSVJ5BjRpqkseAgCPiOPDjbQLXi873szmfX/j?=
 =?us-ascii?Q?GXpUKWs6n8LJWzY2hvQ1BeLW4ZP7lA3IDrgG0gZT/cwARYNnwF6oPKBDFu2j?=
 =?us-ascii?Q?E2fvJ8T+ZEzt0a3HzDNcNoFjnIkLfqTi/jg5GTsEeECr/gKGyLxXeC11upQP?=
 =?us-ascii?Q?5T5FpirrNwC6q976WKAZp3SL1V4bDFWr3qUtAxTl0vE3PdEIJiCSUGYs/qrx?=
 =?us-ascii?Q?58rmbPBMmh4lFU2O8sTV+eGht5bKStOXRkhdJuzgS92TZLZ2Sc8d0wS7AXyc?=
 =?us-ascii?Q?yGw3ikLHmGn4piRcni8Iy02oqUOPu84i0fKN5hBq2Mik3Mv4fIaMa7gOj+6t?=
 =?us-ascii?Q?mqjOGWGVlkp0ueKDkSagr/YbINkcQKjPEJ+Bswulobwh1N7VmKBi2DwlZ6QH?=
 =?us-ascii?Q?3/fQPiwOh10Us07JftlzfICbFX1erEdXJrMVl1HukfFV2XrA5kU4IhZde9l4?=
 =?us-ascii?Q?lMbTYuJX9eXSx534wZ1CbEOdUoXmpZhCaBxJ8AJO6L0r9dbOWgaA6YhJwlQQ?=
 =?us-ascii?Q?S4EMu0r3LuCp2fbUiZspgl+drmBnxAfG3EfPBKOOBk3iQBvF0UMPvZn3NzkP?=
 =?us-ascii?Q?vDOyw3J7BCDwC6CV06GCU0oqQuh437jSulSNflPTdI/jrjEpah0oGvdML+su?=
 =?us-ascii?Q?UHKoiekU6y1TDugrIivSlyvI31KOYYnXMK4Jrw38ZNC6pNNKY7xDtIhmUdFQ?=
 =?us-ascii?Q?Hl2gFY4ccQz5gOoIVWqazkgmE/JJyc0HX/Xmrvh8EJtm2AOeKUBGAPVwb3kP?=
 =?us-ascii?Q?2smaq7dluv6wcZ2eEZMbIUrCdetRZklCXxcaozPn11fn2EqIE+Iu0b4ii12y?=
 =?us-ascii?Q?cLWRNDk7sRjSPEBAz2Tm9nZDUlx8kjNTP6AwXCx+cvIrY8Z2/oXdb2xkTo/t?=
 =?us-ascii?Q?/GLfA8MbVbMT5kT2cQ4oEYcOhEZVnpoN/3S2FMedW9iCrP5krePNX0kgzYPv?=
 =?us-ascii?Q?um4jvHITm2S5VhfRXSkhxCvKy4vMvEUKykrt2rsJi9HQpLV7GogyeApkFYS2?=
 =?us-ascii?Q?u828hSMuPLgqT909U2PctMSocBpBaaZHM3EMp0Bu?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e96af79-b2b2-42f3-9510-08da963ef6f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2022 10:50:40.1724 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WCfJ/Fo02UuQvGkvsMO5N5zMgeWzj4cUH0EwpYW1hFyEbb6K3kVIMRZFDU6wCYfSZfj2pTVbkqY+6NF91wKqvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7070
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Gentle Reminder!
Any comments?

Thanks and Regards,
Arun R Murthy
--------------------

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Murthy, Arun R
> Sent: Friday, September 9, 2022 9:17 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Syrjala, Ville <ville.syrjala@intel.com>
> Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
> buffers
>=20
> Gentle Reminder!
>=20
> > -----Original Message-----
> > From: Murthy, Arun R <arun.r.murthy@intel.com>
> > Sent: Tuesday, September 6, 2022 9:18 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: ville.syrjala@linux.intel.com; Murthy, Arun R
> > <arun.r.murthy@intel.com>
> > Subject: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
> >
> > Starting from Gen12 Async Flip is supported on linear buffers.
> > This patch enables support for async on linear buffer.
> >
> > UseCase: In Hybrid graphics, for hardware unsupported pixel formats it
> > will be converted to linear memory and then composed.
> >
> > v2: Added use case
> > v3: Added FIXME for ICL indicating the restrictions
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index be7cff722196..1880cfe70a7d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -6610,6 +6610,20 @@ static int intel_async_flip_check_hw(struct
> > intel_atomic_state *state, struct in
> >  		 * this selectively if required.
> >  		 */
> >  		switch (new_plane_state->hw.fb->modifier) {
> > +		case DRM_FORMAT_MOD_LINEAR:
> > +			/*
> > +			 * FIXME: Async on Linear buffer is supported on ICL
> > as
> > +			 * but with additional alignment and fbc restrictions
> > +			 * need to be taken care of. These aren't applicable
> > for
> > +			 * gen12+.
> > +			 */
> > +			if (DISPLAY_VER(i915) < 12) {
> > +				drm_dbg_kms(&i915->drm,
> > +					"[PLANE:%d:%s] Modifier does not
> > support async flips\n",
> > +					plane->base.base.id, plane-
> > >base.name);
> > +				return -EINVAL;
> > +			}
> > +
> >  		case I915_FORMAT_MOD_X_TILED:
> >  		case I915_FORMAT_MOD_Y_TILED:
> >  		case I915_FORMAT_MOD_Yf_TILED:
> > --
> > 2.25.1

