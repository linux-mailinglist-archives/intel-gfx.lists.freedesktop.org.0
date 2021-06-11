Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3273A3D23
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 09:30:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AA6E6E12E;
	Fri, 11 Jun 2021 07:30:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB2826E12E;
 Fri, 11 Jun 2021 07:30:33 +0000 (UTC)
IronPort-SDR: dz1yr+JOhZw+fke9V8LL+j+ZyuJe3ieqaA0+ppATS9IWZ8EolcxguEJ5YtqzgYPKoLRPgebrFH
 YU6aA9IpUZrw==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="205296180"
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="205296180"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 00:30:31 -0700
IronPort-SDR: nIk82HVB3N4DJQ7V7B2IzClQpOCfsVfLoMz8bcMTAXk0MoWnvr5RXM08bYh9MdBEGecB/VJqC7
 5kQ56kHCtESQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="449022551"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga008.jf.intel.com with ESMTP; 11 Jun 2021 00:30:31 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 11 Jun 2021 00:30:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 11 Jun 2021 00:30:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 11 Jun 2021 00:30:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X6Z8IpO1Vwsufzo5eU9buxQgB2RfHqMqvYiEs9yUOIBcUQZrLjz6e5/vBhe7rEM9sLLAgHpTgi/F1g6pcyzqIB0LkwhJgBV7FfLeQCgekTc/mSPPTup2Lrs4rwxeomgNdNjGZQZv1/vvywOsjEWHXojJneIbLcXEsprcv4ZZZqmAstTUct8hBzIPGmPeZadzHn1r/eX5+UEDdnkOdU8X1PEbxSpgAq+l3ltKdxgUvoPtXeVETWb94RLqLQNFVcD80xXTmAJ4JC5KF8SEortBBCBSa6CLO5j9KczxttcddWFluNfERO2kZ3YGNYms5eLlpPbKHyUJkQav1wys1YjgZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GOXkUdfoNCtH9o3AorIU29Uxt6IoKdmL6tPahNGqNUM=;
 b=JYdbp26Fn7d6OhxiUxPAImbgVubpI8Ptj735cRHXn52vXvBvCGCLNfKsuqPovajiaTiuWLkO8k8S2qfX7Vv+f557jlLKxMxTc9LmDnfRbB6Eg6g4J0nqFfC+hUeRWnvkjartpM1/rBi1Ey1AB9MmnPniYlW9jWasA863XcVi23ksCzpYOyDC7RlQWPvMxlwjgSTsNR4a6VUz/A47oetCnSUiHvHRpl8NU1XHGB3lyHKKDawCSfjDGdfolwQb6Yoek4zKgvYVPnhZ7uyFEs+yEc+jr70E9QNQaQ592Vgbpo2kVA2yflJ6WPXKvyz1NG+GCR8iZxThUrgptn9mHFmtSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GOXkUdfoNCtH9o3AorIU29Uxt6IoKdmL6tPahNGqNUM=;
 b=H5gHPx3SknG6JTzHFNfHotLLcwQ+KJEdCYQ3bhSj575zWATj3v3Z28CObJt+ephM26B27uSLfWS2lVBxM+Jb7jXPvIPaWqffUrjwyND0Rc2caDP/NfhYfqJ+wMfqjyBjlIxxtiPTghaJ8EOh6YZj6NJVJH/eJUDOue8p224FUWU=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by BY5PR11MB4465.namprd11.prod.outlook.com (2603:10b6:a03:1c0::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.22; Fri, 11 Jun
 2021 07:30:29 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626%3]) with mapi id 15.20.4195.032; Fri, 11 Jun 2021
 07:30:29 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_plane_alpha_blend:
 Don't set primary fb color in coverage-vs-premult-vs-constant
Thread-Index: AQHXVvDWfvOp7XrUnUOZT77fKuGya6sOOTQAgAA/naA=
Date: Fri, 11 Jun 2021 07:30:29 +0000
Message-ID: <BY5PR11MB437213735019658A601D098D89349@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1622547939-8157-1-git-send-email-vidya.srinivas@intel.com>
 <1622556485-9375-1-git-send-email-vidya.srinivas@intel.com>
 <CO6PR11MB556976C4EC81D88FC86D1C768D349@CO6PR11MB5569.namprd11.prod.outlook.com>
