Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4EC939C610
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Jun 2021 07:39:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B8406E471;
	Sat,  5 Jun 2021 05:39:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4461F6E46B;
 Sat,  5 Jun 2021 05:39:22 +0000 (UTC)
IronPort-SDR: /S1p/ihLBPzOUmYY7bSpfXXAnYZGut7hoMbvUntzU2w5HTKrW/DdDm/PZ4BEUqVCnmoR0LFtES
 AlBdpDLUDP7g==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="204440410"
X-IronPort-AV: E=Sophos;i="5.83,250,1616482800"; d="scan'208";a="204440410"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 22:39:21 -0700
IronPort-SDR: Hy9xAEJwiWH+2Q/cbLlk/KiY0jnvrvUrW8baxkUnSAmmra3NTKhnfb4fgJSE1BOLrfKvHHRf++
 2bJle6crQ5Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,250,1616482800"; d="scan'208";a="401161659"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 04 Jun 2021 22:39:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 4 Jun 2021 22:39:20 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 4 Jun 2021 22:39:20 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 4 Jun 2021 22:39:20 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 4 Jun 2021 22:39:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GbQrhdr7a/inszp19vLyMqlqm+EUE9YNYUa+bi2CHi6P0BJ2C2Z1KJqlkOrnRXZZ/dEkUFQbfzecHvAZJJtR3nRdT6rCw4t9Wyeb6UD6dz2zeuZGb7/C+iruD7cRjmfX/D0UKvW9H1X8WjVnPKkv6W/DIB3jfAKKQbjoaJeipwKxiv7zRbyw1rLw0+ZyGNlOBs+eu3WQYpqw0zviAPuf4AnxDZwrOE5B+xLY41Qb6plCed6kMCYp14XyBuyS6/6MwTc1jFw4yM4Bnlm9dH8lVB1myZqdYRMHPflHrM4S+0+GoXyA+Bfy0GAGSxSJGZD99+rLTTg4gk1Unvu6IIAEfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qX6TaYRJYU3ts7f3A0pgAGuuzvB9HUlBeQvVFPctIeE=;
 b=ITbSxJQuST5GxHb28DIwi9CX7QuP06ksojW/D1gb7+No2XxAaGX3dzCo9EoHIuKyvYk0UILd6ozIRQsC5nDOt9PBL1Xcn8CYWx0KXcaXppGibfq282TuIMJxjNlsbM2rDLknYdg0+4FX0e4K6lBM6mVkyYSXhHgzcwBWi5mTKy1Dtg6CAACWuE85f8wbyilvs66rgAzUm4xos7O900XmzHth0+/nU9TicG56yOKCJIQHG0BGk063iflUwICbZzn2xDfpjfe+k4yQbPWfj3wmTdCxGevtUG/lMsE7a+7q5O8oD+tIC5ZG4fbntDqV4M+tEImMFLMCCBoUy8fKxJ/qiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qX6TaYRJYU3ts7f3A0pgAGuuzvB9HUlBeQvVFPctIeE=;
 b=Ti8/b8iEKeUU8dyhGoGgB0I9rDTD5fMAUZM4k6dBqRZQgFUTaH8nE2Lrz5TQxOLQEuDORZQLe2oR0rkJwSKXP3RwwFdtztmi3Ybj0xmtZjlIdWW70wzgZpL60HS4qgZSFSo0UA93BEZFEQtFYYi5uS49of673+TDGQvdrAcPn4g=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by SJ0PR11MB5214.namprd11.prod.outlook.com (2603:10b6:a03:2df::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.24; Sat, 5 Jun
 2021 05:39:19 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626%3]) with mapi id 15.20.4195.024; Sat, 5 Jun 2021
 05:39:19 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: Mark Yacoub <markyacoub@chromium.org>
Thread-Topic: [PATCH i-g-t] [RFC] tests/kms_flip.c: Fix subtests
 flip-vs-suspend
Thread-Index: AQHXU3qqPqxGxc2mM0iLG2AfNSWkIqsEPOwAgAC188A=
Date: Sat, 5 Jun 2021 05:39:19 +0000
Message-ID: <BY5PR11MB43724C64D119079A29374E2F893A9@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1622175883-12405-1-git-send-email-vidya.srinivas@intel.com>
 <CAJUqKUojeh3fv2KA7=xwOWtaF+axW0EuNk3PJ0iEqft_cFXTxg@mail.gmail.com>
