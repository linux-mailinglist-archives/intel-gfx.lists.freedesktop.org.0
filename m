Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC6739F5B2
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 13:54:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 090346E12C;
	Tue,  8 Jun 2021 11:54:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D83016E12C;
 Tue,  8 Jun 2021 11:54:09 +0000 (UTC)
IronPort-SDR: BoOpEcmsTQtOMT3nopdqCc1iMnczxxrXs8tulUcVX/HAXQ3Pz8uBgy1nde6+KKisylTGcX+73l
 yz4wPb9qG0vg==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204850973"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="204850973"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 04:54:08 -0700
IronPort-SDR: gPFi8EeWwuy+MFl5YPSekEeEd0dXMwflFlm7D+vFL9kh6DuF8PVmeBmyxNSM/tLO+f7QF/5BmA
 6+NaHtqlzBfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="413357060"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga007.fm.intel.com with ESMTP; 08 Jun 2021 04:54:08 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 8 Jun 2021 04:54:08 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 8 Jun 2021 04:54:08 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 8 Jun 2021 04:54:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZE6uqnVJbupn0Og0ZSrojk20mwPN0O0fvRzUP24DejOp9G4tz44kgrnsP5pSe3mKSKasPENcv9+BEasNKIr3Xqh7MaisTqz5fOqvDD8/3YNN2mMxSZrsQMHRVNmRuAwUjzzJ4GCXHvXp3BwR7cafP+PUi4saEgnR6c9iP/KjwQqkLIp0zxzVkVxicTLmN5BSd2W31tBT48xcW0R+Tg6yG5F3nEvRZ3yZR1vHRalqZx8E4oJBqm1TloAiGmg4GWk8G1zV802N0yPFwf1DtL7pkzEk8IW1WyJajFPLqPyRRF5PkCybaJapSQuKejlR2whIs5Lxohd5sI1LXT/H5yn+AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B7Cgg5KvsdzB0npv5zSwzmqovyuYWUMl9h4dMOkQNtY=;
 b=llNRIMkNqeZ0SLlZMR9zDCvu+RXyIsJaTU+BFsYu5DXsWuJM39o85zQ7V6ajvPqGa/KTRwdhsTYMfVtO62LVYjN7k6PBgrIooZc+NvhvOpJHO0ZMsKFllsyG5okFtiVB4n7XVpDx9kO6qre3EFfxLyo9qzmtEx8PdGCrabS2+qbfiPb1g/5W0NPVjAEX9V1QnvVD2N2KUQijK1GX7H3OBZTFQzVcTKBJjRHr45mQNzBHu9TA5/VxiG4nOAwE5ujiLz3iOnBLHcSOQYNgURfV04mxv1EaTB5ylrXr50OWqHJQnFZ0wukeYqCdt5XMCjsY0SeSMteERokZkt6CoProwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B7Cgg5KvsdzB0npv5zSwzmqovyuYWUMl9h4dMOkQNtY=;
 b=JgRxcWxqBX/1PEOOraoyeaGvYn/Pbh6imF4w01zz9BYoC5ev/k0+WZnJmuR4oRuLHSq3Hsh8rx2dOrit35xU2XKRqNvsNIiLBs32w/YiYkLBjXZW09uMU0L6KqWYBOlEdn8oZnarf5jBSJHfmKd3a+0uxD5k2mkTFMXSPJOfWPA=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by BYAPR11MB2935.namprd11.prod.outlook.com (2603:10b6:a03:82::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.23; Tue, 8 Jun
 2021 11:54:01 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626%3]) with mapi id 15.20.4195.030; Tue, 8 Jun 2021
 11:54:01 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "juhapekka.heikkila@gmail.com" <juhapekka.heikkila@gmail.com>, "Modem,
 Bhanuprakash" <bhanuprakash.modem@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Thread-Topic: [igt-dev] [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_big_fb: Wait
 for vblank before collecting CRC
