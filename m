Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCB43931FE
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 17:13:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0928F6F404;
	Thu, 27 May 2021 15:13:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B77DF6F3FC;
 Thu, 27 May 2021 15:13:26 +0000 (UTC)
IronPort-SDR: 54nfij+Y9E3Fsrj7nqAq0ihkJcCoJzA07ARDCjM1j/VLSC0H3/FJ5r03QRrNevv1bQuyqDVAeo
 z/Wpv10D2s7A==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="189874623"
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="189874623"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 08:13:26 -0700
IronPort-SDR: dXJJayUp0DltA8bqWqKquGngSW45u72aduxeavSD181it/kBZRJEw3QJH7vWHXCVOu2rRndBd4
 2EMUaQnHBpSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="397783607"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga003.jf.intel.com with ESMTP; 27 May 2021 08:13:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 27 May 2021 08:13:25 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 27 May 2021 08:13:24 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 27 May 2021 08:13:24 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 27 May 2021 08:13:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YTKqKfA6/qUnTGCY6gm9k2AplKBE0dfaQ0CEHHXvpGgwpk9nG7vjhMEVcuqcYQ7Kcpt6tYex99219aF2C+K7OzPUZ9Vmet8XTTShcmW9MUEe8S7V6H51XigjC8Wbl+ISDhm0wZ0+vsmksbN5TVUaQZcz2Ne2XA6Q+wl3amYx/Y5TBoKiQuYBxNlbqDRYAqQ8iG7Hm66MDB4t58v5O32cW69v/HlpdAX/a4Emm1cRKL2SOJO+ztVnsZq00ZCKqJ/ySVCaNJe/ZmOaPLnLJ1OomPkkkJRImtvYDsxJSC8H9YTtT4GwFr5J7niu+OGkbMf4+AsfrDSV2+MRMvcMhiflUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H9uqDF9IATOxsDUmkGGgBDTIHZiqrlBaLPoml6dy7YI=;
 b=EwR+rbhiE+fIxJ8H7eSuk1H8xfjkpibnxn3dcAcaq8ab5DCUybVXZVl/CxXyfEWqXrfuwJLTNcwi08zbQGguqjETAGtv9J0G2B/FycT5KCC9HSuTnlpYRRf9/3YALg+IvkJSYVwhnQBL1OPDoXGa6hGHe4/X3O5TjPyECqxk6Hw89DXjH/F4gWJeNVXDT9lUawn+OUyApZMYlDkUWRolOF3LgzHeZtFCFLXAp02Txks/PKuLO/+ZL9XLbRQEojlnKw25NZNfj5wMArZYlxjn+uBLeT0m0/Wd7nQFAWUxsYalrSmrcU4SWNzhfY+zEUOgeidbjqiQfXlspV/xNM2EYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H9uqDF9IATOxsDUmkGGgBDTIHZiqrlBaLPoml6dy7YI=;
 b=FAkD5kRs1PjU8KDU3Z8JJ5e+c2V3CDbolS4REQw2dYFXCqE+u8RkqkO+cFx+wnRwscfSotIux96D9BIdnfhpZOfwCJkZjilDnHGQnD/3ASqFx7rm9pHz70u/vSTs9tcm4ImcW05B1TobHm/5WdCyn2aPinYHCew9ZOYcDHKgoTk=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by BYAPR11MB2710.namprd11.prod.outlook.com (2603:10b6:a02:c7::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.24; Thu, 27 May
 2021 15:13:23 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626%3]) with mapi id 15.20.4173.020; Thu, 27 May 2021
 15:13:23 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "juhapekka.heikkila@gmail.com" <juhapekka.heikkila@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Thread-Topic: [igt-dev] [PATCH 4/4] [RFC] tests/kms_big_fb: Wait for vblank
 before collecting CRC
