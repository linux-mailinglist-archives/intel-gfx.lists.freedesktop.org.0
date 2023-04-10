Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 319066DC7FB
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Apr 2023 16:43:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1917D890BB;
	Mon, 10 Apr 2023 14:43:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6710F10E3A0;
 Mon, 10 Apr 2023 14:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681137796; x=1712673796;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Rw+kyScW+Ni7uZRyg0pOfx7zqENWNwYuMnkUbTAyAbI=;
 b=U0GrTrkpXBPcp0Bij18ggk/msPBJs+QZ+OzEu4RSwzpSmTJxdemT8QoI
 nCcsr9UG9zE1XcEhwIClyKitav+UohOGk0REfMFQa3offAmTltcL5dDpa
 7ePWjT0aqbZi9z6xn3wpoCbKwo38r4AlvlOQQKAHeaqoPdNVBIt04cD2v
 LOgN3DAqi9se4r98fbQhuO9gTzl0Enqs0I1WDyc5aNNr9jO6H+msgEk3b
 Q8f3yGx+jSjWsgaTqxA6wWXkndjqdIgPLj0a47j0/v8YzaUBGaZXZ7FSR
 rRpDkT42lC9y9jpKkPBsczWuc7g7Ugi3xXeqTg/55savjPb918ilPu5Sn w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="408501733"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="408501733"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 07:43:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="720840887"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="720840887"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 10 Apr 2023 07:43:15 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 10 Apr 2023 07:43:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 10 Apr 2023 07:43:14 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 10 Apr 2023 07:43:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X/Lw6SGXLgf4ygLSlaNkvIG1r6q9hqTZJSOMXAFS2epNzbxAe4ALysnAfm80kayriebLnjD/2QYlQEANfB6iWHgLBV/ZtzWW/ODwpqOvn+46U/84HDRJJZcBSpEaUrpLLjqFyJ1fdVIzJodNcHVZ+4TgiyimSB6PGSvTC0W+ARppDLkAiEUrkKXl3c5hhI5uE2xP2CsTQnRwUCSIKJq6Yetn/M+2l5n58Et80HP5WkTj6pQPygR2IeIT0sqeK4354V3twvsgPqjY7vh2K4csppTpSB6q7IznHFlf4UMhNg3CRzfF1EapcwqU/pB8k51vmH4TJhKeu/eyuw8EggO4wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rw+kyScW+Ni7uZRyg0pOfx7zqENWNwYuMnkUbTAyAbI=;
 b=LtVCubjVUsPJWteYsm42oy4Mj67Op/LC0Nf6pRG5AoX66XMIivvQNim4JtdN/Priko0tmBj+GFOE+2nSpP1D9oBN4t4RnwPSqfXPkNd3JprYQiaq8cOiLVjcUru0Yfdlac+LuUHdVDhPr0pG6BiFsoZHaFPfJqqaienY6QhO3dULMbtSB7oMGF6xF2GxvgmymkGz/CHUoShXkFW1r3nLcE/jzzZatbpSluXQbpAzcSvnq+wqywMioqiaRflbxgxHKZ62V09JIwLGhH3MwFfreLXQbDCUK/zoNle6CQMBBH9fe/oZbpdlrPiOmCd3kwbvPUyN403Y5Wh2nv5FgyQePg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22)
 by CY8PR11MB7170.namprd11.prod.outlook.com (2603:10b6:930:91::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.36; Mon, 10 Apr
 2023 14:43:12 +0000
Received: from DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::3fa1:b97c:a5bb:651]) by DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::3fa1:b97c:a5bb:651%3]) with mapi id 15.20.6277.038; Mon, 10 Apr 2023
 14:43:12 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-xe] [PATCH v2 rebased 1/6] drm/i915: Nuke unused
 dsparb_lock
Thread-Index: AQHZaJSJyPUGNzzBJ0q3mybu2hQQiq8evkkAgAXmF4A=
Date: Mon, 10 Apr 2023 14:43:12 +0000
Message-ID: <9cdff10d82ca47241257edf8c8443e5368464692.camel@intel.com>
References: <20230406143133.29474-1-jose.souza@intel.com>
 <ZC8tvEoKW425Sbeh@intel.com>
