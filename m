Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB93D4F1019
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Apr 2022 09:41:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F06C210E802;
	Mon,  4 Apr 2022 07:41:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC55D10E802
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Apr 2022 07:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649058070; x=1680594070;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=YEya2iyxZaF3vwtKzASehi4i2o0F6zgI2Q0VTmZUv7M=;
 b=HG6lY05hl+yadosw7XsCEIcoXUx8P4fcaZXOpLe6pqZLW1nSmZ4CtJ7q
 heLCcI0lYuHtz15BF6YdN0JMFzbJ1SfnS12xa2L/WtSNxcvpKDoLH5TPm
 V1uxyIiv9xQEKeFaIEDsd+Mf+J44J7HZbaxTsqxTQ2Jq4E8201iEsR/AO
 o2M5lFdWQgUIgrUVnRvwdEmzZfqb+0N69c3KscAWz75BD1nxP4nBxPDRu
 rEE768VAMEdr4S9vOc6BpxFZOm9o88jwCFtZ4i5/zIdOdZdnbRhDrydCD
 7zXmb3sse3bEPyvjeKwj62/wqjsFeZwczrRjLMNy/g/l1FI0hbJNIkyZM Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10306"; a="323632557"
X-IronPort-AV: E=Sophos;i="5.90,233,1643702400"; d="scan'208";a="323632557"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 00:41:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,233,1643702400"; d="scan'208";a="556058245"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga007.fm.intel.com with ESMTP; 04 Apr 2022 00:41:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Apr 2022 00:41:09 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 4 Apr 2022 00:41:09 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 4 Apr 2022 00:41:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ww5TojibJZIouH0B3Sv/eB48QIkBHo7/ZbfhEh2W0yiQzuATU0BoSvnfn7VUUFTTRm6zQQYbm3WvCDBPnrOxATeUNBMPTv6W5xjKqegpMaPGvIhhGEkInGDuOBsvaYrM5hHTaABLMYnYI8jSudSMIAprKa5I8C7C4uOPZE2lO+Y/ZnRzKZ5Y2Q0MhjrlFwURynFeqS276PlAhmlS1jOpHuWX2VkaRLC24rCuGuCWVv2OVe6zYcAbpgv60Jq1kfIsJozDvnMHL6qeN5QjeV+UmITL2zODFMY43CGDRpQzhdJY/uCGqidY2ziSDk5PQ3TmHvOHBa7x0n5IXCol3goQVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YEya2iyxZaF3vwtKzASehi4i2o0F6zgI2Q0VTmZUv7M=;
 b=SYQcyUjk331ieqBJPcXqEVUb6LAkq1m1Kg8kkrIM/ZuTBHDpyksFivgo6glla2LfJPx08xLLxeUXOPR4AB4Wgmr4d8XMq/yZN3meJfZ0IZWTgj2uddSYb2S3YSlxrv0b+ho+I50x3z1bk9p1DbDf5S28wGPq2pQhmUqoiUFT6cMQWopFEBposI2p6ibJ/B7rBrFEzIkLdgrlzY4t9oendo9CLesatgooU/pCmFpR0g9oSwqMleNGjnGrCpbIcTfcglLzJhs5zREiZvQZypr0nrfbc8CfZctn2xfrB/0z2O/1APLVr3NklpixDeRSO6PL2z6IvUXXHg2p1p+oH/VfMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MWHPR11MB1437.namprd11.prod.outlook.com (2603:10b6:301:a::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5123.31; Mon, 4 Apr 2022 07:41:06 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ac5e:2fe2:3bc6:fe36]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ac5e:2fe2:3bc6:fe36%7]) with mapi id 15.20.5123.031; Mon, 4 Apr 2022
 07:41:06 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 2/3] drm/i915/display/psr: Lock and unlock PSR around
 pipe updates
