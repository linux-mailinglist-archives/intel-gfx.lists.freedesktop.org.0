Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CD339D3BA
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 05:59:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DA9C6E0F1;
	Mon,  7 Jun 2021 03:59:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 522856E0F1;
 Mon,  7 Jun 2021 03:59:51 +0000 (UTC)
IronPort-SDR: 7sb36HtNGCCCyWNx57VX50z03mlK2gukbYoxo8QZHXLL1VJYotxPBRq7bv1/8Tch29sgQTyoyD
 p0t5cYXIJ3ZQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10007"; a="204526892"
X-IronPort-AV: E=Sophos;i="5.83,254,1616482800"; d="scan'208";a="204526892"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2021 20:59:49 -0700
IronPort-SDR: R93z8grZC2PBNR4It9o7YeVbGotFQhXZ8e0q9go/21G49qTTRwx9r4EorgSmm6YrRxf9MosMna
 YW2luEei2sUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,254,1616482800"; d="scan'208";a="401562319"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga003.jf.intel.com with ESMTP; 06 Jun 2021 20:59:49 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Sun, 6 Jun 2021 20:59:48 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Sun, 6 Jun 2021 20:59:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Sun, 6 Jun 2021 20:59:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lBrBk5bRdp9S2bW3Xp7M3T+FzEwtxUWdO2rWY9dKJq16r9L848EtTfBjLFPmUNCSMwNC09SwK5vZYrAWUAMy5q3VH4XKTBEws8eviVv8WgEQBG0iiaznHC+o5cn/AQRbCniQc5rjyE0oG7VTDABPwGR3gu96gtffcb7hkCKtpYssy+UJgoqySdd9OvDJkhbYkf86ZMz88xE+wftIq00WJP6J7CMef6I7lOJa78/oYJTtMows5twoWInR95QZTYsU+ilcLII0RyPiBhRFs8xYlSICPD08mmR8zJo1TBKqhRirNCfdtf9LGCa1TPNmph+dgw5RlQTk0mpzHZlzSURTFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hsBQdZQWbmKXJBq9EZprfve964fKTamSayLvNJgz6WA=;
 b=YL9+pLYptvcvWJLZz6Bz1id/tv3kl6nLEv7eraVbcBe0oS2CmHQAw41liZrAdh6QOYGwpoEyd/BxiPMfcNnCb6KYM8YCeShpjnVCaNHdzNY7TtwNtyJAEkqbd2yOQ/V7c7RHy/UIj6i95iRNDAp6mvkQi2ghomTBXySdZNV1/D+jJxc4WfZPTTufmzWwhuRMQDzGOckjSMeCYUg8fHfs57Ucue3kBR400h/1/iGCParRGmb3U5SWe0rq7P2WjTJUnhaqkwSrzB2MK6hVCxGWvTUBPEbEQhgWZXGwsWcBQxBzEokzzM3QRQ3Feo2BSyfQ/7wp6IFUYlT5i2IAP9f/bA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hsBQdZQWbmKXJBq9EZprfve964fKTamSayLvNJgz6WA=;
 b=T5TghFfbMSBLjtPHoBxoNVDtY7Ll4kBM5dthXlXZAuH5OfnM0RZ8vnGtRpOX6uperp6r/VQFdRJfap3/nOsj8nL1uiFOGDhGgdD8lBZrOnXYZ0vyJfnnf3aIb18mpCdGuXAW+BstPTRrnwoPc53zCZ8N5BbuLWniOmNNuws8HwY=
