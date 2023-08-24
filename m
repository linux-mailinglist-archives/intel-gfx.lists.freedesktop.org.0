Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B14E3786D7D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 13:12:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2623210E523;
	Thu, 24 Aug 2023 11:12:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA95C10E523
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 11:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692875551; x=1724411551;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BDk6oZE2FjW6R+D2cRYiftv+8N9fkGr+rCcz/f5ms+c=;
 b=UPABEy/3vnfxq4Wh/GrIeQ5buikqXqqXG7rW4ZE4XPgYM8llA3avlmfb
 qDHrmDUs5YO3s726F64fFSQiTiS+Qo5Ljg76yQhCrMCH/PVWWpBVFkif3
 6dwGI4b3xT36+RP7siB6+htWhqhWnH57oA1jx5KMCwS12AXmJiaYjwIvi
 G6Su8Aqlr40DEdI7N4Hyn8BTtyK6f3qdagHBlrKvMMh8Wgpk9C+OVmZFv
 XYTNPG7EQh0vyD5MUL8LMZ2UrDwS8dMHS8oEHJSqVt14Fk2Nu6XV5tWlw
 TUnQTPpWo8Vau4xlQBeyHSrRwLSigl0pjOdg1PE4xfx8TDVyI1B3/tYUy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="364585587"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="364585587"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 04:12:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="740142461"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="740142461"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 24 Aug 2023 04:12:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 04:12:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 04:12:29 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 04:12:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lj3cb8IJHiUgjBT6AMAypBaP23/h4e/XA7QId9dsrp0YeC4WbGMyDHWImAPjxibi43GjhllUETvJOp6Oq/MbJ9eL5FAtGLul9SsJvltFoqjUFi8XKQDBcUsBxf+LdgfpiKJM2BreaT1GdaKUL0yN7SxqHOUVbZAE4sCApdWFP4mYLytcuUaKnu9EU2uBk9XA1qHtaTdINEM/2qNMRcuJ9Tj/UHutcsu0ok8a7ObLhZivP5i+qwcFMerHj1RrpFYVGZSm3YbD7BIH1JCg5CntJnZJLmVy0rmPlTRRPh/6KwpZ2HOYkuop0lOwIXXJG3sQE/BN6PPmnvLNaXZ5TajwOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BDk6oZE2FjW6R+D2cRYiftv+8N9fkGr+rCcz/f5ms+c=;
 b=fAMqinBKvG7eO5J1sv5BtWjp2vdvFpGDPGNiHBMalwyRPvnnuapR9cxRED/PcMEGaTUhhdwJEsAT1OsYJHacT5t4sZ9Cx5x+4JLMPNDrJjMyxLHTi2wV0fKEGR6MuTD/kH/18gQpfAdPbocIsfjF3FvyZMlTrFHLk71AZfL88a4ULt6kXXl69gKe5bCnJPOwnBVw3flMgQN4WmymFAWzjfbABuFz9N9Pc7slpdPud+/nM9UTyj8zdoQ6vjYO2KFjXU7zbNdy5IC/KbKWYhbPif4+PpiyeXvLCBhM/N2dKcpnUXpQxn6T1l+xGWNmHkGAf+/0cKFRe8F8VqnEGbdOPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB5628.namprd11.prod.outlook.com (2603:10b6:510:d4::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.26; Thu, 24 Aug
 2023 11:12:28 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 11:12:28 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 3/4] drm/i915/tc: move legacy code out of
 the main _max_lane_count() func
Thread-Index: AQHZu8Qri1RTNphTMkaHwnMUz2bkNa/sxIxQgAy53gCAAAGZMA==
Date: Thu, 24 Aug 2023 11:12:27 +0000
Message-ID: <SN7PR11MB6750E7D1CC8CA88473AE7D27E31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230721111121.369227-1-luciano.coelho@intel.com>
 <20230721111121.369227-4-luciano.coelho@intel.com>
 <SN7PR11MB67506A441EBC25AC9A772180E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
 <916fa2bbb6b3a8571a0dcf3c681b7a142c7a3141.camel@intel.com>
