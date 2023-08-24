Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C6478715D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 16:23:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C25D10E059;
	Thu, 24 Aug 2023 14:23:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 266AC10E059
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 14:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692887003; x=1724423003;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=ykJAdxbiI6XBPb//++gVZDFbyBynUr2RLEAS8GmPFMo=;
 b=QfjsZwADO58P58ZpPWsr6kQW9CREuaykteLBvd8AzU2YMOYMH7pe+GMf
 sSNXR7yKlqVR59ADXSkwltScjpvHdrfoDOrBwpEUJBz3p6r3/bxwML/gv
 9lni4beepF2fQfefmAScjn4KBQ/2gna4PIbrpMaITnHjVgszmXRS4Fi32
 ppbepTedGBBllmsMML153lVCOjk0k0gZjSajztaG0PUgd+efef4NobwK1
 C3fBRuTPvFSZPSnyq2RchpS0FKI4jdO7Qqy2nLq53iqb6whW1CcZQqDTC
 TzzBD+k+N8H95y2C8WAq0z/MClqy8lZGCKLxF2YivmvmvdLpA/EQ6wQUL Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="440810995"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="440810995"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 07:23:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="802559067"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="802559067"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 24 Aug 2023 07:23:18 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 07:23:17 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 07:23:17 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 07:23:17 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 07:23:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e1oR2PsM6R55i4URra/0ll0prCCUPkUzP5OVCCKuOmZ3gsrPF7KRji9EqkuHWWAidHFadYYpXYSh97MhO2MSzZLfLhZM456oWwATISmBlchkHnjxPgQgfaCWIfCpjQBhgvoHT2sDwKH0WMorv3/Dgy46LBvwIb1mSU/e/X7GrNS9hCGaaT8YnyKZgkxy6MazgrHBroKZViNLhzhpnmV19RwoHaJGfBs1ZeUdC3zXuZQpGKJBKqXvD5PAGO9t/A+BIywrPVhfsrYwTP0g98/11Y+4r9D/pEdRFMlduZNYm6RfHVgIcCvW4Rf50nN1L9AMp5mQyk6fJxWfKkD9BSqzMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ykJAdxbiI6XBPb//++gVZDFbyBynUr2RLEAS8GmPFMo=;
 b=XFaz1P8eZBOX3suyyKyC0lcfbI/BwzKB7j3cTMxgj6j1E5NBmuTJ55xAqQzrh7WNsMDDMwZ6cGIcFCzNhzFsGiOlARDwEmZNJtK41tmnaZkrJgDYlGjaDpUYVZ/vH/VOIxUOuBdfYpI2+zKxzisf1nGb2rEWggffsLHQYJvBIDQqym5jhnV52UcWyjR/mQ1EftMFHAhs/VLFFHyCdMGhWs6DtDpxSGVEmrvSu8EGPZZHoQqZ/U9OcwK5DkNpeCcuF7+88WYOS+SKQT1ZDf3rcX0+L6JqFOaSJJ4orhLsbJpl50ofbmMNpfeOPI51R2hW3DumjGCfTq3BbPfiuH1Wiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA3PR11MB7536.namprd11.prod.outlook.com (2603:10b6:806:320::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 14:23:15 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 14:23:15 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 0/6] drm/i915/color: cleanups and refactoring
