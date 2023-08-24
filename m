Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2D1786D67
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 13:09:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2379710E520;
	Thu, 24 Aug 2023 11:09:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4AF210E51F;
 Thu, 24 Aug 2023 11:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692875385; x=1724411385;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=WwP0U4oSwSjv4irUSgPRLZ3JyFRSWzwj1jm1cEJbGJQ=;
 b=SH6QKGelI253PIKCQiJz7S8fPnJfRWs+cwxTpYCxVPyVhHuM2KkadgUl
 Z1ywIEES2Zu1y3LDiQ1884Z5IiPwN9JwoH4h7UeEyxrPWtiThlDVyfAUJ
 llRybP5skdCICH4rQvs6eJJ8eQbCCwrjgHJDakQ2f6KChSaFsyTTfXrMP
 KV6PGSZYLqk3mZ+RAY5L0KoVL4VfEBH7W7cJ3pRirneqUnzh34IfVsU7A
 aL7tu4c8pzQw624O0MLFzerAux3KdWEbysJpts4pAVQkmGs4v/k7OjmHj
 Fg+9H1h6vS/BdT4hXEaeQ6px5luaVQUEgqA4qPII/T70HelWoYr6yqaLk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="374376359"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374376359"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 04:09:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="730571189"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="730571189"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 24 Aug 2023 04:09:44 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 04:09:39 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 04:09:39 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 04:09:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PkTXsRTDBPYqMrO4vzTqOZkSu6W4bTcYz5qxnlkPq5V+PFp138wexrOjmnNnGDRQ73EELDDxV2c1on1NpuEdUq6cA09/OkVRZHGltAjvLc9jUQXytwIVB69NdebaftMoocUIkmylSTZ2VfpFa5hllyqNT1MkUhgjvf7XeVxDlDT0pwhI4Pg3x4YLNY69KehpAbDkpGgk2X4fiUdNYARWl1rLpakRBQTv0Tig1yNJ8m0cgofJCr/s31hFGnaXpei1ulDZM4C/dY4iYeEEu07fmeQDtQKm+CrxOULk3O9T4cNq0lORH21DYeabthGfvggoMRUuONkqFBQh2nc+2XFS1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WwP0U4oSwSjv4irUSgPRLZ3JyFRSWzwj1jm1cEJbGJQ=;
 b=mGxyUOVT5bWOQgUZZpeM+8HEMHJpIrbHjOvGp9I58GRgdElhDoTI7gFNJ92LsAbwBq5tPFmqOSXsxSupAMUinZsy4fN5YI6JX3kaI/QCDpkHiScnaHpNm/7GteGiV+ng51rGIDkJbLEMnSPS94CTBXneyfRPNSXtAWb78LxK4PtijaPu4Wcdfu8cQ8nGcm9YENY+GZJxEFs8GxSH7wjXDSTIIxSfIAvHa+BnHJ+SqX3C9j+uOLuNuRO5PMyz45ObxEoneAshR0XfBdn+vvpVOthObtDVDhgVe39mx+1GH9jspn4gyIscuitxNdWYcu39Ng+rAmOZmQW3e0pQh8/VLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by PH0PR11MB4821.namprd11.prod.outlook.com (2603:10b6:510:34::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 11:09:37 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 11:09:37 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 09/42] drm/i915/tc: move legacy code out of
 the main _max_lane_count() func
Thread-Index: AQHZ1eSP7+aZnlpPj0ik/BK1mu5G46/47/eAgABbLYA=
Date: Thu, 24 Aug 2023 11:09:37 +0000
Message-ID: <1d8f71e583df072139ec3141ca173091fec09ae8.camel@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-10-lucas.demarchi@intel.com>
 <SN7PR11MB6750DB914E983DFCB1449811E31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750DB914E983DFCB1449811E31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|PH0PR11MB4821:EE_
