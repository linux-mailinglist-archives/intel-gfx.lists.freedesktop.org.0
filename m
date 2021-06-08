Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2945939EFE0
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 09:46:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 672B76EB12;
	Tue,  8 Jun 2021 07:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30DA56EB0E;
 Tue,  8 Jun 2021 07:46:23 +0000 (UTC)
IronPort-SDR: 0eKpLiHxWBrx00DGq1fTrRuitet/K0WCoHS52Az++YmgZorv21pnPEJ3peibI9CYYK5WrHgiwp
 Z3s4FL4GgpsQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204815621"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="204815621"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 00:46:22 -0700
IronPort-SDR: qLuEdjSO1z9k0ZKDee2G/SeAtxAU4miwkReVRSxsxFGarxyBuYn477BLBTkgyVKMRCTe8MKM+k
 O3IybiVS7n4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="481848893"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 08 Jun 2021 00:46:22 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 8 Jun 2021 00:46:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 8 Jun 2021 00:46:21 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 8 Jun 2021 00:46:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CTeb9PEyfuNCbU/2qvaKGgFkItViwwkQFVaaCFq5AjTOKvDmo9d2yKkey/bO5KZTTai8nv50zcwRIwQOmt189/eM3BPdGpYk9CxmbnNSdfWOdEuwSIrNiDSR3j0LKUQ0eKq5xd5ndygO9ZAXaRwr1eaky2FILXe1LgopeQYWjDuMkC1jPD87gTwJCXOG4Jhm0ohmHWSUujiXKCYEsEWZEfrcrD2My8MY7dIwHKIDBgWrln/SpHHIDfenyrswBFffsg+sc0S74sVTCYvuk8sgo9uu6EEX45onnL8T2J6GPcDncyQkbGCPFaikC2zBrUsYCDL+sp0C926WR9iVjIFlpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6+vNBrvqxoI4Vj6d+qJTubu7ciujSAA+xLeFdwG/7qU=;
 b=Y1nNzhb7fiD4DLxKyx+RyIH0/yuDU+mGS/cvCAdBVkSkEnfL2pkg+fpifzMOITzddUhtqBbY4EXCvunMQ/6eUEaAt23FjUxgoCBJMdykofATZnZ6VbcJiPUXqeW/udTeTWo5Xp3CfWqkt0TCEq8XOa0520uasMyNt662Q15vKI2jiGaQF/YWOF69nUC08nxLZ8w0X5Efx8B+bgARIYOul58ZmoaNM4/zTLqcu4Gv66FoDFqFA3o5TP7qIYQ3vVZ7qqicf1fap/j7H4IquLdm1batvmzlpsctjGOqhdz64rXjhN9Nmyc5drt8co4Jl8aCLbIaijuiSVqrQnAptoJ3ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6+vNBrvqxoI4Vj6d+qJTubu7ciujSAA+xLeFdwG/7qU=;
 b=V/TVaecUb/xVS7tzAccPB0XCXdefkMhBQ+Pe63nuBUQ1FM81jdmrpSPtaAYyNFKbYr9UJ/YANZ7HaPP35vdHuGFHjlDYm0cNRus2LszvMeokU99LWmN/8GwhhIBNZA4lbflgTmxBUSWAqWpVtSJE6DBgeWs2+PCeHwlYfADNoMI=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by BY5PR11MB4500.namprd11.prod.outlook.com (2603:10b6:a03:1c3::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.29; Tue, 8 Jun
 2021 07:46:18 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626%3]) with mapi id 15.20.4195.030; Tue, 8 Jun 2021
 07:46:18 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Thread-Topic: [PATCH i-g-t] tests/kms_color: Disable gamma in degamma tests
