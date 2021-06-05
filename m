Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE1A39C614
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Jun 2021 07:46:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 080346E851;
	Sat,  5 Jun 2021 05:46:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F2316E851;
 Sat,  5 Jun 2021 05:46:43 +0000 (UTC)
IronPort-SDR: Hf30/dj8nL1mQ3/ZSnBOJgqpLF75/HCQsP5j6dPgPx/sFeQplOTTFrazSZ4aHeM6lC2LZbQtvg
 fgn6HKujdQkw==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="184095453"
X-IronPort-AV: E=Sophos;i="5.83,250,1616482800"; d="scan'208";a="184095453"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 22:46:42 -0700
IronPort-SDR: ouSB1+OxZSbfXIXiPemHOdKVXzYqVZ8YXbV9hml9BHrguE9ySVSoZvmAXxQqL/1xDAdAFrEUBc
 GGypJZoZ6Ihw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,250,1616482800"; d="scan'208";a="484172322"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 04 Jun 2021 22:46:42 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 4 Jun 2021 22:46:39 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 4 Jun 2021 22:46:39 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 4 Jun 2021 22:46:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kjGRDQ+d5gBlakvthPsw4jJxE793jrvtIFJDVZXMfnLpG1KdobMYc+l5Lx4dqiH6wYUNWw4aLd8FJuZtT8epPSV7wuSEWCbrdEJkoUzSI6X+RWSYtFVOxLcexFtO2oP7H3CqetRFf+qqNtskwhLcgsN6J2+Y2QfZGXJqXWXbpz8YAhcZfbHq4kI6bW0DxHXRclj3VOC/hh5ZsFKTzKShkPNAzb7qgFpHS8pNYLA0BjdE8gpF+meAOH+4jOGELVasWScimsxTRHie0kst52S3unTzGT0qAJZKS+wGBpWgv6ZJIqZ9v17PDCBGnna77Ig5rVkgST0x4SJuzMvh9M2Svg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VuCZFa7WBDFqo/0kdpjGwoK5syrpPKLncMeeFCNTwmY=;
 b=NrrnUVlKgHGsSZF+SufdIYkJz4VadKcKOMxEm34lPynKiZktSNkkHDRvCKbwkH8EAUbAdR06i6ZRAzPzq78ojz7x+6//MqsgD9vgW9yn4oxGQgux1RtT0nZdyeDNv7/zVAVP69cyWIPUzjA4bonh0CZ950DZ2/nHvvwmqBk1L9GudjYPSSuHr/mPsm66j5KAjSNzSMQBycsq0/Rk7BqntQJHPZimVdckHdI93yQ058CZOedJCmzRyY9lJzc8lxoUqCh2Tw/37C7gfL3h9BTX+UImYMQcwqZDEngA3CshMiJnMghbEzXPw6ywaVCtzQdfRmWD63TPr3zChyNgkx38Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VuCZFa7WBDFqo/0kdpjGwoK5syrpPKLncMeeFCNTwmY=;
 b=fuOO+CB7Imk4m/EyNUs6ieIc6yOXjcMTVORxGrEsVc7dQr7a+3LV8Diyh7WHy0m8A+8PbhNMOms3DpttcK9fdoMrp5alVgtyGdqV+yChOUj+/Nxnuuu6xn8K0cPLoGyzNKgFuC36xHFbq/bTN/yCxDFY35l1kBmr4J1UlpjrPZE=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by BY5PR11MB4402.namprd11.prod.outlook.com (2603:10b6:a03:1c9::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.26; Sat, 5 Jun
 2021 05:46:36 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626%3]) with mapi id 15.20.4195.024; Sat, 5 Jun 2021
 05:46:36 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: Mark Yacoub <markyacoub@chromium.org>
Thread-Topic: [PATCH i-g-t] [RFC] tests/kms_big_fb: Wait for vblank before
 collecting CRC
Thread-Index: AQHXU3r+0BLlTn3Au0CMvXxolxn81qsEPe8AgAC3PdA=
Date: Sat, 5 Jun 2021 05:46:35 +0000
Message-ID: <BY5PR11MB43723B6E6C4681C0900B9F70893A9@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1622176025-12499-1-git-send-email-vidya.srinivas@intel.com>
 <CAJUqKUpEJZXGLcktaS8Jaaf-N0pPpjKP0Fi4UjmBx+Zs_DrvdQ@mail.gmail.com>
