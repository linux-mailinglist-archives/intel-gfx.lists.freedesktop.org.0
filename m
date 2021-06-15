Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D655E3A7901
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 10:26:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD9AF6E188;
	Tue, 15 Jun 2021 08:26:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 557B16E188;
 Tue, 15 Jun 2021 08:26:28 +0000 (UTC)
IronPort-SDR: yWW8M8xshefZ95WLdNdEuZaBCku2GwtJsceTtPzXtDNsHWWAjAwAIwDEEggEBMHiMBg+GXHuJP
 ta6PHgFbk9ag==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="185641931"
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="185641931"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 01:26:27 -0700
IronPort-SDR: Ia1HnlxQpDv/xMY3ZGv8XHc1smRZ2FbLaUaIaWRX/EUSxxX1nGpQ0+y3y2bVmRlVP6R8GX/zr9
 jnjCzLjvlSEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="451889610"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga008.fm.intel.com with ESMTP; 15 Jun 2021 01:26:27 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 15 Jun 2021 01:26:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 15 Jun 2021 01:26:26 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 15 Jun 2021 01:25:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MAICEJs11MvtFRp+mbDxs3xwGK8tOUmwg3Du3PaVKaLoo9Ve44hl6KyYuoRI3j6iQPTUpycPDNDyFNXNZdDyFEL8qVVv0d2JXQfg+TrRfU2QfQDzq9dxeeOj0+eHLe63GTXt1mukihVWhv4QyPZpg7GJTRzZP0ydUmzMr88Qj8XpjqyaKpgRHzaEgOLOPWaY1/KL1sNJ8h2SWljHzulezfDapUGP3J8CzwzH5TuNb0c5Oru9FgA0vlJ2yZiGRJRcY9K0xxxuBldot5B9juK0NaDwwtXdJgxBHZlsxi881RxDkKiXe0PsdzlNlvqsWeUeXVrI9y7+Ghiycjm7Ad0rbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ztesQbyr29pPZipwx7m4G5u3o9inAYgAasW4ybAJi0c=;
 b=ETRS0yuxufxj+Fa8slMtyeBfQFyZQ0tHlUDv2SYHZarPk+EdM0J4EZK8Sm7XFi4xrar9Rx7E1L2skcJEGs8dl0uCu5nbBRKSYO5PLsXptqiiAod1eCGzY5+OT5R/4w8ZgB/ARzaMcIAkCePzC238gK+i6piOo1B7x/sGcsb82i/E0VpECSXyvg80AeLYUw4MeNvKbV1FwF5TALaG+k63Vw7ybspDArTJ0j9vyPzYxpAfTxLhymAjVtB4TrU5tu7rKDMF8gW8dzVwdv06rV8KCWbxBo7/NJymrPKqFvzXY9qRofoME9aSm7f+PDuGMZpbeNgTKKVsizYUyUvTLmi9RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ztesQbyr29pPZipwx7m4G5u3o9inAYgAasW4ybAJi0c=;
 b=cuDRtfmxTG+iK7TaGcrezW4L8E4gzQvNHv1rwmdyc0TJzeZuzr/rNfUmtXlhsJ3nWZuxQBuI3X5L7tcIuW1WHp59QvF89rjuFh0BCFKlJ+41CCQJjsW0RBTQmb3wJak+y2Q5zVSEXjktN+FUtL7CXG2LIYrX66ZSIY56+WqJWTQ=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by BYAPR11MB2822.namprd11.prod.outlook.com (2603:10b6:a02:c8::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.23; Tue, 15 Jun
 2021 08:25:22 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::8109:b283:489b:b094]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::8109:b283:489b:b094%7]) with mapi id 15.20.4219.025; Tue, 15 Jun 2021
 08:25:22 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_plane_alpha_blend:
 Don't set primary fb color in coverage-vs-premult-vs-constant
Thread-Index: AQHXVvDWfvOp7XrUnUOZT77fKuGya6sOOTQAgAA/naCAAFshcIAF/ewA
Date: Tue, 15 Jun 2021 08:25:21 +0000
Message-ID: <BY5PR11MB437250EA6AD698B6D28D9D1089309@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1622547939-8157-1-git-send-email-vidya.srinivas@intel.com>
 <1622556485-9375-1-git-send-email-vidya.srinivas@intel.com>
 <CO6PR11MB556976C4EC81D88FC86D1C768D349@CO6PR11MB5569.namprd11.prod.outlook.com>
 <BY5PR11MB437213735019658A601D098D89349@BY5PR11MB4372.namprd11.prod.outlook.com>
 <BY5PR11MB4372B0A65DA52560451EAA5289349@BY5PR11MB4372.namprd11.prod.outlook.com>