In-Reply-To: <CAJUqKUojeh3fv2KA7=xwOWtaF+axW0EuNk3PJ0iEqft_cFXTxg@mail.gmail.com>
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
x-ms-office365-filtering-correlation-id: 51cf50ff-8026-48d9-2bbb-08d927e443c4
x-ms-traffictypediagnostic: SJ0PR11MB5214:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB521428C96C0C3F3C145E5C07893A9@SJ0PR11MB5214.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IEtz7Yk6vfXITsPCV0A+pdslMLiHMzyV4HK6Q6l7MyZacblLALgo84+BlGoqaSH8729IEd7R9xVk6zeltnQ8kf3vH2pKGxHjBIdOfEUXXfZ+pBlXCxG989b71M+Ti1cStodAErOvpk5TzCe5zx8fwrluP6bNzSbrmL9pWngHapa6orVntVRQaUGDuoZCuvyB6tKFDpGW3b3EZygV/DmlZkIxsDBk9Zx+1vFive/i6odoKFAI1gOJKA4n0Rg2ypO8jErQU4kJED6bVv/UJMjLvEX3ifbp+6kIduQ+xxII8MYoJsVYLQzaOzYQHKlgfgeV3PljTA/eVi0n52ko8QiwJIvh1Yl1H0Zf52yW0AcBuBFOEaTipPJnRK/mhdBIsAC7hhUAJ2syejGu+B3aMr8N4ysLOVbO2AtG0ZbZAVJpuGwLIAwXRX79fDzVnu5SWpTZKSjjUWPvPcZfTN2tQDeEE07JMbEDGET9WZ6gkJYeo/oZMNpOAzeJC+1Ysk2JYjkZSVk/OnI3nKSJn7UfAN3D0oRZkrXNlsBUbcYA0I4mfhNAWfIAp102gyUYoZ2nsXJ780GE4DACkvb7WYLgPh3rcr/SizF6mNIce/bNvjZ610w=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(39860400002)(346002)(136003)(396003)(15650500001)(2906002)(54906003)(5660300002)(9686003)(55016002)(8936002)(316002)(4326008)(6506007)(53546011)(107886003)(26005)(52536014)(66476007)(122000001)(66946007)(66446008)(66556008)(76116006)(64756008)(83380400001)(71200400001)(86362001)(6916009)(8676002)(38100700002)(478600001)(7696005)(33656002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?TmVUKy9DWitEckZnY1ZtM25haWNpKy9KVFRnazJDVndyVnJDQVVDM2pzZTJm?=
 =?utf-8?B?cEtTeUYrTUpub3VZMVM3YTZiOVJ3RUU3NmQyeTlXTWRycGhhcmxsMmZuMGRE?=
 =?utf-8?B?Q20xSDV0WUhtL0NOSUsvbmVaWnB5NnAzWlQzaFZvcWVORXloalloUUx5UTZQ?=
 =?utf-8?B?dlJYLzR2S0FwT3liamw5aUdvaUpzUEt6R055bXdXRDdROC90T2N6dkhZVGx5?=
 =?utf-8?B?VFI5dVlHb3VBcncwNDJmQlNpcGZ4VmFjRFk0Y1hxYklwVnRtYnVHKy9aeXVr?=
 =?utf-8?B?bEFCMFRYSFQrWGJSRGhud3YyQWpoZ2VEMDJTRDFBb05BZ0pnbDdGbGdlR0tk?=
 =?utf-8?B?N3RpOXZmVmtZY3g2ZGVUdnpaWlF0ZlJUVXRyRU1LeEpTdkE0MENDTks2azB6?=
 =?utf-8?B?OU5TSkxzVjBrZkprTGpjaVNKNDFlSGxabWQwUmVQUWIzWWVRUUY0TGJRZTJJ?=
 =?utf-8?B?WHJLbFdCQWtHUG92MURvdXFFeERmbXBLTjRyWHh5bTB2SnRYU0E3Y2lFSFB2?=
 =?utf-8?B?VzdORnhuNFlMa2JFTm4wczI2a2FaUVUvb3Zoa25kOGN4K0pib3I0R0ZBT2dB?=
 =?utf-8?B?b0I2SStYczhWN1p5R2tubU9iWDdDWUk1eVBCSXllaUtJN0ZrSm04M2JGYjVl?=
 =?utf-8?B?RkxOSlU1dFhEV2paZm9nQy82ZEhEVmJpeXlpR1FDQ0p0U3pBYTdDd0lwbm9k?=
 =?utf-8?B?OWR0LysrNHVrSHFKTWV1ZVRWOEkvTld0elVsY1ozdnRHTDRVSWY1d2pLYW42?=
 =?utf-8?B?WVNqcGw0TWpPUlMvQ0JnWDVzZ2k0bEFGdlAyRktyQk8rbGFYQVlwR0RpbGpQ?=
 =?utf-8?B?WTBoUkhnM1ViTVlaa1F2cXNIbzgwOUdBR0ZDL3pCV2x4S2Zab3RtS1JDYmJu?=
 =?utf-8?B?SlRKb3lhbWpRSzFRTTBuQmVreGJDS0NJeVdGTXppZ1JDaS9BS2FWeEJEb2lM?=
 =?utf-8?B?TzcxN2lUVCtVb0hjL24xTDZBMEhXNDhsNnBVbFVkWjVOZFBmQUIwdHhURTVv?=
 =?utf-8?B?aTY5RWN5eGllTDRoTlJzbmxQVUw4TlgyVkxJNUVzKzZoRFk3WHo5R0QzNU1R?=
 =?utf-8?B?OUdZbFZVY2pqdTFjcnE4MWd2QytjNDU3cGM1eFpwL1ZWc1FkaWw4aFMvVWZk?=
 =?utf-8?B?RUx2R3lGRzJOQ3MwUE9xL29GN29YSHNDSm5GQ0xCb2pyWUFLUW4xUTJod2Ry?=
 =?utf-8?B?R205MTFQZURTTkswWForT1RjWnNRL09hK0JPN3RiMkZYM0JMZmJYbWVSRElM?=
 =?utf-8?B?dnZPWHhkRkgrQ3NpaWM3VkMyVFkybkVQRHJXaUs4UW9FZExQQWRvQWZOdUZz?=
 =?utf-8?B?RHd3Zmt6RWduT3Z2NjhwSmNhY3kvOXJScVJRaXhyTHhGZnFFRE5HL1NQVWtP?=
 =?utf-8?B?OTh5Wk9kbUF1ODljR1ZQTnYwZDVwdUcwSVdXaDJ2NDdiR0UwOFpTNEJZV2l4?=
 =?utf-8?B?ajJCOTBEZWdYdStHQ1BFMVlFOHM3cUN3eDRMMDZCOTRTZ3dmbTErVU54YW44?=
 =?utf-8?B?STRzNjNJbTVlenkzTDlzWWdnRFRkQ1p0ZFdLUVRRQm83M0JlVzh6cncvSEhW?=
 =?utf-8?B?dmpVRTFTN1RWM29oeHFBemZLT2hIOXZqcWNob3dVeUdKSUtEbVFMYTRqK2FM?=
 =?utf-8?B?dmRKZlRycTdONHJ4UitYdnlxT2F3R1IrSXVHNVVtZXQzNzU1L01oRlBTMWpy?=
 =?utf-8?B?N21KNFhrdlM0cy9sYTBvZFVETE41RWRUU1Z3Rm81dDdFaUwvelVCWFFkUm9F?=
 =?utf-8?Q?NF6dMtrchnGPsjBRm8=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51cf50ff-8026-48d9-2bbb-08d927e443c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2021 05:39:19.1053 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wk7ZAEYf+J9Q6YespCq5uI3niuceGivTm9VXrH/LRjJ3Q/V+JTu6455N8N6evu5wXlAKiMy8zHZW4L+E1Dk+x6QWCLn78r0qlkAchgkoTCk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5214
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_flip.c: Fix subtests
 flip-vs-suspend
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

Thank you so much Mark. This patch is not required. I have abandoned it.
We needed to stop tlsdate daemon which was holding the RTC lock (initctl stop tlsdated).

Apologies for the same.

Regards
Vidya

-----Original Message-----
From: Mark Yacoub <markyacoub@chromium.org> 
Sent: Saturday, June 5, 2021 12:17 AM
To: Srinivas, Vidya <vidya.srinivas@intel.com>
Cc: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org; Almahallawy, Khaled <khaled.almahallawy@intel.com>; Lin, Charlton <charlton.lin@intel.com>
Subject: Re: [PATCH i-g-t] [RFC] tests/kms_flip.c: Fix subtests flip-vs-suspend

Tested it on ChromeOS and it runs well. But I think we should fix the root cause instead.

On Fri, May 28, 2021 at 12:33 AM Vidya Srinivas <vidya.srinivas@intel.com> wrote:
>
> Some Intel Gen11 systems are not able to do a RTC wake.
> Instead change the default SUSPEND_TEST_NONE to SUSPEND_TEST_PLATFORM.
>
Tested on ChromeOS on TGL (Delbin) and JSL (Drawlat)
Tested-by: Mark Yacoub <markyacoub@chromium.org>
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  tests/kms_flip.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/tests/kms_flip.c b/tests/kms_flip.c index 
> 8f736652be90..8afac88c9b15 100755
> --- a/tests/kms_flip.c
> +++ b/tests/kms_flip.c
> @@ -835,7 +835,8 @@ static bool run_test_step(struct test_output *o, 
> unsigned int *events)
>
>         if (o->flags & TEST_SUSPEND)
>                 igt_system_suspend_autoresume(SUSPEND_STATE_MEM,
> -                                             SUSPEND_TEST_NONE);
> +                                             is_i915_device(drm_fd)?
> +                                             
> + SUSPEND_TEST_PLATFORM:SUSPEND_TEST_NONE);
>
>         if (do_vblank && (o->flags & TEST_EINVAL) && o->vblank_state.count > 0)
>                 igt_assert(do_wait_for_vblank(o, o->pipe, target_seq, 
> &vbl_reply)
> --
> 2.7.4
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
