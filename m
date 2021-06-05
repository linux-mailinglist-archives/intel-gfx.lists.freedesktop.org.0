Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B10C039C616
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Jun 2021 07:47:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E7DD6E855;
	Sat,  5 Jun 2021 05:47:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43E2E6E853;
 Sat,  5 Jun 2021 05:47:10 +0000 (UTC)
IronPort-SDR: sHH4p/8CeawafNnpyG3VdiswPfHOC7MfFS49m9gnC2Xy8OcnEJF9Ov3HP78Z3q6o0GVxsUttz3
 NWQTmPOPLSbw==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="202553974"
X-IronPort-AV: E=Sophos;i="5.83,250,1616482800"; d="scan'208";a="202553974"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 22:47:09 -0700
IronPort-SDR: csXFf4W27k02va8zLiYZ0M6TvG5PgfZCsLI2xSmkPBgSYuqldawWBbp/zfcaUWAaXMOhzOuHOw
 Rvtc/w1wB0Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,250,1616482800"; d="scan'208";a="551371381"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 04 Jun 2021 22:47:09 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 4 Jun 2021 22:47:09 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 4 Jun 2021 22:47:09 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 4 Jun 2021 22:47:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VzucSUmQBWbR7s0L0ItK7P8LMlwF4jkh+9/Dz1TYlP/D0wTHqU77Y+2X2UkVRTmqbE8bH5+axCu0+9yJUMO52Rky3MK9wGCX+tl+B2cqHJD3ArHdne3Vkn0YRY+xO/4P8uMGmCtL2GHDHFObqXgZuBg5CxcgO9NItw7IvOaRLOoDmQjl4118CTQzVpVBzoal4AukeUNvSl+GkSXTDjMKeiIkEQS/eoCn/WEWDpV+JW8749uWbtNIjlU00LTJx4x4NNcPIxc8ql2LbFzdp4xrZJ1qHhvABh9m/smcoxBZK7VJbacWPg9DPANX8uDdGu+wv7Xu46/B/mcB9WXFE6MIiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=luZxps5b9hB460pIEVA6VMnuMUH0nInZnsbl0S/FgMo=;
 b=nQmAlmV7lyUvD9l4und7QYmw/wWd30iTKvw+V0nzqSAw8hHZYOC2K5aQUm24yOhtf5JvIjkwlXGQ89OgGHDYsm48DCt18AngcgNF1h8cZVDsV4L4npYnzGPUtBEE7HTjg7L7C5ixBC8Lxoe5nmjHJyckdYFmXzBvErzVkl9FnnMx02L+j31HeLLpaRGIjLwatfr0dMs8WTQhmpCC4gXNffXI/CE+ajxh2YLqoeHEDncm3dkl7mslCsQdBdEhMZdh+F0jIK411K1SStfqvvYfs33mF8Ut71qcl+c1RILzR4Rm/zJqLKNBaiV2SiaSyfwe9eMBDja0TC/MsDtYejMxYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=luZxps5b9hB460pIEVA6VMnuMUH0nInZnsbl0S/FgMo=;
 b=ZA7mAtXumA7EYYNVUjFOl9K5gZDhIYNqnp2mFr9jqw1bOxIR1DVIqKgQDYurrz/KGfyuDlIYfj03nDe0cbSnGMpwRxaKe/qf4+7LMy7sUm/DB3yxJ7UGQfZD9FT96ryxrS2ozz+5kkSwpbhJdb9yhYWIPtzzuFi8a2OpzIGVZUE=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by BY5PR11MB4402.namprd11.prod.outlook.com (2603:10b6:a03:1c9::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.26; Sat, 5 Jun
 2021 05:47:07 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626%3]) with mapi id 15.20.4195.024; Sat, 5 Jun 2021
 05:47:07 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: Mark Yacoub <markyacoub@chromium.org>
Thread-Topic: [igt-dev] [PATCH i-g-t] [RFC] tests/kms_plane_alpha_blend: Fix
 coverage-vs-premult-vs-constant tests
Thread-Index: AQHXVtzvXaC1kfeq70afI9qzvwn9SqsENMaAgAC56bA=
Date: Sat, 5 Jun 2021 05:47:07 +0000
Message-ID: <BY5PR11MB43726B16E7B6A404C9FFC4FF893A9@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1622547939-8157-1-git-send-email-vidya.srinivas@intel.com>
 <CAJUqKUokxsKTRF0v4A-Oi5=n0wZJGQkLg94m0njESHQNcXcWew@mail.gmail.com>
