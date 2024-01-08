Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 166BD8267F9
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 07:23:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 709C410E167;
	Mon,  8 Jan 2024 06:23:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EC1810E167
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 06:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704695018; x=1736231018;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=BO9KcIW+XXfYeWDHF4jxGi0ku0f13uLknH35ZRssqf4=;
 b=AD34Ph0RMcAHmreTWa/oTaMPd5I9lGq71CwK/WSW35xhC5+r2IYz/80t
 Hj8Gu2CD4dZJi+QhUUxwC3u0xMM9GAkqGCCX/d3adDvsaoMDK/05dJvrR
 MFU/QFEbmZazEcm5gwRPsiNOGbqpwmiEj5FijZtcUipSTOCELJcz78+ZQ
 5cdYMMUW0BSikD9szABp/EcazOo75eAIZv13Kp6H+hlNDHQv0aG1S517s
 nay4zw/MkKhBc15UWx8S/wSF6QBt8vfGkCTwobXL1IIYc6yHPsiYbHtvT
 CZ1SZj0RRSUAIeh9xd2LAyOes0bhUsDmTLIS1vlGVhWX8RAWE0Yj5Rkf0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="19304506"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="19304506"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2024 22:23:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="774402958"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="774402958"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2024 22:23:29 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Jan 2024 22:23:29 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Jan 2024 22:23:28 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 7 Jan 2024 22:23:28 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 7 Jan 2024 22:23:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kSu3sLjToiQSYFJ8dWheilxkqrspGJX+FbJ5x70/HpSoZxgSlztVM3yeOPRJ+HCJPxeFbGIcdzAso4BgPVppv+cPkLkmcn4U+iR6C7I6HVD66Z5TTfg31tAbTVo4ZnyzQYbCYdt2EQJ15Ir+kG6GcnN3+MVU1XImK4rpwwdVG9EGe+fLIJo2A6DptOCR7Vaay9A/44BQHws8pQMrvLHDPsto/J3jyPcWoWgiIcKKUQntei1uzVuF4ZbjVXRsCQ8kBSkz1IjTKwvAC03eslAxEm/BtL72RggrlWaho0ekcrc8WUB+9isMSM485dRlvlTF3rW1weCmPA8zloSTEust2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BO9KcIW+XXfYeWDHF4jxGi0ku0f13uLknH35ZRssqf4=;
 b=IdMdpHOlh+X+ccRR1gQB9ONXmnaE/RbtrzUSWTebILdyWxhLerNdDXfPS5rzOsMin57UxE9yHlFFty4lqrnvyN9yTxjcOwncY1upy8Q0naQa/d97PREyfNRjrq5vrgLLNgSbfPHhOQMiJlAhwUuun460aLZoJFHTSWr35rpbwejcKv8d0cY+ezSWcKPBurfeoAEpD3jQm9334nMtdvvS3Ry+lsfgPO0K7ROBzQdyGMnzfrBRIKhFm6f9EkONLBuKujhDgEn/vDVxUUswReUJJ0VHJiRNUCUaHlHl8ugpMe1h/BxxRPJFC5aiJ605uHQCjuQ9rDZefUus/Ur0dhO7rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB5048.namprd11.prod.outlook.com (2603:10b6:510:3d::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7159.21; Mon, 8 Jan 2024 06:23:21 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7159.020; Mon, 8 Jan 2024
 06:23:21 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 04/12] drm/i915: Disable intel HPD poll after DRM poll
 init/enable
Thread-Topic: [PATCH 04/12] drm/i915: Disable intel HPD poll after DRM poll
 init/enable
Thread-Index: AQHaPuhQlM0OvajfuEyrr4ICzC2/y7DPeIgA
Date: Mon, 8 Jan 2024 06:23:21 +0000
Message-ID: <5ef345cfe519ac276146d6fc723a92f70f306997.camel@intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
 <20240104083008.2715733-5-imre.deak@intel.com>
