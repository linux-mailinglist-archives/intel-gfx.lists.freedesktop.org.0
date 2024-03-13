Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADE487A77F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 13:23:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D408A10F03F;
	Wed, 13 Mar 2024 12:23:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EbSQtwtc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B99A10F03F
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 12:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710332599; x=1741868599;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=KaHq2vD2wC24Jf3ohehz+mSEwbp6z3BVQnimaIBoeqc=;
 b=EbSQtwtcuzkA57dI3HsgLsR5+qndA7qdyiDUelPw8G+GrucBhlKWK6pg
 TPeQKxatpQW6ypufsRJ1eYajptgFGy470cGUuMvZlmBUIifMc1gdx44SC
 ttbVN8RfynZYeqnAr8aAv01UjqDEtVhJCesABmaoKZAB6DhPPLQZ8+Wmh
 DMFLnNctZXuFyoYmV7lwwGOaAPqeZXKMEd+xHUkuPZofNkZjO3NRr8VQx
 oQUS1MZfzGNcGzaqew/KpkyRVydpP93xojlXMgcg40BmF1jEtSUZggr3D
 rI0LtH/7y00+XpXQS2f1+omRHMQHBuUgZcux+e1RzeIHNdKpozpZk04aI A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="5213937"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; 
   d="scan'208";a="5213937"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 05:23:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="11937917"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Mar 2024 05:23:18 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Mar 2024 05:23:17 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Mar 2024 05:23:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Mar 2024 05:23:16 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Mar 2024 05:23:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hcXLpjdM7JDk2eeMU+ZnbkrFWPPDe1YSDxt2MP1Jyo4s5I2lXVSDNcsgqROrfRKQQiRAFldCUibc39qpK1mnbv9c1yTOsjLbn0PLeyyO6qHs/Z9TBMkvjDAxJLsP51ISpLlO10vHoFOfGX80P/cjsDpK1JsMtuq2eowTw2F3sKv+khAr/K3Agx5YLVC4DWXHcGUOWwyLsUPtXu4/X1WjnFjC2N2/BcNuiudgL3cDmg4IsacTlUf7pCBTVIam6QsIdsvGGnu5h00fVV4gS7XOtHPVhDZMrHvV+FaQrSmmVd5G7ny9iRMRS7y1NKtybB245DMT1MB6bNUIFkmV26OLgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KaHq2vD2wC24Jf3ohehz+mSEwbp6z3BVQnimaIBoeqc=;
 b=KxBWPne63fLSXc/nPeWjJHGCCtjbtSx9wxhgNsyivPkF3JgRvSgWZKMMtLgvQyla6TaPzoHlLUH1sEu3CzusqirPDRoQtsvplwAKdnjjrGwTrUXFFBZXu5WISDlvS9898Uo5xa9+f2skG/ZbnMVM9u3cZ37hsT8nHHOeDvFoysbJ2koAQctOoy6XjhofqkuMIM1zBpe3rwRcuDvbOWxf6RPDUOGrKhuuJghjDZpwCaJotFKqPagMPL9LyeheSIRT5fBgGCDTaZUPGiDeSGyirN52b/yvQcyU2SlQ44wzmWAAU8WApmp+4J3wl5iNeImyttatXtD2O7uCylLrW3zBvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH0PR11MB5268.namprd11.prod.outlook.com (2603:10b6:610:e3::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7386.18; Wed, 13 Mar 2024 12:23:14 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff%7]) with mapi id 15.20.7386.017; Wed, 13 Mar 2024
 12:23:14 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Murthy, 
 Arun R" <arun.r.murthy@intel.com>
Subject: Re: [PATCH v3 6/6] drm/i915/psr: Do not write ALPM configuration for
 PSR1 or DP2.0 Panel Replay
Thread-Topic: [PATCH v3 6/6] drm/i915/psr: Do not write ALPM configuration for
 PSR1 or DP2.0 Panel Replay
Thread-Index: AQHab7N0LooX2yuVpkGLV6TNPgLFHLE1kOGAgAASJ4A=
Date: Wed, 13 Mar 2024 12:23:14 +0000
Message-ID: <1ac19828a5d26aef4e33fe928f492238391fd66c.camel@intel.com>
References: <20240306104513.2129442-1-jouni.hogander@intel.com>
 <20240306104513.2129442-7-jouni.hogander@intel.com>
 <PH7PR11MB598180CC32E2370CAB74055BF92A2@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB598180CC32E2370CAB74055BF92A2@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH0PR11MB5268:EE_
