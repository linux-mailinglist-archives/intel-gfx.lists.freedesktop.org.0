Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B46FC7823C0
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 08:33:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46AB210E1DE;
	Mon, 21 Aug 2023 06:33:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B2FA10E1DE
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 06:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692599587; x=1724135587;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=W0v0niNyuLZNXS3UfBMWoFt8L8RyWG2NkdY783xHmqQ=;
 b=MDco2YMH7gPRglvW7aaK/x67lZVl+l+QVdsnir7Mk6ZTskdULdqO67PE
 swUGN0xtAbk+4Vmkgsi26TjuqtGs4/J6aDiuL7xRVb6WAk9uMaBxZtqNJ
 7oUckrDRaJKHjNV2Nf3YkJsa+s/1EJ2/PY2Dho4jrUIZFk0vU0KapE9K+
 vGn3CUYrsOgvNHzGG9Zf+StxlTShdkjcZxO3d+5+wCJY8M06wMzz9ApR1
 C5TMtUKTVdnBQEcIAqSz43Bz8XXrsOflrVmOU5GwOC4ZN1LjY247x9PXe
 KD7DbW3kwx4lVcqfxbWoEmSzZTI87X22dBv++1yF2xGnK4X3qT8F5tHqs Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="370943884"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="370943884"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2023 23:33:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="770836824"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="770836824"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 20 Aug 2023 23:33:06 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 20 Aug 2023 23:33:05 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 20 Aug 2023 23:33:05 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 20 Aug 2023 23:33:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OoHjNTW79HtAnz+oPcS3ESCM9CcHFcGq0FLQ0mH70llm+kmK79lXPjmp7Lvo+AuaxcnmK2bxzmXbS0eYDWriiNQFCCeRzXsQBbLYOJVAQTdJAmm4yFltQUb/NBb4AgRZEmCFiuQh0jEMsU7sIZz+T7VXD6fBia7ZazajHIVuNp4hapibUvzC0uAWCJaWXCPlw7WA4nYRy2Ol99mp12KoBEJIzAeKraKdG2KG+dQqHJ0YTTSz5STCHF8CoUrjglAb2gy+IInx0Wkt5iP6ar/Gpq2FuctE6IoIHyzmvoXqznEd/RGdb7nPVXrSBi0MpOwb1X0rJEOyUje1yz0/ngxzXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W0v0niNyuLZNXS3UfBMWoFt8L8RyWG2NkdY783xHmqQ=;
 b=Gmnv8HDXZwn8MoCjc3IBA0O+cNMBX8np6l8rgR9oOuKy/mFMNG8PPm6+UrBw6vTV1XXXxQZ9sPScvc99IjV1xHWRCN7tsaq72SDTXgXLR06CrIbEdlUXOUmLob/ro20225vH55h4CYdbjk8Hz0P7sN5lj0C49t8Aal38ttTgVx1uIsJ84iTCRwEe0+eAc56OHi3qmHlabacjgPl0eqqhYG424M6posScWsiZeFsssRhDsTb0ToCcVoAJbN++Zu/BB3xpo0hEZoITbbE8cu7rP7/0hvZU4+xcn+XTmH4B+TJfVVbyIfUyjmFrLuS/59sIBZv52SdzaJ66feoYkge88Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7363.namprd11.prod.outlook.com (2603:10b6:930:86::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.24; Mon, 21 Aug 2023 06:33:03 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e%5]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 06:33:03 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "juhapekka.heikkila@gmail.com" <juhapekka.heikkila@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: add lock while printing
 frontbuffer tracking bits to debugfs
