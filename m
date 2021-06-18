Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A482D3AC3CB
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 08:24:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B8356E858;
	Fri, 18 Jun 2021 06:24:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C8486E858;
 Fri, 18 Jun 2021 06:24:38 +0000 (UTC)
IronPort-SDR: 0vrH0t5QZ/myuqa53XAxfVE4v8Sl2+fPIuillBNEiVg/0HXlN/pnAnrSwpCz4u1AVAYP/ZKyG7
 M0JeK2wmWbug==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="270352127"
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="270352127"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 23:24:37 -0700
IronPort-SDR: 0JxbI/9xg6fEPekwHEQpIGnM9bPnbdDN01Ge2fDK7VxCr6rvHBohfXWdl5VehhfNo0UyO2KE21
 BMjuKysD+DXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="555482197"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 17 Jun 2021 23:24:37 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 17 Jun 2021 23:24:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 17 Jun 2021 23:24:36 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 17 Jun 2021 23:24:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CHDtNUhSmurgBM6P9gGEUcxmPkGooBBVgwAKsfCU7+idMSHej6URrGTDxiCnGvVlhA1QiyZiGJHbhsOHQ7TbXya/F4+Cw5n6SMfUZagEG9tiNDCAqhlySow2MR25a4j5KtjEAX+Tc8mF3VmmqadUyz+S/vhQfPBzb7dZUwNJMEEAf2lqxZfE5bZdPs8YdCjlf8qBCuNz2/BqcazKKpM6PM2nCgwH4DaPXWjsFgx+Hxm7ieu0dLik+qG9T0KKdO1+mHBmz2Dfzq2g/+9YpfirtIlVhX/RWCkV56SCSceb0OdV7C2ejOeauE3gxzCYdv2lUZdx4HK8mFL7vPeQMw+ptA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iHn2YLoLV7vYIlns51+3Ci94rosd3jLByQ88q28vsvs=;
 b=KHI3V+PooqRARItcQvIIIWKt+Y+njvaj81l+yozqKeASBWp0DKK7/tWMjanFW2wlj5YDrjRdJvWd3b7hLIesLZPgdCzyz0//FcBRVGA6GYhW57gCsg2E4j8O83iaDvvBDzOMxuKsqFjr5t9hFYHLM9tBU6/4hxlNF8fbXuhmpCXc6PJ+Hwg0YFCNn6wWGCJeE/Yu4NI6Zgaq47XGhQwPCyL8Z2/usMBQGt/Zyb6eJCRDP6QTF/j+RtEwK4iaTmokNKvhunSyoqOw5PfE4dGNnZQ69YdMm0KL1QB2RALsNjQe9JP6tJdQc1hzmdDZO88z0qorPawmMkYmeeSJZPp+zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iHn2YLoLV7vYIlns51+3Ci94rosd3jLByQ88q28vsvs=;
 b=Nsye9vT1hyMFDVMtxHwSYzNMGBYac0KWN/5xsS9YgmXjyM6vepGxpdi/jdh4fX0o5ozrHaIotsgGWc8ckRfes1M+PozpPKS97/n0vrVs/oV/hDnlgxhZ6MChybYVzWyWcPfLXfkbGXS9P2OSm4EPy6x5Mg8H5H4ptC+sHbz+FrI=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by BY5PR11MB4037.namprd11.prod.outlook.com (2603:10b6:a03:188::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.19; Fri, 18 Jun
 2021 06:24:32 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::8109:b283:489b:b094]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::8109:b283:489b:b094%7]) with mapi id 15.20.4219.026; Fri, 18 Jun 2021
 06:24:32 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_plane_alpha_blend:
 Don't set primary fb color in coverage-vs-premult-vs-constant
