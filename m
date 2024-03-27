Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B3188E18B
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 14:06:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76A3310FA8B;
	Wed, 27 Mar 2024 13:06:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Aqz9V5+g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27A6710FB1D
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 13:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711544765; x=1743080765;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wwL5Pu5LBi8iTitXAB77lTcosigprTW2yoEw7jc9U8M=;
 b=Aqz9V5+ggFWbgOnM6qFutLEp8F1GR+Wo82fulew+kWtmuDJ8V7QM6ROT
 uHth5n0kfx8dwC5sMU/Eqd/QuE2CY4BI69N7KTZjmcWUBsHprBmwegjki
 l5mJvTY1CUFvWmBbMvZjU1GgaOdyh0+DjK6Z5tpAvU5cjqSWZnzIe1J1T
 tm2UHi3xqQA4ozlao25tWV95z/48f4TqZoslC0U13b5sfAntzpN1I/YnT
 2iyI8vMwGUBVW+BrNDP6q8wsu6sOnMhFStMrxSCEoD2bMN+kKil9Lrt1W
 95Q/WDvvXki1lQTwy9vuAesFdk8d95n0Lfolc3ehWdsX0ReloG9pQvfKk Q==;
X-CSE-ConnectionGUID: ZKz0smqjTXeLUPzx2CRnlQ==
X-CSE-MsgGUID: uRV6O3n5Sr2WzvkXk2DrtA==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="17273675"
X-IronPort-AV: E=Sophos;i="6.07,158,1708416000"; d="scan'208";a="17273675"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 06:06:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,158,1708416000"; d="scan'208";a="16219222"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Mar 2024 06:06:04 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Mar 2024 06:06:04 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Mar 2024 06:06:03 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 27 Mar 2024 06:06:03 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 27 Mar 2024 06:06:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cv3k6V3bn+VYBSYXAv1DaLTntO5t1NpZZKDYOj6RWjWdLuvTrNj2d/8TGRnCyke3xdo/8NFlru+IkTDcwrqrXeifm7hFjRflJqFrzQFhvdCO5t2uT9Z5Zc2GtpyhwrwBueR7ca6SKhLFEbWx/AF3WloRBCIRWZAgmIqfcJYu4x/cMYxIlkQc5hJKkPZtfR7sPBHtcSV1NvKa8DgI/BlVKzxevf5+BL1MlanYsdAhBCvD11Vemc5rV0dKZBjopz0Nyd126qDU256mKpVf5b+9HTv5OZDZegnqIftn3OFeYe5M0io7wcPUaUBrOcRfu73TY6c5QOSaBCMKJYBlSOUHTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wwL5Pu5LBi8iTitXAB77lTcosigprTW2yoEw7jc9U8M=;
 b=b2+O3Hf0F474Zh5MUFysDZc9h7OxO7Sa6kTTsTpb3/Y7w/7vYiUb1tA/ODEiwJayI7m6Z4ji1LCwQPK/Kh4LelHzRaN5f1DCx/JraJNN9i1YbFAGI8++1JvWaAzLR8VytEovsiiqvDygdJ5U00hbf2stjxsCO+iTJnL75tzO1vPaftwq197DiPYzAFV9u9oVWN8qdrNlOxkPoTHZfBEcHqOn+0b+g6GwHw9HxpT7JYpgCM5LTTJDfNxCoqcvh7UELRGg3wK93SAJ3XNw7rTjBspBJ/VnH0G/d225r2gfB2NghOzBhX9eAmEabtwHtFcjmPCL5ufGfiQhpdIrZmW4PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SA1PR11MB8448.namprd11.prod.outlook.com (2603:10b6:806:3a3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Wed, 27 Mar
 2024 13:05:59 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::38ba:ed89:d2ef:cd62]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::38ba:ed89:d2ef:cd62%4]) with mapi id 15.20.7409.031; Wed, 27 Mar 2024
 13:05:55 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 1/5] drm/i915/psr: Calculate PIPE_SRCSZ_ERLY_TPT value
Thread-Topic: [PATCH 1/5] drm/i915/psr: Calculate PIPE_SRCSZ_ERLY_TPT value
Thread-Index: AQHaefmyqPYAzQJL3EeRZkhZndUQJLFLmtRA
Date: Wed, 27 Mar 2024 13:05:55 +0000
Message-ID: <MW4PR11MB7054105BAAC209CE70B59FC9EF342@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240319123327.1661097-1-jouni.hogander@intel.com>
 <20240319123327.1661097-2-jouni.hogander@intel.com>