Thread-Index: AQHXW1EsNwF8Hx830kyldfcnRXFOgasJrWeAgAAQbXA=
Date: Tue, 8 Jun 2021 07:46:17 +0000
Message-ID: <BY5PR11MB4372EFEE2684DBD056EDF30E89379@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1622812262-16592-1-git-send-email-vidya.srinivas@intel.com>
 <1623037661-2087-1-git-send-email-vidya.srinivas@intel.com>
 <CO6PR11MB556903B29EDB88A1EC2EB3898D379@CO6PR11MB5569.namprd11.prod.outlook.com>
In-Reply-To: <CO6PR11MB556903B29EDB88A1EC2EB3898D379@CO6PR11MB5569.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [45.127.46.33]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a38533a3-b470-4903-05b6-08d92a51802f
x-ms-traffictypediagnostic: BY5PR11MB4500:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4500890D04326B7BACB17CA989379@BY5PR11MB4500.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YfDQswIGYv/hwEI0XpBOBXsEQ7YaCXUPZOoEuGtznQCko49rw7jy8SZwD/xL6bcW5iL2zwdUMCqQuCvM4SL0gVFIBHGQr7qMk47jVa4h6nfJmSnw68qd1YIzuz+FFjg5amjvMCxmz4xB3Scl+kahn+NbN8wXSiz2J0bqGsK0i/xHkzue6A5J7riEicT2j4+CBzHwSSBT8Rv/osGnBd/NEtztd2fi9yE3oN7zBmVlSWQH+BUy8hBdInQocgbNzh1uKifm0QmK8afDm0uztsFkOq+mTKLZm5gWE7rSUoIfqzM27oqszVGCFZgxOECf/GVMoEIIidR0Hc+yOKqg3XWG6s4HQolZ29FHkMSXQ9UIlujWRUmdrXzZz3gjCDCDSM8IIjmuencRraV9ptbP8D5AYlljw+GNzoobCiMK9V0e5oXmx3xtReuN7OavHwLp6II9A0uOGxcNeX3Z1SA3UF69rlF4i3vpk1tyNo5uPOdcyYKtNvCeh64N5ijAPkZGTsf7Q/lMNypRFl4KqNGP94jyGOpf5/NoV1uUPlOEAVTKasjW4hxY0e7XdRjy2pzFc9xtXvKw36YtX8+0iM33HNrl0hB7dABCUeDEK4KKW8XQzbaRkL/04Rl2vFF3yZQuXTgAtffxlp008wPs5jvHTNnwHQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(366004)(136003)(396003)(376002)(346002)(966005)(52536014)(64756008)(71200400001)(76116006)(33656002)(5660300002)(2906002)(83380400001)(478600001)(7696005)(107886003)(53546011)(8936002)(122000001)(38100700002)(110136005)(8676002)(54906003)(55016002)(26005)(86362001)(66476007)(66946007)(9686003)(4326008)(66446008)(66556008)(186003)(316002)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lpgrR3DqCHfUBoNHj3N5H1HXlvGadlAvjUS1stpVSv+TkYdtbz1FOi5gf+oK?=
 =?us-ascii?Q?jz+LY+P5PXAr+GbXvRyxtlziZmOG39zMVZ+9naDjCUEibPqey95z6VYhOP9i?=
 =?us-ascii?Q?YzCYZ2mlMBbarrdhQdDfdD0ybcPcs7WQe0QCOPZxc7sC+cbnROiwC/R+kr60?=
 =?us-ascii?Q?NzHRTAGl2wvu0nnxzqWE5Rc7pALlZ0E3kFqEpigHV/di4JgB8yyV48R5Cl8A?=
 =?us-ascii?Q?yIzaZyR2Fz5FpCvY655BVnapB89Mgxw4HJlKB04ZMghZOzQfKByVxC4MIFJu?=
 =?us-ascii?Q?2cVpmebaBKTDlVFo34i2pI7kgJ6joKJEDSjszJhhGwMZCTS8rbO60vr4bWSA?=
 =?us-ascii?Q?qLIogxzw+g5QGYd4Ri7Eu7C3EtQAV+GQI8Xoc1d9V1r4Vo5v9qkPf3yFk03T?=
 =?us-ascii?Q?as7uK9UV8rHHDnS/cK98+reb1mMmNlvYX7EU9ifrHtJsUgaavIQR47iIbKLA?=
 =?us-ascii?Q?WQdiDBGS+6iziA//7jo3MRg9NDDVGJmgdKmZe7D5LtxHHWvNJCd3SdAAR45c?=
 =?us-ascii?Q?eYsojVCwEm48k2KF39zzpuwglmvxDiLkYVjLQbeOVO/mK/XiVQxGKUFq5JFv?=
 =?us-ascii?Q?VC+wZ5Azh91axDBi1PvtxmfgvY1tbyc+YADvB9x0wujahMjGJoa1VjqpwcZR?=
 =?us-ascii?Q?lNMLmNcyVZXlgy5U0NLTeizITV6EVTnhyo9nuCMYRUghkpovk27JcwQVOf6B?=
 =?us-ascii?Q?4EL/1gXubgHtyztSNFALaCsOSEEOrXNXmDtfRCanfQaVboJHn9tY9n+olJNe?=
 =?us-ascii?Q?7Z9B2FxvAiRrzlEfpPKrofGOh2TIwdSn1EoYzoI0OMtx5rXHiUGoS30usmzg?=
 =?us-ascii?Q?uI1CDiTfn1ukun1PrVBut/F4GdkjCYvbBjegjwoW69N0Ia9ItvHoTLb7SIl5?=
 =?us-ascii?Q?3uKkN4tfOfOLUuB/bYvzqmCruq0pld05vu9KRrBj1c3ZUqdzA+lVGHjpmWd0?=
 =?us-ascii?Q?1C5EfOHv0lcHjSWD7mybFmYKs+J8Ax/kgsOuqE/zV7rrllerDRBdOj6dWGXc?=
 =?us-ascii?Q?TFZtLk7wFZEqV3Av9TNvbLrysoYMHlNdqUm1/lcglM60i71c5sZXYxo4Yyge?=
 =?us-ascii?Q?bD5pbKPdoWwrvL3PZ4VAP6VH9j5/HBluYJJY0pTwebS4K0txoh2s95yMDrd1?=
 =?us-ascii?Q?CMW/43YE2aEOXRad8RBYeacIxPVmKhE7+DJeIhqWtBrvw8mM7qHYXv0x/pSb?=
 =?us-ascii?Q?EXM4ATbF/IpnvAXkeDgdRPjVheFdo4elBRzM6cnfZuRlJ/n6isszR30oIJYL?=
 =?us-ascii?Q?nkAYnHAPZssDpTIxhGNklTujwDbS/d64d4cqcx8CF3nRt8ddw6zb5DoTPwIY?=
 =?us-ascii?Q?HhTq61cfousDQvczNplQk0TD?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a38533a3-b470-4903-05b6-08d92a51802f
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2021 07:46:17.5561 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /8QcDHxnpn1b7UvzOlph82ASiYqpH85rvNq3xy8iGri2s3ENu9vsJbyvK/IGplQndRlQS9NyZXxapHzc589ocrbHhcyq6s2aK7M2nqFjDk8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4500
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/kms_color: Disable gamma in
 degamma tests
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
Cc: "markyacoub@chromium.org" <markyacoub@chromium.org>, "Lin,
 Charlton" <charlton.lin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thank you very much Bhanu for the review.
