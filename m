Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B705839EEEB
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 08:46:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A65E6EAAD;
	Tue,  8 Jun 2021 06:46:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F7866EAAC;
 Tue,  8 Jun 2021 06:46:38 +0000 (UTC)
IronPort-SDR: IFpEhg+m736i0+hNPoNaMO1BzbRbU2Psme52Ge8fZ5YVjj7LxQtKo0QFmGTbm0keYI/4oWlhb7
 B6ys8wi/fCWg==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="192108495"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="192108495"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 23:46:37 -0700
IronPort-SDR: 4g+jbICVc+W6Ns0skT2lnsNUwsVs8PaJRJiea005mAd+YgdU2qw0iqCtQriJ5o2Lv4tOzM3cc+
 LyKkELlVKHbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="485101893"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 07 Jun 2021 23:46:36 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 7 Jun 2021 23:46:36 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 7 Jun 2021 23:46:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 7 Jun 2021 23:46:35 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Mon, 7 Jun 2021 23:46:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jj9Kx58Ablp9n0GgS7EEk18/d3EN+WNCuNWE+ZOYuwc57ZKkGFbq9B3+ssRga8dBQPoqKYJMv0d1p6kH/c1JkEoG3901014af+ZSGXtGcdrWB5t4RLyO1WWUBZo6mQCuE67UonOJ7VAGOJt1KEWifwgyiQBLdxFZ6dERsSHtoE3je7BmWxS0oBfhEIJ8+DL26OynjtoFnayZPOqtavGq6NYTk98OPtTFd/a6mmAZBq3MbTAqaMhayGFlTbjV2+VgIEDpf9rftUD+PEz/GrQcFzOKRv4vTn9jT5i4L5HKzdx4g/6aPm1GxEDpDd/OFOExpyXcTqGXjJk8BxQl2RCY/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SC/OXNGBb5VGrnazFlobiXthhYMyYm5CyyYcRwC9Ai8=;
 b=K0/UXsl4JEssMMWQIfdAhaXbIiulYfN0fAvpkrRSckFchJ8IzrEENdR3q4ews8WhjtS40hk1I0gXEjXf1kmizofj9EHSItDARU4zFzSyhghNbhOi7Ns4B6/7HmisSjVCeDVutt9fg+q8eRfpzAWxOCFemVAkLkNktFErPyasIxKThWrxKmP0losQ4B6SnghefAHKrz2CSmijUHusOiUxZalOlLV2aFVgv7wftFBHjhTzvF7MO+qBV6FisU7Hynyuc0u9nF4fJBdgvt0JJiiKKpMZvCyhSJkL83CoO/9FgtJnEsV3CV7TwshPFT88MLQ/FlYRC5Zf9R8eZCvG2tMHxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SC/OXNGBb5VGrnazFlobiXthhYMyYm5CyyYcRwC9Ai8=;
 b=OVx4SX1ugrqn7GG/AhSbXGcNuylVqtWMgfsd05AkMz64+89Y4Vfc8n2uuliBw/voS0sFMtlaCBo0KjVPtM8Ak5T7WoBAN7m2RoWYmoDGJOY53bJOJ5hFot3ZTjPlBsetCxyarHk5txBVPkvYfZU2LVdHO1vJr0aGay/9z/OYY9w=
Received: from CO6PR11MB5569.namprd11.prod.outlook.com (2603:10b6:303:139::20)
 by CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.23; Tue, 8 Jun
 2021 06:46:33 +0000
Received: from CO6PR11MB5569.namprd11.prod.outlook.com
 ([fe80::2d63:b94a:89c5:4514]) by CO6PR11MB5569.namprd11.prod.outlook.com
 ([fe80::2d63:b94a:89c5:4514%7]) with mapi id 15.20.4195.030; Tue, 8 Jun 2021
 06:46:33 +0000
From: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>
To: "Srinivas, Vidya" <vidya.srinivas@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Thread-Topic: [PATCH i-g-t] tests/kms_color: Disable gamma in degamma tests
Thread-Index: AQHXW1EsRjQBK3xmvUui2bZie5v+16sJqBmw
Date: Tue, 8 Jun 2021 06:46:33 +0000
Message-ID: <CO6PR11MB556903B29EDB88A1EC2EB3898D379@CO6PR11MB5569.namprd11.prod.outlook.com>
References: <1622812262-16592-1-git-send-email-vidya.srinivas@intel.com>
 <1623037661-2087-1-git-send-email-vidya.srinivas@intel.com>