In-Reply-To: <20240104083008.2715733-5-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB5048:EE_
x-ms-office365-filtering-correlation-id: dbae403f-155f-42b6-a3ce-08dc10124ff4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0Qs6hM920QCJtMsuh2t8/2A5n8m+/ZCjmHCbJyHzmzKNeDsjWjoUCbH1UDscY4weXsd0osVqVSaNGRY+f7vrjIJYHjIiI7zc+2kcf+OwGCNIW8fEeOSaTxnHhntKGZiRWm3JqkVKSrLS476fFkNiiyrfUo9L53DKhdcIOtOsYDJiRDOLpQ5Vd7awdjVIvOTEoe14Pgh5gAhWj82buepN7ibiVUev6Q5HB5shwghUSftCzvT1UQwM6uq6m8Aoub6iwdHxmanQ3zcTlG5Ai28aRaq8B5eirBKxXNLHxSiGvrUBnBZ97GZteJ+naC1IQW3JBf5PknM5FyldqPs9XV1w5R0wq6B4rCOhvMEuUC6qoTvJmkir785Fh4v+bHyZxZweIVC2ZLDEm0e0OW4k90SyF5mnYNeMulm9u6/mVL1meFRNl/cJ6EkWL5nmEGxm0jfKcZJ0qsSjxuN19uWMZSTzX2IuyD8ttL7ckr3vNKTsIyNS1w0rfWR0K+3EyYEMjsYUUSuCA5ebPdRGiv/hW72j+WueMcglAF0B7xBZjHQjZHlG/SPl1AqLf+t5maw5u7j2LV1doAw567R4OJFL8rl8lMhJ80MPPq4RNAhENLVud6o0lKsxo8K75HgdPxsTt4bz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(366004)(376002)(39860400002)(136003)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(26005)(2616005)(6512007)(6506007)(478600001)(71200400001)(6486002)(38100700002)(122000001)(86362001)(36756003)(82960400001)(2906002)(5660300002)(41300700001)(83380400001)(66574015)(38070700009)(66946007)(110136005)(91956017)(66556008)(66476007)(66446008)(64756008)(316002)(76116006)(6636002)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V3BlOWl3SXdjdUtKMlNuL3FQdVgxYm1YRy9naEplR3JieEtYUTZwUWFnVFRJ?=
 =?utf-8?B?WkNBTEpNTUtsdWlNYkJtNXZsZU51Q29tZFRJYkgrckdGVmpuL0FJdDBaQ3hX?=
 =?utf-8?B?a2xHM1dsVzFFbVk4S0xGSlVnRTc1TElRS3VoNytGV2lIdmVFZEt0UjExc2FE?=
 =?utf-8?B?KzVFeUYyOHFZeFMvV1VMb3JIREd1blBZOElzaVp0N2VuUkMxTDZhQVpYWUVZ?=
 =?utf-8?B?eHloMC9VR1orU0h2dlJFcXhBSCtYRHpEb3BScE1uNG05YkNETEt1cTROOFM3?=
 =?utf-8?B?R0E1NkJMekpYUHY3Y3RHR2R5cWhSdTFLRkhXRlVIVTlrSkNaR2QwdHM1UUI5?=
 =?utf-8?B?cGNzMUZNMWF3ZTZnM2lPeENBckxubDUza0NORWsycDFEeXpsUnBMcWZzMnNw?=
 =?utf-8?B?dnBMakVCdmZva2c3TjhkRGMrMWFaUXZwOXRDaUk0Z1p2RGo5NFdxdlZ2Lzd1?=
 =?utf-8?B?bm1weXEzcnAycVZJZ1IwUDhnS1AyeDMzMnQ0bFlDc1BLZVMxbzJubnJYYktv?=
 =?utf-8?B?V3ZNblN0a1dKbzNsaDNDRUt1cW1TampLWkVEZnAva2FCY2V1aG1hM0ZrRHM1?=
 =?utf-8?B?NGJrejRSRDMxbUlkTDVGVzd0VFNaQXBDR1NVd1dUSjU1a1JRNEpvZXlOZjBh?=
 =?utf-8?B?a2RtbkZpWmd3MFlLMFNPbEs5ZVVTVWR0a2ZZZ3N2c0hZTXV3TDdZb3VoRlVJ?=
 =?utf-8?B?ZXpOKzBBTWhXcE8vcFNPaFJtcTJkOElaWDQ1ODJoMkdVdWhPZmhtekNlYVNC?=
 =?utf-8?B?UDgwWk51Umo4Wi9qdFdPdWlINmhDZWhOTzZQNEtzbHdpSnlwR3VwOXZhNzNV?=
 =?utf-8?B?d0FscmtISGpGdVY5TXdXS3l5S1ZwTjRWQnNXQmNsdTM0dS9OWXIyYXpnenMv?=
 =?utf-8?B?OHN6cXREYmY4Y1l4Y1RlVWhxNHRMaVd2eTA5MnhPV3ZUN1ZMaVFyTjRSOVpq?=
 =?utf-8?B?QSs5S0FxaDJCcHJtRUhWQWN3c0pDdlNaWUd6Z1krRWRnL1ZVZ0tRY0JnQ3U3?=
 =?utf-8?B?dExTOGRFL29EY0JKOGRaeXI4dTVmbmM1eEhZRjhVMTdCOFdQKzhOQURTZ0pK?=
 =?utf-8?B?b0U5WHlYcTJ4UWRXaE1jYW85bUpkTmRldUpDT2YvTmFxZlRJN2QxN1lKSlda?=
 =?utf-8?B?N1krd3BSWElOdWZub3lKT0ltWHVReHFYamZDdmlrd0VRejNqRlZUSzNubFJj?=
 =?utf-8?B?WTBkRDJ4Y0J0K090OXllQWMyaUVNRTRCdmNrRFpVdW1lOFJvTjV3eTFIRitZ?=
 =?utf-8?B?ckJZSnkwanJVT0xEdkpTanR0SVlwOTJDbm5KSTI0eGw1ekZMS1RmUTNQSEts?=
 =?utf-8?B?WEdkbkQzZENsLzE1ck5IS05DMzhCVVZkSGJnMFZWK24ySi80dDd3Y0R2NDc0?=
 =?utf-8?B?YjZITDVzbXpEa3NsVEx1REVlWG5WZ0k0cFN1TmhnQ0k5ZGdvc1ZnM1hjS09G?=
 =?utf-8?B?cVlGN3E5cWZ6cXNBcXcyOTJoTzFYMWVFcnpWNmdESVM5aGtmWkRrMFFmZ3Nk?=
 =?utf-8?B?cmN4cVFEY3ZvZ0FSdm1XeFBPaFpadStsMGpNRGx5RktIU1hIUitRbmlkaHFH?=
 =?utf-8?B?V05UcUNUT2pqVm91cXZWSWEyQ3I0dWFhenI1ZWt2TUtrYmVJZkxzaXNqVTVn?=
 =?utf-8?B?VitpZjhUSjM5dm5tQ0t1OHhHemF3MnloL00xSkdGUnVGMzlxb2JpUnNZeXJ3?=
 =?utf-8?B?L0djVFE1d0JiZnJHYXFucHQ4a3ZseEVwWWtlWFUwM05tVDBQV3QrSVF1TG9S?=
 =?utf-8?B?TFNRelNQRGRDVm4ybEROM2lJZE82UksrbkpyN2pJdVZQOGdRdHdvV3cxci95?=
 =?utf-8?B?Q3Q3VG1SUjd1OUlEd01EUUdkRlh2eThqdWkycWdVK0JXZWhOT05KVjRMYnRr?=
 =?utf-8?B?YXBsaWI3V0Fqb29LQ3dZczV3OXIvUFQyeXZ5Um4xVXVTcm54MkxoMjE2MTVQ?=
 =?utf-8?B?SUhZRUVUVlVqYUlJcDVENXVTdW1FMFlBdGtEczd6Rk56M29SbXUxVXBLQm9V?=
 =?utf-8?B?SXB1RkVXTUswUUxXY0VYVnl1c3Y2Z1k0SkxXcDB5dlFnbGljajVTSlB1YjJN?=
 =?utf-8?B?Q3VQdERlL1BtS2hyYy9WOGlrTGYxZ0JXRi84NEpmYUdWZjg1ejlYUU0veUpJ?=
 =?utf-8?B?N29ZVzlBbzV6ZmM2TFJWcDVYVjZ4czM1OUJzN0FVRFlNb0FkSlcyMXUyUzRk?=
 =?utf-8?B?emc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D40BFC09EE41424486BDC1E8B672DFD1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbae403f-155f-42b6-a3ce-08dc10124ff4
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2024 06:23:21.6428 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kzfpPrVdift+1XGnr7vfmqKxsjIrSN8MabQSobxwUeWSEaG8uL6lBWtOvXcGlP5INnqCTiKWOtT5EuvuE3tBKM++HDOuDDK9njddYVGakMc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5048
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

