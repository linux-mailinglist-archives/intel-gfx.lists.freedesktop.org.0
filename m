Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71982500BD2
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 13:08:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D9FE10FBF3;
	Thu, 14 Apr 2022 11:08:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED52B10FEFF
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 11:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649934501; x=1681470501;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Bt+Sw6FyYB1RESjIaHOyW2OfQ/j7GRJq7e4oVA8LH78=;
 b=gOyeCqVFbUKz9MnlLJHL4lY1yPA6YuZtzh7PEAB2KDgjgulP8rrJnzJx
 yyhDW/USnNjsngF5gEeWkjTl3UbD+A95aRQW5Ep74+pgTWgFpAJdESnPb
 lGF4tNJKySk7tp1g5/Ty4hW/hvdEQwjspvti9PUYOdjXthoJQYd4oa4dS
 GqYfjP+4FX13aKhGOG83MOgtn+YQ8xJzHxy4BeLUNZkOG2zDUNVT5fLnH
 gm5v881UpM4YFxqGD28h2iQ8Qvy3XT+v1mxup6F11/YqsyXMILvrrpP88
 xaIc2r2skn8oz4ubppOHcx9TtcfTRUhTXr4rWom1CAxuocwnRveXcCs98 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="250201684"
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="250201684"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 04:08:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="612294468"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga008.fm.intel.com with ESMTP; 14 Apr 2022 04:08:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 04:08:20 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 04:08:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Apr 2022 04:08:20 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Apr 2022 04:08:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fYlw4fnUtN++x+b6CXn+nkhZLVLA1DhKuKLL7Pgv8rEtwQGwZmUAjmxKjXZ9+JDPkhxlVfaffaF04A40HZFBbdIYbXBtR7zL6qjzr0nXC3PsM6+LDNwLF8mB2DbCQF8FqSq4qVGXVCd6UVX5mDG2YKzfPsRvgKR1Fn11Py3RRSNE/2SM9ecNJHh4P6NljAyaZOqY9Q/dlWMXMqt+AdS3Z7z7LTHD/IQ9PLOkfVyjg9jYcZejqdfGTHz++RCw/cuZGM0LWQXJ5o3+rhlNWI/kQW1UBwtkxBEF2dvv8jgzdnMplb6MQY4Gs5sAbqC0yPth5VITqfpM/BYtHJXAYBpeuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bt+Sw6FyYB1RESjIaHOyW2OfQ/j7GRJq7e4oVA8LH78=;
 b=iuEsP6gDBLXOpgynUMJ0xdT7MuwafGATdlBmV0/YHno5ufX+v63K8p01SI1MKUi2EYOcOjZxzcHPt9QTiChfNWiqtRRVDn442qOD737OC4krKbXL2wyWSecRkV7gtvWw3FMWWcLUW6rzs8WkmRLyRHkrLPhJaD/KgY5wCC2Ixqf8/B2/4VncHkKjTJvf2Z+APWRYAWyBlvzyg0Dae6UTHBw1yjxmSTw3ax67zwW1UOpK2zOlXQNqAVBySaYwbwCY5i/DdI16DNHgYMKoMl0Pd+/rismLZ3qDNBQDjL4b1jxXNLAluhQat7CSvir+hwoFVnj7c853KA69Dpz2sKaKgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB5085.namprd11.prod.outlook.com (2603:10b6:a03:2db::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Thu, 14 Apr
 2022 11:08:19 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95e7:8abc:485a:a90]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95e7:8abc:485a:a90%7]) with mapi id 15.20.5144.029; Thu, 14 Apr 2022
 11:08:18 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 2/2] drm/i915/display/psr: Clear more PSR state during
 disable
Thread-Index: AQHYTq+DSWZ5F3CjWEqAHApuk1YjrKztcpkAgACO2ACAAUESgA==
Date: Thu, 14 Apr 2022 11:08:18 +0000
Message-ID: <5f198649b489bbd5ad76041f5cedf3f9d9ea83c6.camel@intel.com>
References: <20220412205527.174685-1-jose.souza@intel.com>
 <20220412205527.174685-2-jose.souza@intel.com>
 <14f9bb02d627056ff000df3c9ce1105b3d74826f.camel@intel.com>
 <e022f050ee85f9f8792685420bba135e7d756733.camel@intel.com>