In-Reply-To: <CAJUqKUpEJZXGLcktaS8Jaaf-N0pPpjKP0Fi4UjmBx+Zs_DrvdQ@mail.gmail.com>
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
x-ms-office365-filtering-correlation-id: bb94a451-2e13-459d-70f1-08d927e54818
x-ms-traffictypediagnostic: BY5PR11MB4402:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB440236FDBD3EE3DD8D26E5AC893A9@BY5PR11MB4402.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6YN8IlqTIuLk+8Br3D6serzzy1DCzffkOixK52cI10kNCYd7thN66ACl09U+H6x3mAFh88qIwamFlIo0JXMrLFmtg9lzJSOMPJZU68pwjrEG/E1SKTtjLbt4KL2vJ8ZSiu75Cp7N0F5whOqr2vJpB3aogNMubJZmV5HKJZ/MJwDJx/a8JYVS6m2TA3e0u9wizGsjC21eodYwbtoqBSj2tyi4lp/bNuaXPChqj5kT5i45LRI5NFMA6+SfG3tUe7OMFcvGOuCezM9vsFkFotSW9LjAV1bJERfDk8JrAjEu9q4xdtMYQvIs5UiWyp07kEhzN6CFwQcuuXxkuzZNKCXanug9Ee826YOeCZTYvXaC+c+LHR0EyKWROwajWZ5ULN/xH2DaDIwFvVFr0DEgilPaezmS0ywW8eOV3Im2ZBBLPgz3KHM+9ieozmQ1EfEsw/bymaggPXbIM6I3LuY6T+afQGtiSYp2cTwjxE23vuWQaPVxAsZYPdAqSR0npIq5lJmmBF9CUJSSOO+uePqwG0ukKySJwdbOT3TupgrK2VakHEIUBHIfsKsg8HU1Ud+bruul3AqMpnj17CKG8KwZyk3O069L5eDDqzzSuOkQq0cHus8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(136003)(346002)(376002)(366004)(396003)(6916009)(186003)(9686003)(5660300002)(6506007)(8676002)(54906003)(4326008)(55016002)(7696005)(316002)(66446008)(66556008)(66476007)(52536014)(26005)(83380400001)(86362001)(53546011)(64756008)(66946007)(71200400001)(33656002)(122000001)(107886003)(38100700002)(76116006)(2906002)(478600001)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?R2x1d0k2UmNrejhqa1h3dXhFSnBRUEUvVTFIOWF5SmR2RitLYiswbjRqTjY1?=
 =?utf-8?B?c3ZiOW5RMmVtWEdXWlRkMTZFZ0FSdFpDLy9KR0pvVzl6KytkNUdmS0o3RlI3?=
 =?utf-8?B?ckR5YmYxdEIxcVdjODkxWHBPUFd5aE5sQ1pLZ0ZwOFNkSWtCK3A1cE9YWlBy?=
 =?utf-8?B?ckIvRzYyK21EUXp6ZkFiNElGbnBsVERTd2xJeUFsMnZWeGtPYVFaM202MmQ3?=
 =?utf-8?B?RWNwNHhnSWxoam02MDdzUHBCOVp5a3VzWFJxYkFJTkhEbVlRQmszeFl3eUhZ?=
 =?utf-8?B?VmdvdEc0QlJzdlBOVWR3Nk1ka0tlU3hQYjN5U1pyWGNWVlVvdVdYMitGVDRN?=
 =?utf-8?B?Vkt3QkhuSUxRK1BJTDNFbUxEalhEbE1aMlNUV2J1SFV3eExkb3hMTlJSTDdx?=
 =?utf-8?B?Z0RrbTZPWVdyVWFhWTNQTjl5OFpuRVd5TjEzTTRYeHBuaVVEQUtvUjZFMC82?=
 =?utf-8?B?TzhZY1FtakI0ZWlmak9YL2c0L0pKVkI3SjVIVXJMY3RYZ0Zub0xXbFZGdEVT?=
 =?utf-8?B?SGp3d2VVMGFXdzcwZGZpaFppemN2ckpxclZnZ052SCttb3M0WEw5V2JEQWdy?=
 =?utf-8?B?SFI3ZkFyNVJBVWlFMGxCZlNYTS9MRHM3Vm95YmNPZHJUY1cvUlZQTVRXY0Vu?=
 =?utf-8?B?N21oUmxLblBGbjZVMzExeHBlSUsvY0oxRUk0USsyR1BQYVNBblpURmZHbGts?=
 =?utf-8?B?SkJ4TnFxdzJSaWF5NFR4cW9SNkMveGY2YTlwR213SDRqMllMODNFL3JJek51?=
 =?utf-8?B?djU2NFJzSGl0bkUzZ1JiVmR2K2lCTzkrVjJqKzZUanZUMk5uNjdnR3ZjVmtj?=
 =?utf-8?B?MjlnNG1jTWtiWkVicmpQeXVpaU8xZnkzL2IvVGFrTmhMKy9GNjAvejV1U2RK?=
 =?utf-8?B?OEhwNCtMeDkrTVg2SVdROWdJdTVJUnBKOHBZUkxzNy9FdzdPcVJNazIzQXB2?=
 =?utf-8?B?N2Q1YWF0UTJJMndNcnRMYndOK003VStRWWFoaFN1VkNyVG1GWEt4WDByNmJS?=
 =?utf-8?B?Nk5VRFRrd1RqQnBIblFWSkFPMEpaUVozbmRIdnNVU0owZFNxTzNJdnpodmJj?=
 =?utf-8?B?M3dTaEFrQU9VdmR3UHk0c1NUS1hhMDg1QlpERU5MdUJxQWVBa1lUR1M3U29u?=
 =?utf-8?B?Ni9qUkxjUUptdjZ6MlZZVjNpM1VuUFpyd2d0ZWdHV0ZkZG1CcFIyTDVpYVZF?=
 =?utf-8?B?b3FNaC96ZjFzaEVpM0tNNTNVN3NBLzN2OS9HNEZJeTAyWGpmR0tJTlJYcjNN?=
 =?utf-8?B?TFZDd3gzbjEvdUgzaTFEcUk1em1yVzN5ZE9CY3VzRWpwTEFqSHBkQThoVnRR?=
 =?utf-8?B?NSt6UlNqYVNlZTEyNFltbmRsSndwTGMvcjFpTlVvL1IzU1ZDS2gyTXdUMVhp?=
 =?utf-8?B?Ym91TW9uRVdHZXFKR2hScEc0YUJEMnFoemtIdCtPUFNyQUt6S25WcGs2VVE3?=
 =?utf-8?B?eGtYYStzeTJGUDJhL1dTaEFkN0RMUjUwenFsZGFJRCs4Q0NwTHpsWW1RNnR3?=
 =?utf-8?B?dUVpN2w3ZUg0azhuUlpPUGdNT2dGUFZFVzBPZmpFaXViL1hJa0R6cXFVVzVq?=
 =?utf-8?B?blduVXlzTmVSMnVUZnMzbXFaMEEzQnBOOHFIZmtTZjg5b0F1WVJUeDNzcTl3?=
 =?utf-8?B?U0xSa0pHUXFYOWR6dkd3MWJNR0ZIN3lad3luQUZRaHhOUUg0VSt3dnM4aWtF?=
 =?utf-8?B?OGs0aFNreG5vTzBvNVRRSUZTbmlyZVAzYzdoSnZuMmVrY0gwN29tWG11TmVj?=
 =?utf-8?Q?hjCYpA8NHEKj2Z1Ha8=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb94a451-2e13-459d-70f1-08d927e54818
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2021 05:46:35.9251 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SOQt3JVaPgm1BzjgMABbLoebIIQ3lXqkHimxtp/F9SWWtMHu9khkkXRTr3YAS+De+KUbluomW/uSJ9AXExW1pICjD1dpTC8H57JFH3i4iSM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4402
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
Sent: Saturday, June 5, 2021 12:20 AM
To: Srinivas, Vidya <vidya.srinivas@intel.com>
Cc: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org; Almahallawy, Khaled <khaled.almahallawy@intel.com>; Lin, Charlton <charlton.lin@intel.com>
Subject: Re: [PATCH i-g-t] [RFC] tests/kms_big_fb: Wait for vblank before collecting CRC

