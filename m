Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB203A3A6D
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 05:40:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D67D26EE2B;
	Fri, 11 Jun 2021 03:40:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C078A6EE2A;
 Fri, 11 Jun 2021 03:40:50 +0000 (UTC)
IronPort-SDR: /kiWBqYkm85+6kjsDtJGOmLyHVjI0DIqV0pdkndQcgsZ71bTVVjbO6X8gcN5N2QjLVXWVoCscl
 GB5CbAQtB52w==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="205414883"
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="205414883"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 20:40:46 -0700
IronPort-SDR: 5MOx4N/HTbaD2mx3wsont3tYA5Y/RJ8FGCHjZ3InQBywYxD8Pq9cDrOCIXz5NVQH6+y8Giruzj
 Q/munZ69OLzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="483111499"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 10 Jun 2021 20:40:46 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 10 Jun 2021 20:40:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 10 Jun 2021 20:40:46 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 10 Jun 2021 20:40:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fGTnyq+m5lqVTdJqNJWPA/6vuctz037xyUhGfFa0X2vSKlVxYg9yBbcQda+Oa/QUZtYQYhZn848rmtH8NWOn9FgM2mqHUzD8JM8Xp3FNDiTcYL6Yk708Tw04nB9332/22gSTtuK66u+f8m/ApfqHdLDt+imvWf7+/XlvDwM44rHUZ6VjWdVyAzd03LLM2GkTzp1O1l+GImfn5HTny5Kb9XeCy81qpw7dpdSscuMLlNlhC1YSO68daaw05QgQfK6EN0pcG0YPk6zzAbWd0tUp6ssdjUS2mO69FWTcLgcfnoEhIPCEhs0+UH50yrCT5LNHkYjRHEyAmNgsgRCQ7012rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g59xc2+xM7WHhJIb1GnKl/6mTpoGA4Z2pMKcpvrfQ5M=;
 b=X7miLi8aKWMlls2vxvelo0Ehr0u/38yqTakUE4md7tHnu1EY+m4tYKAYknCjJV7p549yDmCtbXZEeoaGJU+Zro5ako7utWuy9nj0YNUoNDVCmeXiKPQWrEe5vNpSWQeUza4oWuQcxqYdcfZn4UoPsb92YlWqzVu9iKc4r+3f+9ho8++SKBM5yyPeD43Ws4uYXNYkw4qOjtuS+yJHEjwwMdacjfSLKhxG2vzgz+DHDCo2tRLt/KWJ6r/3tBfpyD1uTgse4NMOdLVYJ22o1cceqDiNB1Hrs2bIljrb0eZ+EU5G2o0vVf47m7F1L6znfHu1IDTAb5WVsUjStWkw2gkj6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g59xc2+xM7WHhJIb1GnKl/6mTpoGA4Z2pMKcpvrfQ5M=;
 b=kBuRmuooD8ByMZESVHEGt7bX2AAAVIcvLtGIqqL/h+dFBN1VwpVK1wXcwsTG0oBGc3/OdnU7p5jkBI3Ap3bWfQlHnJ+9c0UEvzzJuSv36KE/Sox050psVwyUIuMUgDD1MDcHAFtHHnkAUxH5nJ5W5ArqRG3BmLgBwyxzvxDBtmc=