In-Reply-To: <e022f050ee85f9f8792685420bba135e7d756733.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 91e517fe-f90b-4cc8-c246-08da1e0714dc
x-ms-traffictypediagnostic: SJ0PR11MB5085:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <SJ0PR11MB5085B6FA6F4F852669BCD07E8AEF9@SJ0PR11MB5085.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hjTyb2cvdxBHU1QRiVOCBYe6JQ5EYdSYm9mjK7URiELme9/PGp8jduhcAksgEvuCabpZGVaQ0am7SFS8Xxn26vU4CjIgiI21jICNJBibHTXQaf9JBquBrl65XPeY/Rsovr8ZOGCz19lPjiIOxTITSbdgQWwef/oSQ/hJwACli62Wq7IQxv5t+l6uW8vkFQmn8oVrm8J8Cykrqq3I6dHWRm+VKK5YTbgDCUzl8wNWi6d82XT+OF91UXa0A4y3JbcCAHj/Pqf1OsElx0YYDTKDFGI5L4iCUE/tJjdgboxnTFvo9UfDrgYMCK6dh7rXPxY8Go00qPcgl8ex/GK633yZxYbXVd4IlkiCOFKHsM78udp63JcVisESHuFSJZ+G7BnP0ewgx3jn73HDBVvBonXV2fMEEW61jyGvFyUReRFeFDVGxBXxnIwHxziC6av1Tug/73RErd2P/T+Z7cWYbBI68eMQfTQazKcktzN9n5h6fHzeGMYbP/B7frru3xSnQsd5hFDWiPFQJAGhWkDdMy1o8q/ow1Toq1Y3zob6yIxOMu/gaTAz+3f9CZKIFZybzX1DkNo8N1/ovbQ1BegTiCg0sMupCxmWkICWdLovctm6zY+qEEzWzyAlLy4p8/WyUkitqbmi1p7736oxI63osbF84nRgkyZ8xLvsqyWbdKO5w04HjrIU8Cu0VXBYFYHTZEB0kp0jV/wLuXvlAZm58YoAyw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(966005)(6486002)(8676002)(66556008)(64756008)(8936002)(91956017)(122000001)(86362001)(66476007)(5660300002)(6512007)(6506007)(38100700002)(71200400001)(508600001)(82960400001)(110136005)(6636002)(316002)(66946007)(66446008)(76116006)(83380400001)(66574015)(36756003)(2906002)(26005)(186003)(2616005)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZGdHR0NGMkRNc0xGdldMV2U2dU5lMGFRM2dsU3NjZW4zZkUxZDR3M3NIWnJU?=
 =?utf-8?B?SERtR2VoTmI5Q0JabkhZZ05XYnhQT2t5UzVDOWRIS3NURVNnbmpXTWc0STF5?=
 =?utf-8?B?ZmxCZkp4SHVlSXAzU0lFZ3lCNHdLenRkY2FTM1ZGMkZrY3RhUStzOUNsWmRV?=
 =?utf-8?B?RWEvSW5ENi8xelY1MjFkdkozdEM0QjlydXlsQXd4Y3ZEU2lxTS9CRzBZdml6?=
 =?utf-8?B?ZlNSSE5Qb2pIT3d1eUV6aytRdUdGK1lmdU8vYmE3MmxWQlN2RWl0bTlLcEhW?=
 =?utf-8?B?R2tUMG1IN3dpakZVWlg0NWpCUzhyMVlxSWo3ekV1ay9lSGw0dm9lQ25xUVhy?=
 =?utf-8?B?MExDWkNEdEIrb3dyazlFYVZwZDFPalUwY1J1Q0VNWjhyYXRyYitXdGdkcWVX?=
 =?utf-8?B?V3h6ZStCclhkbkVKVXoxNzZoWm1pcmd1c1JPajZ0ZkRjUkE5Z1BqREZSTWdZ?=
 =?utf-8?B?OWZlK0RFRjJRTXZWRkg4TW42Y0lQU0lKeDEyejQ2bFNEaEd4WEp1d2ZoSVhF?=
 =?utf-8?B?TFA1bnNPRTUzK0lPQTlVVjNMOUxoWXcyRnpyeE9qNVBPV3JoZTJsd3NETFpH?=
 =?utf-8?B?SW9UdllBSDNaSnVCSTkxZitwamFVTk9zbGhyWFE5a1QvSDZjWnhHZWFKbkVC?=
 =?utf-8?B?K3pjS1RmcFFGTERDRndBdC9YQ2YwZ09pdGpLUGRKVTBQQ3d1QUd2NmJGSy9r?=
 =?utf-8?B?QXc1OEtkOUw5WHJseVZnQVFRclpPR0VKaTV1TXhqcnRvRkp2Qk1INUV3aUU4?=
 =?utf-8?B?RWw5WlFOOFBiWGpZUWw3eW1BVko2TGhFWkEzUG4yeDVIaDdBK1JqWms0TE92?=
 =?utf-8?B?YXRmbUsvc2VEQmowRDhmeUNURWpFQWVNQThzRkhXSjhmWWJyTUFGZ3NPdXVS?=
 =?utf-8?B?UmVHdHBiUTZXT0JZcFVuWmN1eVJhblNQbjdCS1BpOEs4L2ZBSk56Q280N2hk?=
 =?utf-8?B?MHZXS1loTlJ5MXA4dmRKUE9EdUdaZUhaY25PWCs5d1JVczBDSnBmRW55VVdW?=
 =?utf-8?B?NmpNNEkvZVJmZFl1TFJkeDRMY05NbVJGSWczNzBKR0dlditsRWJ5MmQrcVdL?=
 =?utf-8?B?VTBtaVZ6TTZLeWlEWE9OV1V6U2RFUE9GZ1U2Z05PWk9iRDZWdmt3azZBRDVM?=
 =?utf-8?B?UE1oSUxYU2RsTFNuR3dKQUh4aGhZajJxSE10NGNiazR5djZJUGVURXZyZGZP?=
 =?utf-8?B?QUFuVlJEMXZ6TTd5aGt5NVZyb1I1b3BHSlFITUJZUU95ZGx4dnNta01IZ0Rs?=
 =?utf-8?B?N3MxSkxDcSs4em1BWExIUlVxZkp0TVNpSHNCeTkrQlZmYTlRYnZZWlUrT1dU?=
 =?utf-8?B?anNXV1VxSDlmRml1VHk0SW53ZzZyT3dRMi96bHlQOE1Lbm9tbFJvTGZXTkN3?=
 =?utf-8?B?c3JHZW5mMFlsQzFRZC80VjhpQzVjUDYySVhrVExneWRwSVVWSU1KR1c5dFdz?=
 =?utf-8?B?MGdsQ1laMVFPR1I4S0pEb29PY3hZZ0duUG5EdEs3bjc0VXJsdmlObURNOGg0?=
 =?utf-8?B?azh6ZlJ4NzVZMWlxaTdORUhKeTlSRnc1ZENMTTFrbVU3ZVZsNDVRY3gwcGcv?=
 =?utf-8?B?UWlvcXpKVEVxSnhKT1hyTkc2d1NIK3ZyaXlmTlNPTFRvSWk3TjZRSXpxeXBv?=
 =?utf-8?B?cWxNWThKalphUDVYSklrejJpL3ZibzNDdi9xTVh3TWpBeVFxTWdUa3NGVGNz?=
 =?utf-8?B?cUdhMENRcWZPVjBxZW96UzFZSHBtVkU0Q3JxWWZ2akR2WDQ3TXYrbG8wTFFK?=
 =?utf-8?B?UUZHSlpQL0Z2bU5mQmlmNnUwc0dETjZVUlYzY1BNY3ptK3U5RDVRZitleGZm?=
 =?utf-8?B?Zm5oL2tnOGptRGoxRHZRQTVKbWxsQ0Q5Y2MvSCtZRk5FUkw1NXNPTmhzSi8v?=
 =?utf-8?B?SUpBRFV6azVqVGNHNkxaY0Ivb2RLdTFTZ1BBblBaTmRwaEo5VlNtY0RtQ1oz?=
 =?utf-8?B?bEdjd0crdzBhMElFczFKTnBhKzBBbEIrVFR2amxjOHo5TWhOSnVha0h0K1ll?=
 =?utf-8?B?Ujg2ZWlUZytidWxVZjZXTkJLN0JaMU1NeVJ2S2EzMzdpU24xUWU2ZnBtL21v?=
 =?utf-8?B?YzMwcHBlOXpUTUdHaDh6LzUwK1NkbmdMNUtuN2tvRmNiVCt3SlVSMGZvdlh5?=
 =?utf-8?B?YjQrbEFwT2N2bWkvbmEyaFczeFgwQ3grazVGNURwOFFsYXhxemNkanRDODdt?=
 =?utf-8?B?djVRKzZ5aGxiOExrTUdkWGNwWmdUNk12ek9PczltbERUZVpmSi82Tm5qKzJ3?=
 =?utf-8?B?MDJKTFAxSW1CMVN4NzBDdHRCZ0tvU2NPUGtyUGVrdys1bmk2MHo2Y1YrVXRV?=
 =?utf-8?B?UmltM3RvNlcvT0VHVy9UbTVjd2JKZWZydVJSSm02aVVNMitNakY3SDlsSXdt?=
 =?utf-8?Q?nWsRTvTGDrBMBtVSn3zgW08bwEcparTf/L0Wd?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7EA4830D83ED06459FA2CAD836D1A58F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91e517fe-f90b-4cc8-c246-08da1e0714dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2022 11:08:18.9025 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lUQjdR0KdW3C0wdqb6nS5A+ojdCrq/zG71WbjnL88xKDim4+2UQVoEnCctC2R3ZeOjfOJA3HnUlKkcLpUz4/iYr1XIfTVY6cj2e7rr6/hGc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5085
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display/psr: Clear more PSR
 state during disable
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