x-ms-office365-filtering-correlation-id: a833b3ed-6422-41f8-874c-08dba4929ac8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lZGDQEOY3eaWsuob6v10XC4c3R1RO3NPSaGg1bs2UdbKIzN9guq3YzVnKsJ9eb/+jjX4j/FDTXq173weISXYsQERuzcwYt0LliUMWHFl49QwuYtjuikFJY0Md9f7oDricAUB6+YLxZGIQPyTvMnozztn+J+za3U9/K7jYExycG09mvLBQX346hNt6wLl2XViCr85qDtWVIITWXaJEmPNRN0wpm14K4SI2q7PYpx02pPl3mbiFzH1xZsQWf+0hSu5tAXeEdf4mYmBdmx/brySHImp043MKU90AMnOh22r/IFKaNbpUsZyV5JMGsYKVM9FJaV3NFW3CNn9XVKPhM6DIIODLbkrwlrunLO7v/xge8qrstRldD5Z6k9i/EGLJfsT43ThqM0JHyLSufuDe2FoXb20Mi5OOt9DO3Mm4CZFpFCwTRKAz0Rj5Ph7yEtDR2toO64WoN6BIywP8kW1n1J5uYvMYA8QR8lN3s7bxbtANLWq36jy9+0LRGlt9Lm4S4yBTzN/B5UM87qTKoo5wgqT9QrhZBLkzG1Bg5L6MyL7SWzSRhwqemhsihgjQtYl38RIm614e3qo++7El2wgQIlgd8H48zFPTCNx8BeD6tdu2oQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(366004)(346002)(39860400002)(136003)(1800799009)(186009)(451199024)(2616005)(8676002)(8936002)(83380400001)(450100002)(5660300002)(36756003)(26005)(71200400001)(38070700005)(38100700002)(82960400001)(122000001)(66946007)(66556008)(76116006)(66476007)(66446008)(64756008)(6636002)(316002)(110136005)(91956017)(478600001)(966005)(41300700001)(2906002)(6512007)(6486002)(53546011)(86362001)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c0djWnJlVDFkbDA0L2puVjZjTzVUSTNvWVg4dTJLZkh0TVJ1dzgxOHNmb1Zn?=
 =?utf-8?B?WVVLb0dpSDd5RnUzQ0Z6UTBMYkxaRFhvUU9YNEJHSG1kbC9kZTFmTTJQOWdC?=
 =?utf-8?B?VE1rd1R1WENqQzI2QjdMN2g4SVFFKzh2Ly81NmdRcjVsbkJyM1RYVU9jd1NO?=
 =?utf-8?B?MUlScjVaMldLdzVtMjl2VVJoTWZrTTM1bk9KY28xS3pjOTU4T0hITGhMZzl0?=
 =?utf-8?B?emVEd0xIOVVZYnFDaEErSjg1akx1R3lDczI2ODRZTElSbi9ZRngrR2poMmxy?=
 =?utf-8?B?UWtVOG5zdlV0N3o2RU13RmVsZS93RUZmb20xbjJMaWpXUEI1SGFJTEk0aXpR?=
 =?utf-8?B?dTZuY2p5SzNidGx6QmJhUWZrdnRWNzdEZFlaTFFBUXFxWHl6UmdjNXJCcC91?=
 =?utf-8?B?VWE0NGZuajVwdkl4czloM1BjYnpFZk8xRnFieVNwZjhDQVYwOHVITFdDVGZ5?=
 =?utf-8?B?cFRoM1ZNek1IQXNHSGJCaDZOaStsLzJVZDFjUmNYWUhYMnpuSjFsby84RWpm?=
 =?utf-8?B?V2d1S0JPQ2djWE5KOHJpOGwzUXRlV0NlL0FQdU9IQW9ndlpzTVNYbnFGcW5J?=
 =?utf-8?B?Si9CZVYva0lUR1lNb2NiRFNKTmg2ZTBYNkFxUVRYVmZ6ajlKUThWOU83YkR2?=
 =?utf-8?B?STdGaXdrcjlKazlJbXU3UXNFZGttV3NrTGNHbGJhZGozdkZGUFVRMVZYWkRj?=
 =?utf-8?B?NXFJTytXbTJmZXRwRTJ5b3VxalB0a1k5TW9lM2p3MVJQM2l1YUNzUGVvTDVw?=
 =?utf-8?B?R3JUZjYxZG1vUkR3RURJVHBZMWVOcmZ0am0rZkx3eThuNTB6Mkd0cDU2SnJm?=
 =?utf-8?B?MzVpaHNNK1ozdHR0bEhQbXRwRUc2eUo5WkxIbFJOSDRvdkpodHpRY3h2Z04v?=
 =?utf-8?B?cndtL3JXTE5tZFBVeUhiQUdRZU1BNGtiS0hoTzliS2ZsWEF0K0w1N2JXVHVI?=
 =?utf-8?B?OUd5djMrWVFEUElrY2JPdWg2VnBRZFJNT1F5ODlwa3RMUkQzci81ejhOZlVZ?=
 =?utf-8?B?a2QxUHdPZ2pHbnc2L1JwdDBvNXJRcUE3a0JBTTJvVFdlNHljb05KYlFMMmo4?=
 =?utf-8?B?NE9jSGRhQ01kS1VZajVubEVZcDREb0U0OWowZHNMbGJVZkh4VFFRajUyQVF5?=
 =?utf-8?B?dFJ2eGVCd2V4clRkbmdsVlBNZVpld1NNRGxKNmlrcWw0eWRVVXpFdXU4UEZ1?=
 =?utf-8?B?a0FEVytTSStwWTZldWdvbW1yODhtU3BtRUY5c0tadkd2ZjltMSt6MUFPYlU3?=
 =?utf-8?B?YzVObkp1eWNCSlByMm5SZW1ES0VhMWtMMnNFNjBMU1JzTmowZENvZVNVRlQ2?=
 =?utf-8?B?eWJ2alJEcFIwOE1GQlJNMU9XMmhlV0pocTVaRHNxTTMvcFQrV1dSTG5Vck1z?=
 =?utf-8?B?UDA1ZFp1aEVrS3JZOTJqdkc0Ni9xU1B2UTk1Vm44aU1GbjUzbVN0OWo5MVRy?=
 =?utf-8?B?eEJCQWFqSUVFcC9IRWs4R1YxOS85UEZqN1RtK2FubEJxaWhjSXIvMExiMzVO?=
 =?utf-8?B?TWY1QWpsU281aFExSEQxbDhKelp0anRvVnUrQjc2YVpmZWJJMk9ZZ1puRXZJ?=
 =?utf-8?B?bzIxajFSNnZ5V1lVQUgzTUJDMEYzQ0hHOEszVHUxQkw1dCsva0hNN3l3a3BP?=
 =?utf-8?B?TGJwSzlBZi9ObFFkRUc5dG9LRE9HSkpkUkZXT3BnNWhqdTBWUVdPYmxEaEJL?=
 =?utf-8?B?WmlZVDNwd3hEK2RSM2phc3U4RlQxODdWazdDdlB2UVl4SlR2YWlhQjZyWmYw?=
 =?utf-8?B?eDJZQ2FMenh3Ly82WWFuYnNheDd4ZEtVaHBmaTdpS2JyUU4zdUZBdlhGTE0y?=
 =?utf-8?B?NHVMM0hWRUpVRHhmZlcwRGc0bTY1WUR0YXF5Sm5qR1NSMmxKaGZKR0E2b1li?=
 =?utf-8?B?REY3RXg5ajVOcjJ1VGNjN2syeW5yLy9Tb1JYUHRXd2gwWmxsbkVHb3JqcWhm?=
 =?utf-8?B?RWM2L2ZyQXZQTzBHOVdwTitkUkgxQ09qZEpKaTZqdE1TSjVrZnN0Z0oxTExo?=
 =?utf-8?B?UGtyYWpKZWJJYWl4VVVkVFBFMmpCSjhnT2FaSUJPYWozb09YVnlnbkhLNDlD?=
 =?utf-8?B?L3RlQTF6d0lXaUU0NFVBN3Y1SUY5d0NzWWZ3dGhlckdKc3B6RU9nV0RjMXBY?=
 =?utf-8?B?Wks4K1cwZWhab2gydGYyOEUyVS9BaTlzNHZpOGUxTW8yUGtaeStWMkV0YzRm?=
 =?utf-8?B?QlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B4D612C712C2254E908532DD6107EC6F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a833b3ed-6422-41f8-874c-08dba4929ac8
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 11:09:37.2023 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fjt/0dvE2pCsFmqjQf0PrO0GEFvkg2QxH65DAhqM1jLwNji4ErsfCA7L9g+wujo/0JLZlIMnEdPVbcq1GZHu4a9c4/SYL+gS1X8gxFuLOX8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4821
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 09/42] drm/i915/tc: move legacy code out of
 the main _max_lane_count() func
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

