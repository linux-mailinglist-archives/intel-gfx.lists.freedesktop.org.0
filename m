Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD1D87A6F4
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 12:15:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E768B10F2E4;
	Wed, 13 Mar 2024 11:14:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iTodeGt0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDD1610F2E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 11:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710328496; x=1741864496;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UCwBQTlo7zHEgeAaYd2xS/asD9gUCpMFM4yseu4+qg8=;
 b=iTodeGt0jM20djWmTMF8iVbYInQ1eEy+AywZrCwRvH0VmALdvpvJVhqB
 WQWP/DgokggTeOc1aZlOeBIKl2TeG+CbnC4Bpqe6fCWhJvYnEv/ceoEdT
 /F1p0P9l2qZCrVxQz1Gh3tF3C7Z3NcW1vuYeCGrcMOU6flREDDHQHg/SX
 LHoaN8OEgXr8kJsdvaMlDkpEgfCF5ZDpRA/K/psp3ldyRplGEd3jFUEl2
 NOwFwYHesU71KPueg5vbC+1Pahy+t0kDRzRY3OAwE9FsKw9OgGub3A0RA
 1P5dtjF2/P/DhhMN6BDZWQywvqNn+EMUDZ9cM46ohX2PT7zln05YxHhQG g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="4949907"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; 
   d="scan'208";a="4949907"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 04:14:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="49316868"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Mar 2024 04:14:55 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Mar 2024 04:14:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Mar 2024 04:14:54 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Mar 2024 04:14:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C5z2GfxskNDCogcpARAuycULuQ7poHbs/a/mykVfqytXd079DWxzi4wNLL28hAn5UtxMxDVqxQbcCYbPetFkd2RFurLCU2NlJ5j0V6HFWKMWGkQDTJnURnhvxTKBl2Arb3PoIX+6m5dB++3QeP9y2dC+tu205UjOOjUans6yeyUsTyXytxQcJmmlq2QmQZ/SFoy6nbvpWQoVpp+zfjUppJouoBS/yGhtJQ5hHsQKmSm0CNUc1r7SZdEQl5l7AvDagBsjvDgqQUTOxEyCdFp2iPQelH59oFeM6pjKPAfkGr8KhlkcbpF6dVPUqKcH+l4p+KSL2XEblB+NyKo5sRlCOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UCwBQTlo7zHEgeAaYd2xS/asD9gUCpMFM4yseu4+qg8=;
 b=V51xiKEOIPBc4IwlPNI8KUrEY0esWMc5AOs/swqfBnMTMd9wTsML7B2nq8Lape6mY8Rlbh6mZOrth1/VpQzX5uTC6XRLW6/L2WB9LLi+Az53skJnbJbnWTckW3YNVxODkANsVObKMlbldRzEc81mv5T2jEE+Mqc1wA/FkeAm9Up3iNhNhGGo5XGIFfMmcGh7POveXRxMhfT5wbukpu9hewTON070EvJl2vxXHrjE8SUT08WxsXKRfN4/lI5ZZIhHfKnTgNaqCRSIhjS29V7YLSGSKupJBLji6Uhhi2E93EwYfLBhea5UZhyA2SqzbHdKDyHS9iPG00+RXyfTJ03nPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CY5PR11MB6236.namprd11.prod.outlook.com (2603:10b6:930:23::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Wed, 13 Mar
 2024 11:14:39 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7386.017; Wed, 13 Mar 2024
 11:14:39 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Murthy, 
 Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 1/6] drm/display: Add missing aux less alpm wake
 related bits
Thread-Topic: [PATCH v3 1/6] drm/display: Add missing aux less alpm wake
 related bits
Thread-Index: AQHab7NwkymLXTmNQEemWifAG9HatLE1h7Sw
Date: Wed, 13 Mar 2024 11:14:39 +0000
Message-ID: <PH7PR11MB5981BE449508E5E86E5B6FB4F92A2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240306104513.2129442-1-jouni.hogander@intel.com>
 <20240306104513.2129442-2-jouni.hogander@intel.com>