T24gV2VkLCAyMDIyLTA0LTEzIGF0IDE1OjU5ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gV2VkLCAyMDIyLTA0LTEzIGF0IDA3OjI3ICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+ID4gSGVsbG8gSm9zZSwNCj4gPiANCj4gPiBTZWUgbXkgY29tbWVudCBiZWxvdy4NCj4gPiAN
Cj4gPiBPbiBUdWUsIDIwMjItMDQtMTIgYXQgMTM6NTUgLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUg
U291emEgd3JvdGU6DQo+ID4gPiBBZnRlciBjb21taXQgODA1ZjA0ZDQyYTZiICgiZHJtL2k5MTUv
ZGlzcGxheS9wc3I6IFVzZSBjb250aW51b3MNCj4gPiA+IGZ1bGwNCj4gPiA+IGZyYW1lIHRvIGhh
bmRsZSBmcm9udGJ1ZmZlciBpbnZhbGlkYXRpb25zIikgd2FzIG1lcmdlZCB3ZSBzdGFydGVkDQo+
ID4gPiB0bw0KPiA+ID4gZ2V0IHNvbWUgZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sICEodG1w
ICYNCj4gPiA+IFBTUjJfTUFOX1RSS19DVExfRU5BQkxFKSkNCj4gPiA+IGluIHRlc3RzIHRoYXQg
YXJlIGV4ZWN1dGVkIGluIHBpcGUgQi4NCj4gPiA+IA0KPiA+ID4gVGhpcyBpcyBwcm9iYWJseSBk
dWUgcHNyMl9zZWxfZmV0Y2hfY2ZmX2VuYWJsZWQgYmVpbmcgbGVmdCBzZXQNCj4gPiA+IGR1cmlu
Zw0KPiA+ID4gUFNSIGRpc2FibGUgaW4gdGhlIHBpcGUgQSwgc28gdGhlIFBTUjJfTUFOX1RSS19D
VEwgd3JpdGUgaW4NCj4gPiA+IGludGVsX3BzcjJfcHJvZ3JhbV90cmFuc19tYW5fdHJrX2N0bCgp
IGlzIHNraXBwZWQgaW4gcGlwZSBCIGFuZA0KPiA+ID4gdGhlbg0KPiA+ID4gd2UgZ2V0IHRoZSB3
YXJuaW5nIHdoZW4gYWN0dWFsbHkgZW5hYmxpbmcgUFNSIGFmdGVyIHBsYW5lcw0KPiA+ID4gcHJv
Z3JhbWluZy4NCj4gPiA+IFdlIGRvbid0IGdldCBzdWNoIHdhcm5pbmdzIHdoZW4gcnVubmluZyB0
ZXN0cyBpbiBwaXBlIEEgYmVjYXVzZQ0KPiA+ID4gUFNSMl9NQU5fVFJLX0NUTCBpcyBvbmx5IGNs
ZWFyZWQgd2hlbiBlbmFibGluZyBQU1IyIHdpdGggaGFyZHdhcmUNCj4gPiA+IHRyYWNraW5nLg0K
PiA+IA0KPiA+IEl0IHNvdW5kcyBhIGJpdCBzY2FyeSBwaXBlIEEgd291bGQgaGF2ZSBzdWNoIGlt
cGFjdCBvbiBwaXBlIEIuLi4NCj4gDQo+IEJlY2F1c2UgUFNSIHN0YXRlIGlzIHN0b3JlZCBpbiBp
bnRlbF9kcC4NCg0KSXMgaW50ZWxfZHAgc2hhcmVkIGJldHdlZW4gcGlwZXM/DQoNCj4gDQo+ID4g
ZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sICEodG1wICYgUFNSMl9NQU5fVFJLX0NUTF9FTkFC
TEUpKQ0KPiA+IA0KPiA+IGlzIHdyb25nIGZvciBBRExQLiBQbGVhc2Uga2VlcCBpbiBtaW5kIHN1
Y2ggYml0IGRvZXNuJ3QgZXhpc3QgaW4NCj4gPiBBRExQLg0KPiA+IFRoaXMgV0FSTiBpcyBhY3R1
YWxseSBjaGVja2luZyBTRkYgYml0IG9uIEFETFAgd2hpY2ggaXMgcmVzZXQgYnkgSFcNCj4gPiBh
ZnRlciBzZW5kaW5nIHRoZSB1cGRhdGUgZnJhbWUuIFdlIHdlcmUganVzdCBsdWNreSAob3IgdW5s
dWNreQ0KPiA+IGRlcGVuZGluZyBob3cgeW91IHNlZSBpdCkgbm90IHNlZWluZyB0aGlzIGVhcmxp
ZXIuIFByb3BlciBmaXggd291bGQNCj4gPiBiZQ0KPiA+IHRvIHJlbW92ZSB0aGlzIHdhcm5pbmcg
Zm9yIEFETFA/DQoNCkNoZWNrZWQgdG9kYXkgdGhpcyBhbmQgZm91bmQgb3V0IHRoYXQgbXkgY29t
bWVudCBpcyBub3QgdmFsaWQuIEkuZS4NCnRoaXMgYml0IGlzIG5vdCBjbGVhcmVkIGJ5IEhXLiBU
aGlzIHdhcyBhY3R1YWxseSBwYXJ0aWFsIGZyYW1lIGJpdA0Kd2hpY2ggaXMgX25vdF8gcmVzZXQg
YnkgdGhlIEhXLg0KDQpTdGlsbCBmb3IgY2xhcml0eSB0aGlzIGNoZWNrIHNob3VsZCBiZSBtb2Rp
ZmllZCBhcw0KUFNSMl9NQU5fVFJLX0NUTF9FTkFCTEUgZG9lc24ndCBleGlzdCBmb3IgQURMUC4N
Cg0KPiANCj4gT2theSBsZXRzIHN0YXJ0IHdpdGggdGhhdCwgaWYgd2Ugc2VlIHRoaXMgaXNzdWUg
d2l0aCBhIHRnbCB0aGVuIHdlDQo+IGNhbiBicmluZyB0aGlzIHBhdGNoIGFnYWluLg0KPiBCdXQg
SSBndWVzcyBpdCB3aWxsIGhhcHBlbiBhcyB0aGlzIGlzc3VlIHN0YXJ0ZWQgcmlnaHQgYWZ0ZXIg
dGhlIFBTUg0KPiBDRkYgcGF0Y2hlcyB3ZXJlIG1lcmdlZC4NCg0KWW91IGFyZSByaWdodC4gV2Ug
YXJlIHByb2JhYmx5IGJpdHRlbiBieSB0aGlzIGxhdGVyLiBJJ20gc29ycnkgZm9yDQptaXhpbmcg
dGhlIHNpbmdsZSBmdWxsIGZyYW1lIGFuZCB0aGUgcGFydGlhbCBmcmFtZSBiaXRzLg0KDQo+IA0K
PiA+ID4gV2FzIG5vdCBhYmxlIHRvIHJlcHJvZHVjZSB0aGlzIGlzc3VlIGJ1dCBjbGVhbmluZyB0
aGUgUFNSIHN0YXRlDQo+ID4gPiBkaXNhYmxlIHdpbGwgbm90IGhhcm0gYW55dGhpbmcgYXQgYWxs
Lg0KPiA+ID4gDQo+ID4gPiBGaXhlczogODA1ZjA0ZDQyYTZiICgiZHJtL2k5MTUvZGlzcGxheS9w
c3I6IFVzZSBjb250aW51b3MgZnVsbA0KPiA+ID4gZnJhbWUNCj4gPiA+IHRvIGhhbmRsZSBmcm9u
dGJ1ZmZlciBpbnZhbGlkYXRpb25zIikNCj4gPiA+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy81NjM0DQo+ID4gPiBDYzogSm91bmkgSMO2
Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0K
PiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAzICsrKw0K
PiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCj4gPiA+IA0KPiA+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gaW5kZXgg
OGVjN2MxNjEyODRiZS4uMDZkYjQwN2UyNzQ5ZiAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+IEBAIC0xMzUzLDYgKzEzNTMsOSBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZGlzYWJsZV9sb2NrZWQoc3RydWN0DQo+ID4gPiBpbnRl
bF9kcCAqaW50ZWxfZHApDQo+ID4gPiAgICAgICAgICAgICAgIGRybV9kcF9kcGNkX3dyaXRlYigm
aW50ZWxfZHAtPmF1eCwNCj4gPiA+IERQX1JFQ0VJVkVSX0FMUE1fQ09ORklHLCAwKTsNCj4gPiA+
IA0KPiA+ID4gICAgICAgaW50ZWxfZHAtPnBzci5lbmFibGVkID0gZmFsc2U7DQo+ID4gPiArICAg
ICBpbnRlbF9kcC0+cHNyLnBzcjJfZW5hYmxlZCA9IGZhbHNlOw0KPiA+ID4gKyAgICAgaW50ZWxf
ZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkID0gZmFsc2U7DQo+ID4gPiArICAgICBpbnRl
bF9kcC0+cHNyLnBzcjJfc2VsX2ZldGNoX2NmZl9lbmFibGVkID0gZmFsc2U7DQo+ID4gPiAgfQ0K
PiA+ID4gDQo+ID4gPiAgLyoqDQo+ID4gDQo+ID4gQlIsDQo+ID4gDQo+ID4gSm91bmkgSMO2Z2Fu
ZGVyDQoNCg==