In-Reply-To: <CAJUqKUokxsKTRF0v4A-Oi5=n0wZJGQkLg94m0njESHQNcXcWew@mail.gmail.com>
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
x-ms-office365-filtering-correlation-id: 7669b6e5-33b4-4998-b8b1-08d927e55ae6
x-ms-traffictypediagnostic: BY5PR11MB4402:
x-microsoft-antispam-prvs: <BY5PR11MB440223D373A8BE277928A98A893A9@BY5PR11MB4402.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IR2pDsgBM5vD/ARqvEK9iCyQ+wXzK6ynsUPw9UYumFlYT5hzHWf4mYjgK8WH/KYcNU073T/vGPTo8/uWoyxVZqK2zDmduX8EvwJbmb5itn6Rr17SWk0CrCqNT9Gt4DQI3BFdkQbaX/LrQk3rKzQ2NtmKy/bKlXZy3x/9daFia5Vh6ahQyxllaJmao1bjBGqOFoHNqLPTnz1z2/dIlf98ahRZnKNrLI034GO0AEMTyE8LHYwSCCUeUdI7sByRGkHOO9lrRIjNwFIVxSUIkDSGrrNFimhiUuNm3dcTdz6nozM1NXSRj2Vsv0G3EqEis90oozjp4tQKgGUdWQJe8381GE6+oHjdEBJcTEdcoeAaf7x4i7Vucf4n1ATAftCEj65w4mMhONsOR4+JBXkblI1swb4OUOzFp3Axdpgs83yDjwbCVHRvQfs0km7KC7YvIixi5o5mhfLxsi80hTWt0YB4cirklt15QMBIFicc5yAHVoyVOqCgPF5TA9o7keXmu1+XvGtge16ogZJt4jsFUaNN5maQDXaOrHrgg0vPOF1yYKPZCHFUSRJi8fVAy0i1OQiJPRhGgFaCkgneo5jtRelksQgp4k8CiqC/8WTFYNQKDKV+XgEQHuzxNZCkvb7XuIBnGKM/hDW/2nVJx8glTLHmDw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(136003)(346002)(376002)(366004)(396003)(6916009)(186003)(9686003)(5660300002)(6506007)(8676002)(54906003)(4326008)(55016002)(7696005)(316002)(66446008)(66556008)(66476007)(52536014)(26005)(83380400001)(86362001)(53546011)(64756008)(66946007)(966005)(71200400001)(33656002)(122000001)(38100700002)(76116006)(2906002)(478600001)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?amgxV3lwanJ0WlIrS0lIcWpzT2JuWHd5U2haU0dib2dPNDJQd2ZTZU4vTXQr?=
 =?utf-8?B?YWpXZHQyZjFUNXlVdUVvRDhXZVZEa1ppOHRRSGxObkgraGd5WGRNL05HVU1r?=
 =?utf-8?B?Y0NSQWhOYm9xMmh1VEhkOTJydHgrclZ1RDB3U3ZmT25SV3RCNkoreXU0QTN6?=
 =?utf-8?B?Unc3ejhvTGJJdDNla0lOZFM4SWM0cjlIUzVsYUExNTZQQ2Q4OWIrRDFRZG1J?=
 =?utf-8?B?UEx4TEp3OXpBckhmanJ4d3UwVjRTb2JIM3NlZUQ5dzFHTWRpWHBiRXlaem9v?=
 =?utf-8?B?M25iWnJTNUo2UnV4R3VXd0RicUMwWHJVZXhnNmJiMWdzSjZOdGlLbStiRU9K?=
 =?utf-8?B?Z1pNRlpBOFJQc3lmK1FIRVM1Um9BMENWMXJDL2oxRG5LcFQ3bXdKNG5CaUxN?=
 =?utf-8?B?S0hrYW9UWDhrQWh0WGdMbGVFeW9ONWhxdUNoaFQ2aE5jRGtldXhGZlFKem9r?=
 =?utf-8?B?ODBxd21iWkJ4REJaTzVOdTFELzVFdUFlV2h2TGNWd0hielJjOW81M1J5djJV?=
 =?utf-8?B?OVZhT2ZLYnRaQTZDMkdJVHV3OHRwZXluazAxaDZVTk82clpuYzE1bTRXdjdT?=
 =?utf-8?B?UFEyUzBweXN4bXdaWHo3dEJFTEh5N3kvaVRxWmtXaTBOdlZYYXFKVlFFbmlq?=
 =?utf-8?B?UXYvZTRGWXlTRlBONzg3UndtUDl3RlhkWUNGUWdHN01kNE5Ub1NuZnFwYjBu?=
 =?utf-8?B?WTdtbEZvM05TUk5PaXhVbXk0SVhtTnNnZGk4eDUxZDVpZndPazN6TFlRa3Nl?=
 =?utf-8?B?RnZEeUpVNjVuRmVqODUzN3J6U01VTkVrRmZWVTB4blY4WXFZa1ZNSkdnSmRv?=
 =?utf-8?B?YnFpU3ZRRzJpZlBUU0hGTE55MDFYYkVGWFU0TjR6ZExmakFtOUNHa004UldQ?=
 =?utf-8?B?QUdJaXNXeU1xUW1JYWNjTGtJZm82WGFQald4VzFONVN3QVZrdjhpV2UvN051?=
 =?utf-8?B?ZTF4U2U5eFN3UW9zNjZOdzZhZmxTREQ4YTRPek5ROXUwaFdLZ25LZWhydXFK?=
 =?utf-8?B?Y3F6OXg0aXM4QzVIL09Oczc0UXhQUmVDZm9DZUtjK3MvR1dVdmZiWk11WlFB?=
 =?utf-8?B?N25OUmtBUGduMTNsaEgxT3Y0SnZwQjIyNzRjOW1RcEo3bU1YQ0M2MDZRVis3?=
 =?utf-8?B?bUNkZ002cjZpZ0RRbmFlOS9KbkRvREdVT1JneEJiNlNXcldIUWd5ZDVSV3Nm?=
 =?utf-8?B?TUtGcEl5RjFXSjl4eldVOEwrUklWVGhDUmQwd3RabFcrZm5xQWRLcFcyRE9v?=
 =?utf-8?B?K2FHMUNBV0pEbUZ1YUx3Vm1IaFBVNTNDbkdjUjV5T1ZxMWFSeERRUm1pTWhN?=
 =?utf-8?B?Q2RpVUdQcmhHczh1YU9HbHpFeWtMMk5pTkhWeEZFUE5CMWFjMGx3MkROY0gw?=
 =?utf-8?B?WW8zSXQ0aEFMUitqTUZZVGFRZk5tZGYzRHJSSHhxTGRoWlV6UGYrMzVvQTlZ?=
 =?utf-8?B?UU16b0V5ZHNhWW5yRmtKc3NoVVAyd2FTTUd4U0h4NnZiMWNrVi9ReDdXRk5I?=
 =?utf-8?B?UTNYdWJ4MVJvaTNIcER0a0cwbFpXTG01bWdOMHBUOFA3U3pUUTJMbG1zYjZB?=
 =?utf-8?B?aSsvTGdndU5oTC8wRHl3Wkg5UXFFU2lWdHUrSE1UMEVqUnBQT1Ard1JEQTBM?=
 =?utf-8?B?Rjc3bGt0aEMxdEhNWW1ZaVFPT1FxaCt3aXFHcStWRThMcC9PUElyZUxVYzNZ?=
 =?utf-8?B?SGUwWXIxUHExU1g2Z25KWmNNTE45aVI5M3hWUUMzYnVJb0d4ekhBQzB6aHN2?=
 =?utf-8?Q?Jk0clWOZFNW4rHSTdXGpEHa5cQgCRoe9e8Z8MhG?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7669b6e5-33b4-4998-b8b1-08d927e55ae6
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2021 05:47:07.4480 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T8rKngWX6Td//F+SVmYdK9Cdn6mLSTgRL/j1dcCoFXdqfGJmMzgB103nuVXzXyMVj/QQa8pdBj1xWI+RNvBDZDWd6Mfngm5VILt3Q+m+tB8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4402
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] [RFC]
 tests/kms_plane_alpha_blend: Fix coverage-vs-premult-vs-constant tests
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
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thank you very much Mark, for testing the patch and providing the "Tested-by" tag.