In-Reply-To: <CO6PR11MB556976C4EC81D88FC86D1C768D349@CO6PR11MB5569.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [45.127.46.22]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0eb69869-7c24-45bd-abdf-08d92caac9f0
x-ms-traffictypediagnostic: BY5PR11MB4465:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4465305F5A80B726B0966A4289349@BY5PR11MB4465.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ngHDy9SVO+4PyiN4akbmDqcJJtdlVtLh/bL9YOfm4a55631niUZHAsPrw8D87xKWnQdx401fkCOtQFrR+ebo9jAwS32V4aHOpyl5kqxiojCaEKSflJTgGmNLXJQWwhAdZZkxO+31q0KJSwj3nNknbB5aYKRC9ccvAcktesWnk4OnoPO+iQS9Tngsm+i5/oE96bByxvGQ8FRF/LJ87dd70E5pV26SYZ+CM7OA3xmc/2Hk9tBEXHCWfGmfcnRLU/OzvFJOKt/u5XhBItB83GvmEZWG2VJwFr5DKE5TWEKxmelb/DGtzFLSJDe4Zc0mem1z8fI7BfeyFIXhQENkZP4Zx17e/s69ApTv984S0tWBx71C/7dOYttYzjIgbiF+ZED/9cInZIw3Mm8s2d/jK9bLwqXPxrXPrquAKY2DGntnkaSgIO6F4/CPz3lONiNC3/pyHZJdLqCeAOjzPNxUn+pmg11kehApqWBNgVzkfp8RrmOThMXlxYqw1GfLpts+bQjK7QccIGHFrlCN3BgXEvPfVKIUNyI91tJmijuNJvFFdWd1nkLjUpN4FP1wrBitEcqsRcKOKiC/IDvc0KHkFiAeqcRoF7dVh5vBoVQ8rpWiMW/RCjxeNTSqLAm94iFIsTfFjJoLaiUpRGvZGQL41LCbOw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(39860400002)(366004)(376002)(136003)(396003)(2906002)(186003)(86362001)(110136005)(6506007)(66476007)(53546011)(64756008)(66446008)(316002)(7696005)(66556008)(26005)(76116006)(8676002)(66946007)(478600001)(122000001)(450100002)(52536014)(71200400001)(8936002)(55016002)(83380400001)(33656002)(5660300002)(9686003)(38100700002)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OMDAc0IopIDJrguMlsSPR+oQ2eNsENsp97Y3fG//GmboTA+yWHXx54gK5f/J?=
 =?us-ascii?Q?uJOPCcytM6yWZVpoEi/uZB0O+Cvq4f61NTS2T8O3Fv3hsbz7hTTXD/f7+0rf?=
 =?us-ascii?Q?N7g50CUvJFzdFdQ8SeSodNZadGWdTdQcdFwC+200L86HctRNyURMbXKIu924?=
 =?us-ascii?Q?/gVqfQV1SxVHIJWNsir6q20lQwWWCYzBwWACnmV1yQAM1T4ryJT7cDbphVSZ?=
 =?us-ascii?Q?BnbTUiGGmSfTEb+AvsofczR2br2949q1bZd5h2pLub9GxZV4EJ4FpATsEuxj?=
 =?us-ascii?Q?RArwqMcmemou9qzgdd9jO1T+AcfSnNTTKHTjSXbhIBedBw+N88UJmglIMF3N?=
 =?us-ascii?Q?cFgBlkl2Vu437w9BvPKE7MI7y0Nz7W7C391Gn3elF/pL17GvmYy/0Jqncvud?=
 =?us-ascii?Q?wjWE9tOIjX2rrDFyWaGA6HMkO/pdx9E7i/McWpsOVKhHqVFWRx5QDvatMYIK?=
 =?us-ascii?Q?4XvjCaBWiiZ4zTo9EJoQiDw9aXhkT9fhhHJDr176s4hk7MLoXLepHO5xf+iY?=
 =?us-ascii?Q?x6nC9QZ1hNNwx0CejxlImY4SD629bGIEICyQvW6giaRl6VgpVbIIFMrNpetc?=
 =?us-ascii?Q?+O0Z5YcaCSVAM21bk8blhb/bHZMUQzUc71He5ZhU+e++l1/Wf+mho6rup3Ur?=
 =?us-ascii?Q?sb1tJUIv6sxDaZLPlVivh3Lb6Jkn1fDrBFA0YH+/Jr1VARLSmOJ3nElVYFu7?=
 =?us-ascii?Q?VVdoznhyOE5R+bU/vZga7dbOBA6nYNy4WQbBZuzvw8Oz0jBpXeHn9KqCxWBI?=
 =?us-ascii?Q?NmL34Wy3XitLOvnrhUDI5qdeRoSjB1wOTdLWnhx5P5deJE1COKzOEc0v3xR+?=
 =?us-ascii?Q?5zeSNEvGV+M+D1+m5X+/KsiFLRf1OSEj8sV51mbdT+uDTrJl866+BfUa+9ei?=
 =?us-ascii?Q?tGn5mNxl8PH8cYi0X8VtOJDVrEojUgekTNhJukP4shG70Ybcfi2nqD/uF/u6?=
 =?us-ascii?Q?v5hPlNgczDzjHCF2TFrZk9S8OuOYFB6Woo7CMSHjJPo9r3d8BY9L6hytaSmP?=
 =?us-ascii?Q?92a6c8t1KGRGQ3Z6CVPuGzdNKozOkJf/qlk8qkKtCBv0jwr+U5EAv/RgSx8q?=
 =?us-ascii?Q?g/w3SQqC6oYimgbbCCoPTNmpMfKES+vHFnkMop0q6XqMMOlxb3FSwZwpLlvo?=
 =?us-ascii?Q?gygqvvHdJJTze9S7ip9nbQ69sztn6ZnbP7MSPesA8jv6MdLhrKC5OOGG2Xt6?=
 =?us-ascii?Q?ZPYtsjpRMJhWjkEhvJVSfShng9SxnYVgZKNCN58SI7Ulyni3SjvoQI6cL3Qh?=
 =?us-ascii?Q?nBzGD+4RXhMj+QCaZ7+bnazojylUyBy9ZpoI7Z00d5C5Wzqu9w7UW0UwLrMg?=
 =?us-ascii?Q?+1xqUheoNVlYDNAB3xUHrod5?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0eb69869-7c24-45bd-abdf-08d92caac9f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2021 07:30:29.2441 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T4DOrxlfcK99AfRQSBce1UbrD359B8RoTxHZtwCJ/blIGTGiYYLo0LqxRHI/W7CLBLYuqkowXcvTWrZoPd8rpJTYsd3pZJZRZUdAOgHPFrI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4465
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