T24gVGh1LCAyMDI0LTAxLTA0IGF0IDEwOjMwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZSBvbmx5IHB1cnBvc2Ugb2YgaW50ZWxfaHBkX3BvbGxfZGlzYWJsZSgpIGR1cmluZyBkcml2ZXIg
bG9hZGluZw0KPiBhbmQNCj4gc3lzdGVtIHJlc3VtZSAtIGF0IHdoaWNoIHBvaW50IHBvbGxpbmcg
c2hvdWxkIGJlIGRpc2FibGVkIGFueXdheSwNCj4gZXhjZXB0DQo+IGZvciBjb25uZWN0b3JzIGlu
IGFuIElSUSBzdG9ybSwgZm9yIHdoaWNoIHRoZSBwb2xsaW5nIHdpbGwgc3RheQ0KPiBlbmFibGVk
IC0NCj4gaXMgdG8gZm9yY2UtZGV0ZWN0IGFsbCB0aGUgY29ubmVjdG9ycy4gSG93ZXZlciB0aGlz
IGRldGVjdGlvbiBpbg0KPiBpOTE1X2hwZF9wb2xsX2luaXRfd29yaygpIGRlcGVuZHMgb24gZHJt
Lm1vZGVfY29uZmlnLnBvbGxfZW5hYmxlZCwNCj4gd2hpY2gNCj4gd2lsbCBnZXQgc2V0IGluIGRy
bV9rbXNfaGVscGVyX3BvbGxfaW5pdCgpLCBwb3NzaWJseSBhZnRlcg0KPiBpOTE1X2hwZF9wb2xs
X2luaXRfd29yaygpIGlzIHNjaGVkdWxlZC4gSGVuY2UgdGhlIGluaXRpYWwgZGV0ZWN0aW9uDQo+
IG9mDQo+IGNvbm5lY3RvcnMgZHVyaW5nIGRyaXZlciBsb2FkaW5nIG1heSBub3QgaGFwcGVuLg0K
PiANCj4gRml4IHRoZSBhYm92ZSBieSBtb3ZpbmcgaW50ZWxfaHBkX3BvbGxfZGlzYWJsZSgpIGFm
dGVyDQo+IGk5MTVfaHBkX3BvbGxfaW5pdF93b3JrKCksIHRoZSBwcm9wZXIgcGxhY2UgYW55d2F5
IGZvciBkb2luZyB0aGUNCj4gYWJvdmUNCj4gZGV0ZWN0aW9uIGFmdGVyIGFsbCB0aGUgSFcgaW5p
dGlhbGl6YXRpb24gc3RlcHMgYXJlIGNvbXBsZXRlLiBDaGFuZ2UNCj4gdGhlDQo+IG9yZGVyIHRo
ZSBzYW1lIHdheSBkdXJpbmcgc3lzdGVtIHJlc3VtZSBhcyB3ZWxsLiBUaGUgYWJvdmUgcmFjZQ0K
PiBjb25kaXRpb24gc2hvdWxkbid0IG1hdHRlciBoZXJlIC0gYXMgZHJtLm1vZGVfY29uZmlnLnBv
bGxfZW5hYmxlZA0KPiB3aWxsDQo+IGJlIHNldCAtIGJ1dCB0aGUgZGV0ZWN0aW9uIHNob3VsZCBo
YXBwZW4gaGVyZSBhcyB3ZWxsIGFmdGVyIHRoZSBIVw0KPiBpbml0DQo+IHN0ZXBzIGFyZSBkb25l
Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0K
DQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+
DQoNCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X2RyaXZlci5jIHwgMiArLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmPC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMiArLQ0KPiDCoDIgZmlsZXMgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kcml2ZXIuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kcml2ZXIuYw0KPiBp
bmRleCBkYTU0OTk2MmZlY2NkLi4xOTc0ZjIzOTRhNTE4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZHJpdmVyLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RyaXZlci5jDQo+IEBAIC0z
NzQsNyArMzc0LDYgQEAgaW50IGludGVsX2Rpc3BsYXlfZHJpdmVyX3Byb2JlKHN0cnVjdA0KPiBk
cm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiDCoA0KPiDCoMKgwqDCoMKgwqDCoMKgLyogT25seSBl
bmFibGUgaG90cGx1ZyBoYW5kbGluZyBvbmNlIHRoZSBmYmRldiBpcyBmdWxseSBzZXQNCj4gdXAu
ICovDQo+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9ocGRfaW5pdChpOTE1KTsNCj4gLcKgwqDCoMKg
wqDCoMKgaW50ZWxfaHBkX3BvbGxfZGlzYWJsZShpOTE1KTsNCj4gwqANCj4gwqDCoMKgwqDCoMKg
wqDCoHNrbF93YXRlcm1hcmtfaXBjX2luaXQoaTkxNSk7DQo+IMKgDQo+IEBAIC00MTIsNiArNDEx
LDcgQEAgdm9pZCBpbnRlbF9kaXNwbGF5X2RyaXZlcl9yZWdpc3RlcihzdHJ1Y3QNCj4gZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSkNCj4gwqDCoMKgwqDCoMKgwqDCoCAqIGZiZGV2LT5hc3luY19jb29r
aWUuDQo+IMKgwqDCoMKgwqDCoMKgwqAgKi8NCj4gwqDCoMKgwqDCoMKgwqDCoGRybV9rbXNfaGVs
cGVyX3BvbGxfaW5pdCgmaTkxNS0+ZHJtKTsNCj4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfaHBkX3Bv
bGxfZGlzYWJsZShpOTE1KTsNCj4gwqANCj4gwqDCoMKgwqDCoMKgwqDCoGludGVsX2Rpc3BsYXlf
ZGV2aWNlX2luZm9fcHJpbnQoRElTUExBWV9JTkZPKGk5MTUpLA0KPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoERJU1BMQVlfUlVOVElNRV9JTkZPKGk5MTUpLA0KPiAmcCk7DQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcml2ZXIuYw0KPiBpbmRleCBjN2Q3YzNiN2VjYzYzLi5iZTg2NTk2YTg5MDRk
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMNCj4gQEAgLTEyNDksOSArMTI0
OSw5IEBAIHN0YXRpYyBpbnQgaTkxNV9kcm1fcmVzdW1lKHN0cnVjdCBkcm1fZGV2aWNlDQo+ICpk
ZXYpDQo+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kcF9tc3RfcmVzdW1lKGRldl9wcml2KTsNCj4g
wqDCoMKgwqDCoMKgwqDCoGludGVsX2Rpc3BsYXlfZHJpdmVyX3Jlc3VtZShkZXZfcHJpdik7DQo+
IMKgDQo+IC3CoMKgwqDCoMKgwqDCoGludGVsX2hwZF9wb2xsX2Rpc2FibGUoZGV2X3ByaXYpOw0K
PiDCoMKgwqDCoMKgwqDCoMKgaWYgKEhBU19ESVNQTEFZKGRldl9wcml2KSkNCj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fa21zX2hlbHBlcl9wb2xsX2VuYWJsZShkZXYpOw0K
PiArwqDCoMKgwqDCoMKgwqBpbnRlbF9ocGRfcG9sbF9kaXNhYmxlKGRldl9wcml2KTsNCj4gwqAN
Cj4gwqDCoMKgwqDCoMKgwqDCoGludGVsX29wcmVnaW9uX3Jlc3VtZShkZXZfcHJpdik7DQo+IMKg
DQoNCg==
