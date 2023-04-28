Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1236F16AF
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 13:29:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED5DA10E11B;
	Fri, 28 Apr 2023 11:29:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FB3010E11B
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 11:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682681369; x=1714217369;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=QUJEY21IIdNPYQghyql8V+2WqhGEpxMx3ScUXUS0IrM=;
 b=kQo7B94givso7Yvyxd47nS17EXxx22wOBsCtbLf1e00lcm5lCVmd3/rX
 p68YIqtEbioM5WAeNPnPqGmZCMC7/wz5UqSEK/ZRFwNyL5arNegqoBiiB
 rfUbt+UgJ9Q7e9usSOr0rx4q2MnaRshLzO6QYS9/8/D2e79QqWHLYVXZS
 Ngf9tQJKA5Zp5SOhfoMY+Lu/1+zA7HL9NP7VXYT8FDcKqi9n39kja9jZ0
 /mV4g18NDLUohowbuPqpp9N6Cxft8Wq7+N0ST+39m0B+IEcCDEsG1JAvB
 3tFprTGkawhZxImxNGZZsEkcIJszfoe5s7eL/tMC0A/PYrjKAPttBMy/O w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="327347919"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="327347919"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 04:29:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="806361209"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="806361209"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 28 Apr 2023 04:29:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 28 Apr 2023 04:29:28 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 28 Apr 2023 04:29:28 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 28 Apr 2023 04:29:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BBBwSNSRwzc4DbRIpw29WC/Ka1fHp7BReASnHjIZUnkPH+lLshobJP/pmv/m4UwRiH4XPgmLyRfdwZBesvQ+iUDOfcCaJxVHg0fHXqVMQVPcIBBKW3Ox085LT8HGXmKKK3HTiINzElN/SvL0Wi75WiygxdiIEcZQEGP6Qf+v53nlEeHFeANjX/mv2dUlU91xK+slplvm/JYZ4etqRWHlODkwiGJza/FeGiFTbfK5A0c+xB4QYZG3K3WO5TdpxC0KVb8r4Ht0WfB30BV2QW3GBUAk0O0WgoWDoAF3sY3lBuEcu2zSf33CC3fepen6i91o5CBPu5Ad1LWwAXLyo5N4mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QUJEY21IIdNPYQghyql8V+2WqhGEpxMx3ScUXUS0IrM=;
 b=Ljy2DPqgiIb2XO+VE3ZOszSqvLWjtPgG41ar3Jy+gEJ8mZJDQsxlix7ejaEr7s+uBiGPKpcxrPGsNGlt/bA5jJBM5dUa5wepBFOIcSCT6Y/MWbYkdchA/K2B2dcF6MOrDtSXuqVRwEOYWUXeihDwsl+1eS7vRngMf5XyGbYyKB9nSCWTEJwEDfk9RH7MT0Y8a4fl1YI7izA5cavUnyBbcWeSmbaN6h5wNxenDHX+QsFqs9na33YbIFFZ7v5RIxvXPUAhSTvt+HFXpTN4I7bfGxrV0LuVBC5L2WiOW7QSgQGxvdqy0kv4zg4TfC/kwUkxNsRzWyQasa7m4RIvKqwCZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.22; Fri, 28 Apr
 2023 11:29:22 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97%9]) with mapi id 15.20.6340.022; Fri, 28 Apr 2023
 11:29:22 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 08/13] drm/i915/psr: Implement
 WaPsrDPAMaskVBlankInSRD:hsw
Thread-Index: AQHZdEldGAqspbG0nEW5gugvlwej6q9AkfGAgAAFQgCAAAmTAA==
Date: Fri, 28 Apr 2023 11:29:21 +0000
Message-ID: <e25fd258879b5cf6b5d4d53e64ec5f0685a60d5d.camel@intel.com>
References: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
 <20230421120307.24793-9-ville.syrjala@linux.intel.com>
 <6e7980c273586069e0f70de1c9b70cc061b47539.camel@intel.com>
 <ZEumCGCTAQnoRF8A@intel.com>