Thread-Index: AQHZzs1lmMRZap7EN0mpfFCefCuot6/0VRAA
Date: Mon, 21 Aug 2023 06:33:03 +0000
Message-ID: <81e0415bc19ec59f0ff1f9575681a892821c56f8.camel@intel.com>
References: <20230814163452.2925-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20230814163452.2925-1-juhapekka.heikkila@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7363:EE_
x-ms-office365-filtering-correlation-id: 3aaa23e2-4f29-48c8-197a-08dba21078f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: D3vuARTTzMB5RUS+XIeKCH7c3eR3lxLvrejME4sqojLTqPB17dlz4R9WWn2WeSZMGxZvkrQ1wWoxa0e0dtFr2+uwc4z4E/q5u5tDrJjqoZDO24IXU+9X/iStWdCIXeTSr2yfA36BtkDveMsfs81v7TaxnCtSiyWepXU+B4crNLCe7HWAZFhF+Re4NY/Bapk1jI90PgsPfW1gS+sgLmJfulCtX4vcMfj6xik93TNPNgudVCSKvUfQblOEEel5zbr9I/VyYRwI2Ndp1M1MueNRN4CJSfgmEyBfZ8WXGmSukTzwM3yY2O4BYOvZdP1TUQf8ketSJp773szV/9XvVzXpddOHgPKbyTn3C2WbLXhnFuQpgm191C+IeRoWfawE/aXt2gZwluSowvPnXQmctxHaEgMACQkJ2m7AmjlLfrnyt7nSAMs1VgBkdQXpNooHjHw3KejyH7lPNIDJTkQ0kdeDFxrr1ZvEAcBO3ArGRMcHQE8PQPN5kAu6nuDPqm1X82OOAU1yTKqu+zk/QHMr42jWFNG8nryXwnlwNPVlzURufeRpVR0bAdXKN7Xn4aGFi1c/c2kY1II+gAAhj3LLEU2w5+u0fPrGbEWm+8/kXZZXxQF/UuHdi4UZVZ8jxsGGIGbO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(136003)(346002)(366004)(39860400002)(186009)(1800799009)(451199024)(66446008)(64756008)(66476007)(76116006)(66556008)(66946007)(6512007)(316002)(82960400001)(91956017)(110136005)(8676002)(2616005)(8936002)(36756003)(41300700001)(122000001)(478600001)(71200400001)(38070700005)(38100700002)(6506007)(6486002)(66574015)(2906002)(83380400001)(86362001)(5660300002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VWVMWVgyWEsvaUhJVkp1ckZvS3B1eE1FMFlyK2NXSnFmL1l0OEk1WVRVV0Ry?=
 =?utf-8?B?K2dJSVFPM1R4a2V1TnlhN3NpSmhLQlJvT0JuSWo1Mk9tLzJrdHFFRmJCcW9a?=
 =?utf-8?B?QWNWNnRsekNTaWFES21IUURjZGdudGFWbWVVT2h2V011VDdUUDNBb3VTV0pv?=
 =?utf-8?B?TGY0Vng1bWN3OU5BTmVVTFVvY0RocGh1Sm5GVGNpa1MzUFZEM0R6V29ubFVo?=
 =?utf-8?B?RWFoRzRVZ3FGenNqdTBJZGp5YmFyUGlzQVFKaEJxZ0kxN3RXNUIxb1JVVmxl?=
 =?utf-8?B?K1FxN2lKSUdNRDNMelVKbDhyUnI2cktmYVp5RzkzTGQ2NWgwblZRaS9vQ1hh?=
 =?utf-8?B?NjJMcmVzdHd0Y05FYWdJdWxtdEJSVmovSUV0VE9hY1gxNUhiSnFaMEpCVHYw?=
 =?utf-8?B?aEt4M1Y4SENTSlB0WmI1Z0dKNmVGcWZsZEVsbU1saytnR0JIOUh5Y1UrZzQw?=
 =?utf-8?B?S0V2WUZQMWdBWGFOeHI2a2g3RE1WcE9rYmJMQ1lLbWdOUDcwQk1RZVZuNEFi?=
 =?utf-8?B?UEhDVDdUbmNkd1pKWDJudmVobTE5Ky9nVkt1djBCaHBlZytmL3ZQRnBCb0Jz?=
 =?utf-8?B?ZVVEelByVmwwOUFROFRJLzBBc1oyaEZkeG45ZmZ0VE9LQmtJT1dwUVk4bXBx?=
 =?utf-8?B?MnBLSUlMREJVYlRtQWdWd0lXMlltZEJwUDNLSGtCSUg1KzBvNnVVSE03MFEy?=
 =?utf-8?B?NjErbGsrb2ova2tTcE1ORkl2ck9XMmxTU1R5d0loVldtcU5tRUNQN0tFUmlI?=
 =?utf-8?B?cGlJWDBtM0RuTmpWd3F0ZXFrakxGQUVSRTQ0N1JSS1c3ZTBURWJ3Wkd0Z05K?=
 =?utf-8?B?MlArN1NvclhTYm10L1MrQ210U2x0QVBKTDJqaFhsZ0RuejBCOVYwVlhJY1Fo?=
 =?utf-8?B?UHdXYy9CWDAwZU85c0FCS2VQWFhGT0cweHhKWmtLZjZ0Y3RyZG5FOFJKTTUz?=
 =?utf-8?B?NFVBY3pUdDBpUTN0M21YeTcvUTMybFBJd2pMSE4rUVVOdXc3ckQrTVduRnVS?=
 =?utf-8?B?M0ZYdTFNZ2RGNjdUdXFLS2tXajROSnE5UWdnNHJPbDFtMGF6YklBMkZSQVZK?=
 =?utf-8?B?cFpDWm5LRzlpaEZPeW9vclZaeUNCOGRYSDZRNDhZU1FvQ0R0UDJyWkovYWxx?=
 =?utf-8?B?bXBHTXhEVkNTRS9CTUhDSW9ZT0E1K2haSGg3MmViZkRyN2QzSzkwRmxybW5H?=
 =?utf-8?B?YnVnZzYxWHV3MlRVV203alhWbjRxczZCR2RyUlBub1UwalNoT3QvWFhvTWNT?=
 =?utf-8?B?ZVljUkFTTnJSbldkN0VqTmpnenRwS2J2b2pyNUNnVjY4bC83WTBXbFJQd0s0?=
 =?utf-8?B?SmxaU3Z1N2hEaVl1R3JrVUp2S0dVSTNjdlZIZjZoQThEenBIK3JpOENqM1hY?=
 =?utf-8?B?d0RVaGREU2JaN3RpWmM0ekpIU3ZBWXdEa2NtaUIyN1BlWUNxWTdyd0k3bTRx?=
 =?utf-8?B?alVQOWpZUHV4eVFsejBpWVJPdVYxazMrZW5ZQVdzN2lGd3RtendNTldTMjJx?=
 =?utf-8?B?Vkd1djZlSzlvcTRVVk1ZM3lIc0R5WTBuL1pOdkkzZFk4OXd5aHpLMGp3RXI4?=
 =?utf-8?B?aVFLRi9SQjhZWFNTZ01UaGxJMWNWaFhnREpLSGpNVERDeTJkdk8vTTd1Z1Bt?=
 =?utf-8?B?L0crd0ZyR0MvRUhMV3BYZURhcVBkYWVRQXBWcUMvWEV3ZHBuZ3BpSHM3elAz?=
 =?utf-8?B?THJmVFF1Z3FhWXlmWTBKUDUwd1Q4VXlUUE5lTEptb0FjLzdEbmgxeHdXT2Iv?=
 =?utf-8?B?cGhYeGZla3lCTklpcVFWaGtVU1RiUmFxMjNpb1VlSFZSeXFqcGw0NDdXK3VE?=
 =?utf-8?B?MWI5Qkt5Y3pxZlUvQlYreHAxVEdSS1l6aW4xNjNNRThDWlloNHBlTUJZVzZY?=
 =?utf-8?B?cE9IUTR2aThKamFBaTlUS3pZTHJXVVNuK1EwNjB0aU4xcEViUXFsOE9wM0Qv?=
 =?utf-8?B?c0pnSjc5VG9USU8vRExRRFlNcW1xQWxSeTNEUThVdWloNm1VVHBHSWUvZ3Y4?=
 =?utf-8?B?bHRvYkJCMHR3cEgzU0J1WmZ1RHQ5akExT0JKZnpsUk4yOWorWTNPbklwdkFI?=
 =?utf-8?B?VmNUeTVBT1hmWS9Kakc2SGNKbDRZWnRZK0NYeXAwZEw2aTIzOXQxVnRtNE80?=
 =?utf-8?B?VXRTSmxaR1ZRSTJ3WXhWbEdqb2t0YjQrdmkxdGxpcTN6UkRoMzY4NzZkNU5N?=
 =?utf-8?B?MWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <923FB935F22CC24595B6EB19191AC5B1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3aaa23e2-4f29-48c8-197a-08dba21078f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2023 06:33:03.5308 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DDJ7GEOma7RfWSFA0mTUVkPLGTsPbJZT0TBs7fYLbHZx13vZs3PhyGhEnzlaj6S6s4n9our++ZnOv4JTe4AoXXpzaZgkaoNqZQ6mqXCavx0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7363
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: add lock while printing
 frontbuffer tracking bits to debugfs
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

T24gTW9uLCAyMDIzLTA4LTE0IGF0IDE5OjM0ICswMzAwLCBKdWhhLVBla2thIEhlaWtraWxhIHdy
b3RlOg0KPiBBZGQgbWlzc2luZyBzcGluX2xvY2svdW5sb2NrDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBKdWhhLVBla2thIEhlaWtraWxhIDxqdWhhcGVra2EuaGVpa2tpbGFAZ21haWwuY29tPg0KDQpS
ZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoN
Cj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2Rl
YnVnZnMuYyB8IDQgKysrKw0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfZGVidWdmcy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X2RlYnVnZnMuYw0KPiBpbmRleCA2M2MxZmI5ZTQ3OWYuLmYwNWI1MjM4MWE4MyAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVn
ZnMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
ZGVidWdmcy5jDQo+IEBAIC00MywxMiArNDMsMTYgQEAgc3RhdGljIGludCBpOTE1X2Zyb250YnVm
ZmVyX3RyYWNraW5nKHN0cnVjdA0KPiBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQ0KPiDCoHsN
Cj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IG5v
ZGVfdG9faTkxNShtLT5wcml2YXRlKTsNCj4gwqANCj4gK8KgwqDCoMKgwqDCoMKgc3Bpbl9sb2Nr
KCZkZXZfcHJpdi0+ZGlzcGxheS5mYl90cmFja2luZy5sb2NrKTsNCj4gKw0KPiDCoMKgwqDCoMKg
wqDCoMKgc2VxX3ByaW50ZihtLCAiRkIgdHJhY2tpbmcgYnVzeSBiaXRzOiAweCUwOHhcbiIsDQo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfcHJpdi0+ZGlzcGxheS5m
Yl90cmFja2luZy5idXN5X2JpdHMpOw0KPiDCoA0KPiDCoMKgwqDCoMKgwqDCoMKgc2VxX3ByaW50
ZihtLCAiRkIgdHJhY2tpbmcgZmxpcCBiaXRzOiAweCUwOHhcbiIsDQo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfcHJpdi0+ZGlzcGxheS5mYl90cmFja2luZy5mbGlw
X2JpdHMpOw0KPiDCoA0KPiArwqDCoMKgwqDCoMKgwqBzcGluX3VubG9jaygmZGV2X3ByaXYtPmRp
c3BsYXkuZmJfdHJhY2tpbmcubG9jayk7DQo+ICsNCj4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiAw
Ow0KPiDCoH0NCj4gwqANCg0K
