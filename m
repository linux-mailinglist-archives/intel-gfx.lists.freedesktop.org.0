Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5B479EFBE
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 19:02:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18D4D10E0F6;
	Wed, 13 Sep 2023 17:02:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F1AE10E0F6
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 17:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694624565; x=1726160565;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xtirNo1e7e2BOng9UFBFZMRAz0+Fatu3krB9PlePCRw=;
 b=SK7lPt8JVG+74c+haPWRuqxfqBTxXSw08w/Oq7+UTWYjSWIFf0EwXMs0
 swUUMT8A9WZgJl8kgBTSRrm7uoX+dseDoPvIRnMo90x774bhbj4geSKGh
 qb1eUSH60ypyw5ZZJwqezA4tDqb4Ksr04ywXsCUZzCmkZNYqNV6JRjteQ
 Drd+xVfdOH/fXR5XzI0TnRYRDZar6OHv2egegJEJlFhtsiK32vSfsWH8/
 CfacSO2DTVMmSWKX5PhkDh+BPd2sfcZDRKCIUChsZLY1S/F5UdS9cMUSs
 LQqSVeFb0Ovqgw0E3qXZRWu5JNfiTImj7YaU9e0SXmCH0Aylg7xKNYe6m w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="358986019"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="358986019"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 10:02:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="747377178"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="747377178"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2023 10:02:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 10:02:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 13 Sep 2023 10:02:34 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 13 Sep 2023 10:02:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bhcqFD3KIxD5JcKMWiB/NyIfbJISsLb6vmKynVe8fjL2MsHgqMVQevkY+ypkU8TiXAbXFl4QUQ0TZJxdooQSmOburtXMzRPw93inoo3JW0LF1vZzFxWdejsQvCc2yiJ0oMx5ROfmV3FDZhmRYA1sUaqks1ugYv89aa8n1CuQjlEdfCxz3nChwdwEU2UhDKCq9zT1lxFO4s/dtePl9uCYBjEhK1jPGCzghUQvw+84f5juPmXc0+XqvxsC+FjKBWaeLvi7MTO0Lfvcu7kQluSQIXuAWrtyKlQl/Fh6/jxmT8lA8g8oIi63gi73daghSJ9ngqPMWeRhEpVcGbhqhAXJ2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xtirNo1e7e2BOng9UFBFZMRAz0+Fatu3krB9PlePCRw=;
 b=Qo19o3FVEquQ2ypZ4nAYy+WHmv5BtGT9xWzg1KQT1yEEJ/JhtmVlmBoE9KtfLA7EGRGAKMR4UkCQEF8JHmm2toSVAAzle2aP3s9c935ksRvs/kvSNaEfj5TulSpvVVf674jT1VDP+0qAl7Z5J2rU+TP6R+q1Q/tE4Y4tYLLGRnAKtlaCBYh3F2A1ct0suC03vxE38JVc6RYjtMrotsA8Otmw6ZYdBQf6+ngu5qPpVNhkAlW5aLXuJ4jKTHPXxXOQWO683eE65mJlbti4ZxGoCY1OIjh+rE67Uti8ZmCUp9IyatYUW0IlM6f9Upbv8roVygVFw3lwHfNPZoQKejcrOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA0PR11MB7752.namprd11.prod.outlook.com (2603:10b6:208:442::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Wed, 13 Sep
 2023 17:02:31 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6768.029; Wed, 13 Sep 2023
 17:02:31 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 13/19] drm/i915/dsb: Use non-posted
 register writes for legacy LUT
