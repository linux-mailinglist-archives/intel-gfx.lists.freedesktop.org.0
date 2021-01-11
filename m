Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2072F218A
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 22:10:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3F0389E0D;
	Mon, 11 Jan 2021 21:10:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C8A389E0D
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 21:10:48 +0000 (UTC)
IronPort-SDR: 1gQtIqT/Xle3IJEWk7nDYraS2rKvKb9sbdmNkkFUeXFCXFxUG8TYhzqsGhwfCrdZhZMDNZpcFE
 OGNVeuVpgU5Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="174427133"
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="174427133"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 13:10:43 -0800
IronPort-SDR: i3m7MKeU8sgSnnDkQga3mlrLwzA/jPEgYvXYWJ8wqkoodxY7ufvzMEAmXKulQUhlZ7ZtrrS1DM
 b7f/I4AFkadw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="351678297"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 11 Jan 2021 13:10:42 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 11 Jan 2021 13:10:42 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 11 Jan 2021 13:10:42 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 11 Jan 2021 13:10:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CA2+kfdvO/ckhVpILKx/5xDsJDJOPtEuKDf8XZy0B1bl9WwL8i7LsXeDdIecrDaENv7cGqoVNw75En5fShgvqS7nH0Oe0H4xLciTaPomeanjPRCUxKAAI86q1pzVi7Yyy48hl2oJF7lUBE7ZiK4KdKTHTCgeyQsW9EYuwxxzsox2aehCwr9Yw+nYTBVilOoTiPmva5Ztc2HgQac/u+lC+433feJ+pQM1rw9lerAYAIghrrZwX+OuRaxXDGlNnyQ6os7v/iL8i8+144pU/G2frMQCrwCmCuTkBqWADLGx2pCfxJGltTLsf1Tqw86GU3emU8nGdvvws3136ZvMxjLKFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7ov97gyEuAH1pr2s8Gh8VpozMiTVA911SdY/RrGR1L0=;
 b=YiCVbKGTMgSyYWKkMUCDpydafYuecAPA/N3DcgltB/KNkBT+VCfotPeYk1t5K0QQAaa6RUBGPP7Ua/ZPJzxxqXxnuk0r3De50p29KcqtL4a+XrYCGnQdFTSoUIz7uqYeaiwbq9nAja1tsktR9428GsC0ZEqiYpbuZBuDi81HnqwXyH1Js0kS7lkYg4yfkq1pKM4yTsDliJt5wNa7cBzdSo+dQapfXQCKfM15OJClJ6YTflB/nP5jaGnns/gPOOWKuBjFB9VB4xvFJjFGAuW//IF6S9urUdr16viw2Veqnnt2BgvHRlCaDg3Zd63rJu48yVU8UobdZQN7gMdzLBhKdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7ov97gyEuAH1pr2s8Gh8VpozMiTVA911SdY/RrGR1L0=;
 b=QfqYPxARoEk8wPpUZqEGEVkhJAE+CNwSSiDJaFBVDkAZGBxG6UauYEj/WE2mPizU7jGo3KW+VR6BT0GRPFxJljT+JbTjF2bOldZ0yypQyXSHDRxYF3uvN5Co6nDekPxPbhSLMD2GLP0GyFSnOYZGTzeISS6hIW7uFaj5XZuBddE=