Thread-Index: AQHZ0SMOZl1JN0tSCECixWE+eNfaTK/5isIA
Date: Thu, 24 Aug 2023 14:23:15 +0000
Message-ID: <13baef54d4fdf799e4257583a011e9b19c5d67bb.camel@intel.com>
References: <cover.1692287501.git.jani.nikula@intel.com>
In-Reply-To: <cover.1692287501.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA3PR11MB7536:EE_
x-ms-office365-filtering-correlation-id: 30f5edf0-0e41-4d00-af03-08dba4ada7b9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0JlF00agGjZvHmU4WBxESGl6TIlP1tjcAX954teMDd7mrlhm0aaa7/fW8zXIge+QRAPeV+7Bkv7EdKuRR1+XqdTkoRgW0ZZxyQn+KHBG8zXQMBUKyY08xPRGdi7gKo/Tw2qqXp0aSQzCAsaTDniyI1T11WqUGtVBrd0xpEppsTLjiYymi6o6sDy34a6g1hZeU/iajNgLFR/qlIFbAmwRl1j7bP/qPuCwhGh2UC4s1mGMhkCCaQzyUoATiPYyvrkodgXctXeYqV2ZBZzgESF5NzNmCTMLMlAwesfXVNP1yR+U9E8RKAZP2y/+c295UXPMI789BTO1YQnKTIgpfI7OAGIig79JH/EehWFCnteFKSYUAiKAHfP2cPEQjsN/KoHEURmdoN6neDraJEQh1yXTn91s5I/sZcYY7QQA+wenN8jCfTUlhZQ6MtvE4KIeiI7WW2jN9mjVmOUvvDMXqj9XZJ0MIb0SreUQmBHGquMJp8MlGb5L59UXo7BtaSXH1Tzny2DPvjCTgQ2RczBwY/cb32QQJWTTArn3Bjp92Wq7cxnYEBzCaX1kC63vwrRLUztRJIUIZ5It+Cee5L/6aC15gqvPmrno/Mvs9WH/ASsA1CCdLqditlKHS6LUteWCRyiL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(396003)(39860400002)(366004)(346002)(451199024)(1800799009)(186009)(86362001)(122000001)(38070700005)(38100700002)(82960400001)(36756003)(6506007)(71200400001)(478600001)(6486002)(5660300002)(76116006)(316002)(2906002)(110136005)(8676002)(91956017)(8936002)(64756008)(26005)(6512007)(83380400001)(66946007)(66574015)(66556008)(66476007)(66446008)(41300700001)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M2JVaUc0VEhXRW1PUlhmcXArUmhKbGlKYWF0bkFOVDhBRldySXpVa1BMR28x?=
 =?utf-8?B?VmQ2amVXRmhHSC9lODZOSUpFZE1SQ29OZDcwMC85NHgvSzFVKzcvcmpoT3hv?=
 =?utf-8?B?NTh6MlpiRTBYcEVIYjNuSjJoK05BR0huVGh5QUpTVUVHNnM2aHorSTVIZFo4?=
 =?utf-8?B?L1FMcHhuazdOMzVtSFhrYWhOWjhnL2krbGhVeFpCcWswWll2Rkp4QlFMUXVZ?=
 =?utf-8?B?T1dZY1gyZ2wzS3Y2bDBmZHFVbW1yelJrcXJPY1ZrZTZUQTlUNWUvOXVIWHNI?=
 =?utf-8?B?Z3VTT1ExZnp1c0VsK1NXaGxTUDFudXludXRUQy8rTzBzVTV4Z1pHVklYY3dS?=
 =?utf-8?B?QjFSSEdaS0RZTDFla3pyTmlvQ1lYZzEvMUFxajc3UHhQRjQ3UHBWcnZiRUEw?=
 =?utf-8?B?dnJ3cG5KQlVkTGwweFhLOEVuUGdDMHA4dnpRU2E0ZmVzUndhYXRtOVgwVUYv?=
 =?utf-8?B?ZVNtUkkxNWlicmJyT1dMT1UzaGxkaGFFaHNyQlJNTXpYVXNlSVZsWTBHT2Jw?=
 =?utf-8?B?S1JzeS9zUWM4R09UZ2xFSjJKcmFTUklaSm52NEQ1TVFoQ3RlSDdIWE1NUWJo?=
 =?utf-8?B?MTNCS2xkczN1NVFvQjZNV2RSV3QzalY5NWhxQ1NzbFBXMFc3aXlZWld6TEtT?=
 =?utf-8?B?MS9qMEZyY0VxL0Q3LzFpd2FucFh0Q01JR0hic3JjTVFCY0ViK3NxWFJNM3NT?=
 =?utf-8?B?ZVZGVy9ERUR4aE5GTUpxWEdkOGU4Kyt6dVQ2c21OZ2JJSy9tZEg5ajNpZmhq?=
 =?utf-8?B?STIrWEw0WjdMb3QvYlIyc25sWWREc1N3ZmZkSUprdXY5RUhZb28vQWt5KzMr?=
 =?utf-8?B?SFl3dExkdEpTVTNsSVdUUnl2VDdQMVNUOGNhQ1phM1c5QXdmS0FPemk4blI5?=
 =?utf-8?B?RmZmSEs0aDdWZmY3NzM5K2pFU2tSS3hTSGZxaWhNbk9keUUydkxlMVdKRFpH?=
 =?utf-8?B?Umh2SGVKZk5JNHhYbTlSTno1dnQ4eWdNbERVc3VJQm1TVzFQdXJpZXdIZFZZ?=
 =?utf-8?B?UGdBU3Z0TXBySUJ6NHNCbVBESFUzaENGUW1BaGpFb2FESGtYMWlBU1hWR1la?=
 =?utf-8?B?aTlobTkwVFZLVHN4bGUreXVET3RUUTljYVZuNjFoZUU2ZDUwc1RPYzh3b0xY?=
 =?utf-8?B?eU1NaVZTelJia1IwWGZjdEovYXZTbU5JR0o1WmcvOGRvbUdmSnh5WFJybTFr?=
 =?utf-8?B?ZVV6V2lZemRyMWpuNXAvU0dURHNwRGNWZnhycVc3OVlhaFlwTlNHSW9QZDB1?=
 =?utf-8?B?a3gzZjI2UFkxQk9CRmF2L3NxY0hjMkFlRDdORWpsWmZ0WmRPQjVYazB5azNH?=
 =?utf-8?B?SnBRd0FwYmNHaTJKWjdQVEsrUUpLN1oxY1M2Zm1QU1Z5bHprN2tIaVBQelpw?=
 =?utf-8?B?Ryt3cS9EWFJrRGJ2UFNLKzJsd0dvYjJ0aDEzQzRrakJMNGtpTUQ2eTN5V0FU?=
 =?utf-8?B?djB6SS9tTUxpMzdLdGxaREgrUFBHeTR0L202dlZCSU52akJYVmNqeWRYbit1?=
 =?utf-8?B?Mko0T2tBQ3F4MHpxZEdKUzZ4SEdCQkRyOHBHbjJUM09EcUQ1RWtaWGNTcGU4?=
 =?utf-8?B?amxvbTJWaTN5c1Z6QWpzUXVPMFQ1ejNwY1luQ1ZUSTRqUTMwSUtWVHArZkpi?=
 =?utf-8?B?WjREMEp3QlVpZEpXc3VIVnpKWGZTb1ZVVWlHYzhYMC9Ed29aRWJCQzEwTWty?=
 =?utf-8?B?UWwyUEd5Rk8xTHN4Um1WTDJ4bDZHSjNFTnN0VnRES3dCTnhIOExWR05GVWlO?=
 =?utf-8?B?WFl0UjBVMEwvaHVERHNSS1EzRkF0WmpvV0hrOXEva1NpUm85RVE0eDZrekhG?=
 =?utf-8?B?NU85VFpFNlJwQ2s1L2tpcG0wTFQrZU9HTUY1OXFwUlJvRXE5ZGJMbGRhK0ds?=
 =?utf-8?B?T1NmTTBQakpJdWo0R1E5REE5NVdkVDd5RHZDMzRsSENwZE9ubDd2Tm1rRkhM?=
 =?utf-8?B?WklNRnV5bkhDcUIvenN6ZW5iN3NUcnczemN4bzZIdWJLdjVYT3p4d0lta2FD?=
 =?utf-8?B?ZWZESVlNQkZsYjVPMjdCeVhnSTBaVFdnL3BUajI4NzBQaWlkbGVyZC8rZUg0?=
 =?utf-8?B?L0JVUXJCeGZPSGJxTDBXMHUyN0xybHZuS0FZRTdzSkF5UDRINE5SNzhwb3lH?=
 =?utf-8?B?c3NlWnJWNkQrQ3VDSTRzdnpBdXQvQU0waWhrdnplT3UzR1AwczEyREdmN2dO?=
 =?utf-8?B?QlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5F713D2F3520BD40A6E3A23566946DC3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30f5edf0-0e41-4d00-af03-08dba4ada7b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 14:23:15.3229 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oGyOa2qVi9+JT++lXn7zb3dItpSn/xZAKH1mzuezB5nsSPJFn+39UmcZBvEfqgdPuUBho6qjXFz0AYvVTvgV4jmsUrgWgFSV1Ibh+9qZH7s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7536
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/6] drm/i915/color: cleanups and refactoring
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

