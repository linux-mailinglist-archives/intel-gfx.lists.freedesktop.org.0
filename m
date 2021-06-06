Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF8A39CE58
	for <lists+intel-gfx@lfdr.de>; Sun,  6 Jun 2021 11:09:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD72E6E3A0;
	Sun,  6 Jun 2021 09:09:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2E6F6E3A0;
 Sun,  6 Jun 2021 09:09:28 +0000 (UTC)
IronPort-SDR: xXI0g2GEyftjcukemcDwhR7RTpuFMeVoEidsvte2wZFZbdBXyD5qJLLbXunGUWohrcWoOLX8nI
 6cGZOfnezu+Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10006"; a="204467688"
X-IronPort-AV: E=Sophos;i="5.83,252,1616482800"; d="scan'208";a="204467688"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2021 02:09:27 -0700
IronPort-SDR: pA1GIcsALTscFKPvDouzkX+8gvPB2jp2i+73Dad6ZqHnZBYKKL55sj8GWUCoh4TGShCC0eW7jA
 BBpFbvGEEl/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,252,1616482800"; d="scan'208";a="401372766"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 06 Jun 2021 02:09:27 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Sun, 6 Jun 2021 02:09:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Sun, 6 Jun 2021 02:09:27 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Sun, 6 Jun 2021 02:09:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mFNtoODb88M0vBRnnLbwTxOfgHoiffsqjuifU7atlGE3vOCSWlDxZXGbGeHTTcKWk5Whee92j1ycCdUrpuvB1KAVfoeV9iNVFvNqams2+8Uexem0fSssUqmVpjS6V0fZoXRR1tLYeOplwLzmwh3pQIXXGEratN0u+z5kpvwV0SZ25ZuSrdxBtRCkTj0f31EGsCfWy8SgkiJnLYYB7KP26Ik6wXE8AcTlA9BRZsGBUU6hQhhy2HKLEZQpiuILHWIxcphD0WD/BMUvnV56MLSthna25Ki3Y9g0P5ks8zdPknhG1fBdnd1RWAhInffKoUeLdCRLwdQZ4d1RVFX2qjKoNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FnWCD8copqHeKgZOPkKP7ZJ03ZjCHzpqi6QKfnptOIs=;
 b=icyhiYJSCrg7c4LcQc/gzGyQG2Uc0hAt7i2QRkXF3fVgWHYrtTjms2H6iU0W0oojqJlswt3HNJGV4m27RZnQnZjDlOQ+c/G9i4gnNIFlLV349IBzamuv8Nkh1Cmm7FY+iaSwW2l99bilqLBQPTv2qnUxbOr1WXDbfkWAsc1xk/bRIdlkpExqau5k4QhE2GEVYA0nfu3hTZG7qkX5TEKtVnxIi6+mbap9E+9Y3mLa3+nvZv9z3eSTAbJV4OzDvSLU0eBI711neKQQY2tx4j57Wk+t2jbhbJIYakta2nGVoY0BT03KxTk5TVOrVoqEh9B1EOrLBgTVPzw72aSVrwfyzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FnWCD8copqHeKgZOPkKP7ZJ03ZjCHzpqi6QKfnptOIs=;
 b=uSCl+rk+8eqbgvoItrONq7zHZWY7bjqNweW69AE7/rxDk+yaDqERUfsxxmuNLUI7XT2fFBBTrLfmEoC5twdSrtk6Fclh28LCPZsc0MbgbHaLz/6Vayh/EiH9ODYC03Gb0o4vJH8PH59y99d4ukFGJyXZgMaoj/hUveemQ8xN0z4=