In-Reply-To: <916fa2bbb6b3a8571a0dcf3c681b7a142c7a3141.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB5628:EE_
x-ms-office365-filtering-correlation-id: 75cfc520-c4d8-4204-f280-08dba4930091
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: w9OyrRoY2lPl+SNcjhvr3/QK1gU771xLLJj6JeVevnW03KIY3DhYdjNQu8qSXKdgv5Z9QSzEh0J8X2pSvUNGakIphif/RlYGPFW6LIU5iKuzyq5YPDWNkdwhZTHPsVXQ69PLtNk/6X8oNf18/889aCepqoQr0XeqBPwubWxHC0YlHDiEqmDk9kk116RUNMOTbcW0YuWhIPEt6iHVu2Xxm5UF5cEc737uFONr5+cd5SVFnA12XjqSwLwOgtSU0naFHpE3QHTDNr4e4mWxox2BHU1od9LJ/TI83f9G+7ZCSKqIQSOm+gQ2+caNE0mpRTuahcbcGoM8w8VvWLpLf6N5j6eoRCD9ULo1FgNoe0OewAqxTrdZmb9T1pZ3evsct1pU9sko47k+TgEWXJjlJLTqa6iNPnLCAvSa6tpps8fQBSZOOuQNKoJA+5Ld22D5UQf+5u0yaomiSVq7xoowj6iejyxKkJO3WJKKOihkFUgiQemMYMSd31D7Z42untyxehGW88vceEHL+r2NEsg6GmLpogwK8W8UUamJPbkv1eRIy2F5pB46JDXVyBrExOu2+Zn0WrJNsnoCzbA8UsDCCmjtHdnv/bcUdfk0X7mv5MDUEsA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(136003)(346002)(376002)(366004)(186009)(451199024)(1800799009)(6506007)(7696005)(316002)(52536014)(8676002)(4326008)(8936002)(110136005)(66556008)(66476007)(66946007)(76116006)(64756008)(9686003)(55016003)(41300700001)(66446008)(107886003)(5660300002)(71200400001)(966005)(478600001)(83380400001)(33656002)(86362001)(38100700002)(82960400001)(2906002)(38070700005)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RUZXN1VOMVhKeEw0cVBrVlFGVGltTzNZRHNZdmptN2xEVU1NeTliRStvMWQx?=
 =?utf-8?B?RXp5eTV1a1U3dGxNWVJIQktZTlRoQ29NUWNJTWtZU3V0OFBEMmp0ZHZlWkZi?=
 =?utf-8?B?bG5CcTZaUEtxcW1oWVNtVG5kNFRldGpLbU9HUnppZ0JMSWhXdWp4bHQvalFP?=
 =?utf-8?B?anZkalpLNU5aSnZjQytBRWRCTVk3THpTRnc4a2JNUXpvMnMwQzc2Y1VRT2dk?=
 =?utf-8?B?N3RMY0wzL2dKMDhhRWFKT3IzMDl0RU54ZnZwdUtxMkxoTWtsWER2MlhWRWl3?=
 =?utf-8?B?b2N6WDNJRGZHc3I0UWZPQXNHTGVSTW1DUTM5cXQ5UlZFUTk4dHAzeHNQZ3VK?=
 =?utf-8?B?YXFYeHJFT1I3bncyMUh4dXhrRDIvYjJ3VFVBYTg2eHQySzNITkZmNTBndWU5?=
 =?utf-8?B?eU9GYmx0VzdqeGxpN2tNS2h0c0dGbkNxREZrR3ozZXF6dVdYdDVMYzNURDZM?=
 =?utf-8?B?TkVESkQ2UGZRWXNZcTJBd2dISk5DMEF0RXpiaE55T2NyWGM5YWJqQTc1RFVp?=
 =?utf-8?B?bkdUcXBCUWtNR0V1dWFZQVFRMVlRKzZlbFdOc2ZKeUJqeFI2QzZOUng3N0lN?=
 =?utf-8?B?TzA3YUU3aG5ES0xFV0JoWUZzdFFQbjlTUXI3SlBqNWNnSVQvSU5abjJPQkRV?=
 =?utf-8?B?NVFpQm9QZWxGNUpBUjBhZUdsZ3l2ZzM4dU9IMlV1TWlNSXRIakVqMkFkTE5z?=
 =?utf-8?B?MHlDTGdxVWF5TVQxdG1JL0d4VFE2YXAwcjlZS1NIR1piZ2NqcTNETEY1U2h4?=
 =?utf-8?B?QVNPYjhzZXREL2YvOTFJQjVnTDBJd3FwMU1ER0RHV1liOUhEQkNXVW5JZTl1?=
 =?utf-8?B?SWJUS202UVdCYU9GSyt4MDRyNmlBTzdWbm5oZjYyTGgzVTRhRDZSbW0xL25S?=
 =?utf-8?B?RGl6UUx5Z2VBemljWG0zd0Zwb3Rsa1N3TWh6R09XeXplZGltZjIzbS9XVVB4?=
 =?utf-8?B?emszU2NTeERMM0d1Q0MzU0F0YnhuQjBtTktYYk1QVHJ2VzBzdzdNZko3Q1ox?=
 =?utf-8?B?RENtVTBUMS9WdDN5ZXRzWm9ISlZLeU90anB3d2NZTU5XTEFWWEUwTnowM0Ur?=
 =?utf-8?B?S1lPR0ZIRTUrKzA3bTh2Qk9hM1J6NWI4VCs0NEFjWXV5KzdrMCsxQnpocWw4?=
 =?utf-8?B?b1g2ZzBaa1ZMZXlIdGlzak5LL1FTdnVzYUVubGdkUXNlc0lsZG5xZExyTG80?=
 =?utf-8?B?eW9MNkQvcmN4cHZLcXhUcXU0VFppODJ3VmwycWFMdElJNTI2eHpIc3JIZGVa?=
 =?utf-8?B?S09ZSnJ4bDFEeTFqL2o4U2cxS3hza1JLY0JkaVJ5TWxVbnlndEIyTXFTUkwv?=
 =?utf-8?B?ZXU3YnEyWFZEV0kveUpEcHk3b21KOENwSkllL2xzNWI1Y2tjcWlxV3VTcWUz?=
 =?utf-8?B?RnNQcmFqYnFpbW81RHhqOVVhL2ZyZTlSSFozbmYweit2TXYxdUk1dU8vTU9E?=
 =?utf-8?B?cWc1bStBTTdFcFJMSlY0ZFRUbVBrMVRKOUcyYUw5U2syU1BTUkRXNTdraEIz?=
 =?utf-8?B?VzdZMG02bEM0ZmRocVZIU3AyeWtpT0NseG9FbDdzSy9MbzNmU1ZCUExjck5H?=
 =?utf-8?B?ajY4OGJnMjg3MHNjVFhRQjdEenAydWFBZHdjdGc1VC9xR0ZZL1FJZXRRRXdM?=
 =?utf-8?B?NFRQWGQwNW1PaWtMZjhxWjNyTno1UlhsTE5ITDFtMHFTM0ZLTFZjREpaRGNF?=
 =?utf-8?B?aHRVMk1RYi9uOW1TWHdDc0p4eHh4MndQaHlQNGtmdVJyS3N3YVV2bUM2U3J2?=
 =?utf-8?B?MStyK2kxVDhXayt6TStRVTlrYW85dldrRkJhb1FLMHhETk5UYUtjbU9YZGlN?=
 =?utf-8?B?NHZmMUJ6NlpweGF0ZUoxcVM2eEhaS0QzbzJyZDRZV1lIbFZJTHROamRVTy9J?=
 =?utf-8?B?STdnYnpuVmxJdFcyaVZyVW5KMk1TWXk4RFdFTXdhOUFkM1Z6dmpLbEc2Uko5?=
 =?utf-8?B?Q0ZKM1VIc0ZRMy8wOFFadVhiRkpjS3hTQ3hVOXdhQkd5ak9Yekx1QnFhTWhZ?=
 =?utf-8?B?QmZ6S0xWTS93eDBNeXZySDRPcU9vc3l6M0FyaytRdHk5RFFnQy9XbWU5VU15?=
 =?utf-8?B?ckdyWnd3d3U1Z05xU29jd2k4blFsRDN5Nk81bnArR1l5UmsxZUhFdk52VmJy?=
 =?utf-8?Q?vFTM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75cfc520-c4d8-4204-f280-08dba4930091
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 11:12:27.9620 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eYoEZX0SbrKAoG7Mghk9Bj8Cfk4pCNlLKfZFctk19wiF8ky3r4kNR4sbPuC3X3j/jVOwPcwjrUfyZa+EggfMvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5628
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 3/4] drm/i915/tc: move legacy code out of
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiBPbiBXZWQsIDIwMjMtMDgtMTYgYXQgMDg6NTQgKzAwMDAsIEthbmRwYWwsIFN1cmFqIHdyb3Rl
Og0KPiA+ID4gVGhpcyBtYWtlcyB0aGUgY29kZSBhIGJpdCBtb3JlIHN5bW1ldHJpYyBhbmQgcmVh
ZGFibGUsIGVzcGVjaWFsbHkNCj4gPiA+IHdoZW4gd2Ugc3RhcnQgYWRkaW5nIG1vcmUgZGlzcGxh
eSB2ZXJzaW9uLXNwZWNpZmljIGFsdGVybmF0aXZlcy4NCj4gPiA+DQo+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBMdWNhIENvZWxobyA8bHVjaWFuby5jb2VsaG9AaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+
ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyB8IDMyICsrKysr
KysrKysrKysrKy0tLS0tLQ0KPiA+ID4gLS0tLQ0KPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTkg
aW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pDQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiA+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gPiA+IGluZGV4IGRlODQ4YjMyOWY0
Yi4uNDNiOGVlYmEyNmY4IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF90Yy5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3RjLmMNCj4gPiA+IEBAIC0zMTEsMjMgKzMxMSwxMiBAQCBzdGF0aWMgaW50DQo+
ID4gPiBtdGxfdGNfcG9ydF9nZXRfbWF4X2xhbmVfY291bnQoc3RydWN0DQo+ID4gPiBpbnRlbF9k
aWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiA+ID4gwqAJfQ0KPiA+ID4gwqB9DQo+ID4gPg0KPiA+
ID4gLWludCBpbnRlbF90Y19wb3J0X2ZpYV9tYXhfbGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0DQo+ID4gPiAqZGlnX3BvcnQpDQo+ID4gPiArc3RhdGljIGludCBpbnRlbF90Y19w
b3J0X2dldF9tYXhfbGFuZV9jb3VudChzdHJ1Y3QNCj4gPiA+IGludGVsX2RpZ2l0YWxfcG9ydA0K
PiA+ID4gKypkaWdfcG9ydCkNCj4gPiA+IMKgew0KPiA+ID4gwqAJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LQ0KPiA+ID4gPmJhc2UuYmFzZS5kZXYpOw0K
PiA+ID4gLQlzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMgPSB0b190Y19wb3J0KGRpZ19wb3J0KTsN
Cj4gPiA+IC0JZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoaTkxNSwgZGlnX3BvcnQt
DQo+ID4gPiA+YmFzZS5wb3J0KTsNCj4gPiA+IMKgCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOw0K
PiA+ID4gLQl1MzIgbGFuZV9tYXNrOw0KPiA+ID4gLQ0KPiA+ID4gLQlpZiAoIWludGVsX3BoeV9p
c190YyhpOTE1LCBwaHkpIHx8IHRjLT5tb2RlICE9DQo+ID4gPiBUQ19QT1JUX0RQX0FMVCkNCj4g
PiA+IC0JCXJldHVybiA0Ow0KPiA+ID4gKwl1MzIgbGFuZV9tYXNrID0gMDsNCj4gPiA+DQo+ID4g
PiAtCWFzc2VydF90Y19jb2xkX2Jsb2NrZWQodGMpOw0KPiA+ID4gLQ0KPiA+ID4gLQlpZiAoRElT
UExBWV9WRVIoaTkxNSkgPj0gMTQpDQo+ID4gPiAtCQlyZXR1cm4gbXRsX3RjX3BvcnRfZ2V0X21h
eF9sYW5lX2NvdW50KGRpZ19wb3J0KTsNCj4gPiA+IC0NCj4gPiA+IC0JbGFuZV9tYXNrID0gMDsN
Cj4gPiA+IMKgCXdpdGhfaW50ZWxfZGlzcGxheV9wb3dlcihpOTE1LCBQT1dFUl9ET01BSU5fRElT
UExBWV9DT1JFLA0KPiA+ID4gd2FrZXJlZikNCj4gPiA+IMKgCQlsYW5lX21hc2sgPSBpbnRlbF90
Y19wb3J0X2dldF9sYW5lX21hc2soZGlnX3BvcnQpOw0KPiA+ID4NCj4gPiA+IEBAIC0zNDgsNiAr
MzM3LDIzIEBAIGludCBpbnRlbF90Y19wb3J0X2ZpYV9tYXhfbGFuZV9jb3VudChzdHJ1Y3QNCj4g
PiA+IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+ID4gPiDCoAl9DQo+ID4gPiDCoH0N
Cj4gPiA+DQo+ID4gPiAraW50IGludGVsX3RjX3BvcnRfZmlhX21heF9sYW5lX2NvdW50KHN0cnVj
dCBpbnRlbF9kaWdpdGFsX3BvcnQNCj4gPiA+ICsqZGlnX3BvcnQpIHsNCj4gPiA+ICsJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LQ0KPiA+ID4gPmJhc2Uu
YmFzZS5kZXYpOw0KPiA+ID4gKwlzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMgPSB0b190Y19wb3J0
KGRpZ19wb3J0KTsNCj4gPiA+ICsJZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoaTkx
NSwgZGlnX3BvcnQtDQo+ID4gPiA+YmFzZS5wb3J0KTsNCj4gPiA+ICsNCj4gPiA+ICsJaWYgKCFp
bnRlbF9waHlfaXNfdGMoaTkxNSwgcGh5KSB8fCB0Yy0+bW9kZSAhPQ0KPiA+ID4gVENfUE9SVF9E
UF9BTFQpDQo+ID4gPiArCQlyZXR1cm4gNDsNCj4gPiA+ICsNCj4gPiA+ICsJYXNzZXJ0X3RjX2Nv
bGRfYmxvY2tlZCh0Yyk7DQo+ID4gPiArDQo+ID4gPiArCWlmIChESVNQTEFZX1ZFUihpOTE1KSA+
PSAxNCkNCj4gPiA+ICsJCXJldHVybiBtdGxfdGNfcG9ydF9nZXRfbWF4X2xhbmVfY291bnQoZGln
X3BvcnQpOw0KPiA+ID4gKw0KPiA+ID4gKwlyZXR1cm4gaW50ZWxfdGNfcG9ydF9nZXRfbWF4X2xh
bmVfY291bnQoZGlnX3BvcnQpOw0KPiA+ID4gK30NCj4gPg0KPiA+IExvb2tpbmcgYXQgdGhpcyBJ
IHRoaW5rIHdlIGhhdmUgbW9yZSBzY29wZSBvZiBvcHRpbWl6YXRpb24gaGVyZSBJDQo+ID4gdGhp
bmsgd2UgY2FuIGdvIGFib3V0IGl0IGluIHRoZSBmb2xsb3dpbmcgd2F5DQo+ID4NCj4gPiBpbnRl
bF90Y19wb3J0X2ZpYV9tYXhfbGFuZV9jb3VudA0KPiA+IGFscmVhZHkgY2FsbHMNCj4gPiB3aXRo
X2ludGVsX2Rpc3BsYXlfcG93ZXIoaTkxNSwgUE9XRVJfRE9NQUlOX0RJU1BMQVlfQ09SRSwgd2Fr
ZXJlZikNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxhbmVfbWFzayA9IGlu
dGVsX3RjX3BvcnRfZ2V0X2xhbmVfbWFzayhkaWdfcG9ydCk7DQo+ID4NCj4gPiB3aGljaCB3ZSBh
bHNvIGR1cGxpY2F0ZSBpbiAgbXRsX3RjX3BvcnRfZ2V0X3Bpbl9hc3NpZ25tZW50X21hc2sNCj4g
PiAobm93IG10bF90Y19wb3J0X2dldF9tYXhfbGFuZV9jb3VudCkgYW5kIHRoZSBvbmx5IGRpZmZl
cmVuY2UgYmV0d2Vlbg0KPiA+IHRoZW0gSXMgdGhlIHN3aXRjaCBjYXNlIHdoYXQgaWYgd2UgaGF2
ZSBhIGZ1bmN0aW9uIG9yIHJlcHVycG9zZQ0KPiA+IG10bF90Y19wb3J0X2dldF9tYXhfbGFuZV9j
b3VudCB0byBvbmx5IGhhdmUgdGhlIHN3aXRjaCBjYXNlIGJsb2NrIHdpdGgNCj4gPiBhc3NpZ25t
ZW50IHZhcmllZCBieSBkaXNwbGF5IHZlcnNpb24gYW5kIGNhbGwgaXQgYWZ0ZXINCj4gPiBpbnRl
bF90Y19wb3J0X2dldF9sYW5lX21hc2sNCj4gPg0KPiA+IG1heWJlIGFsc28gbW92ZSB0aGUgbGVn
YWN5IHN3aXRjaCBjYXNlIGluIGl0cyBvd24gZnVuY3Rpb24/DQo+IA0KPiBUaGlzIHdvdWxkIGJl
IGFub3RoZXIgb3B0aW9uLCBidXQgSSB0aGluayBpdCdzIG5pY2VyIHRvIGtlZXAgdGhpbmdzIHZl
cnkgaXNvbGF0ZWQNCj4gZnJvbSBlYWNoIG90aGVyIGFuZCB0aGlzIHRpbnkgY29kZSBkdXBsaWNh
dGlvbiBpcyBub3QgdG9vIGJhZC4NCj4gDQo+IEVzcGVjaWFsbHkgYmVjYXVzZSBsYXRlciwgYXMg
eW91IGNhbiBzZWUgaW4gbXkgTE5MIHBhdGNoIHRoYXQgTHVjYXMgc2VudCBvdXRbMV0NCj4gd2Ug
aGF2ZSBhbm90aGVyIGNvbWJpbmF0aW9uIGluIGEgbmV3IGZ1bmN0aW9uLiAgU28gd2UgaGF2ZToN
Cj4gDQo+IGludGVsX3RjX3BvcnRfZ2V0X21heF9sYW5lX2NvdW50KCk7DQo+IAlpbnRlbF90Y19w
b3J0X2dldF9sYW5lX21hc2soKTsNCj4gCXN3aXRjaCB3aXRoIGxhbmVfbWFzazsNCj4gDQo+IG1s
dF90Y19wb3J0X2dldF9sYW5lX21hc2soZGlnX3BvcnQpOw0KPiAJaW50ZWxfdGNfcG9ydF9nZXRf
cGluX2Fzc2lnbm1lbnRfbWFzaygpOw0KPiAJc3dpdGNoIHdpdGggcGluX21hc2s7DQo+IA0KPiBs
bmxfdGNfcG9ydF9nZXRfbGFuZV9tYXNrKCk6DQo+IAlpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUs
IFRDU1NfRERJX1NUQVRVUyh0Y19wb3J0KSk7DQo+IAlzd2l0Y2ggd2l0aCBwaW5fYXNzaWdubWVu
dDsNCj4gDQo+IA0KPiBTbyBub3cgd2UgaGF2ZSAzIGRpZmZlcmVudCB3YXlzIHRvIHJlYWQgYW5k
IHR3byBkaWZmZXJlbnQgd2F5cyB0byBwYXJzZSAod2l0aA0KPiB0aGUgc3dpdGNoLWNhc2UpLiAg
SSB0aGluayBpdCdzIGEgbG90IGNsZWFuZXIgdG8ga2VlcCB0aGlzIGFsbCBzZXBhcmF0ZSB0aGFu
IHRvIHRyeQ0KPiB0byByZXVzZSB0aGVzZSBzbWFsbCBwaWVjZXMgb2YgY29kZSwgd2hpY2ggd291
bGQgbWFrZSBpdCBhIGJpdCBoYXJkZXIgdG8gcmVhZC4NCj4gDQo+IE1ha2VzIHNlbnNlPw0KDQpH
b29kIHdpdGggaXQNCg0KUmV2aWV3ZWQtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxA
aW50ZWwuY29tPg0KPiANCj4gWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVj
dC9pbnRlbC0NCj4gZ2Z4L3BhdGNoLzIwMjMwODIzMTcwNzQwLjExODAyMTItMjgtbHVjYXMuZGVt
YXJjaGlAaW50ZWwuY29tLw0KPiANCj4gLS0NCj4gQ2hlZXJzLA0KPiBMdWNhLg0K