x-ms-office365-filtering-correlation-id: c1065b1c-2420-44c0-bb9d-08dc43585b23
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cfYDTRyrtcNsNpRJ3Ezg3cclGX+euwz3eB5fhoMS40SVLS7hlQMyt7nkd3S2R3MNVbUFLOE4LRJoGtPG/owAR9BRxkOLPmvhsyS0LK/ZACzZlEJVP17s2AJd3FURXGepTiMkd7sc+hskvrirQWw4ugEoeFkY12xmz46EhWjqgc6LKht/YgM1eNioxvaP5bvZPuZx6s3lkV/BAToZ/iHzXC7ls12wFxmfIpnbap8ARwrdyK1yeEeqqqyg/1Wu6H+7KrnpT0VZT5gIbHnJDQp8wuP9uis7mKz5FQdV/KQKwGO0VL7HaMDo/ZTwo7c0Ugm1PvFoCSl9nQgBx7fBEkBm0vxj0u/lRmAwDUYvOYEVcMJRhZhIYTge3WNXbNCEgpvWSSsEYt2VoViYE+LP+6vS61CAPlqDGY5T+bPRLQfW9PmZkSxrjHghw135zfQNUCjXfqpRroqDJkB0NnulkhpwlC62eTMk8qdCjs73QRLyM4BO3hNx0q00YAiNa62catsmNxBYSzSct4nR6gZofwYP2+Ukzstn0OOXtJJKIeiMLSe4F5juY2CG6S8yUXZfRflLR4702DFoEuwRTDxufhPtYz1eYw91gIz1YkLneJFarp0Hm/jBQDvNb7L2iE7+2tQ9KpA+n0eSig+rQWIhT7O43Uz3lLAhVXlRB+Wx4Bg3ItKFovzTsmMAVfDjYLN4hnQfLEvPxCe8WVJodWxWzeO21Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dlpkOHA5MnhpMjZiKzFLTkd1NW5lMy9XRFN1ZTNnOWpwb1NYaWlvYnhJK1NK?=
 =?utf-8?B?Zkd5VXJzdFFBV0tYM3VtYWlHcmFoMnB2cjBlbjc5ZnlEbWIxRk5wZE9uYVZt?=
 =?utf-8?B?WWV5Rmp6aWdYZzZ2QnhJTkNGVThwclVGTEljLzdhOHp0Y256Y1RPbDYzOHEy?=
 =?utf-8?B?dzkyc0Z2WXpEaW9RUG0vMXIxNHJjME9qNHBJOGlEbjdPcTZycDA0Y3cydzJG?=
 =?utf-8?B?N1p0UjNHKy8wRXJRdTF5bnVNSjd3U3hiREtoektUUTZ5ZWZoZWRmK1JZR1FB?=
 =?utf-8?B?ak5OME9QMytxWjZ3ZjJ3dzhLQmVqZmpoNUhYV1g5dG1vc1hLdlNCMVZDU2hJ?=
 =?utf-8?B?d01wMnRJc1RVTldGVDRjZHArcnk2VStMcjBiOTU0YkJOSjhYbmhGWEo0c1hj?=
 =?utf-8?B?T2lxQ0d0cmJBMUhiRklncjUycHJMN1VYOE1Edmx4a1FPdnp5R1BPcFpCMkx1?=
 =?utf-8?B?L28veHBiTE1QMnJzWXdENHM0T1puTGtFRlVoTjRzekE4THZPNFgvdmgxaEVC?=
 =?utf-8?B?TWRFUExybldaKy94OEZ3T0hqdm5EWEczSEhYOXlzSmVCd1VyWERnSzhNSXJv?=
 =?utf-8?B?TTVJWTFNK1FoelBGby8ydStTdWh6eDM0UFhTcHM3cTJVRUVVaXAzUWRhQjhu?=
 =?utf-8?B?UDVZUjhpc0dLZ1JCYjVxUjMycW9sc21wcnNqc3NBSVVlOXpVNDdQdUhxbk1G?=
 =?utf-8?B?WkRUWG9DSFVicytZT2o3OTYrQWpoL2NVSFpmdFBpUDZMYzlPa043RnhlZThJ?=
 =?utf-8?B?RlowN1Zlb1RiOVg3c0VGSy9MeEVmdFUzY2dtdTFKc2gwMlk3L0I2WXVXZkVV?=
 =?utf-8?B?a2k0RUlCYmdGa1gxWm5Pb1dqUWVpR2kyODdRQ2xjTlJqeW90c09kK2JYbGp5?=
 =?utf-8?B?R3lHZnY0WkV2M21Rc1ppMWdEZ01kT0hZMHZNdi9GR2liTGkrZTV3QWVqVGFW?=
 =?utf-8?B?WmNjejJSUUJVUnBldHhqY0FGMklLaWpCSEZaajNMaHFkbndEMGkybk15a0s0?=
 =?utf-8?B?aklpTFNzRi9MR1U0SnIranVTTVlkZ0hOeXVKc3lEZFcvUlF6T0pzejNMMnIy?=
 =?utf-8?B?d3hoQ05DVDNiV2NSSDRwVE03eHk2K3FTZTMvdmtWNWhqaGg4VnJRMnlGVjZD?=
 =?utf-8?B?dHdzNHJqa2I1SFI3eVYvUFh0R2Ywb0VXdWNiN21qQkVkZitiZXJzcWI0Rzhu?=
 =?utf-8?B?WHE2bUVVWGx3VURsSGJsUktJaVFDUmtVWWdVczFoZ01PUndsVjBWNGZzRTlR?=
 =?utf-8?B?R1Jrbzl3b0dGZ1ZnT1Mwdk9pb2N5TkJQc3BUMWMvUTBwTTBqKzFhYUlxdkY1?=
 =?utf-8?B?WXA0VFpRYUZPN3VUVzBJR1BZZ0g5UllvbjlkbC83Qm9rK1ZtclhwSHFmRFpC?=
 =?utf-8?B?c2YwMW12bnpaNE1yS0UxdjB5OVhxY0FQcVViOG9CbHVkMGdXVWtlVGtRRnBt?=
 =?utf-8?B?U0VXeTFLYUMxTnozV0JmS1dSZFdXWWZpODBNcDBqUHU3NUgvV3ROUUViZEhZ?=
 =?utf-8?B?cHNneHdFZVZsME1SY21XTndkSzVUcnVWRkIxUlRiejJOdGZPMUlCdzdVbjFX?=
 =?utf-8?B?UTExTFN5S2FBbEFZeEhCTnJJSkwvQlVHZXBLZHFubjJxN2VQMSsyL1c5WDkx?=
 =?utf-8?B?b1A1SzlaNk5LeUcrQUxLYS90eW5vMmY2Mzd3T0R3SUphTzBNSHFTYVE2YzNG?=
 =?utf-8?B?aVd1Y0RtSGVSVGR5QUZtT3A2elY1QmFyWHVUaXdKeHNvdjZFOWxmSkkraUs0?=
 =?utf-8?B?RWtuUWYwdEp2OEdyVjVQSWQ5V2xCQWFyNVEwNXZiOXlGcDZtRXhmSktLeTB4?=
 =?utf-8?B?TmJEaEJzS3FuQU5aUTRYbWhONzgrL0J1VU0ySEtXQ0ZjdG4ycC9VRmtaWUox?=
 =?utf-8?B?VUNvQmovOWpFS1hWKzh5dzhwZXlLM09PZTZ2N2N4RGNkVnYxd1BYVDBtRGN4?=
 =?utf-8?B?Q2REbzNYQXV5eXoxYUorMWFaV2RZQjdDUUhUUjNPbUpGT084QVE2WHJPeko3?=
 =?utf-8?B?eU9UVURLV0ljNERpMkFBZFlhM1M0aisreTZTaFJIWGwyb1pFTDJ4bXBXYkpH?=
 =?utf-8?B?dG5ySTZ5T0xRYTZGWVNmdlhUM1l1NlAzOGRVaHZKSUx3NWN3cEhTUXFDb3pG?=
 =?utf-8?B?dUM4WldFVFZhamhIbVhMcGl6Uzk0VE5MaFk0ZUlGTFhTaWdvU0lzUStNdFls?=
 =?utf-8?B?N3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <19EC68ED6E3B3645BE4D4E11251E7DFB@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1065b1c-2420-44c0-bb9d-08dc43585b23
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2024 12:23:14.4492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ymCXPqVuWQ7z2DndUboSAxYVDuSrc8cgOQHsJc3Yh/VeFx011OG3BDSNbpOXHfH6jv/eAJlrajBuZAzYqcKnNCc5mZKOgqTjVsKfHTPHzio=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5268
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