Thread-Index: AQHXU3r+0BLlTn3Au0CMvXxolxn81qsJwWIAgAAI/oCAAAPTMIAAGIuggAArU4CAAACVUA==
Date: Tue, 8 Jun 2021 11:54:01 +0000
Message-ID: <BY5PR11MB4372799C65B0777B7FC9268D89379@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1622176025-12499-1-git-send-email-vidya.srinivas@intel.com>
 <CO6PR11MB55693230CBD2262DDCF5A0C18D379@CO6PR11MB5569.namprd11.prod.outlook.com>
 <80bed39a-e899-f211-ae2f-279312b52084@gmail.com>
 <BY5PR11MB4372F22C0AF1AEC2CD3A20D089379@BY5PR11MB4372.namprd11.prod.outlook.com>
 <BY5PR11MB437298B9B622322E6663495E89379@BY5PR11MB4372.namprd11.prod.outlook.com>
 <dc3df242-57b9-13f9-c5ab-42acadc39c86@gmail.com>
In-Reply-To: <dc3df242-57b9-13f9-c5ab-42acadc39c86@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [45.127.46.33]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e1d6226b-e295-49ad-c000-08d92a741b4e
x-ms-traffictypediagnostic: BYAPR11MB2935:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB29356B6567F8418893D2523289379@BYAPR11MB2935.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Dz9dfV2a8OF7pQGu7tux2cbDQCM2OjyHfFjc6Qw/Lroh15N3+9bbd0xpOXUQvLJZ2BlEOKzQ1cxTOXK7XCxapHIUUWKqIr3Bm/NoHAoVIJgqkq37zavNvmrF6mqasadUhPStlsrfkyleV5sefuqXNCb71hPrh1kPhkALLJcrJJ0QlAGXiNkCDmJsUza7M8QpOJd3msQMgwuK5iQg6VBVeytyvG5Vcjg2youukgoM3rAU4vsNAICMS9+AQMsD9aEHsLshyvLuCUEp4ed10UZyVILGoAJ4Wzkp8SkuU5Qxw0UDUeRJWjxPARirumcVRz5CmJTUvTKMMwIW4qPVNd9lj385FfTWH2Flje3vzC6vXwOyE1GpA+ya60SmrHor975gB3V1erq6OWd6lLrs8N8jrJ65ER7B1ljLejrddHX20DYDk+T8YpdrfBSL4zo6hr8nYKxPqo+lwTN9yjQ/l5xs8zWH3LZVfZ1uu7i8ujRiiUrDxYnur4kBNDkw8AmMnC56HA7IVnYIn1fo++GhzDbYoFPJjc3ob1Quk0QidRQNZwVx0RipxadcC/qTR12VYIX+0SI8CjpS6M+zpwHjM1goXCq4i5RiOKLOrjDx0x7JZ/XufOAN2CGgVfIu8U6mCudvVuhih8vl9gLTC6LRo0E9Ng==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(396003)(136003)(366004)(346002)(376002)(8676002)(107886003)(966005)(66556008)(33656002)(71200400001)(55016002)(66476007)(86362001)(4326008)(9686003)(316002)(7696005)(8936002)(76116006)(2906002)(6506007)(26005)(478600001)(53546011)(66946007)(5660300002)(110136005)(52536014)(66446008)(64756008)(186003)(122000001)(38100700002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VlhISDIrQXp6YlZwOGFQT2V2Zml5SWtIUnFub0dDeHpncFJtdjhCeTl6cEdh?=
 =?utf-8?B?Yy9aRkxHY2Y1c1I0WjBQVVFLT3FRdXFGOEk5bGlEeld0Tkc3WktSeGxkRmND?=
 =?utf-8?B?blZBNWJFSGFLMjVReDlkaFo5cE1Da0p3NWlQblNkUTh1YUxDeWtoZkhMdVFz?=
 =?utf-8?B?UnZtRERmekJTMmxOQ2E1RE5LYTdJZm50NlNWNDFCMTJjcUVWL0lyMStCdDJW?=
 =?utf-8?B?VVR0Yi9MSjBhU3JMZ2VxR2NYRmpRa0xHU2tMMzhad2hKazVlY3M5ejVmQ0s0?=
 =?utf-8?B?Y01EUGg3cFprZGZtN1RPMFJpSVhJQ0krWDNBckVLSjBxS3IyVms0WmUxamJK?=
 =?utf-8?B?T0pwQ2VaakVLenlyVHA3cjYydWlZRVhtNzh2VXhyWE9HRWVvTHBDbkJiL0pq?=
 =?utf-8?B?bXBzZ3NOQUlTVkdScFlRZXliZjRWWkNSOE05ZWx0SDA2VjJrZmR1V2twdkRF?=
 =?utf-8?B?M3FrRVV1QVlXNml1T2FwUWlqQm1pd2FXSDBrMzdVTG16bytRMUcyL1lhWVNu?=
 =?utf-8?B?aElIL0hMa3ZvdWt0L1BOckw0akNGaHlMS1hURDVWWkNLdWd0YVkveWRibEhZ?=
 =?utf-8?B?a21lcGI2SVNOeTBPUEVPRkU0c3lOQitPNlJ2WFlwTUJqd2d3MlhVSXE3ZFZw?=
 =?utf-8?B?eWhxT2lpVTYwU2xINUFVSmJtZVY2WGZlZWhuMG9BdDJFQjVPY3EvUVZYRkZy?=
 =?utf-8?B?VVhxZ1ZhdHNqTzlFRzNFcjh0d2RvQWxVa3doQVM0WXdmeVZXTVVEam9ic3Mw?=
 =?utf-8?B?SWthWHYyc1UzdHovNnh0SXQzN0phS0VIQWNodVB6aEJTUUI2RVlyN3lOV2lI?=
 =?utf-8?B?b1Bia3JBcHV0U3JmcENsa045V3RNU3ZnZjJIc1lKNW9PVVJFVUQwL0h2OEJW?=
 =?utf-8?B?S3ZHU20zTlBNM0s1Z2pLRzlUbytRYWpNN0RCRXJ6KzVMWXV2ZWp5bkx2NE9x?=
 =?utf-8?B?U0pDOEMzdHFnT0RUZzhZdjdpbXhxeG5lZFFGNFI0QXF4Z2pETWRORFVXemNx?=
 =?utf-8?B?OWRTMTQ3WTNFei9hYjJ1SkczbGhRNVFla2lrVDBjV3BBVHVlRmVSdXQzYVEy?=
 =?utf-8?B?VHpaRzYvWUlNQ3pmZE44bVJFSXlCbzBpR3VrOXQxcmorSmZ5b1BndTNZQndH?=
 =?utf-8?B?QWdTT2lYZ1lNMk9CR3E2TDJjK0VuVTBWa1RJRENtdEI0TnFHRDcyVXFUZFRI?=
 =?utf-8?B?UFdIS1EwRXJRYzE0VitRR2h1eTNNQjYyZnZwdUx1MWlWemYrakpDQ2tRTG85?=
 =?utf-8?B?bEtVaTV6NW1sQWZwMm9SMndqMjVDMmtjSExETFBsY2UzOVpNM0l0M1NYOTBu?=
 =?utf-8?B?VmxTSHQ3MWVybTM4VlROZ1N2a3NnTi8vVkNNK2xselY0TFJJREQydTNmeGh1?=
 =?utf-8?B?Mkcyc01peFoyaUc4aWJHUjI3ZXVoSXZ3NE84dElYUE5tYmVBYkNXSU5lbytP?=
 =?utf-8?B?cm5uMnBLb0d5S040d2l2Qll2N3dCUTVrdlVhRHptVU9xeDNEUU85STdxQmpV?=
 =?utf-8?B?UllmV3ZycnVvR3p2RzhVQ1BuQUFjYlBQNXNEREpBY2prR1g1V0Z6ZG4xWFZV?=
 =?utf-8?B?MlFZd2Q2cEJOTUhGZkRyQkVkSVNmdjZtT0VzZ0lPNGxtNlUzOWNiRy9HU2tu?=
 =?utf-8?B?b3hyVVFidzAwOHhPaEN5UnFGaVlXK1E4Tnp4UngwQUVsVnIxS0R1dmozeHE1?=
 =?utf-8?B?ejRYUDlmNXVZNERaWFROOTJJNmVRSWJ6Y1ZqVndQRGRlbUxXbWEzbXhCOUVH?=
 =?utf-8?Q?ENkimNoJISU/auDd0GmBt3HSvyj/EkGb/pzAJKs?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1d6226b-e295-49ad-c000-08d92a741b4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2021 11:54:01.1295 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mw3oCImPDe/2s+0n7zrQLfQATriKF74D4x3e33QmbDlW8v01rMJ2rvi/V2dVIHvg67AMwtw4kF9O6ljnWuAs19LO3n8FYydcHu/RtYOYbxU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2935
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] [RFC] tests/kms_big_fb:
 Wait for vblank before collecting CRC
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