In-Reply-To: <1623037661-2087-1-git-send-email-vidya.srinivas@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [157.47.105.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 94a8a2db-21f1-4217-3236-08d92a4927cc
x-ms-traffictypediagnostic: CO6PR11MB5651:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB565107FB273E61712158B5AC8D379@CO6PR11MB5651.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: byptrH6q6Coh6sZnfowFJj3W0omCn7WX2Qj5Hol0N7Sfh/NobYqC8Ws5tCXWTsKWT1u2Umm56l1I/tUjYmqwDWGXTr2wIIn1m6MZ2+yRYw+KTkH7yRj19wlnFNUfUJtKTZTtSE0G23ZsW12xtwe2JEnbiZLpYcGPPAXFjoZ44bw9P48s4fzLHZJsp8jubOTO7wsY/35jLvlEA++OaSXDBLgN6rXt5R8Ti8VNsV6/kxj5bjP/P8UKBYEgy/kDibsy6dm9LOB38XCZOmhVDEjC63fPRNdeDD9+Y9HyA25pIzzSVRfqwDgNhYbprCRj+eqGLPT57qhZqUpj0jpY8okpdb4ylOD2gVsYI1NwKEGhIiToakhXhRa9uCe9lCExkoPr4DOINiZE/4bnQFmF3axJCHDwUB8fZAY/uP/74XSIUycd8C9mkMZOlbXtAyiBNwflL5pVX1W3cDFzMhI0BmA+k+AHwZZMxBihB7x0FsfzL1bn6Glq0TcePY1HWSpAUtlgljBqOauxcNs/83iJJTkuvb/fWaNCgz+8f+RAOAP1dXYTxNJ13DA8fVmvXfIvwUfJkd5hEmZn13jU+2OmkLHNivPQ4TKQ0GAVG7YzMOgfQUA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5569.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(346002)(136003)(366004)(376002)(39860400002)(8676002)(8936002)(38100700002)(478600001)(55016002)(83380400001)(9686003)(52536014)(2906002)(66556008)(122000001)(107886003)(86362001)(66446008)(316002)(7696005)(66476007)(33656002)(53546011)(6506007)(76116006)(54906003)(66946007)(4326008)(110136005)(71200400001)(5660300002)(26005)(186003)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Xlsmlceh7Q88ZUSXXS+B5CmS87T3QjF13voqkgZQlVkPCMXJ9m8rcFZf/Aab?=
 =?us-ascii?Q?21If6h26PkLSfnN1ir39nZP96a/BlKK2KDkk+H4k66F/shD8sDOS0npGhP8l?=
 =?us-ascii?Q?sUA4gzOQRlqVQXdYndzpQMjqXyUTe0icgbErKdyTR1ply+bHIDBU2C1u2Iqr?=
 =?us-ascii?Q?8IyraGMvB556D+4yCnUTAHblNJ5Oa97U7a97hTLwt23s5XedSpt2ryE3YK9C?=
 =?us-ascii?Q?4dFAd2w4daQg+CrHU/eqQpoS/6U5D2rQu421tTIsC1/nJlsdbQLTC+YbOxHD?=
 =?us-ascii?Q?53Rzd8vILNjwUl+Zv8keFUbh2j4P29XbxUBIwZiE1BnCoL99yrxRIeG8XkjW?=
 =?us-ascii?Q?cHP1niLNc068wr/umD6HQP5ELyBKhKv0BUzhDeEMqlBi3gcwuR6YEE2YPrOT?=
 =?us-ascii?Q?YlyKSLG5yHuYlS/eUR+6uKViue9vhaYdA32WpcjnmLT3ExENS2dUWwcspAjs?=
 =?us-ascii?Q?o3Jrx9OFrziU40+gpKAAfFyzjKZHDFfww1dK8SP1Lhp6tLCa91/BRsWlf5+l?=
 =?us-ascii?Q?Tn9/6mwd1ppZh2tcwiYsUKjQ7qdc68gasiLLwgXRJgN7wTHBtCAkut4geovU?=
 =?us-ascii?Q?a06lZ7IpRMW9WZ+Y1dIkonpGgi10cMW3b2i5vdft/kQTyWs5ZOCyRcbuAHIB?=
 =?us-ascii?Q?qp1j9uvQqI7ngCiONOSNoWGjvT3LPoDmYlrp+l7jcNsUVVN8g87oIXR7YKu6?=
 =?us-ascii?Q?i0urEI3wQAfX2atDeEuqljhQIeCbeqdk9jyhojDjuyZkwDhiBfmhN/5aagru?=
 =?us-ascii?Q?s7FTR6mBNxcNepVJ8YH6+t7Sg4UnUzDZeHGq4kWnr4VSOToFocbYXUuw0g9u?=
 =?us-ascii?Q?qpLNX6WTTFhp0ppDMdWZ+n+2349IMc7IwX8gEX9OYbaxx28mxIVKdzHfalO+?=
 =?us-ascii?Q?9wIonTA98rtQR9BVvxkI8sM1VAuaxrPlP65QYGk5KT8KoeQq6k0PCz+/mhOv?=
 =?us-ascii?Q?2h3GUncnfJ4Y6OL/7Wc7uT5fHYobeIH5vX/h+x1JbLcdIY8JcyGJ+AC4N9nM?=
 =?us-ascii?Q?GtatumCskBsa7K5VQ7Y9iymuAGUMY3Qu5+QwUErL44aCADrSYPD+IKxtueko?=
 =?us-ascii?Q?m/JtrysjxsPM8SA4SHjBrnjb8uUo7VOz1Xcr8FC4M89+p3uyQNhsx5xK6eLo?=
 =?us-ascii?Q?N3TuW1E/TKOEjK7xoSezdh1tNB2KJ6pDtFrDe0sAEcTlCIfb1vagQjzIf+X6?=
 =?us-ascii?Q?tLxJ1yc25NItioRcuI/wC3BcuxGRKFV+tqXxa+E4msnNoUdOGDdEm2kjOoxq?=
 =?us-ascii?Q?bJLRHZDXCktetjayd2oZ8c5dGkf3SWNRQg9zzVgjJIVwPl5/e04BhiOUV18B?=
 =?us-ascii?Q?Mu7cm0zTb/Kug8PYkWjHfXKA?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5569.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94a8a2db-21f1-4217-3236-08d92a4927cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2021 06:46:33.7273 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JP3r1gwMEy833pgMBJz+4ohHPcW3bG10XwfEDuakbJl0++Vt/JqVB0LQE65te+luMxlN3ed76/P/2eYvL/FdFXM6ImB8okylls1iGXiDDcw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5651
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

> From: Srinivas, Vidya <vidya.srinivas@intel.com>
> Sent: Monday, June 7, 2021 9:18 AM
> To: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
> Cc: markyacoub@chromium.org; Almahallawy, Khaled
> <khaled.almahallawy@intel.com>; Lin, Charlton <charlton.lin@intel.com>;
> Latvala, Petri <petri.latvala@intel.com>; Modem, Bhanuprakash
> <bhanuprakash.modem@intel.com>; Shankar, Uma <uma.shankar@intel.com>;
> Srinivas, Vidya <vidya.srinivas@intel.com>
> Subject: [PATCH i-g-t] tests/kms_color: Disable gamma in degamma tests
> 
> This patch disables gamma in degamma subtest which is missing.
> It compares CRC between (linear degamma + solid colors) and (max
> degamma + gradient colors). Patch also cleans up degamma before
> exiting degamma test and cleans up gamma before exiting gamma
> test.
> 
> v2 - Addressed review comments from Bhanuprakash Modem
> Changed full degamma for reference CRC to linear degamma
> Added clean up of degamma end of degamma test.
> 
> v3 - Addressed review comments from Bhanuprakash Modem
> Ported changes to kms_color_chamelium
> 
> Change-Id: Ibdb91b603e2e4024d170727d24c6a5425441e2e1
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  tests/kms_color.c           | 14 +++++++-------
>  tests/kms_color_chamelium.c | 12 ++++++------
>  2 files changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/tests/kms_color.c b/tests/kms_color.c
> index 3a42532a5c27..1b021ac3ce0c 100644
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
> @@ -36,7 +36,6 @@ static void test_pipe_degamma(data_t *data,
>  {
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

Also, please create separate patches for kms_color & kms_color_chamelium
under the same series.

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
>  		/* Draw a gradient with degamma LUT to remap all
> @@ -135,13 +132,14 @@ static void test_pipe_degamma(data_t *data,
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