Thread-Index: AQHXUwY/gOC4SIRqt02VKzTgT72Mu6r3bqSAgAAAYHA=
Date: Thu, 27 May 2021 15:13:23 +0000
Message-ID: <BY5PR11MB4372257B0B11DB05E40EBF4D89239@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1621570131-23943-1-git-send-email-vidya.srinivas@intel.com>
 <20210527143128.25366-1-vidya.srinivas@intel.com>
 <2960bd68-52c5-9129-5acb-4473007b84a6@gmail.com>
In-Reply-To: <2960bd68-52c5-9129-5acb-4473007b84a6@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [45.127.46.60]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: facb10a6-5e07-4e25-4e9f-08d92121f89a
x-ms-traffictypediagnostic: BYAPR11MB2710:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB2710438D39017B046510CC7C89239@BYAPR11MB2710.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1N8cCql/RKPfoLlVsS6ZNl9l1Ra/wxzM2wXNaDsRjnb2GvE1ZpQNsLKLq/R7yG7iHSV3aG49G2It6TJZb/s6omHM6zmxtoaAuGzi+J5hre2uWUuxmMRJQgPAfENPKE2Kt6CGH0PUHYNWs535PyUuiKwJtEONgoLHnCQZhJbOlkL+0CKIJwAyiIXA3QtJW99MalguJttpo9+SBpFV1iA/TmWUiTiGtiWr2zBDiSWvhxAUIAZtUVU+jILIc1zHcrgS5pz7uzpEQ8C8skYVfmP7YAPHccrJI4yRnN9RiFcFBjZCr4MTJFBbC4rjdOM3Fz1Lz8QRFGX5DYlJiWMC5IYOwjtrt152MmuJ4lP+DdOy3sW0Hb86xLjKpvIZj5M3hP3VPF/fMYobSNgF5u/crdCvH3QsGblJjPx+lnL1RZtGgewjigPddw1cCtJFWbFz6ZKvn3VREcFJ8i7SEd4mx4pgIgbV0ozr0KEpD0DE+2369w85xnHvjFnF+IVJyLIn3q7Z+ck1fiRTR0N/WylOqoxbMVCHFekv5nkqW4Jbs76u+Tr/2fNhRRLO+dN6XQLx/Nnniq/IMvz7mObolDMNmCQZ5yBUB1uuKVJzsoKdmwqKl2U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(52536014)(64756008)(66556008)(66476007)(4326008)(8936002)(5660300002)(9686003)(66446008)(38100700002)(186003)(2906002)(122000001)(86362001)(33656002)(26005)(7696005)(6506007)(107886003)(53546011)(55016002)(76116006)(71200400001)(83380400001)(110136005)(8676002)(498600001)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?SzdBdHliekJBYy9xWHFGUFcvTTZIVzIzM2s4RjRmeDNPd3BUeklMWHBqbXV6?=
 =?utf-8?B?NTBEYjVjdVQrQ0JFQWNrOFNTYnZNUlRubExSRE5lblRZaTV6NlpxMFIzZkFS?=
 =?utf-8?B?MG5zekYwZjZ0RGFrallEbWNIRHRsMmpCMU95QUxRRVEzQzFieEVmMzNIWWsz?=
 =?utf-8?B?QWxkTythRGxKN2JHeFZZTDRzajZRcG1nTG5yUUQvSFVOZDBLemlvRXltdXd0?=
 =?utf-8?B?WHdXaStNenZiT21GamUyWVpXbnVFSWgzRTl4VzNBSnNzUjlrVlA0TWFTVlNV?=
 =?utf-8?B?b2hKRWVkZEVrcm1JdDNVVmNDNlJJbUI1WXg0TWFNWUhHUWZYYzRGdG5XQlZL?=
 =?utf-8?B?VkZLVFBYVmxJaDRMeVZSRnl6akJsMms2VGlSdU9Bb0c0a01TY05lakU0QWdq?=
 =?utf-8?B?NmxMSEFZdzBEUVA4ZDVob29VL2o3cDg3MkVPYkNwZ0RxL3RNNVhXa2JXMWkv?=
 =?utf-8?B?Tm5YODNzeFAyeFVXeHhMK1dkV3NNUWxMa1NRa1JSaGpyNlhvRlNCWFJiL1lT?=
 =?utf-8?B?dFZlMXd6a20yQkxFa1RMZXlXWUZveDFNSnl3NExXK2lzTFNpNDF0d1hVY0JZ?=
 =?utf-8?B?cEl1ZFBlM2FMZ2RyOCtTcGlDbUNqanFHTzdJbHIwS2ZCQXBtVklLRE56cDBq?=
 =?utf-8?B?akxqRlhBQzVzNTZ5eVUzK2kzYjNYYWFTaGNPVC9rd1lqSDUvMDJlYXMvNEVP?=
 =?utf-8?B?UHV3VHB2M1FZZVM5QlNBN0dGcVdLM3ltUTE4U2tPdUN0K1pFMmxOQk9FcGdB?=
 =?utf-8?B?Q29GOVRrNDBuSmNiTWFRZFBkU09lV1F4MkxoYlRMMHh4SXVxSjlMTlJ0OUZi?=
 =?utf-8?B?TXFDSFhjQWQrM1diMlBhOUY4czdlRlBIc3pkVFZTU0N2b1BZOTljWlVHeTBK?=
 =?utf-8?B?ZnB2ajdNL2kzK2E1WTdrL0VjaVhYamJyVDBxZmpBV2Zvb2JMMldQQWx3NmtI?=
 =?utf-8?B?MTZodU01ekFKOW50Mi85QmhuLzVvODlyVzFQWXlCNnhHNHlkUXVkblh6ZTg2?=
 =?utf-8?B?Nm1aalQ2UjBDZjZaSGZrTG01dk5wbmFFaFJBWFc1QWNkY2RQZDFBVmwwaHVu?=
 =?utf-8?B?Vjk4WHhsbTJTa2Q0UVdHaVYrMVlCMzBuUDQ0d1IzaGhZaUkxc24rMUtLZGRZ?=
 =?utf-8?B?YlBzN245bFlOZFc3cDkzVmthSUxtMWJwdVpqK1UrcHloWGtoY0pEeDErZTdT?=
 =?utf-8?B?UGsrYko1UlI0WG5mTzFucHBPSWs5OEVxby94UGx6eUg1TU1DbTU4Sk1NNStv?=
 =?utf-8?B?K3VQSkJoWERPL05aTzEyeVpLNlVnTzczVjhGQlkzMlpWS08yMEZ5ZWsxdTda?=
 =?utf-8?B?NXJkdHpZMElYa1VjRGxRU3VrQmRjbEJaN2lTd0JYV0ZjSWp3bDBLcjE3ZTlG?=
 =?utf-8?B?YWZYdGwrRE5VeTdvS3FvOEtMVTMzT21qTUpQaUgxS0U2UDh0NlQvUlJBNVkw?=
 =?utf-8?B?emM0SFZYZjBQeFVFa3c2MXh4cFkrajhoSHlOZW8rbTZkN1hiY0dwWWtiaVc2?=
 =?utf-8?B?S0FXcTFSdk8rdUUrOHQwaVozOW85NEsyek14U0ZxRnNkNllDRS9wYS9nb1FI?=
 =?utf-8?B?aE5IWE1OTm5ISlNwQkZNRzlZcTcwVzEzL0g2SHo1eHR1TEtiQnNKbVNhT29p?=
 =?utf-8?B?VUVDc1NPOWZaTVZ3OWcrMjZRajhaOWZoci9HTHVaVFpZV0lJQVNZdHB4Y08v?=
 =?utf-8?B?ZGJaaDBNY0lEMlpwTmZJTkZVaWVVbEI5RktnUU1QaHgycmJMcXpsV09JVnJJ?=
 =?utf-8?Q?D9vseK35NlCGIyEh+Q=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: facb10a6-5e07-4e25-4e9f-08d92121f89a
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2021 15:13:23.7215 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KXT67mIMNu6WZwa3NlWP9ztaOFR6XFfaC6atfOqkWImpRXeXLTKiQtQPVJPs1sKEIkkOpp5/WyYJwmzaiOSEgjErKhZhW9+AI3rC+jHDcMs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2710
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH 4/4] [RFC] tests/kms_big_fb: Wait
 for vblank before collecting CRC
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
Cc: "Lin, Charlton" <charlton.lin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Juha-Pekka,