Thread-Index: AQHYRhfCFfDBnjs4mUut6Tzex+ah96zfYn6A
Date: Mon, 4 Apr 2022 07:41:06 +0000
Message-ID: <ee0acc0550e9069967c53e67d42216e941fca8c2.camel@intel.com>
References: <20220401222911.199284-1-jose.souza@intel.com>
 <20220401222911.199284-2-jose.souza@intel.com>
In-Reply-To: <20220401222911.199284-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9ea34a84-c94f-440d-0fb2-08da160e7a8e
x-ms-traffictypediagnostic: MWHPR11MB1437:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MWHPR11MB14379CE9C1DFF30DF4A069908AE59@MWHPR11MB1437.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JH2xgTJmKAn1Rrt/qGqfQjhFzfXTemlbQxvXJSI/b0HWD8dDb/WL7oYrR4XHmgb5XnkqiTZHnl4xtc8dnVHRMBFkFbSaAfOcaE6PdzcI5clQZqvsMPyZF1osb6H/mnfXlJoiz1FKNuC4NTc3RNWTfZSsYqsPSzE4uPcQbBps4zrlAyO+6vZcepV+z2kC1oKOxZWpFYxADnhRXZ1ZGF0IXFGC/6dDyvu4paGBRdOl0Soav3L9MQ/KGjyy2OCd2MfaL5NEdE23/5+82phzLGocXI5Pjo0NzUCAD9Gaky42mjeMwx4jKtRDdD/oKGZwGrMitBGQlFUnNW7kE0db1UvGtvvxcFrHGi6Y0ZDk3oDA/oMQoD1ndVtyt/fdq2h3VbVX83JxD5BAyetBpWIyrkHUDH3ERa0Sf2TXeV/GOiLAJTThKY4uN8v0o0txfDG0uoQDPhR8DwQ8/RLYNlNRq17L+0WuDmQJJDOdYh/UC4gBdJcHFMDZswhoboI+Zw5lbTZIHBNOsOTsKQpmdzKg6Isd5yYzbodvqEBZK5KAsuEBinF6xmXdwbN0r2V2MqcNo5JpoJJnbUnI1M0+5FjqyBeLDKzZZKgwsFVjM0tie02P2LeyrVoQksabjr4PokqusHp4KUWI2VuxjAV18WX5qtvaGu5H6FhPeTTKykt2ndREmJdiTJEQJv+/H+jOuLsUOKUXbZmGzu8R6eVgDQApEf7e9A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(15650500001)(6512007)(2906002)(76116006)(66476007)(66946007)(66556008)(64756008)(66446008)(86362001)(186003)(5660300002)(4326008)(6486002)(8676002)(6506007)(91956017)(83380400001)(508600001)(8936002)(107886003)(122000001)(38070700005)(36756003)(82960400001)(6636002)(2616005)(66574015)(71200400001)(38100700002)(316002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eFYwMlAvK05tMTlpL1hmMnBreTdyWWlqaDhnTncxNkhnWVVIeWErZDRQeElx?=
 =?utf-8?B?MUFPei9Ray9TQlZoYld3ZXdIMHFGMDdJbEFmOEpjN0h0SDFkb1VsQzZSYUE1?=
 =?utf-8?B?MlZtYnBsMUJjYVlMenFoM0JmMDVGamdPSGhGQTZaS0x1ODZkRW9WRGloZFdm?=
 =?utf-8?B?UFVRd1FxNU5RSVdVUjQ1MDU5VldIRDdwbFB0emFENTd0c2pJVmJuL3lId1Va?=
 =?utf-8?B?YVNDUWw4M201aHpwcmxGVzVKaEhWVWwyTys4VVI2cmxYdEF4cTZEMXZSVzAz?=
 =?utf-8?B?bWQxdFhsazlRYkQxSlNaWFh3OTFNYy96LzdMSkc4M25Xa3pVbmNtaWdFelZp?=
 =?utf-8?B?NE5mNTZ5a0dza3NWZkR4aTJUQWtsbUJTZjJzQUxtL0Q1NkJuUldZMGJsUjVw?=
 =?utf-8?B?OEdOUE55ZnUyaU5WUXZlL1ZkTFB4NFl3LzdVeUdSR0tSSzBoVlBicktxWlBO?=
 =?utf-8?B?ci95MVpmRlF4ck9id0VkR2p2c2lFTHV6WmVtTHhCaWtYL3ZFanV4YTlMdUYx?=
 =?utf-8?B?VkU3RWM4S3RSS1czcWNuSXNYK1ovN1ErVmhKUEw1ZXRIZnl6c2tyZ1FiWjdP?=
 =?utf-8?B?ZC80MEVvSGh0SVBxc01WWjRYNFpwbE1WWW4xU1VMbG5CSEpQT0xSSnFjMzQ4?=
 =?utf-8?B?WVlzaStyZlFVTWQ3QzJBeHIyZDBucmQ4SjIwZ3VoUmVIdFU1ek9mZHM0U3g1?=
 =?utf-8?B?TUdXWVU3cFlPcXcrZk1XaXdlMVVOcGtScmJsM00wQisvVk5lZ2sxcnJTSkE4?=
 =?utf-8?B?bFB6a2JWQnUyNDVWTEpJK1dhMkdEVFMxOTFiMmZ0UW9KS0xrUUdRUHpVYjlt?=
 =?utf-8?B?b3JhUkkxVENxcHZoTFk1Sk1JUllwR21lUXdLdlVYbkN3Z1JqRmwzUW5oWlhP?=
 =?utf-8?B?WWYvQmFFVGxxNERQV0NGcVBwVUVudUl4MnRuNDF0QzNudDR5azFITDE1Qk9X?=
 =?utf-8?B?ekhyWmFieXZtU0RtNVFnck5KQkxTaHdUTkN4dFJGZ1B2SVlGci8wTEc2SnNN?=
 =?utf-8?B?RWRyR2xiRGxYL1NaQ3BnWVlzbXlHL1Fob0JVQjdBY2tKd1pKV2RKVkliUkZv?=
 =?utf-8?B?RVB0aUE4ZG50YVM0NDh5aDFBbGZwYitwMUtPZy92UVFnTDdRYlkvcHhHS2hn?=
 =?utf-8?B?dFphRnU3bS9xM0w5YVBXNERQN2ZNZ0xWbllISVhaaFNpclQ3ekZqNXZISHFM?=
 =?utf-8?B?a1lQZTFhZzdYUHlwMjQweElMUHRIc2dYVExORWhkWDVNQlJQbW9ZRERDQjUx?=
 =?utf-8?B?MS9kRit1N3RwWWJvdlNTc3FVbVFKMXFsNWhqMW5WNTF3QkJKWjlpRXZmNTky?=
 =?utf-8?B?NUphK29YRTNjRGN1amN6VHhMTWdObkMyNzB5eFpFVnFmeS9pWm1MbTBvSkhJ?=
 =?utf-8?B?S1UxaUhob2NmSU1MaE1Tb0N0VEZaUFlMc2czQnZFT04rbEdnSGZvdFhpNzM2?=
 =?utf-8?B?ZEJialhGQmpQUGt1emdTMEtlRlhVRkp0UnROaDRXZGd1cWRTNXMxWmdFc09l?=
 =?utf-8?B?M0k0cGxOdmxXNnlJTllpNjVxWmNTbjJWMElYWThRUXh3U1JLL0ErRGZoeTh4?=
 =?utf-8?B?Z2Q2RHhad1RldVFqenRzMGNsa0dYRWc3ZzU0R1N1NlI0VFFJbzhtSmliaUNp?=
 =?utf-8?B?N29uanlnOFBvMTREZ2FRZDJnOGZZaUJoM2JlakpmTnFUdEVPdDVyMVNpdXRl?=
 =?utf-8?B?TzduNEVkSjVqYjJqWDM2RW1FWHFIdlJMVGRha0E2VjRzSkhuNThTdGU3YnhE?=
 =?utf-8?B?NTM3ckU4bzJpNENZazhkQ1ZGTVE4Q21JWTF6bTdBNlpWVHhPdnZtZXMxRzNL?=
 =?utf-8?B?b0NnSjVVTkhBUTlzK2xYVTZYU1ZicUxVdXRpTFNERnBkejV6NW5yNmFvb3Ba?=
 =?utf-8?B?V0UydjhWWXlIckVKVlVnbDZHUHlVMXNzZzFUMGdSaUdGTDJFWC9CTUJvZEQ4?=
 =?utf-8?B?Qjdtd2Vpby80M3NhNXJzZ2NHUWorTDVaZVRIb1REWlM0ei9MSGlleGplanQ2?=
 =?utf-8?B?Yjl2QWZ5RkRNUEh2TmJKdXV3SHFRWForQXcxU3RsTVAwMUN0UnpLUWJlenYz?=
 =?utf-8?B?Q1M3NGx3eTZOSU9wdmFyNE5ENDFlYk5mWXdUek53bkVFTGN1NWZEcFNYWURl?=
 =?utf-8?B?QU5zSEhncjFFR21kNUdyWTJNSU1hVkZxQW5zc2FBNXh0TFppYTAyeEhkYUp3?=
 =?utf-8?B?SzlqcnUzUEVmTkJhdWNQbElHWXd1R0JpQTVYZU00VHpmRmM5TnNWc3FZRWdv?=
 =?utf-8?B?KzFLcWJHZVBvVDBzYjZZUUlVZVo4Wm54R2llL3YxNmQwNHRpVFh2NW1mYlQz?=
 =?utf-8?B?WFc3L3FQbm5VdklaZWhZQXFMZzViMzJ0Q1FNUnBQYllla2h1b29zZVY4Zndz?=
 =?utf-8?Q?s5vvHZknQvSLw62OchynHlVIOQJ46Wx/O48dkuJJKoELs?=
x-ms-exchange-antispam-messagedata-1: i2AiCTaddM3uqnaI8zP8+uaSBWu5+9Wk98o=
Content-Type: text/plain; charset="utf-8"
Content-ID: <902AEAE9F2D4474181A4677100604D7C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ea34a84-c94f-440d-0fb2-08da160e7a8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2022 07:41:06.6892 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dF3bqRWN5A4XOIoaBCt3WEsZlFVMrGSYhBYoD8YANkfRpVJ6VD3X/wO+LhcO5pGd5Pm/SWvcyWAOcBRi0gb4syF3I4ehnb+P/M3lnivMqJY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1437
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display/psr: Lock and unlock
 PSR around pipe updates
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

SGVsbG8sDQoNCkNvdXBsZSBvZiBxdWVzdGlvbnMgYmVsb3cuDQpPbiBGcmksIDIwMjItMDQtMDEg
YXQgMTU6MjkgLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3JvdGU6DQo+IEZyb250YnVm
ZmVyIHJlbmRlcmluZyBhbmQgcGFnZSBmbGlwcyBjYW4gcmFjZSB3aXRoIGVhY2ggb3RoZXINCj4g
YW5kIHRoaXMgY2FuIHBvdGVudGlhbHkgY2F1c2UgaXNzdWVzIHdpdGggUFNSMiBzZWxlY3RpdmUg
ZmV0Y2guDQo+IA0KPiBBbmQgYmVjYXVzZSBwaXBlL2NydGMgdXBkYXRlcyBhcmUgdGltZSBzZW50
aXZlIHdlIGNhbid0IGdyYWIgdGhlDQo+IFBTUiBsb2NrIGFmdGVyIGludGVsX3BpcGVfdXBkYXRl
X3N0YXJ0KCkgYW5kIGJlZm9yZQ0KPiBpbnRlbF9waXBlX3VwZGF0ZV9lbmQoKS4NCj4gDQo+IFNv
IGhlcmUgYWRkaW5nIHRoZSBsb2NrIGFuZCB1bmxvY2sgZnVuY3Rpb25zIGFuZCBjYWxscywgdGhl
DQo+IHByb3BlciBQU1IyIHNlbGVjdGl2ZSBmZXRjaCBoYW5kbGluZyB3aWxsIGNvbWUgaW4gYSBz
ZXBhcmF0ZWQgcGF0Y2guDQo+IA0KDQpIYXZlIHlvdSBlbnN1cmVkIHRoYXQgdGhlcmUgaXMgbm8g
Y2FzZSB3aGVyZSBwaXBlX3VwZGF0ZV9lbmQgaXMgbm90DQpjYWxsZWQ/DQoNCldoeSBkaWQgeW91
IGNob29zZSB0byBhZGQgbmV3IGhvb2tzIGluc3RlYWQgb2YgdXNpbmcgZXhpc3RpbmcNCmludGVs
X3Bzcl9wcmVfcGxhbmVfdXBkYXRlIGFuZCBpbnRlbF9wc3JfcG9zdF9wbGFuZV91cGRhdGU/DQog
DQo+IENjOiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gQ2M6
IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jIHwgIDYgKy0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgIHwgNjkgKysrKysrKysrKysrKysr
KysrKystDQo+IC0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5o
ICB8ICA1ICstDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDcwIGluc2VydGlvbnMoKyksIDEwIGRlbGV0
aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY3J0Yy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRj
LmMNCj4gaW5kZXggZjY1NWMxNjIyODc3Ni4uYTU0MzkxODJkNWFlNCAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMNCj4gQEAgLTUwNyw2ICs1MDcsOCBA
QCB2b2lkIGludGVsX3BpcGVfdXBkYXRlX3N0YXJ0KHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRl
ICpuZXdfY3J0Y19zdGF0ZSkNCj4gIAkJCQkJCSAgICAgIFZCTEFOS19FVkFTSU9OX1RJDQo+IE1F
X1VTKTsNCj4gIAltYXggPSB2Ymxhbmtfc3RhcnQgLSAxOw0KPiAgDQo+ICsJaW50ZWxfcHNyX2xv
Y2sobmV3X2NydGNfc3RhdGUpOw0KPiArDQo+ICAJaWYgKG1pbiA8PSAwIHx8IG1heCA8PSAwKQ0K
PiAgCQlnb3RvIGlycV9kaXNhYmxlOw0KPiAgDQo+IEBAIC01MTgsNyArNTIwLDcgQEAgdm9pZCBp
bnRlbF9waXBlX3VwZGF0ZV9zdGFydChzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2Ny
dGNfc3RhdGUpDQo+ICAJICogVkJMIGludGVycnVwdHMgd2lsbCBzdGFydCB0aGUgUFNSIGV4aXQg
YW5kIHByZXZlbnQgYSBQU1INCj4gIAkgKiByZS1lbnRyeSBhcyB3ZWxsLg0KPiAgCSAqLw0KPiAt
CWludGVsX3Bzcl93YWl0X2Zvcl9pZGxlKG5ld19jcnRjX3N0YXRlKTsNCj4gKwlpbnRlbF9wc3Jf
d2FpdF9mb3JfaWRsZV9sb2NrZWQobmV3X2NydGNfc3RhdGUpOw0KPiAgDQo+ICAJbG9jYWxfaXJx
X2Rpc2FibGUoKTsNCj4gIA0KPiBAQCAtNjgzLDYgKzY4NSw4IEBAIHZvaWQgaW50ZWxfcGlwZV91
cGRhdGVfZW5kKHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkNCj4g
IA0KPiAgCWxvY2FsX2lycV9lbmFibGUoKTsNCj4gIA0KPiArCWludGVsX3Bzcl91bmxvY2sobmV3
X2NydGNfc3RhdGUpOw0KPiArDQo+ICAJaWYgKGludGVsX3ZncHVfYWN0aXZlKGRldl9wcml2KSkN
Cj4gIAkJcmV0dXJuOw0KPiAgDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiBpbmRleCAyZGEyNDY4ZjU1NWVjLi41ODU5NzQ4MDA1NGViIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTE1NDgsMTAgKzE1
NDgsMTkgQEAgdm9pZA0KPiBpbnRlbF9wc3IyX3Byb2dyYW1fcGxhbmVfc2VsX2ZldGNoKHN0cnVj
dCBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+ICB2b2lkIGludGVsX3BzcjJfcHJvZ3JhbV90cmFuc19t
YW5fdHJrX2N0bChjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkN
Cj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNy
dGNfc3RhdGUtDQo+ID51YXBpLmNydGMtPmRldik7DQo+ICsJc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXI7DQo+ICANCj4gIAlpZiAoIWNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3NlbF9mZXRj
aCkNCj4gIAkJcmV0dXJuOw0KPiAgDQo+ICsJZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl9tYXNrX3dp
dGhfcHNyKCZkZXZfcHJpdi0+ZHJtLCBlbmNvZGVyLA0KPiArCQkJCQkgICAgIGNydGNfc3RhdGUt
DQo+ID51YXBpLmVuY29kZXJfbWFzaykgew0KPiArCQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
ID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0KPiArDQo+ICsJCWxvY2tkZXBfYXNzZXJ0X2hl
bGQoJmludGVsX2RwLT5wc3IubG9jayk7DQo+ICsJCWJyZWFrOw0KPiArCX0NCj4gKw0KPiAgCWlu
dGVsX2RlX3dyaXRlKGRldl9wcml2LCBQU1IyX01BTl9UUktfQ1RMKGNydGNfc3RhdGUtDQo+ID5j
cHVfdHJhbnNjb2RlciksDQo+ICAJCSAgICAgICBjcnRjX3N0YXRlLT5wc3IyX21hbl90cmFja19j
dGwpOw0KPiAgfQ0KPiBAQCAtMTkxOSwxMyArMTkyOCwxMyBAQCBzdGF0aWMgaW50DQo+IF9wc3Ix
X3JlYWR5X2Zvcl9waXBlX3VwZGF0ZV9sb2NrZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkN
Cj4gIH0NCj4gIA0KPiAgLyoqDQo+IC0gKiBpbnRlbF9wc3Jfd2FpdF9mb3JfaWRsZSAtIHdhaXQg
Zm9yIFBTUiBiZSByZWFkeSBmb3IgYSBwaXBlIHVwZGF0ZQ0KPiArICogaW50ZWxfcHNyX3dhaXRf
Zm9yX2lkbGVfbG9ja2VkIC0gd2FpdCBmb3IgUFNSIGJlIHJlYWR5IGZvciBhIHBpcGUNCj4gdXBk
YXRlDQo+ICAgKiBAbmV3X2NydGNfc3RhdGU6IG5ldyBDUlRDIHN0YXRlDQo+ICAgKg0KPiAgICog
VGhpcyBmdW5jdGlvbiBpcyBleHBlY3RlZCB0byBiZSBjYWxsZWQgZnJvbSBwaXBlX3VwZGF0ZV9z
dGFydCgpDQo+IHdoZXJlIGl0IGlzDQo+ICAgKiBub3QgZXhwZWN0ZWQgdG8gcmFjZSB3aXRoIFBT
UiBlbmFibGUgb3IgZGlzYWJsZS4NCj4gICAqLw0KPiAtdm9pZCBpbnRlbF9wc3Jfd2FpdF9mb3Jf
aWRsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqbmV3X2NydGNfc3RhdGUpDQo+
ICt2b2lkIGludGVsX3Bzcl93YWl0X2Zvcl9pZGxlX2xvY2tlZChjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZQ0KPiAqbmV3X2NydGNfc3RhdGUpDQo+ICB7DQo+ICAJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShuZXdfY3J0Y19zdGF0ZS0NCj4gPnVhcGkuY3J0
Yy0+ZGV2KTsNCj4gIAlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4gQEAgLTE5Mzgs
MTIgKzE5NDcsMTAgQEAgdm9pZCBpbnRlbF9wc3Jfd2FpdF9mb3JfaWRsZShjb25zdCBzdHJ1Y3QN
Cj4gaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpDQo+ICAJCXN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7DQo+ICAJCWludCByZXQ7DQo+
ICANCj4gLQkJbXV0ZXhfbG9jaygmaW50ZWxfZHAtPnBzci5sb2NrKTsNCj4gKwkJbG9ja2RlcF9h
c3NlcnRfaGVsZCgmaW50ZWxfZHAtPnBzci5sb2NrKTsNCj4gIA0KPiAtCQlpZiAoIWludGVsX2Rw
LT5wc3IuZW5hYmxlZCkgew0KPiAtCQkJbXV0ZXhfdW5sb2NrKCZpbnRlbF9kcC0+cHNyLmxvY2sp
Ow0KPiArCQlpZiAoIWludGVsX2RwLT5wc3IuZW5hYmxlZCkNCj4gIAkJCWNvbnRpbnVlOw0KPiAt
CQl9DQo+ICANCj4gIAkJaWYgKGludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkKQ0KPiAgCQkJcmV0
ID0NCj4gX3BzcjJfcmVhZHlfZm9yX3BpcGVfdXBkYXRlX2xvY2tlZChpbnRlbF9kcCk7DQo+IEBA
IC0xOTUyLDggKzE5NTksNiBAQCB2b2lkIGludGVsX3Bzcl93YWl0X2Zvcl9pZGxlKGNvbnN0IHN0
cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkNCj4gIA0KPiAgCQlpZiAo
cmV0KQ0KPiAgCQkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwgIlBTUiB3YWl0IHRpbWVkIG91dCwN
Cj4gYXRvbWljIHVwZGF0ZSBtYXkgZmFpbFxuIik7DQo+IC0NCj4gLQkJbXV0ZXhfdW5sb2NrKCZp
bnRlbF9kcC0+cHNyLmxvY2spOw0KPiAgCX0NCj4gIH0NCj4gIA0KPiBAQCAtMjQ0NCwzICsyNDQ5
LDUxIEBAIGJvb2wgaW50ZWxfcHNyX2VuYWJsZWQoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9k
cCkNCj4gIA0KPiAgCXJldHVybiByZXQ7DQo+ICB9DQo+ICsNCj4gKy8qKg0KPiArICogaW50ZWxf
cHNyX2xvY2sgLSBncmFiIHBzci5sb2NrIG11dGV4DQo+ICsgKiBAY3J0Y19zdGF0ZTogdGhlIGNy
dGMgc3RhdGUNCj4gKyAqDQo+ICsgKiBUaGlzIGlzIGluaXRpYWxseSBtZWFudCB0byBiZSB1c2Vk
IGJ5IGFyb3VuZCBDUlRDIHVwZGF0ZSwgd2hlbg0KPiArICogdmJsYW5rIHNlbnNpdGl2ZSByZWdp
c3RlcnMgYXJlIHVwZGF0ZWQgYW5kIHdlIG5lZWQgZ3JhYiB0aGUgbG9jaw0KPiArICogYmVmb3Jl
IGl0IHRvIGF2b2lkIHZibGFuayBldmFzaW9uLg0KPiArICovDQo+ICt2b2lkIGludGVsX3Bzcl9s
b2NrKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiArew0KPiAr
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShjcnRjX3N0YXRlLT51YXBp
LmNydGMtDQo+ID5kZXYpOw0KPiArCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOw0KPiAr
DQo+ICsJaWYgKCFjcnRjX3N0YXRlLT5oYXNfcHNyKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gKwlm
b3JfZWFjaF9pbnRlbF9lbmNvZGVyX21hc2tfd2l0aF9wc3IoJmk5MTUtPmRybSwgZW5jb2RlciwN
Cj4gKwkJCQkJICAgICBjcnRjX3N0YXRlLQ0KPiA+dWFwaS5lbmNvZGVyX21hc2spIHsNCj4gKwkJ
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4g
Kw0KPiArCQltdXRleF9sb2NrKCZpbnRlbF9kcC0+cHNyLmxvY2spOw0KPiArCQlicmVhazsNCj4g
Kwl9DQo+ICt9DQo+ICsNCj4gKy8qKg0KPiArICogaW50ZWxfcHNyX2xvY2sgLSBncmFiIHBzci5s
b2NrIG11dGV4DQo+ICsgKiBAY3J0Y19zdGF0ZTogdGhlIGNydGMgc3RhdGUNCj4gKyAqDQo+ICsg
KiBSZWxlYXNlIHRoZSBQU1IgbG9jayB0aGF0IHdhcyBoZWxkIGR1cmluZyBwaXBlIHVwZGF0ZS4N
Cj4gKyAqLw0KPiArdm9pZCBpbnRlbF9wc3JfdW5sb2NrKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQ0KPiArew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1ID0gdG9faTkxNShjcnRjX3N0YXRlLT51YXBpLmNydGMtDQo+ID5kZXYpOw0KPiArCXN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOw0KPiArDQo+ICsJaWYgKCFjcnRjX3N0YXRlLT5oYXNf
cHNyKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gKwlmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX21hc2tf
d2l0aF9wc3IoJmk5MTUtPmRybSwgZW5jb2RlciwNCj4gKwkJCQkJICAgICBjcnRjX3N0YXRlLQ0K
PiA+dWFwaS5lbmNvZGVyX21hc2spIHsNCj4gKwkJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9
IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gKw0KPiArCQltdXRleF91bmxvY2soJmludGVs
X2RwLT5wc3IubG9jayk7DQo+ICsJCWJyZWFrOw0KPiArCX0NCj4gK30NCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+IGluZGV4IGY2NTI2ZDljY2ZkYzYuLjJh
YzNhNDZjY2NjNTAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuaA0KPiBAQCAtNDEsNyArNDEsNyBAQCB2b2lkIGludGVsX3Bzcl9nZXRfY29uZmlnKHN0cnVj
dCBpbnRlbF9lbmNvZGVyDQo+ICplbmNvZGVyLA0KPiAgCQkJICBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqcGlwZV9jb25maWcpOw0KPiAgdm9pZCBpbnRlbF9wc3JfaXJxX2hhbmRsZXIoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwgdTMyIHBzcl9paXIpOw0KPiAgdm9pZCBpbnRlbF9wc3Jfc2hv
cnRfcHVsc2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+IC12b2lkIGludGVsX3Bzcl93
YWl0X2Zvcl9pZGxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpuZXdfY3J0Y19z
dGF0ZSk7DQo+ICt2b2lkIGludGVsX3Bzcl93YWl0X2Zvcl9pZGxlX2xvY2tlZChjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqbmV3X2NydGNfc3RhdGUpOw0KPiAgYm9vbCBpbnRlbF9w
c3JfZW5hYmxlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gIGludCBpbnRlbF9wc3Iy
X3NlbF9mZXRjaF91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJ
CQkJc3RydWN0IGludGVsX2NydGMgKmNydGMpOw0KPiBAQCAtNTUsNCArNTUsNyBAQCB2b2lkIGlu
dGVsX3BzcjJfZGlzYWJsZV9wbGFuZV9zZWxfZmV0Y2goc3RydWN0DQo+IGludGVsX3BsYW5lICpw
bGFuZSwNCj4gIHZvaWQgaW50ZWxfcHNyX3BhdXNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
Ow0KPiAgdm9pZCBpbnRlbF9wc3JfcmVzdW1lKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0K
PiAgDQo+ICt2b2lkIGludGVsX3Bzcl9sb2NrKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKTsNCj4gK3ZvaWQgaW50ZWxfcHNyX3VubG9jayhjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+ICsNCj4gICNlbmRpZiAvKiBfX0lOVEVMX1BT
Ul9IX18gKi8NCg0K
