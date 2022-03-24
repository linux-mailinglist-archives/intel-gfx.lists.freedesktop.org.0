Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA6A4E607D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 09:39:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8124210E1C4;
	Thu, 24 Mar 2022 08:39:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2812F89F73
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 08:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648111188; x=1679647188;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1z5N4RD9zR0y81aNWFsexna+amds9Hwd58+9VobRpEE=;
 b=YcGerr7CO1uc7IxSfzsTPQkIdU9Y6MeDDbCWAoq8Xh5MIpYKf3oAH5Tx
 eEd5z9mxG4sh3SBkqcUaboN12witmS8MwYx/Eex/fhKnf2INNa00OvPzh
 +sTDzAcMmpj+rWUKRXOpwcibEXnyFRrUBgpY7HrCJfsIQRZsnTLBH4oIf
 xjzDKaTB2ymyRk6UHB1usy/CVFhU31nvn58yufYGuWYidacy6Oa13wGe9
 5qc48ci28EqgZyTqbnMNiCwbaAbBUqfuXfLB86Li++gJY27KGrUfLTpvv
 bPrHS5aeFQrfANk0E8O/VPR9hBC7+pRBb4P+vh4mUmZV1cyUlnhsRK+lI w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="258508109"
X-IronPort-AV: E=Sophos;i="5.90,206,1643702400"; d="scan'208";a="258508109"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 01:39:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,206,1643702400"; d="scan'208";a="516090765"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga002.jf.intel.com with ESMTP; 24 Mar 2022 01:39:47 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 24 Mar 2022 01:39:46 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 24 Mar 2022 01:39:46 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Thu, 24 Mar 2022 01:39:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cImxl7JO3gix1n2fBFXSPiBGeNryAqIVZdrGx/dFD7JryNT46h2lUqpTnKVs9jKRZFHwjnypauIXvxmtn/Umt6k+HBGp9xNo0nFv9D9JKbGqyd8IaKbLv7vcSR2VMo/7OwWQ6iPXaewP9KicJQbGl46msT10vULmyVeEPCkLfk3zhjfriGa+srBBt+/zgdGBBp86y/eT15CvCV5n4IpSFHUCz14P0+Oulc86w4L/eG1SogRnBJYtdqJFWqYa1VxNSXp9ERkr4bYhBuXxbyJeZLLl0ly69Me4eTFH7obMbgoYYU+1p2Vxmn+GWgIH3iH5uu9CcYH+DFCLtYttrhxYLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1z5N4RD9zR0y81aNWFsexna+amds9Hwd58+9VobRpEE=;
 b=Y9Cz1EdD0trwOwYWdo2jW0FhBLA/j6OXOKHDvTLkfXsEGS35AEMxVKm035GgSRo/c6o7Eh3K9kH2PGw5PAk2WQ7uD7eFTCTYFNhslnTb/UMrfrx++1K/cH65531QVSBu6OLIz/iVAiAbKa7avU3wk2CMM1imKCsgiaIY4zbXzdPnOppwrKg3xf8ZKKqIFnL0EODQD5wsI8YRgrHqgQFTTKno7qV+DG+WbGTh4x3TPSFFc/Q3GQde3EQEda3H5o/AFqo1DwwsgXF7L+5s8OfQODRnAXePPz7ovdWdic2xK/y8vPqj9iURPE4aIHGo134j03Mxs3B8nLrhs3G6vC1p4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 MWHPR11MB1279.namprd11.prod.outlook.com (2603:10b6:300:2a::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5081.18; Thu, 24 Mar 2022 08:39:45 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::ad40:4487:6e00:37f9]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::ad40:4487:6e00:37f9%3]) with mapi id 15.20.5102.016; Thu, 24 Mar 2022
 08:39:45 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915: Handle the DG2 max bw properly
Thread-Index: AQHYPep6koZOjjMHj0O7PouvA6rR4KzOOL/w
Date: Thu, 24 Mar 2022 08:39:45 +0000
Message-ID: <DM6PR11MB317739510758294133A45FA8BA199@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220322124308.308300-1-vinod.govindapillai@intel.com>
 <20220322124308.308300-2-vinod.govindapillai@intel.com>