I am sorry, this is not needed.
Thank you so much.

Regards
Vidya

-----Original Message-----
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> 
Sent: Thursday, May 27, 2021 8:40 PM
To: Srinivas, Vidya <vidya.srinivas@intel.com>; intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
Cc: Lin, Charlton <charlton.lin@intel.com>
Subject: Re: [igt-dev] [PATCH 4/4] [RFC] tests/kms_big_fb: Wait for vblank before collecting CRC

On 27.5.2021 17.31, Vidya Srinivas wrote:
> Without wait for vblank, CRC mismatch is seen between big and small 
> CRC on some intel Gen11 platforms.
> 
> Change-Id: I3bec931aa901130997e693ac1cacf389e2a8100f
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>   tests/kms_big_fb.c | 10 +++++++---
>   1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/tests/kms_big_fb.c b/tests/kms_big_fb.c index 
> b2027b6b9d1b..da682593429b 100644
> --- a/tests/kms_big_fb.c
> +++ b/tests/kms_big_fb.c
> @@ -254,6 +254,7 @@ static void unset_lut(data_t *data)
>   static bool test_plane(data_t *data)
>   {
>   	igt_plane_t *plane = data->plane;
> +	igt_display_t *display = &data->display;
>   	struct igt_fb *small_fb = &data->small_fb;
>   	struct igt_fb *big_fb = &data->big_fb;
>   	int w = data->big_fb_width - small_fb->width; @@ -269,6 +270,7 @@ 
> static bool test_plane(data_t *data)
>   		{ w / 3, h * 3 / 4, },
>   		{ w, h, },
>   	};
> +	bool check_platform_intel = is_i915_device(data->drm_fd);