T24gV2VkLCAyMDI0LTAzLTEzIGF0IDExOjE4ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogV2VkbmVzZGF5
LCBNYXJjaCA2LCAyMDI0IDQ6MTUgUE0NCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPjsgTWFubmEsIEFuaW1lc2gNCj4gPiA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBN
dXJ0aHksIEFydW4gUg0KPiA+IDxhcnVuLnIubXVydGh5QGludGVsLmNvbT47DQo+ID4gSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDogW1BBVENI
IHYzIDYvNl0gZHJtL2k5MTUvcHNyOiBEbyBub3Qgd3JpdGUgQUxQTQ0KPiA+IGNvbmZpZ3VyYXRp
b24gZm9yDQo+ID4gUFNSMSBvciBEUDIuMCBQYW5lbCBSZXBsYXkNCj4gPiANCj4gPiBObyBuZWVk
IHRvIHdyaXRlIEFMUE0gY29uZmlndXJhdGlvbiBmb3IgRFAyLjAgUGFuZWwgUmVwbGF5IG9yIFBT
UjEuDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBp
bnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jIHwgMyArKy0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IDRjZDJiYWQ1MjQxZi4uYzdiZGEzNzQ0NGYwIDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAg
LTE2OTksNyArMTY5OSw4IEBAIHN0YXRpYyB2b2lkIGxubF9hbHBtX2NvbmZpZ3VyZShzdHJ1Y3QN
Cj4gPiBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0
IGludGVsX3BzciAqcHNyID0gJmludGVsX2RwLT5wc3I7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHUz
MiBhbHBtX2N0bDsNCj4gPiANCj4gPiAtwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGV2
X3ByaXYpIDwgMjApDQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2
KSA8IDIwIHx8ICghaW50ZWxfZHAtDQo+ID4gPnBzci5wc3IyX2VuYWJsZWQgJiYNCj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoA0KPiA+ICFpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKSkN
Cj4gDQo+IFRoaXMgcGF0Y2ggbWF5YmUgZ29vZCB0byBzcXVhc2ggd2l0aCBwcmV2aW91cyBwYXRj
aCwgbm90IHN1cmUgd2lsbA0KPiB0aGVyZSBiZSBhbnkgbmVnYXRpdmUgaW1wYWN0IGlmIHBhbmVs
IGRvZXMgbm90IHN1cHBvcnQgYXV4LWxlc3MgYWxwbQ0KPiBhbmQgZnJvbSBzb3VyY2Ugc2lkZSBp
dCBpcyBlbmFibGVkLg0KDQpUaGVzZSBhcmUgbG9naWNhbGx5IGRpZmZlcmVudCB0aGluZ3MuIFBy
ZXZpb3VzIHBhdGNoIGlzIGVuYWJsaW5nIEFMUE0NCmZvciBlRFAgcGFuZWwgcmVwbGF5LiBUaGlz
IHBhdGNoIGNvdWxkIGJlIGFwcGxpZWQgYWxyZWFkeSBub3cgYW5kIHRoYXQNCndvdWxkIGRvIHRo
ZSByaWdodCB0aGluZy4gSS5lLiBkbyBub3QgY29uZmlndXJlIGFscG0gZm9yIHBzcjEgb3IgcGFu
ZWwNCnJlcGxheS4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiBSZWdhcmRzLA0K
PiBBbmltZXNoDQo+IA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJu
Ow0KPiA+IA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfZHAtPnBzci5wYW5lbF9yZXBs
YXlfZW5hYmxlZCAmJg0KPiA+IGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpIHsNCj4gPiAtLQ0K
PiA+IDIuMzQuMQ0KPiANCg0K