Received: from CO6PR11MB5569.namprd11.prod.outlook.com (2603:10b6:303:139::20)
 by CO6PR11MB5668.namprd11.prod.outlook.com (2603:10b6:5:355::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.24; Sun, 6 Jun
 2021 09:09:23 +0000
Received: from CO6PR11MB5569.namprd11.prod.outlook.com
 ([fe80::2d63:b94a:89c5:4514]) by CO6PR11MB5569.namprd11.prod.outlook.com
 ([fe80::2d63:b94a:89c5:4514%7]) with mapi id 15.20.4195.029; Sun, 6 Jun 2021
 09:09:23 +0000
From: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>
To: "Srinivas, Vidya" <vidya.srinivas@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Thread-Topic: [PATCH] tests/kms_color: Disable gamma in degamma tests
Thread-Index: AQHXWURf1Pj9sjBRBEim2DKlAMGVUqsGsbZA
Date: Sun, 6 Jun 2021 09:09:23 +0000
Message-ID: <CO6PR11MB5569C381A87795F5D6B369498D399@CO6PR11MB5569.namprd11.prod.outlook.com>
References: <1622176543-12759-1-git-send-email-vidya.srinivas@intel.com>
 <1622812262-16592-1-git-send-email-vidya.srinivas@intel.com>
In-Reply-To: <1622812262-16592-1-git-send-email-vidya.srinivas@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [2409:4070:201d:12a0:b9e1:6801:4e8b:1c6e]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 62262d7e-b72c-4bb1-84fa-08d928cac6d2
x-ms-traffictypediagnostic: CO6PR11MB5668:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB5668727B779418B96A0235A88D399@CO6PR11MB5668.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tPrCeP5R3ymzc1FYRvT6hBvrUsWCWoWuTS4hOk7fUOcvdrhE/pusl2pcO7G/l7JxHn0ObP+iVX6nxDvLTyx+ZUHznn5VWdj1DTjLZC47LKP6GdiYBGQby5gP+Cw8uJ8+7IrCbYfmD1F7XNyR6VhjgtbqWyFer51KRtmVMF+jEsUPOgfW7IKQuTH1clho/bDT11xa8hoTYbYCpWr38lewX3yStdzDwKP+2bhXm6f6z7aJXYZ8C1g88u2uOJJpbbOJnWDxSbN7QsrC/YpnCzhECKaH1c2hHVPi5HcI5QteCwEL+mFa61Ox+dpECpf+7n+nyNw4uNJ6cKBM8hNhD5PozC57ZddHUtE94oo29fvOpoPqANhU4bvTBnxibC55mAvNT4sO+WkWzg0OWUDh6wQCtG+SCLewNIPDpHmyEHEoehKMo/s1ZE46voucidnawvGIht1iEy1/APPZnxZRyI7Q9euLw0kEfFz/Q9gLnve28MMsdPKwC8ZY/OPaIna5ArdiGAPkdNgTcO0lgGfeVWNWV1mMRWuW2W8LFkFMwFmf8LAEcqSCh/x99Oii9TfBMkJyBPuIA8trBAPJ4cmB7d++RKzBNUn+HJkEtg4/Wdpu75o=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5569.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(396003)(376002)(136003)(39860400002)(186003)(122000001)(76116006)(66476007)(66446008)(66556008)(53546011)(7696005)(6506007)(64756008)(66946007)(478600001)(8676002)(55016002)(107886003)(33656002)(5660300002)(54906003)(52536014)(2906002)(110136005)(4326008)(316002)(38100700002)(71200400001)(83380400001)(8936002)(86362001)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?eYG1qB1TVZyniHn0R7UgWaAzil4C9AM1ymdVpLAHXm+xtKfIT24g/1eTLd/I?=
 =?us-ascii?Q?PmdEwAkcbDL+1lEZHhdicX5Y8xCS+VvNJPWJ4ahNZZcvVt+au5ErcDW2xmt5?=
 =?us-ascii?Q?+o9gjFk9fYYTGIpivC0egz2ToEcsaPfmPgGLnr8w8wJ7ARj9SXHux/C+wD/m?=
 =?us-ascii?Q?rKy10gRmuD2xF+11jY7TUNjbkquLfy7EiXYmrtezPc39LBqxSSbWZYHrDtoU?=
 =?us-ascii?Q?f+ihzmAM/Jf2AnHBaSswENUe2s5gr7jC3Le01PQ4LBeBz8g3AbeuHN3ucZvj?=
 =?us-ascii?Q?MyrVVGH5aMbqkyG/xm4iMJvtbG7POtZRnpUOg1xg6HCBl6ohMXXxC+vw1MSd?=
 =?us-ascii?Q?HWPkeF1IhRZlrDXIXxaLk+dpJtmU5iBOmX9pbN3BnAGQbKiy2QmCgxIZRCQH?=
 =?us-ascii?Q?TFCeiiIbhmLMn8J4ouRWBbFYSS0ijDkApnz7nz/h6/ck7V/9r1YTFx92OTe/?=
 =?us-ascii?Q?xPj/UO+TM0buah/Hi+Mn6hd/nXirMmPKUK/THhDXwegCGF6/qKTd56NpeO6t?=
 =?us-ascii?Q?2TsqN+Pzkr0v1SG1WYeWaPu1Xrbt69ERH63CKdTqh8Zpw7A4i77suOw5JKQW?=
 =?us-ascii?Q?o2XOarhmvP6r+hXQOOLY10y8f4iJGPNFV/IugvS0E+QJthVBj351Q5BoztxU?=
 =?us-ascii?Q?BNZEQrnFtW3fml1FrjqGrtMZL56lTwMrhUS6UWD5RgMcv7NeIT2JJjP1O50o?=
 =?us-ascii?Q?F0xpGgRseQL+cFMOdTj/xfrsxdtNijQ/IQ8o9rjmtCg+tho9yEqCTv07eRa5?=
 =?us-ascii?Q?Kpn6Ui05DhvM7TwDWze7uFBEOHqpeQxPw+Lu1mLH8PseXI8SAA9qfkWUPM55?=
 =?us-ascii?Q?DsM8fN9/kCtV8nTl0iP7MRJ841AWrvSjbg2CdxdfzH+I8buqj/QtYaJIsXpJ?=
 =?us-ascii?Q?YKwi7UVbHfc9HIuSRm4ZBV1zrBuKuwcWy66M+ImpfWNottFStPKlel2n7mon?=
 =?us-ascii?Q?ds+C97/lRgW+EWnIk/UwOxbLK/bjKFoIyJPJ0F8IjPi96Fs3cn4zUPJSd3p/?=
 =?us-ascii?Q?Z4uUXRrEBl7ZMGwW2qo46yqpaAX784r7cdZdR/iUlQaUfryVX+3OLdQgv/9z?=
 =?us-ascii?Q?LRsXSBL87cogWiIT7ZaOhAAnvnsh4NPt8ShCApS1N2gAHdpTKkDGL6xTnOvu?=
 =?us-ascii?Q?edDQs71+sNKO3kImUME9HAN87uGoLAn5kADkzOz6bFmwvqOgPbwWb/Apca2/?=
 =?us-ascii?Q?Lk8tsYGdO12AOoCatHiKsZYPu4QNP5Lkl9xzAr+dRCqn3kCe/6yvbFSUj/pc?=
 =?us-ascii?Q?nOWXKTuyvbq02tw+Wy183v/UZX0EmT+Yl76BAmJYPUhR1XgfRiu31Itcxe1Q?=
 =?us-ascii?Q?PSp+41V1blxpf9SBxIR6FwXXI+weEyLrYGvOVYII3g1XHzH4mZI1vfCJEMqw?=
 =?us-ascii?Q?LobFzfcAAP63UGzHm9t1yTuRnEMO?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5569.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62262d7e-b72c-4bb1-84fa-08d928cac6d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2021 09:09:23.1556 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bKfkiCvtA/D24SRztv9TS/dGuFdnZxgOU0goKcmElSn7nFioU+BuQj5+VGZ85gGwXsq6p2ezZEDSZ0Vk3SrbkkaovsBQPbwA0ToXRK1kBUc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5668
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] tests/kms_color: Disable gamma in degamma
 tests
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