In-Reply-To: <BY5PR11MB4372B0A65DA52560451EAA5289349@BY5PR11MB4372.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [45.127.46.155]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: af4498e6-bc53-4c19-2cd2-08d92fd71e45
x-ms-traffictypediagnostic: BYAPR11MB2822:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB282263F5D39D229C5B1F343E89309@BYAPR11MB2822.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:517;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cDxLkm4B8kHHSx34hVZgcRLHpQSQGFonAjqj9z+sy68Nuw+fkFroBk+08QWSBChglaKbg9bXjAqozMXZ21Js373W4uXMPKlGqEFMLbGNLlZ2Grc4glIYgow+HSvqKgoWmV4DK5xwePgvxd/jWeg0ffTVh6yM75oQK4QyvQ1I6XH1/9u3l2YLrvhWsEEGtoR1DGdXtxq72O+O/DJ8Pk3vwROmcO3uYg6FoNEKgPNBrfyjd9mf5d1ET48OSZw1eZR1K/WCyOIYercvXP8EQam7SbQ+RNzQYiP6hkfFilRMZPSrUcDZdbC1Ff4KnfNUMuUjXAaZGWxInaexY9qbXqbypkseqcFF9x0x5lnuSRtBT2HUMc/K2swEHv9wFScSsUxphkVj8SQx0TPqEwMbGb+3oySXFVgikur/fB7+8ZqcHS23/tiVDCeY6qv3NGzA6NEVgWGF1wTgxpscPmvWLK0Hutw3nDsLGMp+cJ0tCVJN+1Q+I1NfvdCuDnGsW1Mxrz6HfdCM193Of4n/onUdsndzV0wTijoFWvdfbag7P5pk58fj3NuDdebxrOUBju6DtSLowj6XaCa28DlQKztmKi2ydKuv5TxXT9l6us3heEHQ4uB0DZLqve/aH1YFYb+pjGWD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(136003)(366004)(346002)(39860400002)(107886003)(86362001)(66946007)(66476007)(66556008)(4326008)(8936002)(38100700002)(450100002)(76116006)(9686003)(2906002)(316002)(64756008)(110136005)(122000001)(66446008)(53546011)(52536014)(478600001)(26005)(71200400001)(8676002)(83380400001)(7696005)(33656002)(5660300002)(966005)(55016002)(6506007)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?esXWPIlR8gaEez6H0NrThoKGjQtpOO18hD7pSHItemMgKJpGpJSsLJdox0Pm?=
 =?us-ascii?Q?05Ud+5w57fyF1g2Pz0UuALA5wWbMeBGuOpbHY+9AaMSrK95BbYsqJkpWQyI/?=
 =?us-ascii?Q?VeG3G7m/5EZuvCc93z835kj9j5GzwnZdmUgQzTCDrnIoNi8aDroWlgPe8I9o?=
 =?us-ascii?Q?7t7XujE/8cI2CtJWARAX38oNRPOqW9M5/P9Dy/VCXcT7HQFZRNJsppyQi26c?=
 =?us-ascii?Q?Sa/XPz/SBzQAoYvKy216wuGmEti2AWsvhiEBZ4XqQEG2S19afMtkV5lyvxdt?=
 =?us-ascii?Q?tyJb49hxOhZczAG4x8K3DXq57qwhnwt8HQ5sVnE/qA9FCtlQHLYWupXgdTFC?=
 =?us-ascii?Q?trXlcNdfsskJumI9jVFmsCjIzjJdHXaLP8XDNT/upw0Ygide6hy2t+NCTmrw?=
 =?us-ascii?Q?S+j4H/Z3j76eq5EPjYYb4USeyT3fTh7atD+l4IAWQpzD4n6BRcKEPmvL1iC0?=
 =?us-ascii?Q?qHxW2vGXcGtJA5vXIzOlLto6ENsMwOaewkNsP1q8v8dQ62RifI0Yr8l4Pipq?=
 =?us-ascii?Q?QRLo9J0KrMPmpH1GapjQvjbwf5fRkljewEwNkNb6xpQFOBH7Nf0tZ4Csir+Q?=
 =?us-ascii?Q?rsRImmU7Jd2YwgA6AWPAaZmFxqkIgUZvDkRYjZ+uk5Wdb053nNU+p57Gy2QT?=
 =?us-ascii?Q?SvMcNaVoCN9ot72SUEKLmMTuKADGGA72AA5tszFkC4rTekx9ZmIGIHyk7IJ+?=
 =?us-ascii?Q?Nq4BufQRwvtBtKMaoTXMSKr9uunezmI/X3LJDPV8zv/jy1OgkMy5r1tUJK82?=
 =?us-ascii?Q?7jj86IgmuuhRj37wZ+b5bavLF9u+f4T2lUHnc8qepcTNCZ6SUVohgQs0cXdI?=
 =?us-ascii?Q?JZgub2hV9LVWWyRDMFJnlxcOK64uX0Uz1rS8Vr70fIFj9PWywCQizEpTWfec?=
 =?us-ascii?Q?+xZW8BcXk+H4xJU/em5tMuANpVdnErtkcy4VwXYXgjI24szkfvY+wURVD/Px?=
 =?us-ascii?Q?oYNPjvaZyB4Ta6HrrEj1OPo6/bZFYzVNJ4mMezVlFWHZOzgjM8tUtP5rYrOk?=
 =?us-ascii?Q?8LSJJg85+GNk6iObRZ/Hhp7Bu86zIUau78RBN3W407dZ3wo/rO6wsNRLZPX+?=
 =?us-ascii?Q?LopBdKpMwG2YNfea1w6NXohtAwyzS8KF4FDYW9vqwmY949VXY/TpdnCHi3Yj?=
 =?us-ascii?Q?xdY0Ob64MkcAmM1M8wou4EBnJHGFS0iCpu+aCksBWtensMMX8PzuBMbpA4T8?=
 =?us-ascii?Q?75iI8+vtn6ZLM/J8BFuKlWsaLoBOTgpNk242BjXv9Z/sj0zjGJt43e48A2rS?=
 =?us-ascii?Q?34YAhlCdFUF9MjFlbufsnPNIONkxt2sKX0lbHBmDDcq2G1gh5U6GuBTwm19E?=
 =?us-ascii?Q?SXFnEQ1PdZ1yneoCE7KJIPyG?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af4498e6-bc53-4c19-2cd2-08d92fd71e45
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2021 08:25:22.1170 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gml2Bo32+YjBa/ArotJyKYMw4IaLzW6F3DZJ0aopZ0vUbbYvi7ov9JUlPcdyhwfLZBrn64uwhTNTJtEEiwV3XkwNu7OPlbaHkjfFVNOIJWk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2822
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_plane_alpha_blend:
 Don't set primary fb color in coverage-vs-premult-vs-constant
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Bhanu,