Thank you so much Juha-Pekka.

Regards
Vidya

-----Original Message-----
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> 
Sent: Tuesday, June 8, 2021 5:21 PM
To: Srinivas, Vidya <vidya.srinivas@intel.com>; Modem, Bhanuprakash <bhanuprakash.modem@intel.com>; intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
Cc: Lin, Charlton <charlton.lin@intel.com>
Subject: Re: [igt-dev] [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_big_fb: Wait for vblank before collecting CRC

On 8.6.2021 12.19, Srinivas, Vidya wrote:
> Hello Juha-Pekka
> 
> Instead of wait for vblank, this also works igt_pipe_crc_start-> 
> igt_pipe_crc_get_current for small fb after commit -> then 
> igt_pipe_crc_get_current For big fb -> compare -> igt_pipe_crc_stop
> 
> Would this change be okay? Kindly suggest. igt_pipe_crc_collect_crc is 
> not working. It gives CRC mismatch for few subtests like subtest 
> y-tiled-32bpp-rotate-0

This change is ok. It kind of implies there maybe is some problem on your platform with starting of crc calculation but if this is only place where it will show I'm ok with that since crc will not affect normal users in any way.

I noticed your new patch, lets see how all ci machines behave on that before doing anything else.

/Juha-Pekka

> 
> Have submitted the change here 
> https://patchwork.freedesktop.org/patch/437657/?series=90389&rev=6
> 
> Thank you so much.
> 
> Regards
> Vidya
> 
> -----Original Message-----
> From: Srinivas, Vidya
> Sent: Tuesday, June 8, 2021 1:19 PM
> To: juhapekka.heikkila@gmail.com; Modem, Bhanuprakash 
> <Bhanuprakash.Modem@intel.com>; intel-gfx@lists.freedesktop.org; 
> igt-dev@lists.freedesktop.org
> Cc: Lin, Charlton <Charlton.Lin@intel.com>
> Subject: RE: [igt-dev] [Intel-gfx] [PATCH i-g-t] [RFC] 
> tests/kms_big_fb: Wait for vblank before collecting CRC
> 
> Hello Juha-Pekka and Bhanu
> 
> Thank you for the review comments. Apologies Juha-Pekka, I will incorporate your review comments and try out.
> 
> Regards
> Vidya
> 
> 
> -----Original Message-----
> From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Sent: Tuesday, June 8, 2021 1:04 PM
> To: Modem, Bhanuprakash <bhanuprakash.modem@intel.com>; Srinivas, 
> Vidya <vidya.srinivas@intel.com>; intel-gfx@lists.freedesktop.org; 
> igt-dev@lists.freedesktop.org
> Cc: Lin, Charlton <charlton.lin@intel.com>
> Subject: Re: [igt-dev] [Intel-gfx] [PATCH i-g-t] [RFC] 
> tests/kms_big_fb: Wait for vblank before collecting CRC
> 
> On 8.6.2021 10.01, Modem, Bhanuprakash wrote:
>>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf 
>>> Of Vidya Srinivas
>>> Sent: Friday, May 28, 2021 9:57 AM
>>> To: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
>>> Cc: markyacoub@chromium.org; Lin, Charlton <charlton.lin@intel.com>
>>> Subject: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_big_fb: Wait for 
>>> vblank before collecting CRC
>>>
>>> Without wait for vblank, CRC mismatch is seen between big and small 
>>> CRC on few Gen11 systems.
>>>
>>> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
>>> ---
>>>    tests/kms_big_fb.c | 6 ++++--
>>>    1 file changed, 4 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/tests/kms_big_fb.c b/tests/kms_big_fb.c index
>>> b35727a09bd0..f90363c3beb2 100644
>>> --- a/tests/kms_big_fb.c
>>> +++ b/tests/kms_big_fb.c
>>> @@ -254,6 +254,7 @@ static void unset_lut(data_t *data)
>>>    static bool test_plane(data_t *data)
>>>    {
>>>    	igt_plane_t *plane = data->plane;
>>> +	igt_display_t *display = &data->display;
>>
>> For code readability purpose, I think we need to update to use this 
>> variable wherever we are using "&data->display" in this function.
>> s/"&data->display"/"display"/
>>
>> With above change, this patch LGTM
>> Reviewed-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
>>
> 
> I still don't see benefit in this patch. For now all this look like is doing is slow down the test and if this actually helps there's a real bug somewhere which is not here. My earlier review comments were not addressed hence repeat here, see below.
> 
> 
>>>    	struct igt_fb *small_fb = &data->small_fb;
>>>    	struct igt_fb *big_fb = &data->big_fb;
>>>    	int w = data->big_fb_width - small_fb->width; @@ -337,16 +338,17 
>>> @@ static bool test_plane(data_t *data)
>>>    		igt_display_commit2(&data->display, data->display.is_atomic ?
>>>    				    COMMIT_ATOMIC : COMMIT_UNIVERSAL);
>>>
>>> -
>>> +		igt_wait_for_vblank(data->drm_fd,
>>> +display->pipes[data->pipe].crtc_offset);
> 
> Above this line there's flip to different fb. Below this line crc calculation is restarted, get one crc and stop crc. There's several vblanks already spent here, if now adding one more somehow helps it sound like there's problems in crc calculation on some platform or kernel is saying too early framebuffer is ready to be shown. Am I missing something here?
> 
> /Juha-Pekka
> 
>>>    		igt_pipe_crc_collect_crc(data->pipe_crc, &small_crc);
>>>
>>>    		igt_plane_set_fb(plane, big_fb);
>>>    		igt_fb_set_position(big_fb, plane, x, y);
>>>    		igt_fb_set_size(big_fb, plane, small_fb->width, 
>>> small_fb->height);
>>> +
> 
> spurious empty line need to be removed.
> 
>>>    		igt_plane_set_size(plane, data->width, data->height);
>>>    		igt_display_commit2(&data->display, data->display.is_atomic ?
>>>    				    COMMIT_ATOMIC : COMMIT_UNIVERSAL);
>>> -
>>> +		igt_wait_for_vblank(data->drm_fd,
>>> +display->pipes[data->pipe].crtc_offset);
>>>    		igt_pipe_crc_collect_crc(data->pipe_crc, &big_crc);
>>>
>>>    		igt_plane_set_fb(plane, NULL);
>>> --
>>> 2.7.4
>>>
>>> _______________________________________________
>>> Intel-gfx mailing list
>>> Intel-gfx@lists.freedesktop.org
>>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>> _______________________________________________
>> igt-dev mailing list
>> igt-dev@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/igt-dev
>>
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