Thread-Index: AQHXVvDWfvOp7XrUnUOZT77fKuGya6sOOTQAgAA/naCAAFshcIAF/ewAgASU9/A=
Date: Fri, 18 Jun 2021 06:24:32 +0000
Message-ID: <BY5PR11MB4372A68B06BFFF1D3C11B294890D9@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1622547939-8157-1-git-send-email-vidya.srinivas@intel.com>
 <1622556485-9375-1-git-send-email-vidya.srinivas@intel.com>
 <CO6PR11MB556976C4EC81D88FC86D1C768D349@CO6PR11MB5569.namprd11.prod.outlook.com>
 <BY5PR11MB437213735019658A601D098D89349@BY5PR11MB4372.namprd11.prod.outlook.com>
 <BY5PR11MB4372B0A65DA52560451EAA5289349@BY5PR11MB4372.namprd11.prod.outlook.com>
 <BY5PR11MB437250EA6AD698B6D28D9D1089309@BY5PR11MB4372.namprd11.prod.outlook.com>
In-Reply-To: <BY5PR11MB437250EA6AD698B6D28D9D1089309@BY5PR11MB4372.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-originating-ip: [45.127.46.168]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8d171c4b-b425-4276-a520-08d93221bc61
x-ms-traffictypediagnostic: BY5PR11MB4037:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB40378921CC5D36DD44BE4784890D9@BY5PR11MB4037.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7Jdpe0vWll9+ziQCXrW3aaNa0s2kSCFtuMU+wUw/m0u6Tr3FUT7jioVwVep/BttvWSRbxbN3FXE538gQZZ7REW+Zo7B9Iki0lWoL6OrorXZKdCAgNzv3c4iUBEiwTnuTq+SrfQZyp1pu6EuUo4vlf4CX7OTHpTRLW93ON4Sb+01P9lYwLzhcgrIabzSZYpr0QlKZ7W9pY3OeKVthRyqu1uu3dtA4nipjnLWTnYKs44Bs12b16e16pBm0VfF9g0zn5hlTq2oN4KvdRzAdrItFgGuENvFmOY4nCg/f2hb/QX532zrIkRw25XWuWlDF6L0Uo/OBmSRbA8CCbwPlzyvgF0Ul4GrpFdCl1a1FEoxSXw9ACqOlCkPObsYEArSJmQq2Mc+2o3Cbln1T40jFH3QWHbBfygSVp36zTd2f20Iz7iKg00U3B5jMwIqm0ibduKxUz02jTc0+dFnH3T+xPSZ+WX9Gk8OhWJze2BZA7uw3pU3Bfi9AqEjmGP0HAKjXJeDZha2LvFHPEr6UcDGnQ8s4irv0hW5qKtcyEUUFyxryGwJpIEG6ldYzmIHwD3uMv8+11UN82wZChyBztYZsZNSnP3HOMYR7xqnLhE1ovBSnrRXhktz6PIYcRXnVyKFkObl3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(136003)(396003)(366004)(39860400002)(8676002)(66556008)(966005)(66476007)(107886003)(38100700002)(71200400001)(83380400001)(26005)(122000001)(55016002)(53546011)(64756008)(6506007)(33656002)(7696005)(52536014)(54906003)(66446008)(76116006)(316002)(478600001)(8936002)(2906002)(9686003)(86362001)(4326008)(186003)(66946007)(110136005)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MBw5xmI/oAqa+FAcO8SvWDS7Qx6eleeng35sBP4ZXc2RI9VxJmTBYmy06CJl?=
 =?us-ascii?Q?3nKOUMhGQBYcMAeEpNs+JfckGXupHcQrha0NxwoJ9UjJstOY94HtbVi5veTK?=
 =?us-ascii?Q?flh6zRVZd630ZAJrYd5T6SUXNfggVS3bLiXOxyXla6vFba5mZ4YdRTBp84WB?=
 =?us-ascii?Q?8HNqe8GiSQoXgygr36FzvNBugEgg2xT8QEkletg59yXiOoAGdzcpowAr1LDh?=
 =?us-ascii?Q?ymHj8MjFL0tbJkqFp/TDTT3ypD8hUmoWDcWEAKX3malzHqNQEt5BkzgFMp/f?=
 =?us-ascii?Q?+Mqgy2VPUiFQnM7ktWTwK/IQYWu/crXqT8W3pBE5R7lHSOOmuHWd0gEmPkPi?=
 =?us-ascii?Q?3WtSo5jGUEIjoRJtn3jyVQ3mHEj3LsCbjUkdA33959xKLtnk4jaoXdC13iKi?=
 =?us-ascii?Q?8uPp9UaciXJCF3A5AgoCindGD2ttP9kj3trF+b+4SxFxqPSaqGrUeCAg4DVV?=
 =?us-ascii?Q?b6ROCKUtxpIhLsLs6TMEb0buhIWSpQ0e6r/cFRRF9M7ibjcAUccIF8Ha6uWh?=
 =?us-ascii?Q?CBg81eYpgn8OXH6D6LDuLQMkcy4r0y1x00xBiITnaYNbOpZAA3GPwgv1x9tz?=
 =?us-ascii?Q?/K+vUNeUvRaDwKNNgfdbRRS5dbdmk7I2BWxoj7bJICvXK04RxbLPjYz/vr0r?=
 =?us-ascii?Q?74Qu0ly6XmvWfh3WBiYAaonotmiznUrSubSs7bWBef3wetSbwHKWNCiRULv3?=
 =?us-ascii?Q?x2EfzD/2pfYoZJ50d67MnpoKYF4QIARoV1pAQF1eyjVdLG/KjtPcEOXMVK/S?=
 =?us-ascii?Q?KIpFXLIfbIT7j8R1Mvq1SqzC5dXmsSXNVibPOJQMbF8Np7Gh13tVtobRtI0N?=
 =?us-ascii?Q?a8CBEON38jnKnmEQgq6H8qAvxoO1yMspeWBZ1mp4ZpVa05dS6MavXnxupSZr?=
 =?us-ascii?Q?QVyGfxKxMlG60inhj0RyQqQCoRsfIibvLBlIvoJ7Jd2WT1TXzC43FmsiE56z?=
 =?us-ascii?Q?KWIAWJdtIArWtiSbtSzyZYqvlik+5jaeXjnjazLY/dLJagX4Vc4xVg9EHWOZ?=
 =?us-ascii?Q?pAaWr8O//ztgINy3qsBujWIPguheQW6j7FUiYn1qmzRX64s0KTGr62Bqg0QJ?=
 =?us-ascii?Q?6hJrU+pXSKvCdauHpW0KtMKusK5juozruz3HuUVQBnQlzDvMU4mtrSPQStgT?=
 =?us-ascii?Q?QZAW+Wmkisz9mBJBrxUuIrm3r0TSOMHP5SCV9V0Ax2F2o+HqxG3exkflcA5O?=
 =?us-ascii?Q?FnIfX9P9W7rpJZlSkSmhWSZ+DNhpZ02rA6wOxoHUW9+KUXFk5IMIGCgyH+hS?=
 =?us-ascii?Q?myoGAJhAGVmIU/yGo9GvaRlOV3pgVpAeIqjJghN9uHMkicwX0gRz0cZhwBFx?=
 =?us-ascii?Q?CgROUnUFyX8MW4nWKnZvqo/z?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d171c4b-b425-4276-a520-08d93221bc61
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2021 06:24:32.4132 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vym9IUSN4V+1/JCTSpKZ2oH+exqoH2gBtVMS93Ex7NNW3T6r0sYpTP9XaZ6dkOVwx/zpwMPeebOX0dkfRa+9Ehpz0lBX/Bg8D+7mF3O3oVA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4037
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

Hello,

Humble request for review of this please https://patchwork.freedesktop.org/series/90828/
Can anyone kindly help review this so we can request for merge?

Thank you so much.

Regards
Vidya

-----Original Message-----
From: Srinivas, Vidya 
Sent: Tuesday, June 15, 2021 1:55 PM
To: Modem, Bhanuprakash <Bhanuprakash.Modem@intel.com>; intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
Cc: Shankar, Uma <uma.shankar@intel.com>
Subject: RE: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_plane_alpha_blend: Don't set primary fb color in coverage-vs-premult-vs-constant

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