Sorry for the trouble. Kindly can you check if rev 3 is okay? Thanks a lot.

Regards
Vidya

-----Original Message-----
From: Srinivas, Vidya 
Sent: Friday, June 11, 2021 6:28 PM
To: Modem, Bhanuprakash <Bhanuprakash.Modem@intel.com>; intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
Subject: RE: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_plane_alpha_blend: Don't set primary fb color in coverage-vs-premult-vs-constant

Hello Bhanu,

I have uploaded version 3 where I have not removed primary plane.
Instead I have added a commit of the primary plane and I have changed alpha.
This passes on Gen11 systems.

Kindly check https://patchwork.freedesktop.org/patch/438831/?series=90828&rev=3 and suggest.

Thank you so much.

Regards
Vidya

-----Original Message-----
From: Srinivas, Vidya
Sent: Friday, June 11, 2021 1:00 PM
To: Modem, Bhanuprakash <Bhanuprakash.Modem@intel.com>; intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
Subject: RE: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_plane_alpha_blend: Don't set primary fb color in coverage-vs-premult-vs-constant

Thank you Bhanu. This test is failing on all planes > 0. Only plane 0 passes.
If I skip plane 1, it fails on 2 and so on.
Changing the way CRC is being collected also is not helping. Adding vblank is also not helping.

Regards
Vidya

-----Original Message-----
From: Modem, Bhanuprakash <bhanuprakash.modem@intel.com>
Sent: Friday, June 11, 2021 9:11 AM
To: Srinivas, Vidya <vidya.srinivas@intel.com>; intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
Subject: RE: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_plane_alpha_blend: Don't set primary fb color in coverage-vs-premult-vs-constant

> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of 
> Vidya Srinivas
> Sent: Tuesday, June 1, 2021 7:38 PM
> To: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_plane_alpha_blend: 
> Don't set primary fb color in coverage-vs-premult-vs-constant
> 
> Patch removes setting primary fb color in 
> coverage-vs-premult-vs-constant as this is causing CRC mismatch on few Gen11 systems.

I am not sure how Primary plane's bg color causing CRC mismatch.
Also, as this test runs on all planes (those are having the props "alpha" and "pixel blend mode"), is this test failing on a particular plane?

- Bhanu

> Similar change has already been done in tests constant_alpha_min and 
> basic_alpha where the test runs on all planes but dont set the primary 
> fb color.
> 
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  tests/kms_plane_alpha_blend.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/tests/kms_plane_alpha_blend.c 
> b/tests/kms_plane_alpha_blend.c index a37cb27c7d62..224d79bd1749
> 100644
> --- a/tests/kms_plane_alpha_blend.c
> +++ b/tests/kms_plane_alpha_blend.c
> @@ -447,10 +447,6 @@ static void coverage_premult_constant(data_t 
> *data, enum pipe pipe, igt_plane_t
>  	igt_display_t *display = &data->display;
>  	igt_crc_t ref_crc = {}, crc = {};
> 
> -	/* Set a background color on the primary fb for testing */
> -	if (plane->type != DRM_PLANE_TYPE_PRIMARY)
> -		igt_plane_set_fb(igt_pipe_get_plane_type(&display->pipes[pipe],
> DRM_PLANE_TYPE_PRIMARY), &data->gray_fb);
> -
>  	igt_plane_set_prop_enum(plane, IGT_PLANE_PIXEL_BLEND_MODE, "Coverage");
>  	igt_plane_set_fb(plane, &data->argb_fb_cov_7e);
>  	igt_display_commit2(display, COMMIT_ATOMIC);
> --
> 2.7.4
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