In-Reply-To: <20220322124308.308300-2-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fe959f39-c382-4e89-563f-08da0d71d948
x-ms-traffictypediagnostic: MWHPR11MB1279:EE_
x-microsoft-antispam-prvs: <MWHPR11MB1279355BA9BB097D94600052BA199@MWHPR11MB1279.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q7YfsL2Sn8+QzmG8/z4MpmAf5ydiwrC2w7M801Qtp8UafmaRSb30iy3CE8UTzsfJvoQsdQKFDdjYNA5+m3kNI1O6o4/ITy5d5QMQhEwAV6Rnak1dNWnyindLpZXWKXkTq9bkSqzLZ8qb7QY5Fzk3Le9YGLrJO7ZGHesJ4lM99XG6kDxQYgbzvWTjH4j4M0fp4LbROXjuLA3+YqTUS2Icz0bRKtlaw7lX7uW/nWrmiF/0T9WXrNPpkZNN1ygeUz237uH+E5alF9LaV5doOBve/xLgj1tCh7RXpFsd6WgsY9Cbzzx/8MmDrSWs/ghIU8/caaNFJmbO5Snk15Ta/106OMQB7zKRxLsqpnfp9eBPbHR7JrPeIv64ARajOF7P0sLhsYVxGyRmqV9sjffyQD/qxndQ2Dwrbo9gSSc9O5T8CbRzL/8NKN8yGNHhwN7PHOTaPYdJYjKQBzo/r+Hnh8k7HugZMhPs+I+CvDOEd2EiTIuxojoha4l5zdSDxJZvSgoOOmPE/ahRssZc40IqEYGtBIyJ+wGR5+xpVtiMi/2pdl1bczeKa3i8hkNTeRpreVHgIaSQMm0Fiq28/KG0Kks6OdinZmUndRLS0xcRniyXMsIaZR6MRF0sRUUdgVGsEqCw/8mNSoJ+g35GRSVTY/+aEDWCdXdQiNIu1aa7WDx9ia9BtSrqLx6AK8j0vsuUJVyyYAcc/R+Q2iRWOMaM1uhLrQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(7696005)(6506007)(508600001)(33656002)(8936002)(55016003)(52536014)(71200400001)(76116006)(558084003)(82960400001)(8676002)(66946007)(66556008)(66476007)(66446008)(64756008)(122000001)(2906002)(38100700002)(26005)(110136005)(186003)(9686003)(5660300002)(316002)(38070700005)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T2dicnAwVTViRVc4NWVPM2RLZ1RQeHNXeERsRnBTbHdidW1OM09HM25lZnRt?=
 =?utf-8?B?RnhHZURjWlBQRW52TjRHN1FDTkQySTVDdk5JTG1tNXMwN3NKWHdwUk9oTHp4?=
 =?utf-8?B?VHUwalVvUDg1NW92cEFNNVBLY1Bkbm02OXFJU2szemhtNHNONlVNZnFMK0pD?=
 =?utf-8?B?MTBSZWUzWm1sc2owOFJIMUJxUXNQWWt4OGc5dU9xTTRGOCtkVDJjMXBESXNX?=
 =?utf-8?B?MEc5WURFbUVoN1pDUGJPWm1rUkxqa3h0dlIyRWsxQnFyMEl4VWE5UURhQ1ps?=
 =?utf-8?B?WVpoelcydWp3dEozYzhIZFVCWVpodDUyNnNaYk9uTFpVTlVDbXZKLzV6SWFu?=
 =?utf-8?B?UTlFZDZ0ZHZhdE5OV3hOS2psVHU5VG92cFJQeGNrWjF0VjVVaU8zQThyZHkv?=
 =?utf-8?B?cGg3NkR6b09FT0F0V002K3ZGbzZlSHJaeHNVa2pnRjhKQkM1RlkzcGtHdUVP?=
 =?utf-8?B?dmZreWcrN0pXenkyWGNJMitHcWRUVjhXZTAvOWh0elBJOGxibnZaSjdxTXhv?=
 =?utf-8?B?VlZnRVg0RUdEd2tLZkJtNXNORndFdVMzcVdJWTdtWWlkOVNLS21Qb1lXSERM?=
 =?utf-8?B?SjN0RERBRzloR1NYUDdwSW1RWEFXSWttNk5nM0srRTVlV2hPeFYxaVoxSGgw?=
 =?utf-8?B?OE8rMVRNQkJaYlNHQ0tCdVd4WFNFUlVES201Skk0ZXExdHU0WTNKTDdKL2xo?=
 =?utf-8?B?L1RTRWJseG9XdVFjb2RQcDNxckNWclBrb3F4YUlLUFJ1RzEyUkdQWDhGM1VO?=
 =?utf-8?B?RWhCTUpEc2RMa0IxYVFkL3g5VE5VcGJLZWNaOVl0YjE1d0lqS2lEZTBwNHpt?=
 =?utf-8?B?dmY5V3lSRnJ0a0NlNitTU3hzMHkyWXJHZnNmcks0empnNGdob0hkVFNPQ1dQ?=
 =?utf-8?B?eFpEMkQyUDd5WjY3NzZIT2xwUXV5RFNmOWVaWFJxUVVldmx2OUcrOGtiejlY?=
 =?utf-8?B?QVhhQkIvWkY2ZlFndFl2bVV3bXZVMktzNENsbHFhSFpZOHBvYVFLWmx5VjZt?=
 =?utf-8?B?MlBHZEc3cHBoSEQ4UWRKR3RxblJvcVJReHl2MTFPZUNuaUpUNVBVcXA3Zlc5?=
 =?utf-8?B?NFdTVWVtT25mSlRVSFhMTmpCK3MxeFNCMGJnbHlzSnMxc29qTC85ck8yWGtw?=
 =?utf-8?B?SHJEdktWQmRCU0trbk05OWs3UjJyMnNpMTN4dXZCSHpQcDR3WlVqa3l1WkRU?=
 =?utf-8?B?cG5PbUFxMG9sQUJSdklXbjdnTW5RcnYvNHlxT2hHZFJTMW5zU3FFT09uSHI2?=
 =?utf-8?B?M05ENDFWdnJ3U2F0WU1MNUtZWlRoODIxOHc5VEM1SldyOUUrVXBpbStPYldR?=
 =?utf-8?B?NFJrSHVSaEVFbFRkem11MHBmc29BUDJoSTM4UUhNTklwRWRSbThIb2hqS3Fh?=
 =?utf-8?B?Y1R1VDNDUVVJNjZxUTlieW1yY21UbmFDZ3NlczVSY3hBM0Vmcmd4UmxKbUZS?=
 =?utf-8?B?UDhKUnJLMTEweWhGelZVRnpnbE1lT2ZITExNRkI1bmdQZ3lEVzJSMEtMRzFR?=
 =?utf-8?B?YXNBaVhxTjFKcmFTZEk5SmFWM1I1OU9SZEM3b0pPR3k0WklkVzZ3UWw0SVQv?=
 =?utf-8?B?anNkU1lYSWloNXkzQVlRaUd2SDFyRElyTDBvc2tkSk5uTjhrKyt3dFVtdUpz?=
 =?utf-8?B?RXJLeW1rU1JCTTVjMy9pOVZYanRDTUxNNDJkdkFpeTBKZnRnWGpocHZrSXg3?=
 =?utf-8?B?TGo5UEt2Ky9xR1lZMEE3V2NPRDViblY4cVR1anJ0SlYvcElzcXVHMGJISmhZ?=
 =?utf-8?B?ZjBRSzBZNFBmVllJenlDWGkxeWcwVnRieEE5aU5mNmtpb3RzMDFLK1BHSjN6?=
 =?utf-8?B?czlIOUQ4N3BOWDR1eGNOcG5YOTg2bU5EQXJxQW1TNmkrSVdvZ2RzUTJPaGpZ?=
 =?utf-8?B?SEh2eTlhYnlhR1NPL0ZnaHVmbVFUSXlIQ0NBRVhLeDUwUDV5T1dDY0ZNV1Qx?=
 =?utf-8?Q?ARg0XDJbITdPesZdn2fnoeExfdWe4cV+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe959f39-c382-4e89-563f-08da0d71d948
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2022 08:39:45.3271 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YkV3SYn8YGroiSb9yxlRfTGSjE8Mf51hTm4jH7Uh4WBzGps3KFcwuxM9Tylf4f5SC/LKs/LK5sH+spzQKaEV+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1279
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Handle the DG2 max bw properly
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAgfQ0KPiANCj4gK3N0YXRpYyB1bnNpZ25lZCBpbnQgZGcyX21heF9idyhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSkgew0KPiArCXN0cnVjdCBpbnRlbF9id19pbmZvICpiaSA9ICZpOTE1
LT5tYXhfYndbMF07DQo+ICsNCj4gKwlyZXR1cm4gYmktPmRlcmF0ZWRid1swXTsNCj4gK30NCg0K
V291bGQgaXQgbG9vayBiZXR0ZXIgdG8gaGF2ZSB0aGlzIGFzIGEgbWFjcm8gcmF0aGVyIHRoYW4g
YSBmdW5jdGlvbj8NCg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0KQXJ1biBSIE11cnRoeQ0KLS0tLS0t
LS0tLS0tLS0tLS0tLS0NCg==