> From: Srinivas, Vidya <vidya.srinivas@intel.com>
> Sent: Friday, June 4, 2021 6:41 PM
> To: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
> Cc: markyacoub@chromium.org; Almahallawy, Khaled
> <khaled.almahallawy@intel.com>; Lin, Charlton <charlton.lin@intel.com>;
> Latvala, Petri <petri.latvala@intel.com>; Modem, Bhanuprakash
> <bhanuprakash.modem@intel.com>; Shankar, Uma <uma.shankar@intel.com>;
> Srinivas, Vidya <vidya.srinivas@intel.com>
> Subject: [PATCH] tests/kms_color: Disable gamma in degamma tests
> 
> This patch disables gamma in degamma subtest which is missing.
> It compares CRC between (linear degamma + solid colors) and (max
> degamma + gradient colors).
> 
> v2 - Addressed review comments from Bhanuprakash Modem
> 
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> Change-Id: Ibdb91b603e2e4024d170727d24c6a5425441e2e1
> ---
>  tests/kms_color.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/tests/kms_color.c b/tests/kms_color.c
> index 3a42532a5c27..41720dcdd90f 100644
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
> @@ -75,8 +72,8 @@ static void test_pipe_degamma(data_t *data,
> 
>  		igt_plane_set_fb(primary, &fb_modeset);
>  		disable_ctm(primary->pipe);
> -		disable_degamma(primary->pipe);
> -		set_gamma(data, primary->pipe, gamma_linear);
> +		disable_gamma(primary->pipe);
> +		set_degamma(data, primary->pipe, degamma_linear);
>  		igt_display_commit(&data->display);
> 
>  		/* Draw solid colors with no degamma transformation. */

Please fix the comment s/"no degamma"/"linear degamma"/.
Also, we need to port this patch on "kms_color_chamelium".

> @@ -103,15 +100,17 @@ static void test_pipe_degamma(data_t *data,
>  		 */
>  		igt_assert_crc_equal(&crc_fullgamma, &crc_fullcolors);
> 
> +		disable_degamma(primary->pipe);
>  		igt_plane_set_fb(primary, NULL);
>  		igt_output_set_pipe(output, PIPE_NONE);
> +		igt_display_commit2(&data->display, data->display.is_atomic ?
> +							COMMIT_ATOMIC : COMMIT_LEGACY);
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
> @@ -189,8 +188,11 @@ static void test_pipe_gamma(data_t *data,
>  		 */
>  		igt_assert_crc_equal(&crc_fullgamma, &crc_fullcolors);
> 
> +		disable_gamma(primary->pipe);
>  		igt_plane_set_fb(primary, NULL);
>  		igt_output_set_pipe(output, PIPE_NONE);
> +		igt_display_commit2(&data->display, data->display.is_atomic ?
> +							COMMIT_ATOMIC : COMMIT_LEGACY);
 
These changes are not relevant to the degamma, but still we need these changes.
It would be good if we mention this in commit message.

With above changes, this patch is
Reviewed-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>

- Bhanu
>  		igt_remove_fb(data->drm_fd, &fb);
>  		igt_remove_fb(data->drm_fd, &fb_modeset);
>  	}
> --
> 2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
