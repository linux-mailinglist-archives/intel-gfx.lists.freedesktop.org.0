Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4EC7665B1F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 13:12:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAB0310E711;
	Wed, 11 Jan 2023 12:12:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08BCE10E711
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 12:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673439167; x=1704975167;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1SAOgzMNZVwDA7mzq+qGXxMlv3/ojlAN9LU/6y6zAnw=;
 b=PFExT207DJHcDmX1qzf0x1i6mbtyMNTV7HDTuG5SiiiHaptiSq3yHMyq
 ysN6moIUqVOYRgID379lMiaTamqa6LbosNe248TsDtaPIYfCixuCttrOi
 DBZgtR8emfla6ret3QRDzQq2jNrZabe1aBdvlyARi3R8yZTIyj2o0O2ED
 gO5L6MzR2ovvaJVFmJA1Uz0ldISP7eqBTsqGmf37hIzNl8E3jeda418V2
 lXQNq0wS3QEE2duGLFi6W6zSvH7WJvlSzMX85IDZEl1uxN0m81xGui+PF
 7kGDldg8nO4fNEGrYx1HY+PzLGJPBc4BWwPFvFZBI/0QxmvlcniHRBVqG w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="385703177"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="385703177"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 04:12:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="799801252"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="799801252"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 11 Jan 2023 04:12:21 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 11 Jan 2023 04:12:21 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 11 Jan 2023 04:12:21 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 11 Jan 2023 04:12:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IWje4/imDpsJ4CexCQ/9tGjfHmR/1uBhHat5jH2uK5+q/PGoUt4iR3dP2okQIGG2ncmr+SZZyV7RYSp9wjpUgNRT8kxIWwZ3aAC0BwTR/qR7lEuDaGD90ZS/JklNgZRdrF6/CRemOE8c3OQXv4allDIPaOGFpVeHxDc+PF1kI1/ovRf04nS9HlGOiYe9Qf+mGZpFQ5WCpE0wRTqugzgJhE9BNqmCMcIh4jtmuYT0tSy/2R2DPqK0xL66kHSF818NknzAweytQnScZCTjM223CF2e7EGAg/VwI2LNcXXk8faGSCBxkvHnx/7Yy9CFy1i5O3NtVmLFiId3e+4zNerq2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1SAOgzMNZVwDA7mzq+qGXxMlv3/ojlAN9LU/6y6zAnw=;
 b=BRTpnjQcdCi20lV1Y1+UIuX5jI60RKwfHJOy8U7yc4P+e2qplVmWLM3BWl93y5IVsakSyio7Iri9n5hr/rr3vN2aEkitMee0m7o2nNpnhiHAryDUpnFgYQv3fYyOd9xWoWcSZTN8AYv6H/iKLX8GMrii703RNv93wTXdPwu8PRIdSh561Si4xjAVEAMYWebgcUj1cAuR/m4U1X6MicJi92q6ZWqcdwOcoH4KsjJ9tmhswqKqXrJBSXA43jt1ygavXYC9pgAeDEjPEQMcqme+HUjlJ8w3Yokp2W8gjbNcMCZlb1saL+53pkkZrqX9P0xPV8gUQA6V/PXuNI1bL1QYcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5253.namprd11.prod.outlook.com (2603:10b6:208:310::20)
 by SA1PR11MB5873.namprd11.prod.outlook.com (2603:10b6:806:228::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Wed, 11 Jan
 2023 12:12:18 +0000
Received: from BL1PR11MB5253.namprd11.prod.outlook.com
 ([fe80::334c:2f8b:d347:2b09]) by BL1PR11MB5253.namprd11.prod.outlook.com
 ([fe80::334c:2f8b:d347:2b09%9]) with mapi id 15.20.6002.013; Wed, 11 Jan 2023
 12:12:18 +0000
From: "Veesam, RavitejaX" <ravitejax.veesam@intel.com>
To: "Hajda, Andrzej" <andrzej.hajda@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Patchwork <patchwork@emeril.freedesktop.org>, "Yedireswarapu, SaiX Nandan"
 <saix.nandan.yedireswarapu@intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2VyaWVz?=
 =?utf-8?B?IHN0YXJ0aW5nIHdpdGggW3YyLDEvOV0gZHJtL2k5MTUvZGlzcGxheS9jb3Jl?=
 =?utf-8?B?OiB1c2UgaW50ZWxfZGVfcm13IGlmIHBvc3NpYmxlIChyZXYzKQ==?=
Thread-Index: AQHZJbWPKRoXqBSdTEGwAmiesatqiq6ZIGEw
Date: Wed, 11 Jan 2023 12:12:18 +0000
Message-ID: <BL1PR11MB5253C4F02D23A552C69A5ED086FC9@BL1PR11MB5253.namprd11.prod.outlook.com>
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
 <167336553276.5203.7592745731911143747@emeril.freedesktop.org>
 <46730542-def1-17f0-1a25-5ec6050c3b04@intel.com>
In-Reply-To: <46730542-def1-17f0-1a25-5ec6050c3b04@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5253:EE_|SA1PR11MB5873:EE_
x-ms-office365-filtering-correlation-id: c4bf3630-51ec-480c-8a9e-08daf3cd15b1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O1UkS/J4lW2vhx/cVOdAnQVt5/MafJ3YrZKmIafuJorKt5phhP3ADwcjrDADh2WJ4icjh9ZQWOvk0q5R8rdvMuqwvjd5o/Q9vW0T5iNkaS6BqIbyAL8/gP4Kq7fc5uj3adxcQci6k9vsYxfOqLounZkmblT9qbCbDz8W23E5AHktRB0+mCdlm324jj6g1+hBnBbtjnrxh5GRdhux8Uls8f/EBlKRPfqgW27Wwe+dWsVkkUmgPXrJwAhJgpyWf7GRi7XDGXWZOiPioCgUbkjOiJYTMCMsojtGQe4LpojjDhIYGnjiPOXgDQBBWJZbMpbmmZ+17Uc9WeMUcfdd0gu9gUPoo4qy12s2qmdRO2PQMLpNDk8MrPBqzD0ASfzEbLeZ7vSNI8OCiYR/ts/Py06eVD1l2IEq8oVKjZa0NRonUysLSRoQ0xq+h6oUZY9kED7kIyVBziPGpvsU114UHGMlDwF2vsOGkprFiFdwTDLIkqeHisviO1hHV1tl4IFf/YMEeUetdEaCVoG86vxqnckUM2iIw2Mg4pW78FyE0CQpBwoVzR7N3FvhBsaSrt6uR/2TtxW1eRA0zOhLbBVq6FqcNK4oX4PIKP6CiqG4npnwb3abWAc2ycvrPboBsYpACZvVT+5R1T94anwmQHRck8LU62XConxP3qUuOmzqoL5LYUn7YCv6B4fkx4KdionXlTcQ4BWs6k8CCl7413t5R1t9VCyfbiTcDDOqQTB53KpjvDVZNx3p4VtacQiOJxvdfVlF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5253.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(346002)(366004)(376002)(396003)(451199015)(52536014)(66946007)(41300700001)(2906002)(8936002)(5660300002)(76116006)(66446008)(66476007)(64756008)(316002)(66556008)(7696005)(107886003)(71200400001)(6636002)(478600001)(110136005)(53546011)(966005)(6506007)(33656002)(4326008)(55016003)(9686003)(186003)(26005)(83380400001)(86362001)(38070700005)(82960400001)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?akFBYTdaQ0VlQkFicFBmM3hXdlZuVzI4MmJPUnhsaXJxR0hBWjhZbDRqSCtx?=
 =?utf-8?B?S3BTTWwvcUgya1ltbnFxejZoUmpDby9mblRKeXcreVptTVZOaFZ3bnZOK2tr?=
 =?utf-8?B?Mmk0VHZraDNPYkdzY2NXZ0NCZmpuSk80NG1FMVFRZmplblB4cHlFMTZBb1h2?=
 =?utf-8?B?cmJnOHAyN21YZmFOTktjdnIxOGdDQ3UwTWFvOHBPU0F1cysyTmZRMW9LVGUw?=
 =?utf-8?B?Znl1cGs2bFpNQU1Cd0xGUHo0Q3pWSWQvY0dtMVJBL3lZMTBqQTBQeDlFSmpX?=
 =?utf-8?B?UThHaTYxeU95R1c0WmZneDRvOUgvUG5jdHhGMms3ZVVYL1NPcTlEdUV0S3VY?=
 =?utf-8?B?UHBMOUxaRW84V3QvMzlndWlOUHVlSnhwcWordTZad3R3NGNaSU9oNEdWUTRy?=
 =?utf-8?B?R3FyTWt2bWJqVHJZWUtOTTlHTFp4NmRKeUwvMXZtOGJyY3lFeE9CNGYzR3R2?=
 =?utf-8?B?NUVxaUFDQXRQWDR6RHNIZ2ZCeVhFK1BvNlAzYmtWQ2wwQ3JrU0g4SXBLSVhD?=
 =?utf-8?B?UUprN3BlUVpFMjNhVWh1UTN0WXRLbVFZRmhHR0dnc3p2WlduanFrV3cvd2Ro?=
 =?utf-8?B?QjkyK3FxY2xpQWdUWjZPTTFBd2xZd3ZiekIzcUlrYTROZ0hKUDU5S2dZSDhr?=
 =?utf-8?B?YUYrQ00wK0F4QXhad2VYTCsxL2ZhN2l4WUE3Tml0ZEVYMzMyQU9XTnErdGs1?=
 =?utf-8?B?MmRqeWxpWUYzbzUyNDA3a05RYUs0RS81YzUwMXRoVzJXQWZHSDVOSWZFbWZp?=
 =?utf-8?B?NWlHSnl1SHBlWHlwNGViNEVXbUFzK29FUU0yYjN2bk13NHFXdU1jSHYvM3ll?=
 =?utf-8?B?aGQvaXl0NHkxbi9meW1hS3czS0RyVnBOdVhSS0FCNWw5VU10SlZYOFV0VmM4?=
 =?utf-8?B?N1NIY0VZc2RwcTRUb2lOL0tOOWhLaHA5cWIrUHFSVnNSWGZCU1RFRHFteHgz?=
 =?utf-8?B?dmI4WERXbEsvbzVNcGgwOFNiVzh2eHlSc2FEL1BIMHY0ZXFXdkUzcHRETFJG?=
 =?utf-8?B?NUdCbkhHSDQzVVJhdTZZSmtKQWx4R1QxVGNaWldDUGhOZGIvUDAzOHREaTJE?=
 =?utf-8?B?dklXM1p2NlVyd0NVeGRVcVA3Z3JldWo4OXBlbWVGYnJ4bStZbkNYREoxY1Ba?=
 =?utf-8?B?dWk5Nm8rWEt2MFRxdEdRdC9pa3FWZ2RmN0tndWVmSXROWHlxSG5CNDl3bjM4?=
 =?utf-8?B?d2E3MjB0K1luYWowMitJNzZTd0ovOHJzTWpjbGR0WDZjTE8vWTJQMVpaOUxt?=
 =?utf-8?B?bnBZcWhYUXVvb29UQ21ZdGpRMUNnWURNQ2g0eW8zNVo1T1ZJTjc5TEVuVSs0?=
 =?utf-8?B?SWs2OFhvMlBOeWIrY2ZSUVFJUnd3WFE2enVwY0FqRzlqQm1vYkp6K2lKOUJl?=
 =?utf-8?B?dEljUUZCWEtLQi85aDZUbk9LYk8wbloyVEZSMEE4WnRhNTBUcTdQL1JKOU5X?=
 =?utf-8?B?S25ubXZTTHRLWC9ncUNyd1F3WmlDeDZ5QUdLU3N2L2ROYWkzZkhqcUY2ZW9P?=
 =?utf-8?B?Umc2MDcyUElPVitQM2FST2duNitheUdFeU9VMm9qR0l0WkZ6MmJoNkorZlpK?=
 =?utf-8?B?SWZ5YmFEVXFjSlE2Y1RhNFZqRjRJYXNrRHBqM0haUE03SnNSSUoybFVETlo5?=
 =?utf-8?B?L01HYkFQV3lyYWlxV1FVSTgyTlEvcUxRQjQ0YXV3b01wQk9MeS91R1NxNVZP?=
 =?utf-8?B?bXFIZTZQYVhEZFJ5Wk1QWFcxbHVYbGxxWHJpZlUwcFRQUDNPSndabm5KUmdi?=
 =?utf-8?B?TEFudnVKWXp0bHliN1k2L2JxVzMrQkxtdGZOS0xUeVcvaE9mcVJERnpxbWhD?=
 =?utf-8?B?ZXFNV2RZU2EwT1lRbHVSWERBWkpHK3RJWjY4eGpnTE11YlJIRjlDUFAvY3RN?=
 =?utf-8?B?VGg2TWJFbjZLN051MUhLdDgvTGRHRlRnSXJVVUs3eWUxUndpTktGWEg4NnpJ?=
 =?utf-8?B?bm95aHdidXRtNXo5cCswME1ISEt5Z1VkdmpWSng4a3E0S1FwSFdiU3AzN1Fy?=
 =?utf-8?B?cEo0SkxYbjBSd1dLSUptZVRQamlhNjZENUtVT1pYcFU4R1ZpWlJSRWxsbEpU?=
 =?utf-8?B?dnNoblNjOGQwelhQQWtvWWFEKy9rWmNXWXVsSmFGL0FrbWc3aHp6SkdvT2dO?=
 =?utf-8?B?MndFSjFpNDN2WUhnRVh1eHJ3WlVDd3NFcTQ0MEVqcTd0aGliS1BYMTFGODM1?=
 =?utf-8?B?RFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5253.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4bf3630-51ec-480c-8a9e-08daf3cd15b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2023 12:12:18.3836 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wYWO3+xSNHPsWL9OINiOqtEy/EfYoM5+SvdgGB5t0vp0GWNP6vDJHN+A2mFL9ndxaPjXDEN2Lar4YrWJqFDOT9aU+WKCDdDNW01bDvQp0vk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5873
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/9=5D_drm/i915/display/core=3A_use_i?=
 =?utf-8?q?ntel=5Fde=5Frmw_if_possible_=28rev3=29?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

KytzYWkNCg0KVGhhbmtzICYgcmVnYXJkcywNClJhdmkNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0NCkZyb206IEhhamRhLCBBbmRyemVqIDxhbmRyemVqLmhhamRhQGludGVsLmNvbT4gDQpT
ZW50OiBXZWRuZXNkYXksIEphbnVhcnkgMTEsIDIwMjMgNTozOSBQTQ0KVG86IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IFBhdGNod29yayA8cGF0Y2h3b3JrQGVtZXJpbC5mcmVlZGVz
a3RvcC5vcmc+DQpDYzogVmVlc2FtLCBSYXZpdGVqYVggPHJhdml0ZWpheC52ZWVzYW1AaW50ZWwu
Y29tPjsgVnVkdW0sIExha3NobWluYXJheWFuYSA8bGFrc2htaW5hcmF5YW5hLnZ1ZHVtQGludGVs
LmNvbT4NClN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSDinJcgRmkuQ0kuQkFUOiBmYWlsdXJlIGZv
ciBzZXJpZXMgc3RhcnRpbmcgd2l0aCBbdjIsMS85XSBkcm0vaTkxNS9kaXNwbGF5L2NvcmU6IHVz
ZSBpbnRlbF9kZV9ybXcgaWYgcG9zc2libGUgKHJldjMpDQoNCk9uIDEwLjAxLjIwMjMgMTY6NDUs
IFBhdGNod29yayB3cm90ZToNCj4gKlBhdGNoIERldGFpbHMqDQo+ICpTZXJpZXM6KglzZXJpZXMg
c3RhcnRpbmcgd2l0aCBbdjIsMS85XSBkcm0vaTkxNS9kaXNwbGF5L2NvcmU6IHVzZSANCj4gaW50
ZWxfZGVfcm13IGlmIHBvc3NpYmxlIChyZXYzKQ0KPiAqVVJMOioJaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMTI0MzgvIA0KPiA8aHR0cHM6Ly9wYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnL3Nlcmllcy8xMTI0MzgvPg0KPiAqU3RhdGU6KglmYWlsdXJlDQo+ICpEZXRh
aWxzOioNCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTEyNDM4djMvaW5kZXguaHRtbA0KPiA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTEyNDM4djMvaW5kZXguaHRtDQo+IGw+DQo+IA0KPiANCj4g
ICBDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV8xMjU2NyAtPiBQYXRjaHdvcmtfMTEy
NDM4djMNCj4gDQo+IA0KPiAgICAgU3VtbWFyeQ0KPiANCj4gKkZBSUxVUkUqDQo+IA0KPiBTZXJp
b3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTEyNDM4djMgYWJzb2x1
dGVseSBuZWVkIA0KPiB0byBiZSB2ZXJpZmllZCBtYW51YWxseS4NCj4gDQo+IElmIHlvdSB0aGlu
ayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdl
cyANCj4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTEyNDM4djMsIHBsZWFzZSBub3RpZnkgeW91
ciBidWcgdGVhbSB0byBhbGxvdyANCj4gdGhlbSB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJl
IG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4NCj4gDQo+IEV4
dGVybmFsIFVSTDogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzExMjQzOHYzL2luZGV4Lmh0bWwNCj4gDQo+IA0KPiAgICAgUGFydGljaXBhdGlu
ZyBob3N0cyAoNDEgLT4gNDEpDQo+IA0KPiBBZGRpdGlvbmFsICgxKTogZmkta2JsLXNvcmFrYQ0K
PiBNaXNzaW5nICgxKTogZmktc25iLTI1MjBtDQo+IA0KPiANCj4gICAgIFBvc3NpYmxlIG5ldyBp
c3N1ZXMNCj4gDQo+IEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBi
ZWVuIGludHJvZHVjZWQgaW4NCj4gUGF0Y2h3b3JrXzExMjQzOHYzOg0KPiANCj4gDQo+ICAgICAg
IElHVCBjaGFuZ2VzDQo+IA0KPiANCj4gICAgICAgICBQb3NzaWJsZSByZWdyZXNzaW9ucw0KPiAN
Cj4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ3VjOg0KPiAgICAgICBvIGZpLWtibC1zb3Jh
a2E6IE5PVFJVTiAtPiBJTkNPTVBMRVRFDQo+ICAgICAgICAgDQo+IDxodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMTI0Mzh2My9maS1rYmwtc28NCj4g
cmFrYS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGd1Yy5odG1sPg0KDQoNClF1aXRlIGNvbW1vbiBy
ZWNlbnRseSBidWcgd2l0aCBmaS1rYmwtc29yYWthIGFuZCBHdUMgWzFdIG9yIG1vcmUgZ2VuZXJh
bHkgbGl2ZSB0ZXN0c1syXSwgbm90IHJlbGF0ZWQuDQoNClsxXTogDQpodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9pbnRlbC1nZngvP3E9YiUzQSUyMmZpLWtibC1zb3Jha2ElMkZpZ3QlNDBpOTE1X3Nl
bGZ0ZXN0JTQwbGl2ZSU0MGd1Yy5odG1sJTIyDQpbMl06IA0KaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvaW50ZWwtZ2Z4Lz9xPWIlM0ElMjJmaS1rYmwtc29yYWthJTJGaWd0JTQwaTkxNV9zZWxmdGVz
dCU0MGxpdmUlNDAlMjINCg0KUmVnYXJkcw0KQW5kcnplag0KDQo+IA0KPiANCj4gICAgICAgICBT
dXBwcmVzc2VkDQo+IA0KPiBUaGUgZm9sbG93aW5nIHJlc3VsdHMgY29tZSBmcm9tIHVudHJ1c3Rl
ZCBtYWNoaW5lcywgdGVzdHMsIG9yIHN0YXR1c2VzLg0KPiBUaGV5IGRvIG5vdCBhZmZlY3QgdGhl
IG92ZXJhbGwgcmVzdWx0Lg0KPiANCj4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ3VjOg0K
PiAgICAgICBvIHtiYXQtcnBscy0yfTogUEFTUw0KPiAgICAgICAgIA0KPiA8aHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTI1NjcvYmF0LXJwbHMtMi9pZ3RA
DQo+IGk5MTVfc2VsZnRlc3RAbGl2ZUBndWMuaHRtbD4gLT4gRE1FU0ctV0FSTiANCj4gPGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzExMjQzOHYzL2Jh
dC1ycGxzLQ0KPiAyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ3VjLmh0bWw+DQo+IA0KPiANCj4g
ICAgIEtub3duIGlzc3Vlcw0KPiANCj4gSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0
Y2h3b3JrXzExMjQzOHYzIHRoYXQgY29tZSBmcm9tIGtub3duDQo+IGlzc3VlczoNCj4gDQo+IA0K
PiAgICAgICBJR1QgY2hhbmdlcw0KPiANCj4gDQo+ICAgICAgICAgSXNzdWVzIGhpdA0KPiANCj4g
ICAqDQo+IA0KPiAgICAgaWd0QGdlbV9leGVjX2d0dGZpbGxAYmFzaWM6DQo+IA0KPiAgICAgICBv
IGZpLWtibC1zb3Jha2E6IE5PVFJVTiAtPiBTS0lQDQo+ICAgICAgICAgPGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzExMjQzOHYzL2ZpLWtibC1zb3Jh
a2EvaWd0QGdlbV9leGVjX2d0dGZpbGxAYmFzaWMuaHRtbD4gKGZkbyMxMDkyNzEgPGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3MT4pICsxNSBzaW1pbGFy
IGlzc3Vlcw0KPiAgICoNCj4gDQo+ICAgICBpZ3RAZ2VtX2h1Y19jb3B5QGh1Yy1jb3B5Og0KPiAN
Cj4gICAgICAgbyBmaS1rYmwtc29yYWthOiBOT1RSVU4gLT4gU0tJUA0KPiAgICAgICAgIDxodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMTI0Mzh2My9m
aS1rYmwtc29yYWthL2lndEBnZW1faHVjX2NvcHlAaHVjLWNvcHkuaHRtbD4gKGZkbyMxMDkyNzEg
PGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3MT4gLyBp
OTE1IzIxOTAgPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVz
LzIxOTA+KQ0KPiAgICoNCj4gDQo+ICAgICBpZ3RAZ2VtX2xtZW1fc3dhcHBpbmdAYmFzaWM6DQo+
IA0KPiAgICAgICBvIGZpLWtibC1zb3Jha2E6IE5PVFJVTiAtPiBTS0lQDQo+ICAgICAgICAgPGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzExMjQzOHYz
L2ZpLWtibC1zb3Jha2EvaWd0QGdlbV9sbWVtX3N3YXBwaW5nQGJhc2ljLmh0bWw+IChmZG8jMTA5
MjcxIDxodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzE+
IC8gaTkxNSM0NjEzIDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lz
c3Vlcy80NjEzPikgKzMgc2ltaWxhciBpc3N1ZXMNCj4gICAqDQo+IA0KPiAgICAgaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZUBndF9oZWFydGJlYXQ6DQo+IA0KPiAgICAgICBvIGZpLWtibC1zb3Jha2E6
IE5PVFJVTiAtPiBETUVTRy1GQUlMDQo+ICAgICAgICAgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzExMjQzOHYzL2ZpLWtibC1zb3Jha2EvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZUBndF9oZWFydGJlYXQuaHRtbD4gKGk5MTUjNTMzNCA8aHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNTMzND4pDQo+ICAgKg0KPiAN
Cj4gICAgIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ3RfcG06DQo+IA0KPiAgICAgICBvIGZpLWti
bC1zb3Jha2E6IE5PVFJVTiAtPiBETUVTRy1GQUlMDQo+ICAgICAgICAgDQo+IDxodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMTI0Mzh2My9maS1rYmwt
c28NCj4gcmFrYS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGd0X3BtLmh0bWw+IChpOTE1IzE4ODYg
DQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8xODg2
PikNCj4gDQo+IHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVhbnMg
aXQgaXMgaWdub3JlZCB3aGVuIA0KPiBjb21wdXRpbmcgdGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVy
ZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSkuDQo+IA0KPiANCj4gICAgIEJ1aWxk
IGNoYW5nZXMNCj4gDQo+ICAgKiBMaW51eDogQ0lfRFJNXzEyNTY3IC0+IFBhdGNod29ya18xMTI0
Mzh2Mw0KPiANCj4gQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5DQo+IENJX0RSTV8xMjU2NzogYTVjZDk2
MjdiODA2ZjJmNDJiYmFjYmY5NjQ5MTQ1ZjM5NTQ4MzBkOSBAIA0KPiBnaXQ6Ly9hbm9uZ2l0LmZy
ZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4gSUdUXzcxMTQ6IDJmZDgzOTU5OWEyMDBjMDg5
YTVjOWRiZjUwNDg2MDlmYWY5YjgxMDQgQCANCj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Au
b3JnL2RybS9pZ3QtZ3B1LXRvb2xzLmdpdA0KPiBQYXRjaHdvcmtfMTEyNDM4djM6IGE1Y2Q5NjI3
YjgwNmYyZjQyYmJhY2JmOTY0OTE0NWYzOTU0ODMwZDkgQCANCj4gZ2l0Oi8vYW5vbmdpdC5mcmVl
ZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+IA0KPiANCj4gICAgICAgTGludXggY29tbWl0cw0K
PiANCj4gNzM3YmI3MzE1MzRlIGRybS9pOTE1L2Rpc3BsYXkvbWlzYzogdXNlIGludGVsX2RlX3Jt
dyBpZiBwb3NzaWJsZSANCj4gNDIxOWU4MmQ5NmNmIGRybS9pOTE1L2Rpc3BsYXkvaW50ZXJmYWNl
czogdXNlIGludGVsX2RlX3JtdyBpZiBwb3NzaWJsZQ0KPiBiY2IzNzRkMjQ2ZTIgZHJtL2k5MTUv
ZGlzcGxheS9wYW5lbDogdXNlIGludGVsX2RlX3JtdyBpZiBwb3NzaWJsZSBpbiANCj4gcGFuZWwg
cmVsYXRlZCBjb2RlDQo+IGRiODFjYjBkMDc5MSBkcm0vaTkxNS9kaXNwbGF5L2hkbWk6IHVzZSBp
bnRlbF9kZV9ybXcgaWYgcG9zc2libGUNCj4gYTFiODFiYzQ2NDQzIGRybS9pOTE1L2Rpc3BsYXkv
cGNoOiB1c2UgaW50ZWxfZGVfcm13IGlmIHBvc3NpYmxlDQo+IDE2ZDI3YmJiNzVkMyBkcm0vaTkx
NS9kaXNwbGF5L3BoeXM6IHVzZSBpbnRlbF9kZV9ybXcgaWYgcG9zc2libGUNCj4gNTcxNzg0N2Nj
OWM4IGRybS9pOTE1L2Rpc3BsYXkvZHBsbDogdXNlIGludGVsX2RlX3JtdyBpZiBwb3NzaWJsZQ0K
PiBlZDcxZjg1OTYyMTIgZHJtL2k5MTUvZGlzcGxheS9wb3dlcjogdXNlIGludGVsX2RlX3JtdyBp
ZiBwb3NzaWJsZSANCj4gODQyMDc1MjAzZTBiIGRybS9pOTE1L2Rpc3BsYXkvY29yZTogdXNlIGlu
dGVsX2RlX3JtdyBpZiBwb3NzaWJsZQ0KPiANCg0K
