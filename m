Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BD539C611
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Jun 2021 07:41:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B44996E47E;
	Sat,  5 Jun 2021 05:41:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 366276E46B;
 Sat,  5 Jun 2021 05:41:33 +0000 (UTC)
IronPort-SDR: PswkZ7bGwfd52J7gzto0lw3Fzvx7LXBVtoEoah3/CsvgDee0M0bWWprPBpn5hwK04szeYgC0Vz
 y/cTjzRAmqqQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="204440561"
X-IronPort-AV: E=Sophos;i="5.83,250,1616482800"; d="scan'208";a="204440561"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 22:41:32 -0700
IronPort-SDR: uqAR8QORTwCmbkQE8wPcnvLG8FAP2zXdozyaZMRsHcvmrP9ylBySV+4K8gprO443JsMcEr27YN
 ECh8CBYXnHww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,250,1616482800"; d="scan'208";a="417964944"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 04 Jun 2021 22:41:32 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 4 Jun 2021 22:41:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 4 Jun 2021 22:41:32 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 4 Jun 2021 22:41:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k2Z+m9XxE+IGC+NMWhlAyfvB4mve7+W3Vq2nR5qztS6FCGAqvKbdOMjqeaXaEfLk3zf1aLd9EsrOhOJQ79BLlHhO8ScM/YccWRcqLWz/FwDzi0ZISXArd0mH5mXe16O/5Rm7Glo5cuiCCjGMT527ycyrhKscg3M2GQ2XRsdbY+vBlHcn4mU7GQdxlcjkjKlXupZkmPbwhUGrVF+3p1voewTgoaZScOFZ01IYqp8hr6Ceawnyz9zDLYT42kkB3UZffOuj0qHsdMn+YHKvHOkOdzWTy5xpF5bH7OuSnX55ewT3S4y3wjaCwLXKG40xP/prehv0a14kvTOMB0dht064Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D2wMkUNl5Id2LuQsADP5Kxfg9RRCnOo6sFaU2ViaYLo=;
 b=ICxiyK3hP8B1Lno8KTQRq0E0l681A2svCJYR5a3NQQtVes1ZdW+0dQOVSASHPJMNOFhOSos063S2PtMV5W3ncGcyHYN5dPa2gzNCAvzds2+Ghi0qkG9lx2d4MrVx4RaQqGDGjyYs4HuFKeGfcxakLMJU3KqCMf0sQZM63d2QvqAquw0V44h5SuwEilAjq/24hXW72+ymfh0dVL7RYx+aJMeUTnSsLoAHQd3nvrWM+aBZuqb1y1eyGRqQLENadLX/eZCNq44WfgA7pMhiXKAsd//MoWvy7Zhy0g668Aytl2KuIXyAgHPrGZqAe+t13LB7UbANIuYk3QyfxIF5XGnZ+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D2wMkUNl5Id2LuQsADP5Kxfg9RRCnOo6sFaU2ViaYLo=;
 b=TILruH4n2gzz62kdc1Dx0KISh0I0t4ikMsvRL7OsQH1bjdfL0QVCQJP/sL9vu3nkxqtHIGQto2y+oSyczqqiRA3xMpX7rpmx1xgkriQwhQANN5hTnLXpDLw8BgsEQaBKNmG//4ytofCOR/YHBwXgJRxPPFMZCOsVargwpnBm8wQ=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by BYAPR11MB2984.namprd11.prod.outlook.com (2603:10b6:a03:8b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20; Sat, 5 Jun
 2021 05:41:28 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626%3]) with mapi id 15.20.4195.024; Sat, 5 Jun 2021
 05:41:28 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: Mark Yacoub <markyacoub@chromium.org>
Thread-Topic: [PATCH i-g-t] tests/kms_color: Remove gamma code from degamma
 tests
Thread-Index: AQHXWJqYCh3xTpg+X0qoj10BU71d+KsELZ+AgAC7vdA=
Date: Sat, 5 Jun 2021 05:41:28 +0000
Message-ID: <BY5PR11MB437201E1906C58CC0876C9BD893A9@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1622176543-12759-1-git-send-email-vidya.srinivas@intel.com>
 <1622739294-14346-1-git-send-email-vidya.srinivas@intel.com>
 <CAJUqKUqu7QdTszSdDeNMRgVo3LfBd=qjYKb7rWsyVE60YwWYiw@mail.gmail.com>