T24gVGh1LCAyMDIzLTA4LTE3IGF0IDE4OjUzICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
U3BsaXQgb3V0IHJlZ2lzdGVyIG1hY3JvcyB0byBhIHNlcGFyYXRlIGZpbGUsIGFuZCBtb3ZlIG1v
cmUgY29sb3INCj4gcmVnaXN0ZXIgYWNjZXNzIHRvIGludGVsX2NvbG9yLmMuDQoNClJldmlld2Vk
LWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KZm9yIHRo
ZSB3aG9sZSBzZXQuDQoNCj4gDQo+IEphbmkgTmlrdWxhICg2KToNCj4gwqAgZHJtL2k5MTUvcmVn
czogc3BsaXQgb3V0IGludGVsX2NvbG9yX3JlZ3MuaA0KPiDCoCBkcm0vaTkxNS9jb2xvcjogbW92
ZSBDSFYgQ0dNIHBpcGUgbW9kZSByZWFkIHRvIGludGVsX2NvbG9yDQo+IMKgIGRybS9pOTE1OiBt
b3ZlIEhTVysgZ2FtbWEgbW9kZSByZWFkIHRvIGludGVsX2NvbG9yDQo+IMKgIGRybS9pOTE1OiBt
b3ZlIElMSysgQ1NDIG1vZGUgcmVhZCB0byBpbnRlbF9jb2xvcg0KPiDCoCBkcm0vaTkxNS9jb2xv
cjogbW92ZSBTS0wrIGdhbW1hIGFuZCBDU0MgZW5hYmxlIHJlYWQgdG8gaW50ZWxfY29sb3INCj4g
wqAgZHJtL2k5MTUvY29sb3I6IG1vdmUgcHJlLVNLTCBnYW1tYSBhbmQgQ1NDIGVuYWJsZSByZWFk
IHRvDQo+IGludGVsX2NvbG9yDQo+IA0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aHN3X2lwcy5jwqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jwqDCoMKgIHzCoCA5NyArKysrKysNCj4gwqAuLi4vZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3JfcmVncy5owqDCoCB8IDI4Ng0KPiArKysrKysr
KysrKysrKysrKysNCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuY8KgIHzCoCA0NSAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X292ZXJsYXkuY8KgIHzCoMKgIDEgKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMjc0IC0tLS0tLS0tLS0tLS0tLS0NCj4g
LQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d2dF9tbWlvX3RhYmxlLmPCoMKgIHzC
oMKgIDEgKw0KPiDCoDcgZmlsZXMgY2hhbmdlZCwgMzg2IGluc2VydGlvbnMoKyksIDMxOSBkZWxl
dGlvbnMoLSkNCj4gwqBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jb2xvcl9yZWdzLmgNCj4gDQoNCg==