In-Reply-To: <ZEumCGCTAQnoRF8A@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB7636:EE_
x-ms-office365-filtering-correlation-id: 3967ee0e-3d7b-4f3d-f7f0-08db47dbd037
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QVpzuM1qKvIqyHw9kzfVp7KQRKCTCh4fPqFP7K3lc3oAoJqBLVPkJXSMKUOzmbx5rSoytD3FriC5wFzeTwtZirDZp400pBCzlojO+LsK6ojJkzMaa31zES5RVJtZxxT9gHbGdDVorhQeHGChQo1bRUNGYQKkuGpLQfZHfqH6teXTMx3+MkXLpAoK+3r66D57oLmvCSuyVbWp6TfDQJLuaUawk6x8H1m9IptSbCO0BclckTHmbFPG3wnPpZZobKylaMHAj06QuU/XlW7O2wksYIYGekIIsRWOxac0St3+KFIfRzqW1Zt9WMswWrpIbTBiJw5VNWmk9NFBt9ZIwBcgBYHsfbZz21iRKMvSljt2hLKzXb5TTwNdr4ohZJNFWq+kycqn7tot4XvX0Qi+zsLFLBShAhFS57H8qWaQo4I94AQ9YryiY9HNHar5D2RFMNewh4m9Mx3YcOmKl1dEqo4HtZ7fTLowGKLXTfrKiSa8wYG5PS0DNq1VYJ8C7PmGkIjn3W8Lb0nCSYEhpv4voXymkbqO9ANcPYFlxf/taX/wtFY2vjOe2pKKqZqHd9Yx5WX0Egfzov3pf7Kb2fwfTBiY4OhRhgcS7TWDG10OPNmYHZye2VAKb/TWRSVgK1rUesVW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(6029001)(136003)(396003)(346002)(366004)(376002)(39860400002)(451199021)(4326008)(38100700002)(91956017)(122000001)(5660300002)(66574015)(66946007)(76116006)(66476007)(66556008)(6916009)(2616005)(316002)(66446008)(64756008)(8936002)(83380400001)(41300700001)(8676002)(71200400001)(38070700005)(6486002)(36756003)(186003)(6512007)(26005)(6506007)(478600001)(2906002)(86362001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dmUrYitoT2xOelJUV0NVYVl3MktLS3RTd29HYlpSbk9udTU5TVZNZlRscmNP?=
 =?utf-8?B?SkVhZFV2bWZlZGxmdEc3RWNIVjc1SCsxYlIwNHJUakwyMXNHbEhGUTNGdDVJ?=
 =?utf-8?B?VTE0a05GWGx1Q2VlcXhRWWFWeWlhcWdWSHhUSG5OcHJ6c0k5TERBTG5SZWwx?=
 =?utf-8?B?VjBpSXZpbXZKUHd3aG1NVUMzYnZYTEV0S0NUZWNNcStaRVBoby9jYTdUVDJm?=
 =?utf-8?B?aW9udHJTaG9PYnRXRlk4WWozaFlKQm9ZMGYrNExzaCtjcmpiTHMyZ2N1SmxX?=
 =?utf-8?B?L0VvZ1F3Rk9BV083anlpNG11dGZzREdwV0ZxQVJLS0s3VkZoVWU2U2prbmM2?=
 =?utf-8?B?Q1VmMEpZdG91aUJTRFhSNjY0Nkoxay9qMmdxOENpM3BEM3VTUVA2VVUzaVBQ?=
 =?utf-8?B?SStNOEFtQllkTm5DakV1MUNmYjFlSURJdWVyS3NlaTd5enV3dysvdVpoeGQr?=
 =?utf-8?B?RG8wRHVFRlJYNXloZU83R1RySkxRR3VFUkJ0dVk3QnhNT0hsMmo0d0xBU2dO?=
 =?utf-8?B?cW1xWUNvTnZyZjQ3a3Y4NlJZZkhKTGVpbnhRR3lTQmhraC9ncnJJQXoxV1lW?=
 =?utf-8?B?bk14QjBza3pwYlM2QmJwTWhpOGhMOEpsUHVzc2pjZDJoQVNsQVZQUWVvSmRL?=
 =?utf-8?B?TEY3UmQvOEs2Q1JwL0dkWTdpT3o2cytMU3NXWGp0M0p6Ty9OYkM2cGZpQ3Zx?=
 =?utf-8?B?OERSMXh5L2hlc243SnNUMmZQT3QxUmUxNThYWkZMb095MHFNZmhyTzRoM215?=
 =?utf-8?B?Uit5RmFwM092a1ZuRXVOMjZqNkhTeDNhWmlqSkl2VU5pTmR4c3NxbGV0bmkw?=
 =?utf-8?B?SkFiWnd1UTh2dGw4UFUyNFJ1TXBxQVFCZURCUGNXTTJHL0VDWmRMQ2lxaUF3?=
 =?utf-8?B?Rjc5R3JLVzVKcHhIVUhydWRwTzNZR1cyeUZwVHNTcVMxRUord1ExbVNLeVE1?=
 =?utf-8?B?SStFREZuekErRlczRzdoV0xrTTk5b0J1b2g2emlGem96dEVIRGpQcUh1VVlq?=
 =?utf-8?B?dzY5eFJoQTNuUHoxcXZhNVRXTmVTL0RuRVRXRmsyak5vcW9xVHVYdk1TV3p1?=
 =?utf-8?B?Y01saUFPNlc1ZDdtcHFRT2tCWXRHYkdsemJoaVgxNzUzdEsvYzhUaFdzVUwv?=
 =?utf-8?B?S3F2Q3M4Q25PQUVjR2N1YzBOYmU1VWtXemlpQnZ6aUUyWWpBb1psNGQ0OFYy?=
 =?utf-8?B?UXdkamVLUGVFMXFYMEEwQXlpbWE4Y21rZlVGODFNcGNkT05VSFFqNnRuTjBT?=
 =?utf-8?B?MWQwbGF0ZmVuY1U4QjQ5ODNqek52cE5veUdVR2RJVUdkcy9kSW9PaVdsYkRa?=
 =?utf-8?B?YStlelNUemNkSEtRTmNrQUIvQ1krUis3L0tzTS92NGVlY1RENE16VlNRM3Jp?=
 =?utf-8?B?UitHakhnUThzZnd5UVJCRjJvL2Y0cmZEVGR4UVlEQlAvUkN2ODN6cTd1OTg0?=
 =?utf-8?B?STFlbEErY2d0Wm5TaVVYYTRTakUxb2JCU0dqMWNaUVU3SlFzQ01jd21SeVpQ?=
 =?utf-8?B?d2o2VzJSUjQ0dWFKcXNpYklLOXhsZWVtcnNDSFpsZ0daVlZvRkxoZGREcGhO?=
 =?utf-8?B?U3lpZ1RmUlAzeDJUeG0rdXhKbStCY3U5ZEtTVDJhMGZ1dUdTY3ZPNzZlVFJG?=
 =?utf-8?B?aHJUaERSU2RjczVIYzRPUGNEV25halJKR29peEtCd1dRYkhxbm9tMFZhSWd4?=
 =?utf-8?B?bFRMeHRXN2k4YlN0a0xsbnZDV3d2ejBjcHZzSjZ6SlhrWFlIamRYeVM3aTBS?=
 =?utf-8?B?YlZFbjI1MkNsQmJ6QWoxQ1QvU3hwVUhOaENXTXdYc2N5TG9qN3hNQ3JQK3Mx?=
 =?utf-8?B?ZjhKTDRNd09Ncitzcko4aXh3Y2ZYM0NsVUlQYy9EN1JOTHVJN3R3M0pIbU9u?=
 =?utf-8?B?by9QZk40NmdPQUlwSnJ1LzMwY25FeGw1WjB5d3BsTjgrb0JMR3FOVUxEVTZT?=
 =?utf-8?B?a1BBem5SZElyaGxVbFMvcFVZT2xaZGhIUGYyKzFuS292a2J0NTFaZUhZblpT?=
 =?utf-8?B?SXp4Qmw4cSt5Q29NTFp6WmZYL05kNkpqSU1kZ21menlXcjNzTFhRRFdleEdR?=
 =?utf-8?B?T3F3elo1YUd0dmtiVzQ3M1pRU1hxMFByR2RCL2F1UlVzSStvNDB1Z09jNTQr?=
 =?utf-8?B?OFlOOFpCMnplMXlGMUZuaHNXNFZzanVoMmJKcTFrMFJOSkc0VUJCeEtzbThj?=
 =?utf-8?B?MWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B56DA64EB7EAE141914AB233E3414201@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3967ee0e-3d7b-4f3d-f7f0-08db47dbd037
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2023 11:29:21.9569 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L0WO+j4SNzKmHz40C94Cu2u426kKAlyDqY7/C15nGM3aknsX89XIALa25KEg4n7B950n+gxeBqdQ/R8FLpLDS7p4FxhGSFZ2XEkOYgPYukw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7636
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 08/13] drm/i915/psr: Implement
 WaPsrDPAMaskVBlankInSRD:hsw
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIzLTA0LTI4IGF0IDEzOjU1ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgQXByIDI4LCAyMDIzIGF0IDEwOjM2OjE3QU0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBGcmksIDIwMjMtMDQtMjEgYXQgMTU6MDMgKzAzMDAsIFZpbGxl
IFN5cmphbGEgd3JvdGU6DQo+ID4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiA+ID4gDQo+ID4gPiBJbXBsZW1lbnQgV2FQc3JEUEFNYXNr
VkJsYW5rSW5TUkQ6aHN3LCB3aGljaCBtYWtlcyB0aGUgaGFyZHdhcmUNCj4gPiA+IGdlbmVyYXRl
IHRoZSBleHRyYSB2YmxhbmsgYmV0d2VlbiBsaW5rIHRyYWluaW5nIGFuZCBmaXJzdCBmcmFtZQ0K
PiA+ID4gYmVpbmcgdHJhbnNtaXR0ZWQuIFRoaXMgaXMgdGhlIHNhbWUgdGhpbmcgdGhhdCdzIGNv
bnRyb2xsZWQgYnkNCj4gPiA+IFRSQU5TX0NISUNLRU5bMjFdIG9uIHNrbCsgKGJ1dCBkdWUgdG8g
dGhlIGZ1bmt5IGRvdWJsZSBidWZmZXJpbmcNCj4gPiA+IGl0J3MgZWZmZWN0aXZlbHkgYWx3YXlz
IGF0IHRoZSByZXN0IHZhbHVlIGFmdGVyIERDNSBleGl0KS4gU28NCj4gPiA+IGZvciBjb25zaXN0
ZW50IGJlaGF2aW91ciB3ZSB3YW50IGV2ZXJ5IHBsYXRmb3JtIHRvIGdlbmVyYXRlIHNhaWQNCj4g
PiA+IHZibGFuay4gQkRXIGlzIGFscmVhZHkgc2V0dGluZyB0aGlzIHVwIGNvcnJlY3RseS4NCj4g
PiANCj4gPiBJIGNvdWxkbid0IGZpbmQgdGhpcyBmcm9tIEJzcGVjLiBJJ2xsIGd1ZXNzIHlvdSBo
YXZlIHNvbWUgb2ZmbGluZQ0KPiA+IGRvY3VtZW50YXRpb24/IFdhUHNyRFBSU1VubWFza1ZCbGFu
a0luU1JEIHNlZW1zIHRvIGJlIGluIEJzcGVjLg0KPiANCj4gQnNwZWMgaGFzIGxvc3QgdGhlIGh1
bWFuIHJlYWRhYmxlIG5hbWUgYXQgc29tZSBwb2ludC4NCj4gSXQncyBzdGlsbCB0aGVyZSB0aG91
Z2ggYXMgdy9hICMwNTAzLg0KDQpPaywgZm91bmQgaXQgbm93LiBUaGFuayB5b3UgZm9yIHBvaW50
aW5nIGl0IG91dC4NCg0KPiANCj4gPiANCj4gPiA+IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiA+IC0tLQ0K
PiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jbG9ja19nYXRpbmcuYyB8IDMgKysr
DQo+ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCj4gPiA+IA0KPiA+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nsb2NrX2dhdGluZy5jDQo+
ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nsb2NrX2dhdGluZy5jDQo+ID4gPiBp
bmRleCBhMjc2MDBiYzU5NzYuLjk2ODIzMjM1MTBjZCAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nsb2NrX2dhdGluZy5jDQo+ID4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9jbG9ja19nYXRpbmcuYw0KPiA+ID4gQEAgLTU2Miw2ICs1NjIs
OSBAQCBzdGF0aWMgdm9pZCBoc3dfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0DQo+ID4gPiBkcm1f
aTkxNV9wcml2YXRlICppOTE1KQ0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoC8qIFdhRmJjQXN5bmNo
RmxpcERpc2FibGVGYmNRdWV1ZTpoc3csYmR3ICovDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaW50
ZWxfdW5jb3JlX3JtdygmaTkxNS0+dW5jb3JlLCBDSElDS0VOX1BJUEVTTF8xKFBJUEVfQSksDQo+
ID4gPiAwLA0KPiA+ID4gSFNXX0ZCQ1FfRElTKTsNCj4gPiA+IMKgDQo+ID4gPiArwqDCoMKgwqDC
oMKgwqAvKiBXYVBzckRQQU1hc2tWQmxhbmtJblNSRDpoc3cgKi8NCj4gPiA+ICvCoMKgwqDCoMKg
wqDCoGludGVsX3VuY29yZV9ybXcoJmk5MTUtPnVuY29yZSwgQ0hJQ0tFTl9QQVIxXzEsIDAsDQo+
ID4gPiBIU1dfTUFTS19WQkxfVE9fUElQRV9JTl9TUkQpOw0KPiA+ID4gKw0KPiA+ID4gwqDCoMKg
wqDCoMKgwqDCoC8qIFRoaXMgaXMgcmVxdWlyZWQgYnkgV2FDYXRFcnJvclJlamVjdGlvbklzc3Vl
OmhzdyAqLw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGludGVsX3VuY29yZV9ybXcoJmk5MTUtPnVu
Y29yZSwNCj4gPiA+IEdFTjdfU1FfQ0hJQ0tFTl9NQkNVTklUX0NPTkZJRywNCj4gPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwLCBHRU43X1NRX0NI
SUNLRU5fTUJDVU5JVF9TUUlOVE1PQik7DQo+ID4gDQo+ID4gQlIsDQo+ID4gDQo+ID4gSm91bmkg
SMO2Z2FuZGVyDQo+IA0KDQo=
