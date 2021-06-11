Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B228C3A428A
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 14:58:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC2AB6EE75;
	Fri, 11 Jun 2021 12:58:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D546E6EE75;
 Fri, 11 Jun 2021 12:58:00 +0000 (UTC)
IronPort-SDR: flcUiaeoPydS/Jn/KT+ZMtNKMNHXkj8mo9B3ZyIM/Ofp7dG622DAiHg7hB38mbTVULyYxaAMoE
 unLRzN5bkSaA==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="185892777"
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="185892777"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 05:58:00 -0700
IronPort-SDR: FPTnT4HJvRwyW0xCqwXHBxg//FeZqZwfLDFaCnSZjG04iPiRCda6+Xm4fRk9Jhdx8vCOHQ7Q8x
 6oVAjIqVlh6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="403007225"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga006.jf.intel.com with ESMTP; 11 Jun 2021 05:58:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 11 Jun 2021 05:57:59 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 11 Jun 2021 05:57:59 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 11 Jun 2021 05:57:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nlq3imrqkFmmgQxJmpDHR+OE6s2chpzPiqzardqRfrIb1VFEOy1wLR9Wp6qPG+tZWVf2B1hhK1zZ5FOs4T4ehpiRVmZwdb5+yqWDY40OhNv/PU0AtZo5+f8Xey3U/wy+DDZPG9KuFlKHrQ1P+pWhlswaRm7+PigHQyICuOpdvu37D0UhTCC8T3LTGjxgBMF1N1Xla9EWmUMRIwjblJy33b3wVCo2LCy798BmnqaEOcq9LmX6TPZ12Inphxmht2BZqFDcYE//fWbmUEXBT1u3TUd7ypEbLQscLFjqo2ZpSjdAP24KwnO01zlR5ucuWgIt3e3DTPaAjyHsnseTTS/Hnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IAE6meHWKgucQcRqKeR9gyoZmGhEHCusmWhaVDn7SDA=;
 b=bcmzQRHw3r2jUi6+0CTdxQQ96ffhOAKe5kj/s5yEHCwLZsP60Iz7fhyHPDS8aMwqNp/gYAnhaLwOmX4I8okIlBYY9yKEqEI40sn8dkwMOXwxYRo4L/hYeA9Yhrc6xt+pW2uROvJfJURCDW1ZvefBwwVl/OqRSp+OKEDlmIjKup4N/s0EOEw4WaNi7Ye4CTHbRJvuyTBse+ck+pHoBvurr0aAmXQOlFz/DY6Ghf8bwjEYVsZF8X6Oj8RdXT3hHeb9JR5pbpYeuypOxLyP9CyS0mKFxO6Zwo60juRYQEiiLY0segiCu4nKhGhdx35s8G4+y1sf2u3HwFPSTYMTuStayw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IAE6meHWKgucQcRqKeR9gyoZmGhEHCusmWhaVDn7SDA=;
 b=UL/KvJk184WIlDNf+vdwiAve/fRntFEo0jgCvxH6TQQB2rB6Ro8YKmDgnFmHuJdIybW4HToTAdBdDRBAbd4L5t7OmMG4xxX27n9teuqq2i1YLxIrrQKBx3AXBa5+HN5cndUdPfvOZ7nvzs2k2hqf0m/shCg+Isjfn9Kr0UCvlVs=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by BYAPR11MB2949.namprd11.prod.outlook.com (2603:10b6:a03:81::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.21; Fri, 11 Jun
 2021 12:57:57 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626%3]) with mapi id 15.20.4195.032; Fri, 11 Jun 2021
 12:57:57 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_plane_alpha_blend:
 Don't set primary fb color in coverage-vs-premult-vs-constant
Thread-Index: AQHXVvDWfvOp7XrUnUOZT77fKuGya6sOOTQAgAA/naCAAFshcA==
Date: Fri, 11 Jun 2021 12:57:57 +0000
Message-ID: <BY5PR11MB4372B0A65DA52560451EAA5289349@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1622547939-8157-1-git-send-email-vidya.srinivas@intel.com>
 <1622556485-9375-1-git-send-email-vidya.srinivas@intel.com>
 <CO6PR11MB556976C4EC81D88FC86D1C768D349@CO6PR11MB5569.namprd11.prod.outlook.com>
 <BY5PR11MB437213735019658A601D098D89349@BY5PR11MB4372.namprd11.prod.outlook.com>
