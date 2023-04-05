Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 563B26D7B5D
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 13:30:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D440C10E8F1;
	Wed,  5 Apr 2023 11:30:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6303210E8EF
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 11:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680694246; x=1712230246;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Z0GpGxmUvlrgtiLxHNYhD246nloLUCkvX4QweFkSE+U=;
 b=jFzQYSswGEkiLsGMA3KClFpUzJen8lGdwejcUJeXzmMO9zllOHVLSTLG
 9wk4FzSUvGju1KKYWEopAkOlloFv5XJCPOGL9H3eAJfr9Olgmy8qi0/Ht
 +CILbFKMmIYUaaS2+Xoop7nt90XbdxBbpjQs1js1cpHFAh9BfeP+kJJIA
 VDFpBiRhG5c3XIJ3AoM0uJGOIKaH29ybKmuSg12cz/j2fs/5JPs15TZLF
 k7n/lFD9Rnh8aMfzQJLaaEFSSd2rc/bpb2vDTJrWF9MfCqlNE3LMK2pkT
 5ttAewKT3xHEfbqUPBG4jdyipEBXl3tXmyhNispoYiCUo3dvMxTwixqkd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="370255865"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="370255865"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 04:30:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="810601013"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="810601013"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 05 Apr 2023 04:30:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 5 Apr 2023 04:30:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 5 Apr 2023 04:30:44 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 5 Apr 2023 04:30:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XxgIrrFgksG3AxkcuGQkXnIwHabqa7DtebZDRli79+P4foog732Oax3Y/m/ycn9H2kjusX2GbWcpOeTBEYOfmRX7nTjtoRytTOtkgp2XK1J0h+I5q2pA3swtd1SBb/haIeOpqvB5bktNlZehAfHVJxScfO1+R9IJJfGnsOWnIYN9A9nq1HbAe7smdaItJlSghgn64dnn+hwClGhV/qtNwetYEi45bclSDOMFyNXTbC7XszEAn8Bc4pMYAfitAOIJEluQhT95HqTh715FV9UZennm9iBQ9I1U8zCzRSxA/PH+oBXN41yvH+ir6ZWN1rD6Ybg1cQ55n3WOpb67y/NiSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z0GpGxmUvlrgtiLxHNYhD246nloLUCkvX4QweFkSE+U=;
 b=DK4m1iqfpA7690mR+YH2c9jGTUnRB4WKAomELmgKo76JPhilUpNIwSzufkjhm2JOz4fgVXudiEnr2LISpb0sgCF+KRuAlelo7xBzA1b8lE0iIwOoX7cLdtsAfF0e7d8e4UsUGbeQTthWO+VsRsBy4+uYfL35zgfeKR5BLpe4dRZg2j3tB5F00HbNGWDC2cypJyi/Hw7WBLLrA3qfEcTKVqQyIWwcTMMs+MWKUHpvdrPFtCMlcNwYOKf66tPl/4HGarRiJFmp8dnCI7Lp9MBYiuIWvm87nC+fElB/rpomtCThIca4koN8YvWjv/QufqmTeW01ZhXxN5/OnEe+F2KsMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by SN7PR11MB6852.namprd11.prod.outlook.com (2603:10b6:806:2a4::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.35; Wed, 5 Apr
 2023 11:30:42 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::a3ee:8739:9c99:4b17]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::a3ee:8739:9c99:4b17%4]) with mapi id 15.20.6254.035; Wed, 5 Apr 2023
 11:30:42 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/tc: demote a kernel-doc comment
 to a regular comment