Regards
Vidya

-----Original Message-----
From: Mark Yacoub <markyacoub@chromium.org> 
Sent: Saturday, June 5, 2021 12:12 AM
To: Srinivas, Vidya <vidya.srinivas@intel.com>
Cc: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
Subject: Re: [igt-dev] [PATCH i-g-t] [RFC] tests/kms_plane_alpha_blend: Fix coverage-vs-premult-vs-constant tests

On Tue, Jun 1, 2021 at 7:54 AM Vidya Srinivas <vidya.srinivas@intel.com> wrote:
>
> Few Gen11 systems show CRC mismatch. Make 
> coverage-vs-premult-vs-constant code similar to constant_alpha_min or 
> basic_alpha
>
Tested on ChromeOS on JSL (Drawlat)
Tested-by: Mark Yacoub <markyacoub@chromium.org>
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
> @@ -447,10 +447,6 @@ static void coverage_premult_constant(data_t *data, enum pipe pipe, igt_plane_t
>         igt_display_t *display = &data->display;
>         igt_crc_t ref_crc = {}, crc = {};
>
> -       /* Set a background color on the primary fb for testing */
> -       if (plane->type != DRM_PLANE_TYPE_PRIMARY)
> -               igt_plane_set_fb(igt_pipe_get_plane_type(&display->pipes[pipe], DRM_PLANE_TYPE_PRIMARY), &data->gray_fb);
> -
>         igt_plane_set_prop_enum(plane, IGT_PLANE_PIXEL_BLEND_MODE, "Coverage");
>         igt_plane_set_fb(plane, &data->argb_fb_cov_7e);
>         igt_display_commit2(display, COMMIT_ATOMIC);
> --
> 2.7.4
>
> _______________________________________________
> igt-dev mailing list
> igt-dev@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/igt-dev
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