T24gVGh1LCAyMDIzLTA4LTI0IGF0IDA1OjQzICswMDAwLCBLYW5kcGFsLCBTdXJhaiB3cm90ZToN
Cj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRlbC1nZngg
PGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEx1
Y2FzDQo+ID4gRGUgTWFyY2hpDQo+ID4gU2VudDogV2VkbmVzZGF5LCBBdWd1c3QgMjMsIDIwMjMg
MTA6MzcgUE0NCj4gPiBUbzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gQ2M6IENvZWxobywgTHVjaWFubyA8bHVjaWFu
by5jb2VsaG9AaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCAwOS80
Ml0gZHJtL2k5MTUvdGM6IG1vdmUgbGVnYWN5IGNvZGUgb3V0IG9mIHRoZQ0KPiA+IG1haW4gX21h
eF9sYW5lX2NvdW50KCkgZnVuYw0KPiA+IA0KPiA+IEZyb206IEx1Y2EgQ29lbGhvIDxsdWNpYW5v
LmNvZWxob0BpbnRlbC5jb20+DQo+ID4gDQo+ID4gVGhpcyBtYWtlcyB0aGUgY29kZSBhIGJpdCBt
b3JlIHN5bW1ldHJpYyBhbmQgcmVhZGFibGUsIGVzcGVjaWFsbHkgd2hlbiB3ZQ0KPiA+IHN0YXJ0
IGFkZGluZyBtb3JlIGRpc3BsYXkgdmVyc2lvbi1zcGVjaWZpYyBhbHRlcm5hdGl2ZXMuDQo+ID4g
DQo+ID4gU2lnbmVkLW9mZi1ieTogTHVjYSBDb2VsaG8gPGx1Y2lhbm8uY29lbGhvQGludGVsLmNv
bT4NCj4gPiBMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjMwNzIxMTExMTIxLjM2
OTIyNy00LQ0KPiA+IGx1Y2lhbm8uY29lbGhvQGludGVsLmNvbQ0KPiA+IC0tLQ0KPiA+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgfCAzMiArKysrKysrKysrKysrKyst
LS0tLS0tLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAxMyBkZWxl
dGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF90Yy5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3RjLmMNCj4gPiBpbmRleCBkZTg0OGIzMjlmNGIuLjQzYjhlZWJhMjZmOCAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gPiBAQCAtMzExLDIzICsz
MTEsMTIgQEAgc3RhdGljIGludCBtdGxfdGNfcG9ydF9nZXRfbWF4X2xhbmVfY291bnQoc3RydWN0
DQo+ID4gaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gPiAgCX0NCj4gPiAgfQ0KPiA+
IA0KPiA+IC1pbnQgaW50ZWxfdGNfcG9ydF9maWFfbWF4X2xhbmVfY291bnQoc3RydWN0IGludGVs
X2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+ID4gK3N0YXRpYyBpbnQgaW50ZWxfdGNfcG9ydF9n
ZXRfbWF4X2xhbmVfY291bnQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydA0KPiA+ICsqZGlnX3Bv
cnQpDQo+ID4gIHsNCj4gPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkx
NShkaWdfcG9ydC0+YmFzZS5iYXNlLmRldik7DQo+ID4gLQlzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAq
dGMgPSB0b190Y19wb3J0KGRpZ19wb3J0KTsNCj4gPiAtCWVudW0gcGh5IHBoeSA9IGludGVsX3Bv
cnRfdG9fcGh5KGk5MTUsIGRpZ19wb3J0LT5iYXNlLnBvcnQpOw0KPiA+ICAJaW50ZWxfd2FrZXJl
Zl90IHdha2VyZWY7DQo+ID4gLQl1MzIgbGFuZV9tYXNrOw0KPiA+IC0NCj4gPiAtCWlmICghaW50
ZWxfcGh5X2lzX3RjKGk5MTUsIHBoeSkgfHwgdGMtPm1vZGUgIT0gVENfUE9SVF9EUF9BTFQpDQo+
ID4gLQkJcmV0dXJuIDQ7DQo+ID4gKwl1MzIgbGFuZV9tYXNrID0gMDsNCj4gPiANCj4gPiAtCWFz
c2VydF90Y19jb2xkX2Jsb2NrZWQodGMpOw0KPiA+IC0NCj4gPiAtCWlmIChESVNQTEFZX1ZFUihp
OTE1KSA+PSAxNCkNCj4gPiAtCQlyZXR1cm4gbXRsX3RjX3BvcnRfZ2V0X21heF9sYW5lX2NvdW50
KGRpZ19wb3J0KTsNCj4gPiAtDQo+ID4gLQlsYW5lX21hc2sgPSAwOw0KPiA+ICAJd2l0aF9pbnRl
bF9kaXNwbGF5X3Bvd2VyKGk5MTUsIFBPV0VSX0RPTUFJTl9ESVNQTEFZX0NPUkUsDQo+ID4gd2Fr
ZXJlZikNCj4gPiAgCQlsYW5lX21hc2sgPSBpbnRlbF90Y19wb3J0X2dldF9sYW5lX21hc2soZGln
X3BvcnQpOw0KPiA+IA0KPiA+IEBAIC0zNDgsNiArMzM3LDIzIEBAIGludCBpbnRlbF90Y19wb3J0
X2ZpYV9tYXhfbGFuZV9jb3VudChzdHJ1Y3QNCj4gPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19w
b3J0KQ0KPiA+ICAJfQ0KPiA+ICB9DQo+IA0KPiBSYXRoZXIgdGhhbiBoYXZpbmcgdHdvIGZ1bmN0
aW9uczoNCj4gbXRsX3RjX3BvcnRfZ2V0X21heF9sYW5lX2NvdW50KCkNCj4gJiBpbnRlbF90Y19w
b3J0X2dldF9tYXhfbGFuZV9jb3VudCgpIHRoYXQgYm90aCBjYWxsOg0KPiB3aXRoX2ludGVsX2Rp
c3BsYXlfcG93ZXIoaTkxNSwgUE9XRVJfRE9NQUlOX0RJU1BMQVlfQ09SRSwgd2FrZXJlZikNCj4g
ICAgICAgICAgICAgICAgIGxhbmVfbWFzayA9IGludGVsX3RjX3BvcnRfZ2V0X2xhbmVfbWFzayhk
aWdfcG9ydCk7DQo+IHRvIGdldCB0aGUgbGFuZSBtYXNrIHRoZSB1cyBkaXJlY3RseSBwYXNzIHRo
ZSBsYW5lX21hc2sgdG8gdGhlIGFib3ZlIHR3byBmdW5jdGlvbnMNCj4gYW5kIG1ha2UgdGhlIGNh
bGwgZm9yIGdldHRpbmcgdGhlIGxhbmVfbWFzayBjb21tb24gaS5lIGxldHMgY2FsbCBpdCBpbiAN
Cj4gaW50ZWxfdGNfcG9ydF9maWFfbWF4X2xhbmVfY291bnQoKS4NCg0KQXMgSSB3cm90ZSBpbiBy
ZXBseSB0byB5b3VyIHByZXZpb3VzIGNvbW1lbnQsIHRoaXMgY2hhbmdlcyBsYXRlciwgd2hlbg0K
d2UgYWRkIHRoZSBzcGVjaWFsIGNhc2UgZm9yIExOTC4gIFNvIEkgZG9uJ3QgdGhpbmsgaXQgd2ls
bCBoZWxwIG11Y2ggdG8NCmNvbWJpbmUgdGhpcyBjYWxsIGludG8gYSBzaW5nbGUgZnVuY3Rpb24u
ICBJTUhPIGl0J3MgY2xlYW5lciB0byBoYXZlDQp0aGVtIGFsbCBjbGVhbmx5IHNlcGFyYXRlZCBp
biBkaWZmZXJlbnQgZnVuY3Rpb25zLCBmb3IgcmVhZGFiaWxpdHkuIA0KVGhlIGNvbXBpbGVyIHdp
bGwgY2VydGFpbmx5IG9wdGltaXplIGFsbCB0aGlzIGluIGl0cyBvd24gd2F5cyBhbnl3YXkuDQoN
CkRvIHlvdSBhZ3JlZT8NCg0KLS0NCkNoZWVycywNCkx1Y2EuDQo=