I have fixed all the comments, added your RB and submitted series https://patchwork.freedesktop.org/series/91145/

Regards
Vidya

-----Original Message-----
From: Modem, Bhanuprakash <bhanuprakash.modem@intel.com> 
Sent: Tuesday, June 8, 2021 12:17 PM
To: Srinivas, Vidya <vidya.srinivas@intel.com>; intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
Cc: markyacoub@chromium.org; Almahallawy, Khaled <khaled.almahallawy@intel.com>; Lin, Charlton <charlton.lin@intel.com>; Latvala, Petri <petri.latvala@intel.com>; Shankar, Uma <uma.shankar@intel.com>
Subject: RE: [PATCH i-g-t] tests/kms_color: Disable gamma in degamma tests

> From: Srinivas, Vidya <vidya.srinivas@intel.com>
> Sent: Monday, June 7, 2021 9:18 AM
> To: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
> Cc: markyacoub@chromium.org; Almahallawy, Khaled 
> <khaled.almahallawy@intel.com>; Lin, Charlton 
> <charlton.lin@intel.com>; Latvala, Petri <petri.latvala@intel.com>; 
> Modem, Bhanuprakash <bhanuprakash.modem@intel.com>; Shankar, Uma 
> <uma.shankar@intel.com>; Srinivas, Vidya <vidya.srinivas@intel.com>
> Subject: [PATCH i-g-t] tests/kms_color: Disable gamma in degamma tests
> 
> This patch disables gamma in degamma subtest which is missing.
> It compares CRC between (linear degamma + solid colors) and (max 
> degamma + gradient colors). Patch also cleans up degamma before 
> exiting degamma test and cleans up gamma before exiting gamma test.
> 
> v2 - Addressed review comments from Bhanuprakash Modem Changed full 
> degamma for reference CRC to linear degamma Added clean up of degamma 
> end of degamma test.
> 
> v3 - Addressed review comments from Bhanuprakash Modem Ported changes 
> to kms_color_chamelium
> 
> Change-Id: Ibdb91b603e2e4024d170727d24c6a5425441e2e1
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  tests/kms_color.c           | 14 +++++++-------
>  tests/kms_color_chamelium.c | 12 ++++++------
>  2 files changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/tests/kms_color.c b/tests/kms_color.c index 
> 3a42532a5c27..1b021ac3ce0c 100644
> --- a/tests/kms_color.c
> +++ b/tests/kms_color.c
> @@ -32,7 +32,6 @@ static void test_pipe_degamma(data_t *data,
>  	igt_output_t *output;
>  	igt_display_t *display = &data->display;
>  	gamma_lut_t *degamma_linear, *degamma_full;
> -	gamma_lut_t *gamma_linear;
>  	color_t red_green_blue[] = {
>  		{ 1.0, 0.0, 0.0 },
>  		{ 0.0, 1.0, 0.0 },
> @@ -45,8 +44,6 @@ static void test_pipe_degamma(data_t *data,
>  	degamma_linear = generate_table(data->degamma_lut_size, 1.0);
>  	degamma_full = generate_table_max(data->degamma_lut_size);
> 
> -	gamma_linear = generate_table(data->gamma_lut_size, 1.0);
> -
>  	for_each_valid_output_on_pipe(&data->display, primary->pipe->pipe,
> output) {
>  		drmModeModeInfo *mode;
>  		struct igt_fb fb_modeset, fb;
> @@ -75,11 +72,11 @@ static void test_pipe_degamma(data_t *data,
> 
>  		igt_plane_set_fb(primary, &fb_modeset);
>  		disable_ctm(primary->pipe);
> -		disable_degamma(primary->pipe);
> -		set_gamma(data, primary->pipe, gamma_linear);
> +		disable_gamma(primary->pipe);
> +		set_degamma(data, primary->pipe, degamma_linear);
>  		igt_display_commit(&data->display);
> 
> -		/* Draw solid colors with no degamma transformation. */
> +		/* Draw solid colors with linear degamma transformation. */
>  		paint_rectangles(data, mode, red_green_blue, &fb);
>  		igt_plane_set_fb(primary, &fb);
>  		igt_display_commit(&data->display);
> @@ -103,15 +100,16 @@ static void test_pipe_degamma(data_t *data,
>  		 */
>  		igt_assert_crc_equal(&crc_fullgamma, &crc_fullcolors);
> 
> +		disable_degamma(primary->pipe);
>  		igt_plane_set_fb(primary, NULL);
>  		igt_output_set_pipe(output, PIPE_NONE);
> +		igt_display_commit(&data->display);
>  		igt_remove_fb(data->drm_fd, &fb);
>  		igt_remove_fb(data->drm_fd, &fb_modeset);
>  	}
> 
>  	free_lut(degamma_linear);
>  	free_lut(degamma_full);
> -	free_lut(gamma_linear);
>  }
> 
>  /*
> @@ -189,8 +187,10 @@ static void test_pipe_gamma(data_t *data,
>  		 */
>  		igt_assert_crc_equal(&crc_fullgamma, &crc_fullcolors);
> 
> +		disable_gamma(primary->pipe);
>  		igt_plane_set_fb(primary, NULL);
>  		igt_output_set_pipe(output, PIPE_NONE);
> +		igt_display_commit(&data->display);
>  		igt_remove_fb(data->drm_fd, &fb);
>  		igt_remove_fb(data->drm_fd, &fb_modeset);
>  	}
> diff --git a/tests/kms_color_chamelium.c b/tests/kms_color_chamelium.c 
> index 30b38b82e306..c21d64e9cc9a 100644
> --- a/tests/kms_color_chamelium.c
> +++ b/tests/kms_color_chamelium.c
> @@ -36,7 +36,6 @@ static void test_pipe_degamma(data_t *data,  {
>  	igt_output_t *output;
>  	gamma_lut_t *degamma_linear, *degamma_full;
> -	gamma_lut_t *gamma_linear;
>  	color_t red_green_blue[] = {
>  		{ 1.0, 0.0, 0.0 },
>  		{ 0.0, 1.0, 0.0 },
> @@ -57,8 +56,6 @@ static void test_pipe_degamma(data_t *data,
>  	degamma_linear = generate_table(data->degamma_lut_size, 1.0);
>  	degamma_full = generate_table_max(data->degamma_lut_size);
> 
> -	gamma_linear = generate_table(data->gamma_lut_size, 1.0);
> -
>  	for_each_valid_output_on_pipe(&data->display,
>  				      primary->pipe->pipe,
>  				      output) {
> @@ -110,10 +107,10 @@ static void test_pipe_degamma(data_t *data,
>  		igt_plane_set_fb(primary, &fb_modeset);
>  		disable_ctm(primary->pipe);
>  		disable_degamma(primary->pipe);

This can be disable_gamma(), right?

Also, please create separate patches for kms_color & kms_color_chamelium under the same series.

With above changes:
Reviewed-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>

- Bhanu

> -		set_gamma(data, primary->pipe, gamma_linear);
> +		set_degamma(data, primary->pipe, degamma_linear);
>  		igt_display_commit(&data->display);
> 
> -		/* Draw solid colors with no degamma transformation. */
> +		/* Draw solid colors with linear degamma transformation. */
>  		paint_rectangles(data, mode, red_green_blue, &fbref);
> 
>  		/* Draw a gradient with degamma LUT to remap all @@ -135,13 +132,14 
> @@ static void test_pipe_degamma(data_t *data,
>  					      frame_fullcolors, &fbref,
>  					      CHAMELIUM_CHECK_ANALOG);
> 
> +		disable_degamma(primary->pipe);
>  		igt_plane_set_fb(primary, NULL);
>  		igt_output_set_pipe(output, PIPE_NONE);
> +		igt_display_commit(&data->display);
>  	}
> 
>  	free_lut(degamma_linear);
>  	free_lut(degamma_full);
> -	free_lut(gamma_linear);
>  }
> 
>  /*
> @@ -247,8 +245,10 @@ static void test_pipe_gamma(data_t *data,
>  					      frame_fullcolors, &fbref,
>  					      CHAMELIUM_CHECK_ANALOG);
> 
> +		disable_gamma(primary->pipe);
>  		igt_plane_set_fb(primary, NULL);
>  		igt_output_set_pipe(output, PIPE_NONE);
> +		igt_display_commit(&data->display);
>  	}
> 
>  	free_lut(gamma_full);
> --
> 2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