In-Reply-To: <ZC8tvEoKW425Sbeh@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB8179:EE_|CY8PR11MB7170:EE_
x-ms-office365-filtering-correlation-id: b4125098-9e87-4613-8346-08db39d1e8da
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yRwcjeOn7PrQvTLeo4WC+fsOT9ZmWqRLIgWub2Z1Sx0P5rKvgqe7HGWhmSissfjynviPuygPHemSj/XPrTWe7kgHNtUc9tq6p8MkYacT3KOTET8U2/YHfuRop7pS8oQ0sdMNoVposERufGB6JIbq6DAzebvNLBXHfodsVoAph3uiFp6SwjpvXOkNydVe8PTnu6r93jQma18G5dJNrajk1dElAhdzt0lgP5dCueMwt2F9oMI4lSMpG4Pwt4ocS0uF8hmWLkETKuGNWUrjufM/5v7vxwyCrwbBl/9JCzEFjs/zdz/92tEtxVc1t+pK70WNp2BBZrupPN/bTxYNFmevCRR9NnaIG4Le+rk+F+Ur7l6SVnGU4XoTDdEoZvBS1NrliwKsIFIfomYVr8ToWe8NWan3GqCj/y7lgg2lI3DppU7eEPjx875LwlgA9bMqFay+8HN9Wi6/3rFOqVxheSgUma+lgPd43qDXMjM772d1kwRLYigWLTy3bM45Ow/JUva+WiBtBoqCAGjYCfEXu+Aswpp4i00p/d89A7nNuAjsEOHTa9W+KgWigDBpj/P5bRrC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB8179.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(396003)(346002)(366004)(39860400002)(451199021)(478600001)(71200400001)(316002)(54906003)(6636002)(37006003)(6512007)(6506007)(26005)(186003)(966005)(6486002)(450100002)(2906002)(91956017)(5660300002)(4326008)(76116006)(66946007)(41300700001)(66446008)(8936002)(8676002)(6862004)(66476007)(64756008)(66556008)(38100700002)(38070700005)(122000001)(82960400001)(86362001)(36756003)(83380400001)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?czRXRE1JcExKVEpVdnZ2eituc0R1N0FzWjRhOGljSGRVRFBQNkY0aWxXdTYr?=
 =?utf-8?B?MG56SGI5ZDNadUVvTlVVb21VQ1dMOTFDVENCK3ovQ2tFSE9kUWhkV1NQMFFk?=
 =?utf-8?B?aHZGd1MwVUlGa2crUWNreSs5NkVXRXhUbStZYzNOTTRsYmRUSWhtWFlUUnpa?=
 =?utf-8?B?bGFpRFpkRFJjNlBxRi9ud0NJblI3N2grR1JGVnlCN2hYOGY5WDAyNFVWU0JK?=
 =?utf-8?B?cG0yOUdWM1pTbTJLd0J1VjRjaHFjSjhTSlljZ1dsU1hXNnQ1YUp3NVViQ2RT?=
 =?utf-8?B?STVEcjI0ZjJ5OENvbVNlWFZOclVmN1FuZFlVQXpjZnpCWk9UVmJyRU52d1Aw?=
 =?utf-8?B?NktBQTNJUWRqajBubUZ1ZWwvLy9rUCsyR1cxeDRPdDFPWHFDcnJGRm5BVElZ?=
 =?utf-8?B?SjJFdTBNdXZNWElqanMzWGVJakJLUlAzZ2JVMGVaTExEeDdFaktMN0dYQnRw?=
 =?utf-8?B?MDlUQS9XcmNhYmhhZHduZFRpUlY2NWo1MHpiUXhlcWtGQnVvaUlUalo4Rlky?=
 =?utf-8?B?bUZGQWtsSXVBbXdvYW9rS3NmWWFpQ054dnBTdEhYRHoyUjNBKzh6N2pnTnNM?=
 =?utf-8?B?WXZFODNWUkNqODExUTFYTVlwWEtaZkd5aGRRR04wQzF5TkxTVWlVWng2K2kr?=
 =?utf-8?B?OWFta1F0Mld1Z0pNekd0NXM2MHBnbzBYVmw4eUNlaEJIaXk3UFArdG56R2l6?=
 =?utf-8?B?eVl6MmlFU2IrUmxPMTJqZ3VoMlhvYnNjQnRzVHh1anNDYVprSFBpMTY1bVRQ?=
 =?utf-8?B?bVMrOVNXMTdEOEpoSDRuRUhEenlSWFlHUUREVGk2UHBUeVByT21sTm1rczhh?=
 =?utf-8?B?cFhNQnA0ZmYrLzhrUDhEM2tTYkJzWERteWVMc0toWkZTRVZzdHpWSks0aUli?=
 =?utf-8?B?eTU0Q2t4dXpMZ3JGaDl3dmJ1UHhNRFM4OTNVQXFmSjYvZTlVamRlOU4zc1Vp?=
 =?utf-8?B?Z2s1R2c2UzN6TUVORGpkcTM4eWFNU3JQd2VObXlDWkFIQkkwVWlrUWZ4c0F3?=
 =?utf-8?B?QVpyYU1kRnNHa2lxRUliR2lCOC9VVERTbTZnaXh5bEQ5WEx5czVTWWFWb1VX?=
 =?utf-8?B?NEsxdHcxenZTZTZZcUkzdytIL0hmKzJLUDV0aDBmOHRpQTlZdkpnVmw0Myts?=
 =?utf-8?B?RWNqUE1kd1I1RHplV2FZb0FCcVEveEcwVHNQYjVoQWh1YVZaZXhPN3BwRWU5?=
 =?utf-8?B?MWhKdDBqbnR3R0k1WnNDUjVVUFplQS8zN1hVL3d6YXc4WlNlUjZGS21YVDlY?=
 =?utf-8?B?QjBPdFdGamgrNTJ0ZU1Udk9QQlEvVkVCMkVveVhielpwMENqZ2hocGdxV1NL?=
 =?utf-8?B?YkM2TnlYQnJ1d2d3TzQ3WjFRWjE0ZjZLejZTZFl5VzNoaGNrMHhsWlc5bHZq?=
 =?utf-8?B?QmRKdVY0YzdERnVhK1IvWnpHdEd4N085VGpzU3F2RXNqWkI5cGdZd3lXNyt5?=
 =?utf-8?B?NnI2aGV5UU95Y0xOK01pV3lHUmlnMEhiK3lITENDOW9lMVlQc1NlU3p0ZmFC?=
 =?utf-8?B?SGhkSWUxeVJ4dUk4VU1SMmNLb25pSUZ1M2dtZUhpVEtoMDdZeDdXbUVFVlpq?=
 =?utf-8?B?Q05qMmJ1amhHeG5iUzREK3VaM2hQbGZhcit5MFMvYzEzVnQzTmNvWlZpbFI4?=
 =?utf-8?B?d3JNNVpZYWNldGRPWXJ5WldPSTlUUHoxQS8ybW5hdjNMZVBTNnhmRFNpaGM0?=
 =?utf-8?B?UmtIV1krZk1ieTFYajBMSk9DK3JVOVdaWjAyTFR4RSsxUWFOWmJtVVlRcVEw?=
 =?utf-8?B?OXNXSzVYNnVTV0djUi8ybnNZUDdySk51YVhLVE9BaEdyTm12a0NJQk9rRHpI?=
 =?utf-8?B?Q2gwWnl5VC9ZSHJoNGVzU1loS0RBVGpYNlozQ28va01EWTg0VTBwNkxzY1py?=
 =?utf-8?B?czEwUk8zRHdzS0NMNlNlam5XMWd0cWQ0SUFvMlppV1JlWlY3ZjlzMlErNFVL?=
 =?utf-8?B?aW96UDRCVUdPeElFT1M2ejRaYXpSMnB1bXlvaCtmRHlONHA0VWtDUGRvVWRB?=
 =?utf-8?B?eTJEN3lhSmlGQnRlQ1BxbmJ3ZElxUXIzaHYxNjM0N2ZWeitQRzljbFJLYkhr?=
 =?utf-8?B?eXR1R0VKTUdMQmFHa2hSU2dxNzRPUGdDTkZNQ0JtNW1YMGhNbzh5TnJ4Nmhy?=
 =?utf-8?Q?7wF06utEZUXSSt+P34eeuqXun?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DC5C4FF85BB56345B636928CE22A5F13@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB8179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4125098-9e87-4613-8346-08db39d1e8da
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2023 14:43:12.0480 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QnkWFgtu6+RuM/yVrViQWV5laro7z39rCnft4G7FsivC2zajvudhya7vcra7DsitGvsVKEu1wiUZwrOCeeRIPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7170
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v2 rebased 1/6] drm/i915: Nuke
 unused dsparb_lock
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIzLTA0LTA2IGF0IDE2OjM4IC0wNDAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IE9uIFRodSwgQXByIDA2LCAyMDIzIGF0IDA3OjMxOjI4QU0gLTA3MDAsIEpvc8OpIFJvYmVydG8g
ZGUgU291emEgd3JvdGU6DQo+ID4gZHNwYXJiX2xvY2sgaXQgbm90IHVzZWQgYW55bW9yZSwgbnVr
ZSBpdC4NCj4gDQo+IFdlbGwsIHRoaXMgZG9lc24ndCBleGlzdCBpbiBvdXIgZHJtLXRpcCBiYXNl
bGluZSwgc28gaXQgd291bGQgYmUgZ29vZA0KPiBpZiB0aGlzIHBhdGNoIGlzIGEgZml4dXAhIHRv
IHdoYXRldmVyIHBhdGNoIGlzIGFkZGluZyB0aGlzIGJhY2sgaGVyZS4NCj4gDQo+IFRha2UgYSBs
b29rIHRvIHRoZSBKYW5pIHNlcmllcyBJIGp1c3QgcHVzaGVkOg0KPiANCj4gaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvaW50ZWwteGUvMjAyMy1BcHJpbC8wMDIwMDAuaHRt
bA0KPiANCj4gSSBiZWxpZXZlIHlvdSBzaG91bGQgbWFrZSB0aGlzIHNlcmllcyBvbiBzb21ldGhp
bmcgbW9yZSBsaWtlIHRoYXQuDQo+IHNvIG9uIGEgbmV4dCBzdGVwIEkgcnVuIGEgcmViYXNlIC0t
YXV0b3NxdWFzaCBhbmQgd2UgZ2V0IGNsZWFuZXIgcGF0Y2hlcy4NCj4gDQo+IEFsc28sIEkgYmVs
aWV2ZSB0aGlzIHNlcmllcyBoZXJlIG1pZ2h0IGNvbmZsaWN0IHdpdGggdGhhdCwgc28gSSdtDQo+
IGFmcmFpZCB5b3Ugd2lsbCBoYXZlIHRvIHJlYmFzZSBpdCBhbnl3YXkuIFNvcnJ5IGFib3V0IHRo
YXQuLi4NCg0KV2lsbCBza2lwIHRoaXMgcGF0Y2ggdGhlbiwgaXQgd2lsbCBwcm9iYWJseSBiZSBn
b25lIGluIG5leHQgcmViYXNlLg0KDQpDYW4geW91IHBsZWFzZSB0YWtlIGEgbG9vayBhdCB0aGUg
b3RoZXIgNSBwYXRjaGVzIGJlZm9yZSBJIHNlbmQgYSBuZXcgdmVyc2lvbj8NCg0KPiANCj4gPiAN
Cj4gPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IFNpZ25lZC1vZmYt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IC0t
LQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5o
IHwgMyAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYyAgICAgICAg
ICAgICAgICB8IDEgLQ0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDQgZGVsZXRpb25zKC0pDQo+ID4g
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9jb3JlLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
Y29yZS5oDQo+ID4gaW5kZXggY2MwNThlYjMwM2VlOC4uZDIzNDZkNDNkMTE2MiAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5o
DQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2Nv
cmUuaA0KPiA+IEBAIC0yNjYsOSArMjY2LDYgQEAgc3RydWN0IGludGVsX3dtIHsNCj4gPiAgCSAq
Lw0KPiA+ICAJc3RydWN0IG11dGV4IHdtX211dGV4Ow0KPiA+ICANCj4gPiAtCS8qIHByb3RlY3Rz
IERTUEFSQiByZWdpc3RlcnMgb24gcHJlLWc0eC92bHYvY2h2ICovDQo+ID4gLQlzcGlubG9ja190
IGRzcGFyYl9sb2NrOw0KPiA+IC0NCj4gPiAgCWJvb2wgaXBjX2VuYWJsZWQ7DQo+ID4gIH07DQo+
ID4gIA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYw0KPiA+IGluZGV4IDA2NmQ3OWMy
MDY5YzQuLmVhMmNjNTZkMThhNmUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcml2ZXIuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJp
dmVyLmMNCj4gPiBAQCAtMjE0LDcgKzIxNCw2IEBAIHN0YXRpYyBpbnQgaTkxNV9kcml2ZXJfZWFy
bHlfcHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiA+ICAJc3Bpbl9s
b2NrX2luaXQoJmRldl9wcml2LT5pcnFfbG9jayk7DQo+ID4gIAlzcGluX2xvY2tfaW5pdCgmZGV2
X3ByaXYtPmdwdV9lcnJvci5sb2NrKTsNCj4gPiAgCXNwaW5fbG9ja19pbml0KCZkZXZfcHJpdi0+
ZGlzcGxheS5mYl90cmFja2luZy5sb2NrKTsNCj4gPiAtCXNwaW5fbG9ja19pbml0KCZkZXZfcHJp
di0+ZGlzcGxheS53bS5kc3BhcmJfbG9jayk7DQo+ID4gIAltdXRleF9pbml0KCZkZXZfcHJpdi0+
ZGlzcGxheS5iYWNrbGlnaHQubG9jayk7DQo+ID4gIA0KPiA+ICAJbXV0ZXhfaW5pdCgmZGV2X3By
aXYtPnNiX2xvY2spOw0KPiA+IC0tIA0KPiA+IDIuNDAuMA0KPiA+IA0KDQo=