In-Reply-To: <CAJUqKUqu7QdTszSdDeNMRgVo3LfBd=qjYKb7rWsyVE60YwWYiw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: chromium.org; dkim=none (message not signed)
 header.d=none;chromium.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [45.127.46.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ff1faa85-b38e-40db-d177-08d927e490c2
x-ms-traffictypediagnostic: BYAPR11MB2984:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB29846BEC8E97DADFB3A040B9893A9@BYAPR11MB2984.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1284;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FLdAHO0lk5Hb+a1D9f5k9V29Ef+5njKHbNiJPE9gnQ+A35NTP30BSqD/fR5Am+GFlJv9ka6PMgftssC11Wgh/MwWlNhwSSRBQ+ijRU9OEpeKr+cEMJ5iZlCz/Qy6X+iGHArGSM/loskPVD6HFWW/Z5LziOrJ2vCG038KSM1LOgoC+eGpVuDf7V/MPnnz1ntF1owZqkWlTgc6Su0C6/MZ1nI2mRoFZO09IyhWo0EiTlG5/0hGcau1AHFyzt8sFvhi8gjwNLSFtiTFPd7O+pe7k7GGPj8xpfgwTIh/GNLorXmofzGOlBmlVDBEl/qJTwBiJ0Pi5zAQSKwvq1BLSJAHshkpDjLLHxRBA2Ww15efLDXntiM8Cl1WXcVMoVSTvlalj+l70tc6HMCiuD7bHCrVY7+9EWYeAiMMUC96ErLdlRjbKAQM/O8WeoNjCBlETnXqyCXJCgozaYft8pfKwkPQvQd0YOv+qioNwmuR0tljbdVXc0Mw2B3B1RY4RG1DqZFCsNO6xNxOD8z1LYHCiZa3CH2l22Ofcha2ddq3hr9dPAknkuot3ts6pmjc9vZN5s9nYEpLyNAJEKAWdM44VGh4pv3T3vblSmvNgxEZmBl8Lnc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(346002)(366004)(39860400002)(396003)(376002)(54906003)(86362001)(478600001)(71200400001)(8676002)(52536014)(316002)(83380400001)(38100700002)(7696005)(4326008)(6506007)(122000001)(33656002)(53546011)(186003)(8936002)(6916009)(5660300002)(26005)(9686003)(2906002)(64756008)(66946007)(66446008)(55016002)(76116006)(66556008)(66476007)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?ZTJIaEVZZUhaWVQxV1BwQmZDMWlUTS9OTDlNVWhwbmVyVmlpaytMcWl4eUhL?=
 =?utf-8?B?dzNEamtXTHpTbC9hVlplZU9HaXUrR3RQb0NQWG9ReUtQSUpROG5uWWMrRVVJ?=
 =?utf-8?B?RUZ4eWFYQmlPY3FqdG8ybGFzWGYyRFhPeFdpa3B4cXU3YUpYYUdRa3FrM1Ru?=
 =?utf-8?B?ZlE5OG9uaXhjdDFhR1EvUlpZNlBETEY1RDdZNlNhQkQxNDNYdDR0em9aY1FJ?=
 =?utf-8?B?VzJxcXRvcy81MlFXc2xOR0xuM2I4aERyclBDNnZMV2U4TDhEZGowWEl6TC9y?=
 =?utf-8?B?RlJlK3J2Nmk5Nlo3NGNIMm5BWnlCNVY1U2QrSkJudWpqVG9sdTlUbkZ2TE1L?=
 =?utf-8?B?eGRWVGJsTjNZSnVrSkRQZVB4SUlZQ2lsRlBLQW5NL2hyMStHMS81QlVTRHZ5?=
 =?utf-8?B?U1VRdEVkNG9IRnRobFE3OHY2RXA4Y0RRWCtBQm5ydkhsYWFMa1czWURPdERQ?=
 =?utf-8?B?SnN4bkNlTHAyNmJ5a001dFlkYnJPaFhMUTEzY0NESWxualNjRXg3WlQ2Y3NW?=
 =?utf-8?B?cHlrMXpzR1Vlc0lYVnRTbGVUTjBRVVNzQmlHQVV4Ym40ZnBqd1ZyYW5BU1kw?=
 =?utf-8?B?NjJ6MWc0NFNXcXE1Ky9UZkxJYW1Nb3R3V3djTTA1QlltTFF3SzhKcFh1WmxX?=
 =?utf-8?B?TnlueXJONjA1ZkFnYjNzRHdDZC9KZ3lLNjY1NFBPZm9UczlyNTV5eW9oUjUx?=
 =?utf-8?B?aFBWa25oMy9sWm5SNUJ0MkZzRmc3S3NyTk5qdVRhSkg3TUNnSXlQV2oxRlND?=
 =?utf-8?B?M04xUElUbFhqUlJRcHdUUVY5aUNlYVppVEN6QVV3YnlTUSt2L29PV1puTGx1?=
 =?utf-8?B?TEZKcCtlb2s5bkVhUlYyUXJhT2hORm1FazNlYk9zcHRoWC91Wkhxa0p1N2h6?=
 =?utf-8?B?YWFFZXc2K3hWUnNpSkUyTkkzSnZoNGs2L1oxK21GRCtzZ2ErQXpueW83SjZ4?=
 =?utf-8?B?RFVYQndCVXFDTUFSaXdQeHQxeTdRN0tMcFRHeE53YXVtYUFXL3Iwd2kxZTBw?=
 =?utf-8?B?N2hiRGhEKzJIdVQxblpPdEtEdGczSk5TdUtOaXBtcmM2cFhueTBFMHpTM1B4?=
 =?utf-8?B?dC93bTM4U3drbUdlQTB1WEl0eXBQb2wwSklvZ01ORVdac2Jra1ZhWXgzenl6?=
 =?utf-8?B?YUxPTEJtcUFBbWVGZGdYMjZwSjhUNm1zWVc3aDNOTmVlSmNIZzBrWURUbDdu?=
 =?utf-8?B?dThTUkhXRDFUWk8waDhCMVZwdVhaL1UwaVNjWVNWcWFaQnFXSXpyRmJOZUQ2?=
 =?utf-8?B?RUM4QmFVTUI2WHI1Q0R5S3JNd1lWOWszbXBJbW5nM2JoL3VDMUlneCtOZTBL?=
 =?utf-8?B?dFNGMFk0WHU3L1JsMHBMMTE5OXdoSyt6WWVyK1dEZnl4VUJWZW0yRlp3OEkr?=
 =?utf-8?B?NnhNamFuakxnbzM0NitTV0dNRDJ2WERiWTlBN3RobUNyQlM4MVZnWkFneGNU?=
 =?utf-8?B?dy9jU2syS1p5eVZhOVJKM1dyVWd4TTZpbGVOK05QU3dWZzRiV1d5VVRQbW1W?=
 =?utf-8?B?ZWc2ZGVDdEVXQ1B3eEJ3NTRWcTd6cUYwUjh0OUZOYjVJSEpROWI5K0ZmVUx0?=
 =?utf-8?B?UXhoUXVrdkdQUWswVGxqVDIvUmE4U0VUU2VERDRpcEdpNXdwUTF3cFBnQ0VD?=
 =?utf-8?B?TTBrQ1NwUnpYLzljMEFGNUFJaXZMcys5L01WQ2l5U2E0b0JXUkdCZDBtdytB?=
 =?utf-8?B?RWtUZ1g1REgwTGtoankzekYyZkIwRktheFFDeGgxMVNaNmhKdVFHaHlYQmZ3?=
 =?utf-8?Q?kqOpfHB01R5lTgdqDw=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff1faa85-b38e-40db-d177-08d927e490c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2021 05:41:28.2840 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xxDVLoGW9KBSnehs+lBWR3KpVvOlgQpUTXdqf20UcCj5rH7UK9gu4Z/47pYSnvNEncuU/zr5AnZnGi0MAS9vWsP4WAHzkpkFiLymJzOYU8A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2984
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/kms_color: Remove gamma code
 from degamma tests
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Lin,
 Charlton" <charlton.lin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thank you very much Mark, for testing the patch and providing the "Tested-by" tag.

Regards
Vidya

-----Original Message-----
From: Mark Yacoub <markyacoub@chromium.org> 
Sent: Friday, June 4, 2021 11:58 PM
To: Srinivas, Vidya <vidya.srinivas@intel.com>
Cc: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org; Almahallawy, Khaled <khaled.almahallawy@intel.com>; Lin, Charlton <charlton.lin@intel.com>; Latvala, Petri <petri.latvala@intel.com>
Subject: Re: [PATCH i-g-t] tests/kms_color: Remove gamma code from degamma tests

On Thu, Jun 3, 2021 at 1:04 PM Vidya Srinivas <vidya.srinivas@intel.com> wrote:
>
> CRC should be collected without degamma transformation and after 
> drawing gradient with degamma LUT.
> This patch removes things which are not related to degamma and makes 
> it similar to pipe gamma test.
>
Tested on ChromeOS on TGL (Delbin) and JSL (Drawlat)
Tested-by: Mark Yacoub <markyacoub@chromium.org>
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  tests/kms_color.c | 16 ++++++----------
>  1 file changed, 6 insertions(+), 10 deletions(-)
>
> diff --git a/tests/kms_color.c b/tests/kms_color.c index 
> 3a42532a5c27..2c9821cdecce 100644
> --- a/tests/kms_color.c
> +++ b/tests/kms_color.c
> @@ -31,8 +31,7 @@ static void test_pipe_degamma(data_t *data,  {
>         igt_output_t *output;
>         igt_display_t *display = &data->display;
> -       gamma_lut_t *degamma_linear, *degamma_full;
> -       gamma_lut_t *gamma_linear;
> +       gamma_lut_t *degamma_full;
>         color_t red_green_blue[] = {
>                 { 1.0, 0.0, 0.0 },
>                 { 0.0, 1.0, 0.0 },
> @@ -42,11 +41,8 @@ static void test_pipe_degamma(data_t *data,
>         igt_require(igt_pipe_obj_has_prop(primary->pipe, IGT_CRTC_DEGAMMA_LUT));
>         igt_require(igt_pipe_obj_has_prop(primary->pipe, 
> IGT_CRTC_GAMMA_LUT));
>
> -       degamma_linear = generate_table(data->degamma_lut_size, 1.0);
>         degamma_full = generate_table_max(data->degamma_lut_size);
>
> -       gamma_linear = generate_table(data->gamma_lut_size, 1.0);
> -
>         for_each_valid_output_on_pipe(&data->display, primary->pipe->pipe, output) {
>                 drmModeModeInfo *mode;
>                 struct igt_fb fb_modeset, fb; @@ -75,8 +71,7 @@ static 
> void test_pipe_degamma(data_t *data,
>
>                 igt_plane_set_fb(primary, &fb_modeset);
>                 disable_ctm(primary->pipe);
> -               disable_degamma(primary->pipe);
> -               set_gamma(data, primary->pipe, gamma_linear);
> +               set_degamma(data, primary->pipe, degamma_full);
>                 igt_display_commit(&data->display);
>
>                 /* Draw solid colors with no degamma transformation. 
> */ @@ -92,7 +87,6 @@ static void test_pipe_degamma(data_t *data,
>                  */
>                 paint_gradient_rectangles(data, mode, red_green_blue, &fb);
>                 igt_plane_set_fb(primary, &fb);
> -               set_degamma(data, primary->pipe, degamma_full);
>                 igt_display_commit(&data->display);
>                 igt_wait_for_vblank(data->drm_fd,
>                                 
> display->pipes[primary->pipe->pipe].crtc_offset);
> @@ -105,13 +99,13 @@ static void test_pipe_degamma(data_t *data,
>
>                 igt_plane_set_fb(primary, NULL);
>                 igt_output_set_pipe(output, PIPE_NONE);
> +               igt_display_commit2(&data->display, data->display.is_atomic ?
> +                                                       COMMIT_ATOMIC 
> + : COMMIT_LEGACY);
>                 igt_remove_fb(data->drm_fd, &fb);
>                 igt_remove_fb(data->drm_fd, &fb_modeset);
>         }
>
> -       free_lut(degamma_linear);
>         free_lut(degamma_full);
> -       free_lut(gamma_linear);
>  }
>
>  /*
> @@ -191,6 +185,8 @@ static void test_pipe_gamma(data_t *data,
>
>                 igt_plane_set_fb(primary, NULL);
>                 igt_output_set_pipe(output, PIPE_NONE);
> +               igt_display_commit2(&data->display, data->display.is_atomic ?
> +                                                       COMMIT_ATOMIC 
> + : COMMIT_LEGACY);
>                 igt_remove_fb(data->drm_fd, &fb);
>                 igt_remove_fb(data->drm_fd, &fb_modeset);
>         }
> --
> 2.7.4
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