On Fri, May 28, 2021 at 12:36 AM Vidya Srinivas <vidya.srinivas@intel.com> wrote:
>
> Without wait for vblank, CRC mismatch is seen between big and small 
> CRC on few Gen11 systems.
>
Tested on ChromeOS on JSL (Drawlat).
Tested-by: Mark Yacoub <markyacoub@chromium.org>
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  tests/kms_big_fb.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/tests/kms_big_fb.c b/tests/kms_big_fb.c index 
> b35727a09bd0..f90363c3beb2 100644
> --- a/tests/kms_big_fb.c
> +++ b/tests/kms_big_fb.c
> @@ -254,6 +254,7 @@ static void unset_lut(data_t *data)  static bool 
> test_plane(data_t *data)  {
>         igt_plane_t *plane = data->plane;
> +       igt_display_t *display = &data->display;
>         struct igt_fb *small_fb = &data->small_fb;
>         struct igt_fb *big_fb = &data->big_fb;
>         int w = data->big_fb_width - small_fb->width; @@ -337,16 
> +338,17 @@ static bool test_plane(data_t *data)
>                 igt_display_commit2(&data->display, data->display.is_atomic ?
>                                     COMMIT_ATOMIC : COMMIT_UNIVERSAL);
>
> -
> +               igt_wait_for_vblank(data->drm_fd, 
> + display->pipes[data->pipe].crtc_offset);
>                 igt_pipe_crc_collect_crc(data->pipe_crc, &small_crc);
>
>                 igt_plane_set_fb(plane, big_fb);
>                 igt_fb_set_position(big_fb, plane, x, y);
>                 igt_fb_set_size(big_fb, plane, small_fb->width, 
> small_fb->height);
> +
>                 igt_plane_set_size(plane, data->width, data->height);
>                 igt_display_commit2(&data->display, data->display.is_atomic ?
>                                     COMMIT_ATOMIC : COMMIT_UNIVERSAL);
> -
> +               igt_wait_for_vblank(data->drm_fd, 
> + display->pipes[data->pipe].crtc_offset);
>                 igt_pipe_crc_collect_crc(data->pipe_crc, &big_crc);
>
>                 igt_plane_set_fb(plane, NULL);
> --
> 2.7.4
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