Thread-Index: AQHZZ6tQ6TocO+osoEGYOcxJFF4Sqa8clMIA
Date: Wed, 5 Apr 2023 11:30:42 +0000
Message-ID: <88463430b9f571f90f49e710223cd371d763771d.camel@intel.com>
References: <20230405104142.766598-1-jani.nikula@intel.com>
In-Reply-To: <20230405104142.766598-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|SN7PR11MB6852:EE_
x-ms-office365-filtering-correlation-id: a77a001b-b5e9-4c96-150a-08db35c93099
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: son/JhhCK8giBtr89UKIlYBNMty09gahTI+QBkInlb9bTKHY+psAt7Rdhdacw7BkZOPTHogtRQWo0cl/k15DpVVFm1JLmDmLuanToec7HtMKS76ZZX75QrOBLrTpx/LkPnl6yGeDumH3kTINloUYl6v2S1+AomAV5kbTCKpwg6LihRxpDmQ48nk4I4kkX8uAxhZqgsefHdYIJiUSs8j0x6lP3Y98J0e9zRBzEryyHoJ7IGAr8PjGBK8aHgcqVlU3O4wIOoyHxfMj1N09LrkHLSut2giHkyja+HugxO4WOY9wJteNo6izYNNi20E1mTrl5l3rUS6wGEQfAdNwo7spxxA3ZljQcsZ93HAJTTsKh298usCIVm7flkYKsSKBQYw3xPz5MljNZoyA0Gnqzt/05X0t2ESFCrTkMYu3NDVPJHw+9zHbjqgfbhjZUOoTNieA0URyBlLMUkf8qUolp3V/8Qht1S9VEy3jG6FPF3tNjFwgq+6njNu4zHAP2vwQXmF1z4E3b/N8IFX4KYP3FakcqGyv11iLViBu6gLiJ6QxEjkDSeb6y3hyflGQ3su8QpR4IVhBfcLQLybkIZRwIBcyQf5Yu643KZtIZGPVNae4HJdr33owjB9U9xwXY9QYyEim
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(376002)(136003)(39860400002)(346002)(451199021)(71200400001)(6486002)(83380400001)(36756003)(2616005)(86362001)(38100700002)(82960400001)(38070700005)(122000001)(26005)(6506007)(6512007)(2906002)(186003)(110136005)(316002)(66556008)(66446008)(8676002)(64756008)(66476007)(91956017)(76116006)(66946007)(8936002)(41300700001)(5660300002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MHNickV2dFZFK0NQdHJ1S21tdWhUSFRNaGl1ekY3Q045b05rODZEN3hIVTd2?=
 =?utf-8?B?OVNGTUxZcjFza3pTVHdVOTZuam81V0hSMWdVUVBoUW1rTE1wQjBPS0hXUS91?=
 =?utf-8?B?VFpwNjJWT2xWeE5zSGFTOWtIOFpNQmlNN1ovVlAvMndON1pndWl3R2VrT2Vi?=
 =?utf-8?B?cUJZTTlNVytzNlYzenNUdnJRTWxIQ1R1Qm92bzBzZjAvMHZXY3RHdXJDY0Fy?=
 =?utf-8?B?ZGlWNUY1WTNVVVl0Z3dDQll0V3dJZ3JCMXlFYmp4T29UQmROSEFnV2hoUkc1?=
 =?utf-8?B?QXFEb2pKTzlFNjZ4T0ZMdFJueXNyZVRDcjhwNldkZTg5OUhUTSszMnIvdTMx?=
 =?utf-8?B?eU9sdEhlcitodkpPMTR4Y1ZYSE5Rc0dEeWttV1hodjdRWVBQS3htdnZhQ25X?=
 =?utf-8?B?aWpBZzFOWDE2Z2E2cVBEdk1URWVmYit1N3pZK0kvbWh1My9WK3RzTWE2SUxs?=
 =?utf-8?B?OU83ZFdzRGRMUTVpZW02WHY0TXFMaFU0THpoYkZCTjdVR0k2SzNtOWo1dG9B?=
 =?utf-8?B?UXZZdFEzazZTK0UwYVF0NHpyY0RlREtZTFU0ZHdKcVdySlQzNGNmQTFVZTV6?=
 =?utf-8?B?dmZRRGpBYVNjTlg3S3djY2sxbldpb0lhNURRMm5Tby9rRDFLZzdkbm5zU01K?=
 =?utf-8?B?TndjbnIvNmhkQWZrVnAxSGRwNVVJVVFubkJtcE03TGRURWF6VFB1UjZTS2lN?=
 =?utf-8?B?b1pIQVFQVVNraHFjek1RUTE4VXNhUzNGMG1tMEw4SE5TN1JGWlFJbjM4ZENB?=
 =?utf-8?B?akpQajI2WEZia1hFVjg0OGxmb0Jmdll5QUhnTFltQnE2K0lZT1Bla0J4Mmsr?=
 =?utf-8?B?Y3VNRDMwTG1LdEo2MGo3ZHlJa3JFSlJBRmlhNCtvN1hRRVFKOXMzcksxOHlz?=
 =?utf-8?B?bDlHNmhCNk02M1o3RGc2cHBQd3VlZmJrV3FjWmhvNVFaRUJ5cWlQT0llSnBw?=
 =?utf-8?B?dENSOEQvUGRmRXdiK2F6MWRhMFFTSkZBTGt6Z21WanVZRGJ2L2lVR1JLV3FD?=
 =?utf-8?B?ajNtZUZLaDBMbW95aUp1c1h1cG8yaWFZRkJTYlhhekttdWs5U2RNTVRkWHM4?=
 =?utf-8?B?dmpqTVBHQTVVUHlqN2ZkVW5rZzJGTnZnNDYzNTdZSW1GZm5WbzhISlhyTjRB?=
 =?utf-8?B?YmxMR2JSWDM1ak9zdS9mQ0ViRm5ybGI4UUZSOG8vUVA0RlpPUzNUMnp6VVVt?=
 =?utf-8?B?Q3dXVTdVVlhTdzVoc1NMWWRtTlhKOWFqR0FObkFTWWRSN0VuSFhNOFNxSkUy?=
 =?utf-8?B?VEQzQ0ZRNlZnL1Y0SnNvRmRtdTRUNk5uNkthL3FNQml5am9PTFI5TTd3ZGlk?=
 =?utf-8?B?Z2kvbE9QeVVibytLNitrTEtEUlp6S0NtU3VSb2ttUjJhbE00cWVsd2h3NXB2?=
 =?utf-8?B?SFl1YWtFa2R5eXZ1WjVoRDRtS3JOQ3ZNRWMzb09wSHhmUXRJWEFuUXJ5czV1?=
 =?utf-8?B?VzM0c1plc0FCNVhyY05xOUtQS0l5UThhZE9zMGhaMWJUbVlmcktLZCtnWWFJ?=
 =?utf-8?B?S09CRW5NQjZtQ2NYNUhLTXFJeGNBcmxERmZyb0RYSDQvTkg0ZEZoM0FDQzdF?=
 =?utf-8?B?TmxlOG1yNjlad1N6azhoNUFyVU1qL1BYMGVxcHRaWThtL3RGb0MxZGRkZ0d5?=
 =?utf-8?B?TWRTajBrbUZPNTlyVE5TSnROQk45cTF1UDlKdVRwR0NhczZDU1NKZ1FweDlm?=
 =?utf-8?B?V3pQMTd3RFQwanRDWktRUytGdlhxT2tLUTMzWXIxU0lUTGFib3NYOFgwVGsv?=
 =?utf-8?B?cE95TEEzY3RxZDluNWx2bTgyaHIxdXJZYWFITFBIMDNEblorUldNVzJrQWow?=
 =?utf-8?B?SkwwK0x0K2gwSFBVa1FsQWc2T3o0SWc4Z3pjcTdTdFVKWHFMdXhSOG80TTVU?=
 =?utf-8?B?SkF2VGtGeTAyRmo3R1cwdXNHYld4eE43ZFM3UnkwamVVRmc0aTB0OUhpWGh3?=
 =?utf-8?B?SElOaFRQQ1JJaW5ZTGZKaG5VVmpla0J6dkJRaWN4UkR2K2hDMUIyYWdLS1Bw?=
 =?utf-8?B?RW1tODkzSHMrdUp0eGNwR2o4U3hJR1hoODRzcjRoTVN6NzdjS29Bd3BLcE5T?=
 =?utf-8?B?MHZCeEUwZXpadGthaDhub2xSZEtaNmVGMWpPZWg5SEs4aXIremI5UHFwK0E1?=
 =?utf-8?B?L3paVWxNcFdiNHN6amVsd1prN2w1RFFtYTNTcjYrTjVMTFN2NUFXbGMwMENG?=
 =?utf-8?Q?OHUclkYqGc7x0ZYxd6PUaWA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B577539E7E6263478C6FD4E9C3079D28@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a77a001b-b5e9-4c96-150a-08db35c93099
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2023 11:30:42.2509 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ldlr5XkLZNpVbs5hcg04Ai/VVDlDYFEKa2tTTQJb0j2zq/8md4jXORFxI7+raJPQgQX4lF2N9xTH0f/Vlxb7IqcS+hISrMYRi2f4n4nUnnU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6852
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tc: demote a kernel-doc
 comment to a regular comment
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

T24gV2VkLCAyMDIzLTA0LTA1IGF0IDEzOjQxICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
VGhlcmUncyBub3QgbXVjaCBwb2ludCBpbiBhIHN0YXRpYyB3b3JrIGZ1bmN0aW9uIGhhdmluZyBh
IGtlcm5lbC1kb2MNCj4gY29tbWVudC4gSnVzdCBjbGVhbiBpdCB1cCBhbmQgbWFrZSBpdCBhIHJl
Z3VsYXIgY29tbWVudC4NCj4gDQo+IFRoaXMgZml4ZXMgdGhlIGtlcm5lbC1kb2Mgd2FybmluZ3M6
DQo+IA0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmM6MTM3MDogd2Fy
bmluZzogRnVuY3Rpb24NCj4gcGFyYW1ldGVyIG9yIG1lbWJlciAnd29yaycgbm90IGRlc2NyaWJl
ZCBpbg0KPiAnaW50ZWxfdGNfcG9ydF9kaXNjb25uZWN0X3BoeV93b3JrJw0KPiANCj4gZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jOjEzNzA6IHdhcm5pbmc6IEV4Y2VzcyBm
dW5jdGlvbg0KPiBwYXJhbWV0ZXIgJ2RpZ19wb3J0JyBkZXNjcmlwdGlvbiBpbiAnaW50ZWxfdGNf
cG9ydF9kaXNjb25uZWN0X3BoeV93b3JrJw0KPiANCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1
bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gLS0tDQoNClRoYW5rcy4NCg0KUmV2aWV3ZWQt
Ynk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0K
DQoNCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgfCA1ICstLS0t
DQo+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCA0IGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBpbmRleCAyYmIwMmQ0
ZTY4NTkuLjNiNjA5OTVlOWRmYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF90Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdGMuYw0KPiBAQCAtMTM1OCwxMCArMTM1OCw3IEBAIHZvaWQgaW50ZWxfdGNfcG9ydF9s
b2NrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiDCoMKgwqDCoMKgwqDC
oMKgX19pbnRlbF90Y19wb3J0X2xvY2sodG9fdGNfcG9ydChkaWdfcG9ydCksIDEpOw0KPiDCoH0N
Cj4gwqANCj4gLS8qKg0KPiAtICogaW50ZWxfdGNfcG9ydF9kaXNjb25uZWN0X3BoeV93b3JrOiBk
aXNjb25uZWN0IFR5cGVDIFBIWSBmcm9tIGRpc3BsYXkgcG9ydA0KPiAtICogQGRpZ19wb3J0OiBk
aWdpdGFsIHBvcnQNCj4gLSAqDQo+ICsvKg0KPiDCoCAqIERpc2Nvbm5lY3QgdGhlIGdpdmVuIGRp
Z2l0YWwgcG9ydCBmcm9tIGl0cyBUeXBlQyBQSFkgKGhhbmRpbmcgYmFjayB0aGUNCj4gwqAgKiBj
b250cm9sIG9mIHRoZSBQSFkgdG8gdGhlIFR5cGVDIHN1YnN5c3RlbSkuIFRoaXMgd2lsbCBoYXBw
ZW4gaW4gYSBkZWxheWVkDQo+IMKgICogbWFubmVyIGFmdGVyIGVhY2ggYXV4IHRyYW5zYWN0aW9u
cyBhbmQgbW9kZXNldCBkaXNhYmxlcy4NCg0K