Received: from BYAPR11MB3799.namprd11.prod.outlook.com (2603:10b6:a03:fb::19)
 by BYAPR11MB2886.namprd11.prod.outlook.com (2603:10b6:a03:8f::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.12; Mon, 11 Jan
 2021 21:10:40 +0000
Received: from BYAPR11MB3799.namprd11.prod.outlook.com
 ([fe80::d152:da83:422f:6d53]) by BYAPR11MB3799.namprd11.prod.outlook.com
 ([fe80::d152:da83:422f:6d53%5]) with mapi id 15.20.3742.012; Mon, 11 Jan 2021
 21:10:40 +0000
From: "Abodunrin, Akeem G" <akeem.g.abodunrin@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Limit VFE threads based on
 GT
Thread-Index: AQHW5p8pB5+Xm475Y0+OQiuuXpQrK6oi4XAggAALhICAAAGcAA==
Date: Mon, 11 Jan 2021 21:10:39 +0000
Message-ID: <BYAPR11MB37999A5D7F14C574E258979BA9AB0@BYAPR11MB3799.namprd11.prod.outlook.com>
References: <20210109154931.10098-1-chris@chris-wilson.co.uk>
 <BYAPR11MB3799F7F212E15B8F61A30FF5A9AB0@BYAPR11MB3799.namprd11.prod.outlook.com>
 <161039896179.28181.10910257314289620584@build.alporthouse.com>
In-Reply-To: <161039896179.28181.10910257314289620584@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: chris-wilson.co.uk; dkim=none (message not signed)
 header.d=none;chris-wilson.co.uk; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [207.109.37.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b5d467b-2bb3-4a1a-12af-08d8b6755965
x-ms-traffictypediagnostic: BYAPR11MB2886:
x-microsoft-antispam-prvs: <BYAPR11MB288694D5D74453401C947350A9AB0@BYAPR11MB2886.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WAP2kcHPLVKGaLnFSkUsq1kVZ3Oj/K7gpEjcbY88H0Sd05nqdvxurzo78DKA97KcYZwaJGfAmgSQzhtzWOZkGN4oOnPSdNmYqaseg1kuw2JGpqQ0JRYSWd1WgKTEbyKzlzM3le90TT+JtGU6GsCzvgip/Q8GHOILmee/AYMMyqCRsItWft8h1U8PItA3tvoM7OgEPOR42pQVT2SVfSDxlV6mHi7jD88HpETW6gdJMc/hsudET0tpEM3V6eXTlCG+w131LXfm8u46Fnhis5wsMxLJTHoBKw6wQLLKolqaZZgqFY9UBXUsJTn2gg827Drd7VHNmIm/4qKovEsfuAKcp/GiLOl74bid7dMFnTUWRW+U6z2GWsLNyGHeQhx1wBtu+OkO8HB+tEbzAG0gO5mmUA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3799.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(396003)(136003)(346002)(376002)(366004)(5660300002)(66556008)(64756008)(66476007)(52536014)(26005)(76116006)(8676002)(66446008)(478600001)(86362001)(66946007)(83380400001)(53546011)(6506007)(7696005)(9686003)(55016002)(33656002)(4326008)(186003)(71200400001)(8936002)(110136005)(2906002)(316002)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?UmFwamVnR0FWMmZDQTRLMUlDTDRKWW5vc0tjWU5nS0hFekVad0kxTjBaVklw?=
 =?utf-8?B?M3NkaUdqVVZuaVMzdWNlRVRzYW5nN1VOK2p0UDRJR09MRWVoUGVUZWNyZWlq?=
 =?utf-8?B?VHMybng0d2lFbjlub0xLdktuUSswQm40ZHNTRmliM2NmTFlWZjFQaHphQTZW?=
 =?utf-8?B?b3NSeVYwVnU0TzM1d3U5TnRWMGdyV2J4SDhwdmtGR0tOUnZSc1dvSkdRbENI?=
 =?utf-8?B?Mm83TzRMUW1ybitFUm1YTzFMU1JzY1crOXFQSGxXTWI5Q3BoOG1NRkZySjgy?=
 =?utf-8?B?VEZ0SDdVZGhyaVZpemIxSmxRZ1Q4dDZsWlEveWNGdG81eFVQZStDTGptY1Bj?=
 =?utf-8?B?cEQyWm5PaytiWXY4ck83a0RPdTVOVkZ3Z0hpM2RKWGpBQ0x0TEFYbzZyemFW?=
 =?utf-8?B?YW0rVU9ONE1IV3gzdk5DbForSWliWkNLZFI3cGRmaUV2YW03YkVxbFcveWty?=
 =?utf-8?B?VjFIWGRjUzltOVczVCtTVnNOa3gvb2ZySTNrM2liTEN2MlNESE9ZKzQ3RlRa?=
 =?utf-8?B?ZTE1RHZ5cXFSVWpzM3BaK0tqYlRvSko2UGVNNDk2YzZVZlFrNlpNaUJadDVN?=
 =?utf-8?B?bjYrNFlDa0MwUUNPdkhiQVhuYUxHN2pQWEJrU25OMFdzZUNnbzFPRmtWVEFE?=
 =?utf-8?B?TmFZR0VOa1ViZlM0OHByUnJySXVhc2NYVENZMXo4UHhodzJ5bnFHUkZ3SHB6?=
 =?utf-8?B?eUk4N3hRMXo1eVpIZDhqTTlqTXc2dlZyWFZDK24zbGxINTFicmw2TzJ5TGRG?=
 =?utf-8?B?UnFubFVsdkd4aU0rcEJsNDlmOGRQd1c1Z0VWNFk5NXRLOXlNMElJc1ZtRU16?=
 =?utf-8?B?NHFHOEhEWVAxekxGK1FVWVdhdzNRUi9xRFBnZy96VGxoZnV6QVBIa0s4d2Ft?=
 =?utf-8?B?N01tRjVkbzhIeFVpVzFDbzVpbXN6WThRc2xLWmpGeUlERktpVVU4NHQrSlRv?=
 =?utf-8?B?UDl1OUZGZE1Wc2toRndGREFHZFZlQVgrZGtxZ0tQNmwvWUZDdEV1QVpWaUxX?=
 =?utf-8?B?RFZoODh3WWxSb3kvQmRxa043KzliZ2NQbjlqQVhldTc4VG9xWEd1bFZJSkhX?=
 =?utf-8?B?TDM1Mjc0Snl6VjhvNkJGK1MzcWtZR3BINzM0eW5mWVZ2STU4R01Kd2t2Tk5Y?=
 =?utf-8?B?ZlNVTmpBQ0UxVlFpdzNoblFKd0E0aUgzNy8zVmwwblg3ZGhhZWR5dWg2SUxL?=
 =?utf-8?B?dXk1V0RCNUN0bHBQWnprdS9JSGRXRklUbUpla3J4TTNoQTE0c3JKMWNNOG1v?=
 =?utf-8?B?dG9lblNDUWVIR0pFdWFnSVRmSHNzTnpBa25pL2xVWVNpTVJ4WXIvdlhUcEV4?=
 =?utf-8?Q?dN+28sah6wjRA=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3799.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b5d467b-2bb3-4a1a-12af-08d8b6755965
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2021 21:10:39.8681 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UIkh0lRbkdXHlhSn6eksVSg2BSxrOg7kjOmrUHN2lNYtH3PV6MEBco/LgXwrjVPR2Fr1T9LTq4LHH1TcIHE3dDaT75ymqicNax7znM1gfaE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2886
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Limit VFE threads based on
 GT
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
Cc: "stable@" <vger.kernel.orgstable@vger.kernel.org>,
 Randy Wright <rwright@hpe.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Chris Wilson <chris@chris-wilson.co.uk>
> Sent: Monday, January 11, 2021 1:03 PM
> To: Abodunrin, Akeem G <akeem.g.abodunrin@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: stable@ <vger.kernel.org stable@vger.kernel.org>; Randy Wright
> <rwright@hpe.com>
> Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Limit VFE threads based on
> GT
> 
> Quoting Abodunrin, Akeem G (2021-01-11 20:25:34)
> > >  static void
> > >  batch_get_defaults(struct drm_i915_private *i915, struct batch_vals *bv)
> {
> > >       if (IS_HASWELL(i915)) {
> > > -             bv->max_primitives = 280;
> > > -             bv->max_urb_entries = MAX_URB_ENTRIES;
> > > +             switch (INTEL_INFO(i915)->gt) {
> > > +             default:
> > > +             case 1:
> > > +                     bv->max_threads = 70;
> > > +                     break;
> > > +             case 2:
> > > +                     bv->max_threads = 140;
> > > +                     break;
> > > +             case 3:
> > > +                     bv->max_threads = 280;
> > > +                     break;
> > > +             }
> > >               bv->surface_height = 16 * 16;
> > >               bv->surface_width = 32 * 2 * 16;
> > >       } else {
> > > -             bv->max_primitives = 128;
> > > -             bv->max_urb_entries = MAX_URB_ENTRIES / 2;
> > > +             switch (INTEL_INFO(i915)->gt) {
> > > +             default:
> > > +             case 1: /* including vlv */
> > > +                     bv->max_threads = 36;
> > > +                     break;
> > > +             case 2:
> > > +                     bv->max_threads = 128;
> > > +                     break;
> > > +             }
> > Do we really need to hardcode max number of threads per gt/platform?
> Why not calculating the number of active threads from the no_of_slices *
> 1024? - Also, is "64" not the minimum number of threads supported?
> 
> ivb,byt,hsw each has different numbers of threads per subslice, and each gt
> has a different number of subslice/slice (and not a simple doubling of
> subslice/slice from 1 -> 2 -> 3, although the total is!).
> 
> It's a choice between encoding a tuple for (num_threads, num_subslices,
> num_slices) or the combined value.
> 
> The goal is to run a shader in each HW thread to clear the thread-local
> registers, and only one shader in each.
> -Chris

Okay, let's go with simplified solution to achieve our goal here, instead of complex calculation...

Reviewed-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
