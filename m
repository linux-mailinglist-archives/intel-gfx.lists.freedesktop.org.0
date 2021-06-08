Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BABA39EF2F
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 09:02:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94F2D6EAB3;
	Tue,  8 Jun 2021 07:02:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8CC96EAB2;
 Tue,  8 Jun 2021 07:02:03 +0000 (UTC)
IronPort-SDR: v0c65Ljt2P1HSxDhYIPNirVST13XQBNKj1AyJvno/5so3NiKoHg8klCNCWcre3ily1bpgD5Bqo
 Nu+NOeDqhLvg==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204750953"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="204750953"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 00:02:00 -0700
IronPort-SDR: hFN7vZAanymsUK0saaM4ih5f9WaIrwRBYYpTOPds++oPb/ocDtuW54TNZZQaVXEPU/7ObsO7yd
 uydo43yBhQzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="637543327"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 08 Jun 2021 00:02:00 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 8 Jun 2021 00:01:59 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 8 Jun 2021 00:01:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 8 Jun 2021 00:01:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 8 Jun 2021 00:01:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EJRzkN92Ar42IC3fmRUCC22yIRukrDPpTKpVtAJaCW/D7piya1JXeYL4K7FRTs7yylVDvBTlW0gKNuE8hb2dp5zXpZGhXha3wpmXjvoQeMKoFo/fPNQj1I9yzO0j/6iUk89UhIZ7yF1D9CgRhUobhouDBBMj7vFkVCAYW25fC93Sm38GNyuMSSQuOVU8q9royV1+F2bvNhDIJzUabasRs7Zbm4OKQZQdfRCJy4Zt585sKgETawhMqi/FP4eKyjlEKfcxa0YzjFvWgQbu2ALzi8pKBGgCjI8URTzLgqFv5UhAQ+90Og0PSoga23lXcLMSx2gO+X0wNrLCg3W3Lu7ZDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CVwimsZIWb7WzDP0pWZGDnp8ICF6gPH/1eW9w7zbQEY=;
 b=cVtKAjCHN57+hN6OJ9G7jri0DPMhSajD+M2iOKl3qzxvck1tbb7maZCP6WpiTNip2E4lZo8xICEFH4jWwGRAIdmwJBcwXxs8SURJXFaTs3vDd0rPSYnIeLnVfVvT4Z4+rApHZEosT9ke1OA+rR48OqrPU1L7NaHhRwG8iK9SLNuEc0aBtkXSJdPLPx8DfukZVW6Z3XlqoD91xfdApOieel6khxxgSOoHWdcuiiL/Wk3JSqwucmUVW6Pc/VvdT/l0fvTzKlsIk5zsoOeJDNEB11TLtenAvzrPTwKkUOBIdnCaM5edhm8RMmrCprMJUdYGbMZoUBDDJK8JQIj/OviB0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CVwimsZIWb7WzDP0pWZGDnp8ICF6gPH/1eW9w7zbQEY=;
 b=SuJZZeWdRL+VyjkqKEKhHBRfflULnBvPoTZZ80PTobHtHmpJsQZ7S4hSAKFbfcGWw7+ivIuRinRByBHgw8enUMh0+RBCgdGyVnyQxHnJ3uXh2plWCZAdCHDxJXmT5SOSKZ/oIvK/SiVy62qEkJ4pXPPJjQnwJco0CfO+ovwZb8s=