Received: from DM6PR11MB4379.namprd11.prod.outlook.com (2603:10b6:5:1db::19)
 by DM6PR11MB3769.namprd11.prod.outlook.com (2603:10b6:5:142::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.25; Mon, 7 Jun
 2021 03:59:46 +0000
Received: from DM6PR11MB4379.namprd11.prod.outlook.com
 ([fe80::a93c:646e:3246:670d]) by DM6PR11MB4379.namprd11.prod.outlook.com
 ([fe80::a93c:646e:3246:670d%6]) with mapi id 15.20.4195.029; Mon, 7 Jun 2021
 03:59:46 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Thread-Topic: [PATCH] tests/kms_color: Disable gamma in degamma tests
Thread-Index: AQHXWURfJZFkbVX4cUSs+Dxk0aC006sGtL+AgAE7ZPA=
Date: Mon, 7 Jun 2021 03:59:46 +0000
Message-ID: <DM6PR11MB43794A6414CDEEEAFBB67BF089389@DM6PR11MB4379.namprd11.prod.outlook.com>
References: <1622176543-12759-1-git-send-email-vidya.srinivas@intel.com>
 <1622812262-16592-1-git-send-email-vidya.srinivas@intel.com>
 <CO6PR11MB5569C381A87795F5D6B369498D399@CO6PR11MB5569.namprd11.prod.outlook.com>
In-Reply-To: <CO6PR11MB5569C381A87795F5D6B369498D399@CO6PR11MB5569.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 4ab50328-e3e9-4c2e-77fa-08d92968b05c
x-ms-traffictypediagnostic: DM6PR11MB3769:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB37694C47C6B72298AABDAD9E89389@DM6PR11MB3769.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UwZ+v/Wpq9/bSSUXgnwekEu+K+KUJGBMhXfx1HXCjPwHluBXmI2YHLzfkb24gtFKlCqCMp2l7Z6IdAAEtiggc9NTZ0tGlMHnwSNiRw7X/jECQMT28D0UpsiJzTWv1scPmD1q+WOZ1CjySeN85TtmmUibL+YBCP6R2rlLLMQeKPPITIVT6W/lTRhoye2N23rbdLk0PJ0q9gUc6VgVB5iOGJxzjc2+Xyit0ceGTzBy9Qm8L6LVE3YvoXAjJ6zxNFkfPxcLJiMnbx4DDE2FZvu03IJRM6oI9BUCMhunC20cqjdtXf0Bphzcq8MTByVbvLGwcUUUeUCngXILxrUiIbz8B/Cw8O5GoWBK8MXzL6lt4mmhdW1zjDNrLinS8XDxaL7QhDggGFFUcySQ7CqypztP7bxZB6Nj2slFQOJbwhoMgdQKugXzXpr5QRIiz/XMlA3tnnrrYvV9oCXBfRhIGmJq2fGQjiaGrTN8BkFXSeLT39OuJWQUMjF8ltgDwzNiohcomroxwfsX+PkbPo8Ojl6gq1kh7Re95iVnWd9I9Jiv95ThTifWKTU6vVvFDs/orlRA3IxhyFpvebbwoRkYyVKk++l6YGmsVoVTAPgbi0t5bk4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4379.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(396003)(39860400002)(346002)(136003)(376002)(8936002)(110136005)(9686003)(55016002)(38100700002)(86362001)(186003)(2906002)(33656002)(52536014)(122000001)(83380400001)(7696005)(478600001)(6506007)(53546011)(107886003)(54906003)(26005)(76116006)(71200400001)(316002)(8676002)(4326008)(66946007)(64756008)(66476007)(66446008)(66556008)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?mvcYPvqCEdiYzBfVhK7mJrcWeGjLdKkpYrc/TeXdY70YSU5difiQ0c6ff0vX?=
 =?us-ascii?Q?JRSFirE3FdxeMZDCAMuvsiUai6lFqlqti7uFOo/U+YlwetWwDAmtTJc+MajL?=
 =?us-ascii?Q?eYHMmDe443eq4WooCUfiwBrVNTxJOXQ3DdWBrAYNM0DqdJzPD49peIrJbfqL?=
 =?us-ascii?Q?uBLkyX5suZylEc8ew25WwfuSTx/CKw8TaQw/a/xdmjxJbJB3vg4F/kLV0IKk?=
 =?us-ascii?Q?IpMONq5ZPbwJaoYVDETdmxDCwx2trdU2Nn0avPl/l2i+j4pCPBIIkZ2jppew?=
 =?us-ascii?Q?BX4x/PfQdGuxet6zXcbdNCY7PvVmDv9t/H+QHNkoVO7/MMLMiPvjZ8yrYlPJ?=
 =?us-ascii?Q?S2R8SgudIEt+1w5CeOdF5d50/9PLnwRZCdkkIXUUD7Y5oTV/t5Sa3d4bJVzU?=
 =?us-ascii?Q?JojpjqlXguAiEiz1TfObh+yfg/EtvUFNQvMEc5AUe9X65SOJQC8GZsT3v0av?=
 =?us-ascii?Q?xPgRX9hS17YSRVKPDjsP03JlK86O5eTacbVfiSEqi/6a2VTOyI1Am9XMOsu9?=
 =?us-ascii?Q?0Ns22CCpf4rb4qN1RbIWfpKg1mTtvKvZrjgQTcaVyMc2zCc+CFJlsbr8QFrm?=
 =?us-ascii?Q?gPJrYpUcoqOLh5YxvBbdjZ0BxugW4hB1C5TjIBksoxXYOua10t47gRUJgIvl?=
 =?us-ascii?Q?hf6c/xY2RYNgwPMhyFZsm2+Y3Ii2EeSDyDSJrWU34Ovqb3fTIZjo2+zxMjKw?=
 =?us-ascii?Q?R9UAooka1yh2TyQMwpLJtiDZWJotRYkjMNYj9vwm3EA1F6hZlc7oU268kOBx?=
 =?us-ascii?Q?9se/sBTknsE6xyAWsDUFapj8mt7JSZ9rcPYqoyvUipainUBsjM+ZToRdxo8y?=
 =?us-ascii?Q?pN/DD66CNfuQpfIV14mMQlCTVa9x+w9tUwqXrqYprTAVp4199nkEeE6m0M+3?=
 =?us-ascii?Q?w7X67Zq5eKr6btraFWA+Fl2lYbghFAGwN7xWAbB9T0YKFv1uCfEzQ8+R7vQp?=
 =?us-ascii?Q?gA8IFVWLeN+95RFAC3+jbbf0XRuR3jGOyq3zYe3xSsCvQVWfATzANY5rjOJc?=
 =?us-ascii?Q?dBiukr/41vUAmlikykdPBjXMAQnbeOhBgNdWWw77/6lyyZpTNopPG7wU95jT?=
 =?us-ascii?Q?3g/fbUFJUAmYj82Bmce8QLMj5T+D8hlGip+Bfto2MIRAnvxiqrQHgHOTzWNY?=
 =?us-ascii?Q?OGMaWleVzrzVuuKG8NgC/bE4+BkQzX1NwFamj6PYnVOJKqFbZlO935b9yWZs?=
 =?us-ascii?Q?spmz0/6SIOaPmHwT61vkkiX4OQDR3RGFFoEf+V7VNDIScGwW8sS1Nrx9eaDZ?=
 =?us-ascii?Q?KQNnZANicU0qu51uIdC6O1Acyl8Ypix3OMCJRqdBmRbOm9d0hRiKsXnSO9aq?=
 =?us-ascii?Q?OXI=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4379.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ab50328-e3e9-4c2e-77fa-08d92968b05c
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2021 03:59:46.0574 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0dJFrSXI7DeUrfKLvc3IIHGwt8kgBBdK7JU56xoLicrc9sKEFj9eV/DC76lPyvWH/0Q84TsvQ/w+1kM4kT3O4ZgiHbKOjpKD+01Blbu9RII=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3769
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

Thank you very much Bhanu for the review comments. I have addressed the review comments and resubmitted the patch.
Have also ported the changed to chamelium. Kindly have a check.

Regards
Vidya

-----Original Message-----
From: Modem, Bhanuprakash <bhanuprakash.modem@intel.com> 
Sent: Sunday, June 6, 2021 2:39 PM
To: Srinivas, Vidya <vidya.srinivas@intel.com>; intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
Cc: markyacoub@chromium.org; Almahallawy, Khaled <khaled.almahallawy@intel.com>; Lin, Charlton <charlton.lin@intel.com>; Latvala, Petri <petri.latvala@intel.com>; Shankar, Uma <uma.shankar@intel.com>
Subject: RE: [PATCH] tests/kms_color: Disable gamma in degamma tests

> From: Srinivas, Vidya <vidya.srinivas@intel.com>
> Sent: Friday, June 4, 2021 6:41 PM
> To: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
> Cc: markyacoub@chromium.org; Almahallawy, Khaled 
> <khaled.almahallawy@intel.com>; Lin, Charlton 
> <charlton.lin@intel.com>; Latvala, Petri <petri.latvala@intel.com>; 
> Modem, Bhanuprakash <bhanuprakash.modem@intel.com>; Shankar, Uma 
> <uma.shankar@intel.com>; Srinivas, Vidya <vidya.srinivas@intel.com>
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
> diff --git a/tests/kms_color.c b/tests/kms_color.c index 
> 3a42532a5c27..41720dcdd90f 100644
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