In-Reply-To: <BY5PR11MB437213735019658A601D098D89349@BY5PR11MB4372.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [45.127.46.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 035ce085-a6b2-4e31-6daa-08d92cd88905
x-ms-traffictypediagnostic: BYAPR11MB2949:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB294950F187CA99AD191BDBC889349@BYAPR11MB2949.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:260;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QON7wrcLUf+2Ga9p+z3ICYW0Co3X47XwN98GaVosAUhtRy1UCq9XJ2eM6ZXAmgKlK5Nn6Yk7nLtpbbnRFqGv7mMh7Vn2uliqTaK3pyj/6IfdOQQKLazYb5sg+rYR9rghfsEODBcA6TmlVzyO9/1WJRpg3UTNRpqTW1cLZBydoDlV1hxXHtQ2Xh9laYMvmUdTQwthFBA7ON0hpzqt84zpCsvbjVuuKAfiQjMrA0RIkLhD57bhkeSHsB4gbJvK426qx0fXO3sUCJELwMxQxai0O0RhnonsQdbhGP6xVC5bq2Mgz0Oem/OlUjGXoOQg4l5mAdiy9ZRW+m8FZcbXIECCzZr/LfWRb06WUiqpHaQb9E/ayDAzoH2ledt6T8ljqVl80GQ7MdCwLVIODCe4qrGMxYmQvaaUxXPhLRke6C2gM/ZELZ+erps/uyecr+kygBQODKTb00PD3Q1WwSvaSTc1WIczYB8f+yT7jTa7Oh/v0K1T8ahA1gx2DbAmPprDUGnrbN3sJyGwjCn/SXwuMdg5p9kQ7aLzZLYPVCYMStroDxP7zrj/Mi8stzDebHxLb2E+vDWBLNnvuEDm5P3OiTGreOY25ebYZkie9jZXlTuKd9WEziT792HBgUktUgsLNcq1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(136003)(346002)(396003)(39860400002)(38100700002)(966005)(26005)(316002)(122000001)(186003)(2906002)(478600001)(55016002)(8936002)(110136005)(52536014)(7696005)(66946007)(66476007)(86362001)(6506007)(66556008)(53546011)(71200400001)(450100002)(83380400001)(66446008)(64756008)(9686003)(5660300002)(76116006)(33656002)(8676002)(2940100002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/2MwWZZh90v50rKITs/DWcTQERotllWEQNeSfqqSP4rkMt+0q/efPff42otn?=
 =?us-ascii?Q?kwJzwmLv+TFT1/rXVr2Uxn6VM4LZlZQKFn2XxDJ6iZxXqYldLEjfy3ytKrGs?=
 =?us-ascii?Q?H7X1nbBZgNaXTP39fT3YYfagV7bvXz9WXWpRTOO6ycpTBuFw2JYXPAfoTwJu?=
 =?us-ascii?Q?BXXTwLX36IL3M5imQqd2QTqYJRO6zcSIDjXIfBMBT2G6MysqPHRUDJXJXvNX?=
 =?us-ascii?Q?WA4NxeSjF3em+G503Sv1KfC+l0OazrGc+nt8iQzCurDI94ge7vJ30L2YjNKl?=
 =?us-ascii?Q?g2dxHNIymE/y4bR7fcvyw4oRva6zjb7f/MVJLGh/xE8VmvqArymbKwM42732?=
 =?us-ascii?Q?e3mVWvaG+lMP0BbvV0OBGAbgklZSqTGL2m/39F8UL43772u4uhrfz+x2UaCG?=
 =?us-ascii?Q?24IW79YgO8Mgj+EYXtfi+uCoOCoDtLgbTWRQNz8FTTexUwhkULbe/o55zpVf?=
 =?us-ascii?Q?xccu98codyRcmnB6wMVui9QWUgpzHq1s+H3kX4WjZFmFQs6AcezEpKwr3CDq?=
 =?us-ascii?Q?O66m/Y+dwIvBy3AvaOSND529/Z7TzB8QZUn50NxVOc6MeymjU1+ERKDcuAg8?=
 =?us-ascii?Q?iXhbGQZ6PAeeVRCs44zeMpAlj5j56hwhNCtQv6fTmjXZAqHHtqjeMe3nu6vg?=
 =?us-ascii?Q?ZEmQlBQ1RR4J9/r1gQgnA/ggKee5yIRmfG3sShPYohrKIyr4n9KHijTT/h4J?=
 =?us-ascii?Q?+wJ8TPDV7LZ+PZ3ISBVC3oIy/f+KLSJW8PaH06nBZcqRgatvLZQ/r1LyKRDF?=
 =?us-ascii?Q?aMxS/HbbieOkzBRGpyhORd8tteF5LzNMB2AqZyRLQTFG1QcLXRI52wribCuY?=
 =?us-ascii?Q?skrBx9/Pum+FtUvU87IsoKahRHCPzh1IxAZ7OrJEYSfNHPxjYHGt/DQsrX80?=
 =?us-ascii?Q?5nLO4KLfrAuXQLd6v2n2fK9KKCYDGuuY9MlxmDggyCFwDK06KVNMSPDOD1dh?=
 =?us-ascii?Q?N6Arjy30yQdrOSe5hURUfH9C6BJuDeUGIkwKKKpyWsnPOLmJDXzJ95wFgFXn?=
 =?us-ascii?Q?WUfLyoJVV6+LwOzDs4/8K+8thRpT3YD+AqYuCOL4trOqOTldDGYGCXqen61W?=
 =?us-ascii?Q?5jU9/tdHS0qceJY8+avHp38jbzDjPEnS4qIaW0NfY1gITF4Y1AcemSd9KbGs?=
 =?us-ascii?Q?5yGcf61BA9uZbgvigbZdkuGKpoJHti3IY9aLOeiDPlDvWcVeosBwRbbhzja5?=
 =?us-ascii?Q?j2+VPGcZnQYbBbMN54lJ8xyo+XckBCl2DDTk92HpMG/76z+A2k+9FRDEtfMI?=
 =?us-ascii?Q?yfIGQk62dNB1SRFhJqVpYHvqgZLQiA2k9W39py+6bpWaSyPHswr/xXGr0+ow?=
 =?us-ascii?Q?AUtFnBnIK5CqnKuND+LlnymP?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 035ce085-a6b2-4e31-6daa-08d92cd88905
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2021 12:57:57.2308 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cRHljLVhPSNmSf0kkDMzG2NvfPdIgH2aiXgyN86Qvds/6TAY4tD0ggM+IW3k2C2QORviwMpFU7sxg2FUINubOT5i/P9hAmUgovYNi/MCuU0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2949
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