You will not need to do this. This test start with

drm_open_driver_master(DRIVER_INTEL)

hence will always be only on intel device.

>   
>   	if (!igt_plane_has_format_mod(plane, data->format, data->modifier))
>   		return false;
> @@ -336,17 +338,19 @@ static bool test_plane(data_t *data)
>   
>   		igt_display_commit2(&data->display, data->display.is_atomic ?
>   				    COMMIT_ATOMIC : COMMIT_UNIVERSAL);
> -
> -
> +		if (check_platform_intel)
> +			igt_wait_for_vblank(data->drm_fd, 
> +display->pipes[data->pipe].crtc_offset);

Above this line there's flip to different framebuffer and below this line there's restart of crc collection before get any crc. If there's need to wait a vblank at this place to get matching crcs the actual bug is somewhere else.

>   		igt_pipe_crc_collect_crc(data->pipe_crc, &small_crc);
>   
>   		igt_plane_set_fb(plane, big_fb);
>   		igt_fb_set_position(big_fb, plane, x, y);
>   		igt_fb_set_size(big_fb, plane, small_fb->width, small_fb->height);
> +
>   		igt_plane_set_size(plane, data->width, data->height);
>   		igt_display_commit2(&data->display, data->display.is_atomic ?
>   				    COMMIT_ATOMIC : COMMIT_UNIVERSAL);
> -
> +		if (check_platform_intel)
> +			igt_wait_for_vblank(data->drm_fd, 
> +display->pipes[data->pipe].crtc_offset);

Here it's the same story as above.

>   		igt_pipe_crc_collect_crc(data->pipe_crc, &big_crc);
>   
>   		igt_plane_set_fb(plane, NULL);
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