Thread-Index: AQHZmKtgJaBO9Ha8FkCkVTXAfnYPN7AZlASw
Date: Wed, 13 Sep 2023 17:02:31 +0000
Message-ID: <DM4PR11MB6360EE392C4273A5A9D31C15F4F0A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-14-ville.syrjala@linux.intel.com>
In-Reply-To: <20230606191504.18099-14-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA0PR11MB7752:EE_
x-ms-office365-filtering-correlation-id: b94832e0-57b6-45ad-3bfd-08dbb47b37f1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mbWEQP9+dERO+JApKNQVxIGJMWeiVZ1xVPqsfTzw4YBvVVPfN+/oyRA/j/yRZ6tvzDlqf2PmMGMkZOHceOi0gDdsjzc0+TmEYeZs4in8vkz4Pu+KsJjl+IozVLkztA+9x3KoEa+nN4oNBAFrU/T/uKf3s0lArJx1jGJY1wYm1n0NnOCqcvlz8dJKwi00wcPHH5Qp61D0cDxz9iNnoBTN6b+RBS7Jt55eJbRZ8rSwryOIIOJQJvN1q+A1kHQJ7pUIbFHx+2r1WxgFeLtCutgqzVursu+C3CB88gP/fzK/rehBcq1QitpbyyL4bYr+pq/TXucsEhEC4J31K0MSflkMfaT4KbGsyBzKLLPGLyWVe0JAvhP8xK7EUvT/Kz1UBadErjDoJIl2gVMKOGzmcF1Lv/PD/TmWHler4jKy6ycLtoAX0t7qXhM/tFrbf5JZRaPeL5GFhU3YRfR6qnGlOmdLyu/2kwXO4Pe6v8C0hZp8gw7ZfKDn5qQWVQgMhr6ybBvTcpIWmoabl7JyimcYK4y5gwBm5NL8jPaPsVh3G1cOI8SnFKhZketGolgDr986/uiF5CO4T5QCCrzICOmzZe2RdJvpLWVqkgSpBA2qE4akp4zngp0kGYHuaiqkTyJCP7If
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(136003)(396003)(39860400002)(346002)(1800799009)(186009)(451199024)(2906002)(33656002)(38100700002)(86362001)(55016003)(82960400001)(122000001)(53546011)(478600001)(64756008)(66446008)(41300700001)(7696005)(316002)(66476007)(9686003)(66556008)(76116006)(38070700005)(8676002)(52536014)(110136005)(8936002)(66946007)(6506007)(71200400001)(83380400001)(26005)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?THBDZ1ZEZnlISGpHbm01UStzZGVoNXc4dlk4dy9aSndWakdRazBkM2k4dE50?=
 =?utf-8?B?SEIreUtRdkJpSld3bjFMRktyRmdyT01aSTNWMU5ZZ1NiODd4T2pVQ0FJcVkw?=
 =?utf-8?B?Y25aNUVtc1RmTjM0ZG56UE5SUUI1eUJJMU9zZjFlZlNCREw3TVdLZytLN0RN?=
 =?utf-8?B?MzJ4YXZZdENXUEJyRlljUW82SDlERS8wWGF1TSt0OXgwbUpGMEpIdjNtSVdH?=
 =?utf-8?B?aE1lQjhQMWpmaXBLRGRqWXVBTFdqOHJ6cnJYWGdaU0hFRUlOQStRM1dha2Q5?=
 =?utf-8?B?VVh3YlBtb1dkVTFQcjR1T2J5V1hkeStYQ0lqbmF3TzBhMS9XMi9QNjNhazNT?=
 =?utf-8?B?MHBGUm9mK1cvNjVWZENoZ3IyeFdrUWJBeUdIOFlzNzVRbk1sT05nQlh1aEVh?=
 =?utf-8?B?eFVJUm1xYTFlYk5xc2RLaDF4cUJiUWRaUFl0dFNMOXdBQVorR0pYUjl5Z01z?=
 =?utf-8?B?LzIwTklMK2lEUkk2Q0tDcFVUanRvYlZUK0IzYnA1M0ExSmJuNk5qb1Erd2gy?=
 =?utf-8?B?dDhvdkRGTEVmSGxuc2k3MnptV1VFS2ZaZWVvc0hrVWdPYnZHOVhOV2tFQlZP?=
 =?utf-8?B?L0xaOHFDZnFGOHZ2Z3BoRTExUjVqSWRKNjBwRWIvUmNVU2E1c0xVN2JlSE9q?=
 =?utf-8?B?d211T3ZnbVh3TWh1RmdSTHY3RFVNWDJrcGNhbmcwZnpnMDRFZHpqS2pEYWVP?=
 =?utf-8?B?ZlYxb3RybFF0UXlEZG1vNUJ3VjlLUWtSSjVnWHBVaGNmVFc1aTFRZEdjZDdr?=
 =?utf-8?B?OCt0YXh3VStCL1RMTkhMSUxKWHhhM2xXZnl5cHNNTnlkcVJGVkwwbWFjd3ph?=
 =?utf-8?B?R2NZb0d0dlo2NWZlS0RkK1lNOWxLc3ZERE93QkkxMVJyMkZHV0h3SktyRit1?=
 =?utf-8?B?b1pFMk81VVV1VytCZ1ZJRGV3dlZZVGJBcm81bk9MNVkzZzhnYWpoZk1PMGd3?=
 =?utf-8?B?OHNmOXEwRHZQZHZuSGZtREpUSTFXdFhMQUlIaTNWVjAxUmZxRUJURjVDS1dr?=
 =?utf-8?B?bjlwVDdLZUI4KytYRWdvTTBQVXNJNTl5bmxwNG9tS0Y4ZzJFcHZrZEN0dUdZ?=
 =?utf-8?B?OVdSenhleXVpM21SWmcvRzA3bmtkSWdsdEF0elZjc0ZhcXVOQlFlSVZ0ckY5?=
 =?utf-8?B?MzNBaTE4UFlISDkySWh5ZGFzdlRoZXV2dFUwcWtCRVI0U1l2cXVTNzRqNnFa?=
 =?utf-8?B?ZTRYWWpNSnZ0aGdHY013aVJiMFBqZGU3ZVU5Y0lqZCsvRUtLZHgrSzVTSVZP?=
 =?utf-8?B?TWRyRC9KdUhuZlB0NFFSSFlkVmpFOW02TER6Y2ZubFU5c3k4aHVkSlZOZVE3?=
 =?utf-8?B?RUxOWnRkSFFNRDdtT1VoQ1NNSmtndGp0NzB1c3ltQmFWaStFcHBnT2Fpbkcz?=
 =?utf-8?B?b1lnalFoZXowNkdMUk4yQ3JEa2g2K3VnQU5WNTMrZ3ZXMUY2WDA4ejdTMUxk?=
 =?utf-8?B?cHlLTG9sVjJQb2EwOXB1U0crSThSeU4ra0ZZV0pzQW9JSkZkbzU1anoyRFAz?=
 =?utf-8?B?YldVckZGa0VxMGhmWDZ5eHJER0NkTlJzT3g0VWt5dGJBVXFhYnI1QWNFb0VL?=
 =?utf-8?B?d1phbmxkQlVUOUxPQWlOUkk1R1d1OHltM21RbTZsbVdvempjMzJIbEhPZFM0?=
 =?utf-8?B?bG1vVWRVcmNhcDVUcUZoN1BNNG55ZzgvK3VpUW9SaTJPTFVQMW9NT0NIY1VI?=
 =?utf-8?B?dkhyZHVDWk5GdFUvNld5VU04eWlnS3h6RkYrbHFOd2Z0VEc0RWlyR3ZGNmor?=
 =?utf-8?B?L3NtdUFIL043eklBajNuNW85OHNkL1hhNXE1QTFHVlluV2d1Z1FlaFVTakFw?=
 =?utf-8?B?K25CWFRmZFpuVVJnQUNQT3JrZVozMy9KL25nWGR0b29WaHdLQlk1T1BCbjR4?=
 =?utf-8?B?TmpLNjFhNllGMEVwc0NuMTI3ZU4xV1dOZkl5MVFJQzBGWFhEaWxOYVNDenFh?=
 =?utf-8?B?YnVwMUE5SklCZlZvTnE5OUNVbkxRU3NkUGo5ZjdwaVNOMWU3TDZHSVFjd0tK?=
 =?utf-8?B?YldpZGt6L2ZIcitsSW1yTnQva1paQTk4UUs3dko5MVZLRTJRaXExSnI2My9N?=
 =?utf-8?B?Y3ZhYUZ0b2dzcmt2SER5TGxuaEZFOHQycU9QbC9LVklmMTZDZmNkQnFXVVJz?=
 =?utf-8?Q?qWgNUvRv7T73o+VhyB7ibgXKq?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b94832e0-57b6-45ad-3bfd-08dbb47b37f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2023 17:02:31.5514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BwZeh/gSeUKkGAFQC2Tpz0hNtPU70WHuf2I/77LaC76pG+JHYdNaykkCjBDQMSGEMbNzWkrZAbd+66ZMerJmvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7752
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 13/19] drm/i915/dsb: Use non-posted
 register writes for legacy LUT
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA3LCAyMDIzIDEyOjQ1IEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCB2MiAxMy8xOV0gZHJtL2k5MTUvZHNiOiBVc2Ugbm9uLXBvc3RlZCByZWdpc3Rlcg0K
PiB3cml0ZXMgZm9yIGxlZ2FjeSBMVVQNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBUaGUgRFNCIGhhcyBwcm9ibGVtcyB3
cml0aW5nIHRoZSBsZWdhY3kgTFVULiBUaGUgdHdvIHdvcmthcm91bmRzIEkndmUNCj4gZGlzY292
ZXJ0ZWQgYXJlOg0KPiAtIHdyaXRlIGVhY2ggZW50cnkgdHdpY2UgYmFjayB0byBiYWNrDQo+IC0g
dXNlIG5vbi1wb3N0ZWQgd3JpdGVzDQo+IA0KPiBMZXQncyB1c2Ugbm9uLXBvc3RlZCB3cml0ZXMg
YXMgdGhhdCBzZWVtcyBhIGJpdCBtb3JlIHN0YW5kYXJkLg0KDQpDaGFuZ2UgbG9va3MgZ29vZCBi
dXQgSSBmZWVsIGl0IHdpbGwgYmUgZ29vZCB0byBnZXQgdGhpcyBkb2N1bWVudGVkIGluIHNwZWMu
DQpOb3QgYWJsZSB0byBsb2NhdGUgYW55IHJlZmVyZW5jZS4NCg0KQW55d2F5cywgd2l0aCBlbXBp
cmljYWwgZGF0YSBiYXNlZCBvbiB5b3VyIGZpbmRpbmdzIG5vIGNvbmNlcm4gYXMgc3VjaC4NClJl
dmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IFRPRE86
IG1lYXN1cmUgd2hpY2ggaXMgZmFzdGVyDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDExICsrKysrKysrKysrDQo+ICAx
IGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiBpbmRleCAwNzdlNDUzNzJkYWIuLmIzZGQ0
MDEzZDA1OCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jb2xvci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29s
b3IuYw0KPiBAQCAtMTI2NSw5ICsxMjY1LDIwIEBAIHN0YXRpYyB2b2lkIGlsa19sb2FkX2x1dF84
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlLA0KPiANCj4gIAls
dXQgPSBibG9iLT5kYXRhOw0KPiANCj4gKwkvKg0KPiArCSAqIERTQiBmYWlscyB0byBjb3JyZWN0
bHkgbG9hZCB0aGUgbGVnYWN5IExVVA0KPiArCSAqIHVubGVzcyB3ZSBlaXRoZXIgd3JpdGUgZWFj
aCBlbnRyeSB0d2ljZSwNCj4gKwkgKiBvciB1c2Ugbm9uLXBvc3RlZCB3cml0ZXMNCj4gKwkgKi8N
Cj4gKwlpZiAoY3J0Y19zdGF0ZS0+ZHNiKQ0KPiArCQlpbnRlbF9kc2Jfbm9ucG9zdF9zdGFydChj
cnRjX3N0YXRlLT5kc2IpOw0KPiArDQo+ICAJZm9yIChpID0gMDsgaSA8IDI1NjsgaSsrKQ0KPiAg
CQlpbGtfbHV0X3dyaXRlKGNydGNfc3RhdGUsIExHQ19QQUxFVFRFKHBpcGUsIGkpLA0KPiAgCQkJ
ICAgICAgaTl4eF9sdXRfOCgmbHV0W2ldKSk7DQo+ICsNCj4gKwlpZiAoY3J0Y19zdGF0ZS0+ZHNi
KQ0KPiArCQlpbnRlbF9kc2Jfbm9ucG9zdF9lbmQoY3J0Y19zdGF0ZS0+ZHNiKTsNCj4gIH0NCj4g
DQo+ICBzdGF0aWMgdm9pZCBpbGtfbG9hZF9sdXRfMTAoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUsDQo+IC0tDQo+IDIuMzkuMw0KDQo=