Received: from CO6PR11MB5569.namprd11.prod.outlook.com (2603:10b6:303:139::20)
 by CO6PR11MB5668.namprd11.prod.outlook.com (2603:10b6:5:355::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.20; Fri, 11 Jun
 2021 03:40:39 +0000
Received: from CO6PR11MB5569.namprd11.prod.outlook.com
 ([fe80::a9f4:c2a8:d350:b315]) by CO6PR11MB5569.namprd11.prod.outlook.com
 ([fe80::a9f4:c2a8:d350:b315%8]) with mapi id 15.20.4219.024; Fri, 11 Jun 2021
 03:40:39 +0000
From: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>
To: "Srinivas, Vidya" <vidya.srinivas@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_plane_alpha_blend:
 Don't set primary fb color in coverage-vs-premult-vs-constant
Thread-Index: AQHXVvDaMg1byw9lyUGShnK/XIw9tKsONQ2Q
Date: Fri, 11 Jun 2021 03:40:38 +0000
Message-ID: <CO6PR11MB556976C4EC81D88FC86D1C768D349@CO6PR11MB5569.namprd11.prod.outlook.com>
References: <1622547939-8157-1-git-send-email-vidya.srinivas@intel.com>
 <1622556485-9375-1-git-send-email-vidya.srinivas@intel.com>
In-Reply-To: <1622556485-9375-1-git-send-email-vidya.srinivas@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [157.48.194.115]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 843d90c5-59ea-44f6-c3f0-08d92c8aae50
x-ms-traffictypediagnostic: CO6PR11MB5668:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB5668261F936A80FF2C6CB0168D349@CO6PR11MB5668.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NqSo4waZq+gc/mm5csEppx437PtgJJjW3aYwjHSNQ60xa4OtTITkzvgWJDfiTROwBdPq8COcMu9FNcHAwy2by5RobN4qYDrTgXMR4wdxx6EDnxU9b9BlSUrOAYFO4Z8k6YigyyOrCpOWdDrm0OCmcvrQO1IOummLYTkrNNtpYdjWnvjeBIT4vNVWRNXy6yzLDe6o3IrCxiMU8RJuK92i4nhXMI7Y84/c0JjUV3iiyO02w8oVzxOmVcxQm6jp0Kc13zQTDaPDMpebo2YthoZYvHoJfOmXpOQY6DsDv58rqzVSVETEswZ0Cy6H5AbZP13hLRA8v0I+PWe4gP2BZXX33nNueqIYwi2evrV1gNcGIYrYFakYYIehSiFSxBhsbvC4L6iL/yyzfgDpsnrh7APnr4DetfHtd123WubsXKHIld1jzUAb4kYcBB5aXN2kBls/92DL69HaOKstDXd3aemGBoVqeBjRmGLBcnoq8Bdzj53NZM+EVFf63gdQQnsEqRQHeteY1gfqPioIlz9+IMBf4EZqi3pzmV2WIJ1wfYR3GMqZonsS7Afh42DxPKLXtWzx1MHnzIo7XQocb7sVO4fq4nW1/PE7/yhBORcwm0PZzLyOzJ+5Nk6AgdUBWt+esyBWkR1h+P8h2b30FKegiDVP6w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5569.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(346002)(396003)(39860400002)(136003)(66556008)(64756008)(76116006)(66946007)(66476007)(966005)(9686003)(66446008)(86362001)(122000001)(33656002)(53546011)(7696005)(71200400001)(52536014)(2906002)(5660300002)(55016002)(26005)(8676002)(450100002)(83380400001)(8936002)(478600001)(38100700002)(6506007)(186003)(110136005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9ER83ROBuqylA4h8ypwCA6nR+l5h1SQwINhM/yf7s1DA2uxfoMVYkRm14bkz?=
 =?us-ascii?Q?eKmy6A2csRuo3Ja/fGxx/z322/+OA6hh2SzuITnoUolIv9qp5q63OqptdUgH?=
 =?us-ascii?Q?OkXDaFrbHjIrZfaD39gxypiCPJMzDfNnLkk8rRXFypLjzxUj/+vRqZLjLxWe?=
 =?us-ascii?Q?K9x4STfDGgynUDVJqYnvpAyVhVTIJqHE7dEKzV+Kn7LJmUPOXNVYoohZBTFK?=
 =?us-ascii?Q?EeH/YrpFB8ShIWGYUFlGSoeRtTWftG5GE4RC9dl75wriHcwccuSApBoaoK0h?=
 =?us-ascii?Q?99XXvz/vMokRgxdhOzzeRM3o6VlOuhTktoIKQjgI06VgGbopcOIwzahYZqA9?=
 =?us-ascii?Q?/9xWVbJ8V/6W7OXIlZcGE0SV1c6il10lLzCZf9lskCBMBXHIH/B8QGrr16Hp?=
 =?us-ascii?Q?QJf09a/9QscJEdahr2XqErJOA3Mg3+Osnyh0qhC+loeeFebovC97WqgaNN7q?=
 =?us-ascii?Q?HYDXPUmJWUI5bRJSOBLVuQtHHsaVDlbfn0VjhU5Xm2/dLRs46JK+fjKB7lCX?=
 =?us-ascii?Q?MmffBn+2CXzVtzZT2tx+Q3/q4v2aFLBKixwx6HwPrnjko/U9VXJ/m4thQXgL?=
 =?us-ascii?Q?oOKL6GL0CCRDVVvEncaQnWN9fngWkC+Gbufyw4Pc7L7jJbKuMGMsgUedAZL1?=
 =?us-ascii?Q?zDzJFVT1MXxv4d+HYTxtmcbtQk7Wu5w/uH7fyA46ljlQZBvreq0z4Lx0x2JE?=
 =?us-ascii?Q?Fp6mgCpxal5SbCT0kjs/dxS06m2Oz/ciIvXRnx8DBtj9g0y41zIdcnf0c9Gn?=
 =?us-ascii?Q?84/3twc+1bWSvbaPOQEZ0beBRj9JSWfPeHOMJyYWD/JiQm6l/GOV+vSejtfB?=
 =?us-ascii?Q?c9S/1vkqYqFTgfb40LaCMSD4Kqc12RMoamBtIuLTr/0LhtLUiHQ8auK4I1k8?=
 =?us-ascii?Q?6ApjtsBof/0Es77ZwoVpReOo/p1QshkKqoNw5HRavjJzLZzyJQ3l6oZagmEM?=
 =?us-ascii?Q?z2I4YpmQ9W6C31DHymvGfrL69+oyUIvb8/xt2kSEazz2XXYB94d1SMLX/l4y?=
 =?us-ascii?Q?aBWDo9hXio9M932fALou8FGiYzW1l6anvGh0OuCB8gRNoTzyvVdNpYsZ9BEG?=
 =?us-ascii?Q?VbO+B9PM4ey8C7Xeib7BvrvEjThYKZe7QULIkEac9Mo4tMNXJnbKmu/IF7Ed?=
 =?us-ascii?Q?axf7DiWFnq2YEboKphyUNtTUafrV98HHhLM8npQKJ/8mZkJ0H0yxBL20az6Q?=
 =?us-ascii?Q?Qhf7Wa1TER13dXklk4kBiF8DL+ISTDQV2KorGYKax+V+l3zCgOaka3SgwVc0?=
 =?us-ascii?Q?oSY+4zGu/DB2xGdlRCch4EdOISAxcXhkQUp6bYt2K63LNMNlcYZw46EZVc1q?=
 =?us-ascii?Q?7r5ibG+WpZxpdpBJkKRQrSTs?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5569.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 843d90c5-59ea-44f6-c3f0-08d92c8aae50
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2021 03:40:38.7440 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1SAVOZUHiajAqSru58gE+u5/dmp61g6l8iXFbGa4ZfrLgI4clhIufxeHJLPN08gu/SyTfcSf3s/yjHYZXdD+F78B9Pp5lOmwfYC4xZJ4L6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5668
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

> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Vidya
> Srinivas
> Sent: Tuesday, June 1, 2021 7:38 PM
> To: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_plane_alpha_blend: Don't
> set primary fb color in coverage-vs-premult-vs-constant
> 
> Patch removes setting primary fb color in coverage-vs-premult-vs-constant
> as this is causing CRC mismatch on few Gen11 systems.

I am not sure how Primary plane's bg color causing CRC mismatch.
Also, as this test runs on all planes (those are having the props "alpha" and
"pixel blend mode"), is this test failing on a particular plane?

- Bhanu

> Similar change has already been done in tests constant_alpha_min and
> basic_alpha
> where the test runs on all planes but dont set the primary fb color.
> 
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  tests/kms_plane_alpha_blend.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/tests/kms_plane_alpha_blend.c b/tests/kms_plane_alpha_blend.c
> index a37cb27c7d62..224d79bd1749 100644
> --- a/tests/kms_plane_alpha_blend.c
> +++ b/tests/kms_plane_alpha_blend.c
> @@ -447,10 +447,6 @@ static void coverage_premult_constant(data_t *data, enum
> pipe pipe, igt_plane_t
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