Received: from CO6PR11MB5569.namprd11.prod.outlook.com (2603:10b6:303:139::20)
 by CO6PR11MB5572.namprd11.prod.outlook.com (2603:10b6:303:13c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.22; Tue, 8 Jun
 2021 07:01:58 +0000
Received: from CO6PR11MB5569.namprd11.prod.outlook.com
 ([fe80::2d63:b94a:89c5:4514]) by CO6PR11MB5569.namprd11.prod.outlook.com
 ([fe80::2d63:b94a:89c5:4514%7]) with mapi id 15.20.4195.030; Tue, 8 Jun 2021
 07:01:58 +0000
From: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>
To: "Srinivas, Vidya" <vidya.srinivas@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_big_fb: Wait for
 vblank before collecting CRC
Thread-Index: AQHXU3sTO1a9PSwJqEaQmJNzvXJdZ6sJv0KA
Date: Tue, 8 Jun 2021 07:01:58 +0000
Message-ID: <CO6PR11MB55693230CBD2262DDCF5A0C18D379@CO6PR11MB5569.namprd11.prod.outlook.com>
References: <1622176025-12499-1-git-send-email-vidya.srinivas@intel.com>
In-Reply-To: <1622176025-12499-1-git-send-email-vidya.srinivas@intel.com>
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
x-ms-office365-filtering-correlation-id: e748ce41-bc99-4773-dafc-08d92a4b4eb8
x-ms-traffictypediagnostic: CO6PR11MB5572:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB557234949212A0B21C4182E68D379@CO6PR11MB5572.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:459;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qQiChxlbZ7wKErAEMcEQE8Q8+A7BlPoR/CEdSg1qj9a5MQQJPBk062NxXXlzgM42k5kSMo+vHxlhjE3OPPXNZoSg7qQ+JpxrJEK/LtuftMw/eJ9SjtudJd8vzcyBJkMB70f8u4vh5Sz8pNKMwEF3QhqeThyDFtNIbBB1lpjZ42gpoc1yfDYSnE/8WYJ+1EqR1hZQrGG7v51Ah6fs9Gojes5GpPsIzK1bwr6RoA5SmceVCBjKZ4IpizBCUwrs4OEfgsd1aVGd+4H3DqpeYekXChs4iw0cNFfnRngcyKfJCpPtbbBWaueen9+LeSRyItj84wHOz7Q6E1tOMnvRGPBP5JADKMB7FakL7VbXINbhNJwcI64AYF7IzPjxApMWQtY2MvaXLFMEhmMQY8X4OiZsj8RFQvqEo8cYtQb8blvSu2Qga5ImxqxGL3bj5nYkV5rgkFXWR0fg5DJ1oOcUHa1ByxXZuzgqqzJDOWiNHIZLTsjBYsEuF2W3PehJAJ1sChHgZrm5RiXz+xM9neUi3FkyyJNBCLbrSJK9Bq6cUy1K3dg8ZFRdSwOM+RnqoV5hsGL1F2ye+hbXKcN87gf1ff4D6n+Fy09mAIJ9GPbUCF569de1wFxLR4/yPTR82LIv5GUVSEbL+NiXYF32Q1hYs19leg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5569.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(136003)(39860400002)(376002)(366004)(346002)(478600001)(38100700002)(71200400001)(122000001)(966005)(26005)(4326008)(107886003)(53546011)(33656002)(52536014)(86362001)(5660300002)(110136005)(55016002)(316002)(54906003)(7696005)(6506007)(66946007)(76116006)(66556008)(186003)(64756008)(66476007)(9686003)(83380400001)(8936002)(66446008)(8676002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0bXcsAjO8lYfKpa1ccEoTXtQziIJ16lwejjtsGekVrdSfpGkqCVrTDQ8zMRc?=
 =?us-ascii?Q?UiYZtptFPHsItCOWypYG1FMiNvxd0gnCwdelMxCYyH/0dG+AhH5/1euhsv+y?=
 =?us-ascii?Q?+UHJxFvNSopOhVRonIMqHK2MTEba2CTEWrcHdFP2C/q4tJXGcz6xUcHOHRZI?=
 =?us-ascii?Q?EJ5V//wFAE61s/Kv8G6hY0AGSdBd39gX1jZjz7ECRbPoPNftw+Mog9J1Y7GW?=
 =?us-ascii?Q?PA0rj7QBiVpckjt3sAaZXTig76SOtqZeLloeKyoXkDITU1waK4OqM7d+A3ec?=
 =?us-ascii?Q?YFHHiiFV2ZIl0BYShhejt0JNJoyW/VO4kvifY1D57O7qEetpn8+3aNAi41EG?=
 =?us-ascii?Q?b84AaOp90++BI/ZR7bzhLrvyt8fdzRTJAcrQsPm09bfHh/jos66OnBQeOmRl?=
 =?us-ascii?Q?3GCtacBzYBDCryVlGt8RiwFKtuPPMPCoXH1vPelMorwlAmscHeVNiD26Zz/J?=
 =?us-ascii?Q?HKB/yyFn6fveno04T+XRoTRNK3L6MPeWpsOya2lX33P9Q4GSidLCtEnhCiaD?=
 =?us-ascii?Q?qeaGlh4Cv2F3OBuRT/hSlEH7XrX9pjFrmXN2mlNDBTd3taQiio019GsKWiCW?=
 =?us-ascii?Q?Piy0h4emYMbNIgY6JyyANk5KwNpnbU2S9z4clx+r0luiSBJugoBNLyAShiHm?=
 =?us-ascii?Q?iNh8NCAMVmcWGnmbF+4LPG60Y3R3k7vU+jtvtytGzn+oXQrCIjTsGNPVzZ1H?=
 =?us-ascii?Q?QCshRNuMkMfwrX+rbCaDd4250DHdR2UrHxFt6hjJreaIVtzRgpYItwFcZw0R?=
 =?us-ascii?Q?DWA0SU7vBeumTp09cto80GZGHCSUS/1EcWoXZ0KateGl202R8CxDXBm2qTzq?=
 =?us-ascii?Q?g3CASi5sFFNKX5djKmB17m5GG9z61nG+UtzUApbQo1NDNNS8mjh+VUwY0ODH?=
 =?us-ascii?Q?vkA8PkvndqyytG91DSNLAMTze2wGuquXwA1sFDQZI/ejyVtZkWmZJh+W4A3v?=
 =?us-ascii?Q?vT3LZo7IJZP/5IUqN3jURY9XRuF73vvZi+peutb1fD3fb8Imc1cqUYsJve80?=
 =?us-ascii?Q?COAMpgFslEWoBRqW0N122yyGRtK3UGxqe9BTt3pH6uILq3JOc9r2Wrvjf6dK?=
 =?us-ascii?Q?kdpRnCmiQQyUMOemPv9CStfqonqhoRgyqgtXURrtadZJuQFPL2MtB7/Xl549?=
 =?us-ascii?Q?leGBWWhm5nP3XtL34a+odxmd+9hvtbM/4jfz5qIZXEBrapcApeb9kkgJIy2U?=
 =?us-ascii?Q?q5SnxhXlcvBtJ5zMTog2ePTB9200I3KkUw82MWOA0FVnhCXgYeUtv9086ApL?=
 =?us-ascii?Q?ZGn7zGuEn4g7wjpYncLKohCF2Zvsm+K1a4wMzJJSufQDxn/I7K1T5WMzI9Bt?=
 =?us-ascii?Q?xuUHOg009c1Y7thDF983WwoA?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5569.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e748ce41-bc99-4773-dafc-08d92a4b4eb8
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2021 07:01:58.0590 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tu/gn6T551Z6CSdeRy06GzVVQe8GbYPM9rfoSgxYMmjKxP+YzKKOMtEjAH7E249vutoSjQHWlLbAc6nBM3Ou4FFhGTN+I+h4jS9P2YPWQDk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5572
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_big_fb: Wait for
 vblank before collecting CRC
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

> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Vidya
> Srinivas
> Sent: Friday, May 28, 2021 9:57 AM
> To: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
> Cc: markyacoub@chromium.org; Lin, Charlton <charlton.lin@intel.com>
> Subject: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_big_fb: Wait for vblank
> before collecting CRC
> 
> Without wait for vblank, CRC mismatch is seen
> between big and small CRC on few Gen11 systems.
> 
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  tests/kms_big_fb.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/tests/kms_big_fb.c b/tests/kms_big_fb.c
> index b35727a09bd0..f90363c3beb2 100644
> --- a/tests/kms_big_fb.c
> +++ b/tests/kms_big_fb.c
> @@ -254,6 +254,7 @@ static void unset_lut(data_t *data)
>  static bool test_plane(data_t *data)
>  {
>  	igt_plane_t *plane = data->plane;
> +	igt_display_t *display = &data->display;

For code readability purpose, I think we need to update to use this variable
wherever we are using "&data->display" in this function.
s/"&data->display"/"display"/

With above change, this patch LGTM
Reviewed-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>

>  	struct igt_fb *small_fb = &data->small_fb;
>  	struct igt_fb *big_fb = &data->big_fb;
>  	int w = data->big_fb_width - small_fb->width;
> @@ -337,16 +338,17 @@ static bool test_plane(data_t *data)
>  		igt_display_commit2(&data->display, data->display.is_atomic ?
>  				    COMMIT_ATOMIC : COMMIT_UNIVERSAL);
> 
> -
> +		igt_wait_for_vblank(data->drm_fd, display->pipes[data->pipe].crtc_offset);
>  		igt_pipe_crc_collect_crc(data->pipe_crc, &small_crc);
> 
>  		igt_plane_set_fb(plane, big_fb);
>  		igt_fb_set_position(big_fb, plane, x, y);
>  		igt_fb_set_size(big_fb, plane, small_fb->width, small_fb->height);
> +
>  		igt_plane_set_size(plane, data->width, data->height);
>  		igt_display_commit2(&data->display, data->display.is_atomic ?
>  				    COMMIT_ATOMIC : COMMIT_UNIVERSAL);
> -
> +		igt_wait_for_vblank(data->drm_fd, display->pipes[data->pipe].crtc_offset);
>  		igt_pipe_crc_collect_crc(data->pipe_crc, &big_crc);
> 
>  		igt_plane_set_fb(plane, NULL);
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