In-Reply-To: <20240306104513.2129442-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CY5PR11MB6236:EE_
x-ms-office365-filtering-correlation-id: 0a94fe9c-ea76-41e7-5eee-08dc434ec687
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2cDuRPau+UxX3ZwWGJHL9TmYRVXnhniiv/6sTFNMrnneX7jSjDkgiyreBBHh++TCHcHo9nHiH7d1nE4AdBzJ49oiyJzjf8+BMwqr62u6HY/BqRF/zwtZ1lWyleHRi/fkz9q+QRTbfGmuJsbokRD3P/TJo1FMCB3g3g7VjwbK1ryS9rsxzQh5hlHEhsSHF+2zu+RO2gEby4oV22eOm1JIcCYl+MZO+VA+cTQ+SksjkAEJdxSdhbRmBQS+p7IHi5M93KgwXa9ucbddENAE3pJ81H2PIjBITt3qOVsX02cMMhmXbxuNpnp0EbXJJE+jJ0OE54gMol5VPiWAXzYrMQbEEHImjoC0Vl+G/LTYva4i1mitOdFRyLjzOXxbUT3taDJeXuQasa1fu4rZLTbaFWlGiq62pGGQRJ3shpbby1EBzkawkCaFy9QBKi1auLZrsLq0V+oSbJH6uWY/fPscWcQB+1miAakmo1ropZi2oadRml34CxFW7sbgVjq4foympJShqYw+fV75EAz3P/wEAhTGhjUT5iQ1SFLcicAXFoeXjV8GwQfGz3VZPebnE0IkaCdpVUVlTfQenf0rG8Acl0Tt1cJ6YAVtsNRr4WB2e2K7opnJSF7BiMHowlAOaBmmdhV8Tn8JN+nhgM4/E/MB4Bq40XUWhumWN2xDy7ycij4RC1l7ZCKDrCLXGhBakbJm8vDoNXJmAXoxhn4ZzWz0fT3QzkLwJWezmeTrENnfBkT/1Gw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WG1QeWdsUTNqVUhBUXBDeFJMeitvWWRCVkR5SzU1K25Sbm5zS2YxOGp5NmE5?=
 =?utf-8?B?N3JjbmFwZ1pKelpUTU1GT3BTUFUreENzVkFORHpBa0dDdnhqaFlnWmxQenNF?=
 =?utf-8?B?RUNzOHhCUWtDZXJLK2FkTjcvU2N3Uk5ndkJZanZ4K3NOamFUcEo1ckZMZ21Q?=
 =?utf-8?B?T2xhK1JEb0FYSHBwaEhqUk5FOVVYMTZFeDVSeTdyalptdGtNWkNOcGpnYkNS?=
 =?utf-8?B?cXZYbnJQVzNyS0Vzcll3T2hqZXNESHg2Z1NaeVNiOEM2UlFIdFZqY1dGTHdE?=
 =?utf-8?B?Y3JzRlhFQnBkVVA0RTQ0YmRmR1JWYjl5aEVJdEdQYURDVHlqT280Z2VadFZo?=
 =?utf-8?B?cUlBaUljVFdSRldJL055RWZGNkpkZzBwbjZSNlQ4akZpOFMwMVZJdzhhYlBr?=
 =?utf-8?B?MU44NGI2SmlCUlNpU2NHbDY5eU0yb29sTTlQcFBXZm1DaW93cCtiejgveEpp?=
 =?utf-8?B?dzJsQnVVZE5LY3BIMElQdkxGa2RiQWlzMXNkSUZNbDF4MURWMlRWTDdnejRH?=
 =?utf-8?B?dUdrYXRWKytIbitpYTFqZTViR01QN3BEQTA3MTlqZ0hJeVd3RWFxUDFFQTVu?=
 =?utf-8?B?ZVo5L21aNGdPL3AzRVV1WUFkVDAyV3dMc04yZGRyeHNueWh2SDVYM09qSXRy?=
 =?utf-8?B?ZVBFdkxERU9SRTk5WEcyOW9HYUtwR2hTVmFIQmxNYjNsYWlnTjdzTnEvRnY5?=
 =?utf-8?B?cXpLVC9BTmxvOXBlS20rRDc3WUhWSU1SZ3BKbmlHY29rSVRUU0hRcTZZaXRo?=
 =?utf-8?B?a1NnTzV3T2QyRzBKUnpOUDZQVnBlQUhSVkpqRDQzSTJjMGRic1RNUXZRZ0Fr?=
 =?utf-8?B?TEdlZ1lBNTlmTnBveDNrV0NBWktGSDE4TlVKeXNTZCtRMzBlSWJWQVduNjJH?=
 =?utf-8?B?akdEeU1oQXdmanZabytNakw5WEIxajdyZjRaRDJxVEwyRVhNekxpOXpVbk1m?=
 =?utf-8?B?YXIyT3BkcE9ISlRQWXpNUEQzenhkZTArM2xUUzVtdlovN1ErSFgzK1B6Qkp6?=
 =?utf-8?B?M2FUUllhMzIrc0xkNmR3bXArdC9wS2d1YXlCS2pvWjg5K3VvUVQrTmw2Nm5o?=
 =?utf-8?B?UktIVFZLK0FoVzFIQ054cUZWTjkwZkFzVGREdWhvZm1mckw2WVBOY29xWHRy?=
 =?utf-8?B?bDM0L0ZGNEI5QVdpMXRtbDBiMHNCZUtSZGp0S0kyYU5IMlFHanpVbE94RWNu?=
 =?utf-8?B?M2haanhtNENNT0JZQ2RSRWRsTlJFWjQrTFRxUDZBM0p1V3l5U2JoUFdINlV4?=
 =?utf-8?B?cHNnbjhndnJBK1Z5TWg1V1dJMW1HZUt2ayswcEt4SkVGQ0Fza1pNUGtqZ3p2?=
 =?utf-8?B?L3htL3BJaFlVMERzWGQxa0xmUnZ3cjMvc3NUSzBzNkkwM0UySlBVaE9mbXpM?=
 =?utf-8?B?SWFUY2pVZEl2RzJkVzR3LzVYNXRHL2tEV0UzcXM0UTVXNUhwOWQ3T3ExaWt2?=
 =?utf-8?B?bGNQYVlGZ1gzV09kYUpNNU44VStxSTlVdDN2R2FyZURvbGw0UGpXanhpWXlF?=
 =?utf-8?B?eWtMMUl6bU1YaEc4WlV3ckQ1T0VWYi85VTVXZUp4bUtPTmU0Y3ArN2prZ0dx?=
 =?utf-8?B?YmhveHRXcTFHUWZ3RGtsK0wvZ3E1VXdlT0RiUGIrT3oxaytHbGxKQTVNTU03?=
 =?utf-8?B?M2pubzJwV2pmK0c5RG1KUDVWYjdIRFc3OWxNU3FzNjFvalNCcGt4dnI0RG84?=
 =?utf-8?B?SWFGNUZmdjJzTFREL0N0R1dYNFBFRFVNZTJ3NnNuVCtSS2RIQm5iUzFWWW1s?=
 =?utf-8?B?OU1EUXVQNWo3cWQ4Z2dLSHV3MTNzNFlWNXYzRFlYYVlZYVFQVWhNeXR1bFF3?=
 =?utf-8?B?ZnNnVWJGWFpJRjcvMCs0Y1RabkE5M2Y5cHFwaTU5b0QxbWQwampseUxwZkdW?=
 =?utf-8?B?QVpuY2szTE9Hd3lEL2NhTU9kWi9HcHowUDYySkZjS2dvVnpZNW0xbTRMT2NZ?=
 =?utf-8?B?a1NLK0RaUU5rNXFBN0dOeXdqaG12Z3c2YjFCM2VZdUhObkNzU2JWdzFESWdB?=
 =?utf-8?B?czBlSHhKMzlIQlhlQnVrd0tMM0VOT3NvaGxWaTlaVHVPUmhUd2FWM0puOEVN?=
 =?utf-8?B?MDFhcmtickZsK2Z3Q3VFUWdsUlNKTFJVcVdaWlNmSW91VVdOc3N6REREa3du?=
 =?utf-8?Q?Vp2g+4ZPF0qOH7UY+OHaCW052?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a94fe9c-ea76-41e7-5eee-08dc434ec687
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2024 11:14:39.6909 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wL4IhOP/15tUPQTfKon3Q+es+MrFBzkoFOqfZj3gRBhKn/CnfsfpbQX2y4PotTLsBcVEbt6SAdAN+zaZ1+ctSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6236
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgTWFyY2ggNiwg
MjAyNCA0OjE1IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPjsgTWFubmEs
IEFuaW1lc2gNCj4gPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgTXVydGh5LCBBcnVuIFIgPGFy
dW4uci5tdXJ0aHlAaW50ZWwuY29tPjsNCj4gSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2MyAxLzZdIGRybS9kaXNwbGF5OiBBZGQg
bWlzc2luZyBhdXggbGVzcyBhbHBtIHdha2UgcmVsYXRlZA0KPiBiaXRzDQo+IA0KPiBlRFAxLjUg
YWRkcyBzb21lIG1vcmUgYml0cyBpbnRvIERQX1JFQ0VJVkVSX0FMUE1fQ0FQIGFuZA0KPiBEUF9S
RUNFSVZFUl9BTFBNX0NPTkZJRyByZWdpc3RlcnMuIEFkZCBkZWZpbml0aW9ucyBmb3IgdGhlc2Uu
DQoNCkdvb2QgdG8gYWRkIHRoaXMgcGF0Y2ggd2l0aCB0aGUgcGF0Y2ggc2VyaWVzIHdoZXJlIF9D
QVAgYW5kIF9DT05GSUcgcmVnaXN0ZXJzIHdpbGwgYmUgdXNlZC4NCg0KUmVnYXJkcywNCkFuaW1l
c2gNCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1fZHAuaCB8IDUg
KysrKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kaXNwbGF5L2RybV9kcC5oIGIvaW5jbHVk
ZS9kcm0vZGlzcGxheS9kcm1fZHAuaA0KPiBpbmRleCA0ODkxYmQ5MTZkMjYuLjY1MWQxMTdkNjM2
ZCAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1fZHAuaA0KPiArKysgYi9p
bmNsdWRlL2RybS9kaXNwbGF5L2RybV9kcC5oDQo+IEBAIC0yMzIsNiArMjMyLDggQEANCj4gDQo+
ICAjZGVmaW5lIERQX1JFQ0VJVkVSX0FMUE1fQ0FQCQkgICAgMHgwMmUgICAvKiBlRFAgMS40ICov
DQo+ICAjIGRlZmluZSBEUF9BTFBNX0NBUAkJCSAgICAoMSA8PCAwKQ0KPiArIyBkZWZpbmUgRFBf
QUxQTV9QTV9TVEFURV8yQV9TVVBQT1JUCSAgICAoMSA8PCAxKSAvKiBlRFAgMS41ICovDQo+ICsj
IGRlZmluZSBEUF9BTFBNX0FVWF9MRVNTX0NBUAkJICAgICgxIDw8IDIpIC8qIGVEUCAxLjUgKi8N
Cj4gDQo+ICAjZGVmaW5lIERQX1NJTktfREVWSUNFX0FVWF9GUkFNRV9TWU5DX0NBUCAgIDB4MDJm
ICAgLyogZURQIDEuNCAqLw0KPiAgIyBkZWZpbmUgRFBfQVVYX0ZSQU1FX1NZTkNfQ0FQCQkgICAg
KDEgPDwgMCkNCj4gQEAgLTY3Nyw3ICs2NzksOCBAQA0KPiANCj4gICNkZWZpbmUgRFBfUkVDRUlW
RVJfQUxQTV9DT05GSUcJCSAgICAweDExNiAgIC8qIGVEUCAxLjQgKi8NCj4gICMgZGVmaW5lIERQ
X0FMUE1fRU5BQkxFCQkJICAgICgxIDw8IDApDQo+IC0jIGRlZmluZSBEUF9BTFBNX0xPQ0tfRVJS
T1JfSVJRX0hQRF9FTkFCTEUgICgxIDw8IDEpDQo+ICsjIGRlZmluZSBEUF9BTFBNX0xPQ0tfRVJS
T1JfSVJRX0hQRF9FTkFCTEUgICgxIDw8IDEpIC8qIGVEUCAxLjUgKi8NCj4gKyMgZGVmaW5lIERQ
X0FMUE1fTU9ERV9BVVhfTEVTUwkJICAgICgxIDw8IDIpIC8qIGVEUCAxLjUgKi8NCj4gDQo+ICAj
ZGVmaW5lIERQX1NJTktfREVWSUNFX0FVWF9GUkFNRV9TWU5DX0NPTkYgIDB4MTE3ICAgLyogZURQ
IDEuNCAqLw0KPiAgIyBkZWZpbmUgRFBfQVVYX0ZSQU1FX1NZTkNfRU5BQkxFCSAgICAoMSA8PCAw
KQ0KPiAtLQ0KPiAyLjM0LjENCg0K