In-Reply-To: <20240319123327.1661097-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SA1PR11MB8448:EE_
x-ms-office365-filtering-correlation-id: 64246832-0567-444a-250d-08dc4e5ea346
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UR1/0AWrawnawx1aI9lPzhotjBPQQNoWcMN8hCTkJa4RHoS+BnhtlIXhe2Jt3mrOBNlatRek81Sm50dvnPZSmHPEBw/59LosDy1iMj4hR2uXNRF34/Ly+OAAFSVcH006Wc6Cy72+OyBUhYrs8h5wxtK+TcfBYjP3kH4VFVraNdpDg+RGZwBcRIpd7OZqu0FOKC9i2u29FqWvlaJvqTC3BnyQ6FUUTgkdDUY1m+yTCX1Xs/1kV8HG7sVB+5J2Qkp/lfl1dSOgDLVhceYAaReKE7amwfSyttj6p6YdFH1ViSubEQpLbtuURfKMI66e4+cujpxtM7Y7T7RuwX8v5A++LyNj1eKtLPdmFY1seIk3y/t/ZJMLG9XfehG4MlVR/VdVBosy1UQCbInENR0ipNdkEVQAyBEyEVswVCq5wvwBEsmhTuq4x+cMjbS0WRB/aYPfMdTXRtHCzhlhpQ0FplVXBJ8lJxt98rrWPHGmJwrweVfGYmKVpnVoigm8NBZRLVYFrLO5ABvlGbIbOkk6K487a5N4jewmNOyGMsbtB2K2jwXRy06ThFPAv3Xej6qAxCF7TcXawk+c8JMWVbhGeEIkLD2DS5ddTQQzR2BnCFdPy7wl70hUb3OS91gHYCx84lCsU5ZNQ2CRzd6hHbJfuPxIYD2AhU1V5oTfmstg66vtOLKUSjW/5ukbQnh7v9TfvwQ6IZKhVSjgu27iTQJH7sLwLa27SrkaiGVvuxkwTKB9+9U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NDhLWjliZ3hlZXBsQWd2bUZXL2o1S0N0Mk1FMy91QVA5OFJiWnVOcHV5SU9N?=
 =?utf-8?B?ZUt6dktqN2l2WHBONXArOFJWYVYySUV1Titpd1R3YWtjeWRBZ1RoaXdWcmtU?=
 =?utf-8?B?SkJJUXBjWDF6RTRiTlJyT2lNTUxEa2Z0YitTMEVXZzgvUWtOUkNtOTBOelND?=
 =?utf-8?B?ZDFOK1hEVW53RnZwakNmZUFEOGI5WjhMTllPTnlKajlrWDZwbW5CM3hvSFJ2?=
 =?utf-8?B?Qml0NUpQaFlFV3kveGY5bTB4RjB6NFI5Y1hoSEYxeVBSUXBUaGd5RjdoZDJh?=
 =?utf-8?B?K09Ra3lwK244eGd5VVJwcXRSQjR1MUEvWmxLNFB1S0JsOVJmd05OKzU2ZXRh?=
 =?utf-8?B?ekExOUF6RW1ZWndOSVFmM0xTUTdXZGk3Z2VCT3lDWnJNTnBNejhZcmM5MitZ?=
 =?utf-8?B?VzFqeE13ZkhJeWNGYTVRdVdpN0pVSmhEYjBIdWJGSFRyWlg2aHRBaklkcTZp?=
 =?utf-8?B?emUwUml4Ny9BVTJSZ3BxbVQzZGd6VjhrcnJUMThYR0FzSzFJMHZvbEdtUFR2?=
 =?utf-8?B?UFhLYTVWWWdxQ1FMc0oxcnBVR0p1QXkzWkVmaTJVektLN0ROU2Q2cFpEL3Uv?=
 =?utf-8?B?Rm13c044ekVjU20wSjNOK0xReDRvN00rOXBxVkNRYTZidlNrYlEyYnJvZVgx?=
 =?utf-8?B?eTJ2V3RVVmtOZGFYZWxOeFpuQjJQVndsKy9pVVEzOWNoVlNQVmw2RzZXdkl1?=
 =?utf-8?B?dUdOR0lrdjd0RFRhUkpmR0ZvRm5CUm9INTBNckhhNVlWcDdmVXZmV0NaTTVp?=
 =?utf-8?B?WlBYVGZRdjl6RjRLUDRsNXRmYldhTDlkUmRkNXZ5VzJDbDNNSXlna3daZHh1?=
 =?utf-8?B?NE93YWUyQ0FMTmlUeUd6OGhWN2NvRS9WS0dLM1RGNW1LMGZqbEVEUVc3N053?=
 =?utf-8?B?aDd2WXJiODBzM0pIUWFFNVBYaTdrMWtPYjA4SkhtUktGY2RaME5zdHdTc1Q3?=
 =?utf-8?B?bzA2KytGSzlhMDJLeDBibmRoZVNQVEVLQnAyazZiTnc2ZkxYUTYrcHVpdlBY?=
 =?utf-8?B?R2REY21RT3NGVHZWRHlMSk9CT1RqZ0oxdGQ1UXVQZkczZDJ2eW5OV09wa1lp?=
 =?utf-8?B?R0RaUFRMYzVmSXdvc0ZKZXphcnRXN3FPNjlyRzcyL2ZscTJGSy9WVktXdldC?=
 =?utf-8?B?TDQ0ejNlV1hkN0hnWGVzWEJMQ2RkWGw5OXNJRG53Q0dSV3lnczNrbUo1eGgv?=
 =?utf-8?B?NDVWR1JoRTlvOWMxN2RoM0JqTjJJSE53MG1oS2w4T2ZHY2Qyc2F1N2RFNjVT?=
 =?utf-8?B?amVRQTVKWjA2L0JlaXNwTG1HVXBCSDN2bVZGeVFiSERhUXQ2WUo2STZ1ZXlR?=
 =?utf-8?B?aXJjVlZvVHFQTFh4RjQ1MVpLSkZDejc2c1dsWXZieXhWT2UyZzJjdFFGeEFi?=
 =?utf-8?B?S1c2aE01dmRuQUtUSDh3Zll2STJabm5QdHd5U21tc29iaW9CZU85emE2cWYr?=
 =?utf-8?B?YzB4SnhaOXNuVC81U3R4bHk2MVc5QjVES1IzeFQ0OGlXR0cxUEZtTDdPdWxs?=
 =?utf-8?B?UjZ6TGRhMGZhOU45WTBNNkY2VFUxYkxlckpJQndBRDZoYVRBZXVrbDQvT2hO?=
 =?utf-8?B?VGlYSVhuMlRobzhQMWx0VHJEOHNhS0Vmb3FmcXVOSG5aL3ZGLy9oRW9qWHVa?=
 =?utf-8?B?d1V2REJ0K2VuQWZwSm10WjVsc3Vzc2VPWlZ3akZYOU1ROSs1ekhQVFYxOFhF?=
 =?utf-8?B?Y0UwZlRWeWg2SC9WNVpKM0l5UjZOL3RySkNyam42OVZQZWdFb1hiV3NpQUlT?=
 =?utf-8?B?dGUrNC9NVUIyZVNHTzZEdG0zYUZPZWpadXB0aWkyUkdDSDRXbkZpZlJoUEx0?=
 =?utf-8?B?d2ovTjJBT3lPTkh6bldnbldOZXZ6dUQ4dFEzSlFzRkRJNE84NmU2UVNJOGFo?=
 =?utf-8?B?c1RpUmh2a1E2eEYzQmpCeWFHb1lpd2NJQlU1OXNNc095VGdXT0UvMklRUXIy?=
 =?utf-8?B?MmN5eHFFQkNRV09wb2VJNWgvSVhNdlZiMVhTc2o0cFhBWkVtMFVlSHFUOE0v?=
 =?utf-8?B?eEI4YUV3R2Z2a2JkYTFIVk9JdzM5amVYVk9rT1BCQ3N6VUNNZTJqYWwvanhy?=
 =?utf-8?B?ZkZlekpEZnZ0SXg5RG5WUkFYWEw3b0hkbUgrcEJrd3doL2d0NXk2WnpXN2tu?=
 =?utf-8?Q?XuejBahBiXwgmOKWxZUVZmBmt?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64246832-0567-444a-250d-08dc4e5ea346
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2024 13:05:55.2896 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kPBbC05P2oiS4jo9LCuj3jGe8Kg/Cd2/oA/uJApdI/m6YZbApRP5OhuUc6tQ6ut43XMmvQrsjsOtylD+2ilqkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8448
X-OriginatorOrg: intel.com
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgTWFyY2ggMTksIDIwMjQg
MjozMyBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogS2Fo
b2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91bmkgPGpvdW5p
LmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIDEvNV0gZHJtL2k5MTUvcHNy
OiBDYWxjdWxhdGUgUElQRV9TUkNTWl9FUkxZX1RQVCB2YWx1ZQ0KPiANCj4gV2hlbiBlYXJseSB0
cmFuc3BvcnQgaXMgZW5hYmxlZCB3ZSBuZWVkIHRvIHdyaXRlIFBJUEVfU1JDU1pfRVJMWV9UUFQg
b24gZXZlcnkgZmxpcCBkb2luZyBzZWxlY3RpdmUgdXBkYXRlLiBUaGlzIHBhdGNoDQo+IGNhbGN1
bGF0ZXMgUElQRV9TUkNTWl9FUkxZX1RQVCBzYW1lIHdheSBhcyBpcyBkb25lIGZvciBQU1IyX01B
Tl9UUktfQ1RMIHZhbHVlIGFuZCBzdG9yZXMgaSBpbiBpbnRlbF9jcnRjX3N0YXRlLQ0KPiA+cGlw
ZV9zcmNzel9lYXJseV90cHQgdG8gYmUgd3JpdHRlbiBsYXRlciBkdXJpbmcgZmxpcC4NCj4gDQo+
IEJzcGVjOiA2ODkyNw0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9s
YUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5o
b2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaCAgIHwgIDIgKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMgICAgICAgICB8IDE2ICsrKysrKysrKysrKysrKysNCj4gIDIgZmls
ZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5kZXggOGI5ODYwY2Vm
YWFlLi5iYTU3MzQ5MGZkODcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IEBAIC0xNDIzLDYgKzE0MjMsOCBAQCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSB7DQo+IA0KPiAgCXUzMiBwc3IyX21hbl90cmFja19jdGw7
DQo+IA0KPiArCXUzMiBwaXBlX3NyY3N6X2Vhcmx5X3RwdDsNCj4gKw0KPiAgCXN0cnVjdCBkcm1f
cmVjdCBwc3IyX3N1X2FyZWE7DQo+IA0KPiAgCS8qIFZhcmlhYmxlIFJlZnJlc2ggUmF0ZSBzdGF0
ZSAqLw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXgg
NzQ3NzYxZWZhNGJlLi5jYmY5NDk1YzcwNzIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMjA3NSw2ICsyMDc1LDIwIEBAIHN0YXRpYyB2b2lk
IHBzcjJfbWFuX3Rya19jdGxfY2FsYyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSwNCj4gIAljcnRjX3N0YXRlLT5wc3IyX21hbl90cmFja19jdGwgPSB2YWw7DQo+ICB9DQo+IA0K
PiArc3RhdGljIHUzMiBwc3IyX3BpcGVfc3Jjc3pfZWFybHlfdHB0X2NhbGMoc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICsJCQkJCSAgYm9vbCBmdWxsX3VwZGF0ZSkNCj4g
K3sNCj4gKwlpbnQgd2lkdGgsIGhlaWdodDsNCj4gKw0KPiArCWlmICghY3J0Y19zdGF0ZS0+ZW5h
YmxlX3BzcjJfc3VfcmVnaW9uX2V0IHx8IGZ1bGxfdXBkYXRlKQ0KPiArCQlyZXR1cm4gMDsNCj4g
Kw0KPiArCXdpZHRoID0gZHJtX3JlY3Rfd2lkdGgoJmNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYSk7
DQo+ICsJaGVpZ2h0ID0gZHJtX3JlY3RfaGVpZ2h0KCZjcnRjX3N0YXRlLT5wc3IyX3N1X2FyZWEp
Ow0KPiArDQo+ICsJcmV0dXJuIFBJUEVTUkNfV0lEVEgod2lkdGggLSAxKSB8IFBJUEVTUkNfSEVJ
R0hUKGhlaWdodCAtIDEpOyB9DQo+ICsNCj4gIHN0YXRpYyB2b2lkIGNsaXBfYXJlYV91cGRhdGUo
c3RydWN0IGRybV9yZWN0ICpvdmVybGFwX2RhbWFnZV9hcmVhLA0KPiAgCQkJICAgICBzdHJ1Y3Qg
ZHJtX3JlY3QgKmRhbWFnZV9hcmVhLA0KPiAgCQkJICAgICBzdHJ1Y3QgZHJtX3JlY3QgKnBpcGVf
c3JjKQ0KPiBAQCAtMjM2Miw2ICsyMzc2LDggQEAgaW50IGludGVsX3BzcjJfc2VsX2ZldGNoX3Vw
ZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gDQo+ICBza2lwX3NlbF9m
ZXRjaF9zZXRfbG9vcDoNCj4gIAlwc3IyX21hbl90cmtfY3RsX2NhbGMoY3J0Y19zdGF0ZSwgZnVs
bF91cGRhdGUpOw0KPiArCWNydGNfc3RhdGUtPnBpcGVfc3Jjc3pfZWFybHlfdHB0ID0NCj4gKwkJ
cHNyMl9waXBlX3NyY3N6X2Vhcmx5X3RwdF9jYWxjKGNydGNfc3RhdGUsIGZ1bGxfdXBkYXRlKTsN
Cj4gIAlyZXR1cm4gMDsNCj4gIH0NCj4gDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
