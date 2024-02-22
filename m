Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FCD8602B3
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 20:31:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0852510EA4A;
	Thu, 22 Feb 2024 19:31:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WSVgpA+F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8B2F10EA4A
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 19:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708630282; x=1740166282;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jLWMbHQo08xkE/GCBBqxcpt+/sjWNEN/JW88nQKJY3g=;
 b=WSVgpA+FVQ+P8Bjh+t2HF6pXb+3ciCRa3y21i0CROKllSAC1Qdpfl8KL
 yif86edy6FtqRr/KSem/SJQ1oa9jTbU0z72bGt2mqa+Z3fdd8mx4iJnVu
 1MvJRFXOxYn9WbE+GR0L58hvpukK/n0C/5pHv1xD3D8+z43/O+BzIA1lT
 xDH8r27RL+YiH0Nj2liSW7WngTkkBdMfSqV6XFPeryHqp8e2xEuxB24+R
 +ZzlW4o9G3TU0mYkIvImg1Etn97FPEj49fGhhGg7Zk/E9IlEwAWuPeqvK
 8308Q1cpcMDxQ/DCDIXf5MAtA2imnhKj6oNKqX1H3HGcZWy6CbVc8j4mE w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="14307003"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="14307003"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 11:31:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5576202"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 11:31:21 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 11:31:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 11:31:21 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 11:31:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H7hUp+G7q1DT7iADRqhWK1FxS+8ckl3B7itQbdlWGhkrcH/W9kpLmLL+zUzw0Al/y2O9CCJRBjzhKMvWOupqJH55xKTxi6F2HmGOs9Z9wt1bbjg3+S7av3IcBJUgsQeCiHnSPaXER/K4p2rY4W3Y8fpu3BJ7xnLUOnYka/tPA4xXkmCoSYv4fyuBPmn9l15bCaHd0+KDai4Ac9AO9mEoXSO9tD7Lp1l67G9DO/AQFVO5raQNmNoQr47s9LzW3ZPMUQhBawcKWKX7KDwOFLh8414W17oVCmIoLOixGKSGmfcWJS/LQKmDZV8rcGHwrj5wDxjq4F573/E2CVommcaqeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jLWMbHQo08xkE/GCBBqxcpt+/sjWNEN/JW88nQKJY3g=;
 b=lFjw2R6v9x8xX6Vlp74KXdwj9mtDIkwZr2+tRASKrU7cO5OvnoiLkQW9Q312oXhWLpoyCo1t/fKvpddWbUbcrK6ouGpSMQHHbsrJqS6zWuiRgYYcyTQXcx4cne7WZtpEkvbea+JkhaZtGuu3rTq3nTKhaizNnYKAzy0fhXD0dp8Ug4Ksru+GyeHSspwgxwMoKov/KWB+tR6FTdHn0BYormY6vNMI1zQSIIotXKn65mNo8t68eBlNLdcACVUoy6qmkHcuv+wpoTiC564qwi5rzoQN2ZMwJ6RMUN0Y0LCLT0vFjxO6PGhFTpM9tEiTsKTyKlyTCnJXFhj7jx301RHTxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by DS0PR11MB7482.namprd11.prod.outlook.com (2603:10b6:8:14a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Thu, 22 Feb
 2024 19:31:17 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::71ea:e0ea:808d:793b]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::71ea:e0ea:808d:793b%4]) with mapi id 15.20.7339.009; Thu, 22 Feb 2024
 19:31:17 +0000
From: "Harrison, John C" <john.c.harrison@intel.com>
To: "maksym@wezdecki.pl" <maksym@wezdecki.pl>
CC: "Wajdeczko, Michal" <Michal.Wajdeczko@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: GuC issue
Thread-Topic: GuC issue
Thread-Index: AQHaWZvEJ/J7bmyQukiE2yOf7MT8RbEBQA0AgABjtQCAD8ilAIAB2rIAgAAlNQCAAZH/AIAAP/qA
Date: Thu, 22 Feb 2024 19:31:16 +0000
Message-ID: <CH3PR11MB84410E859B484FD84ACE65E4BD562@CH3PR11MB8441.namprd11.prod.outlook.com>
References: <mpy7oR29BN-ZuXsGo_DrVjgvt7tZXStYEkdhwHKRFqzjB6DkbATG6i8qLYaNq2fAsXIUiYXJ6HBXTurfBaLHuwcxeggLjtKQHdxwVWdsO04=@pm.me>
 <af232621-ed88-466e-9162-7698b5583503@intel.com>
 <dRxB0peDhbOHBqsX5rpWZN-qZtPdwWItk-L1ZAZm8RH8LQYpNBGa9qghm3dOCuM4fqbzOsNAFEafiu2zSrQNbnH6oCrlBb1fiAm5AhJQr64=@pm.me>
 <G6cnnxkrPv0dkDZ2VYL51hau5Mm-RdGVA74E0lhunn-U3XoV3d8OwF92LK-lCbQ24yM8ksZuOh9EAEpvAgz7Td0xtfFwT-Zy7M-5KJ73qqY=@wezdecki.pl>
 <jDjRWkHtb3G4vJFfktNDbWc_n_3WjYYvIOYbXmZHxbcITIeP3k6FnjerNyECm8NNpgs0H1DRJTaeiE5c9qYib5djHdq34VG4wOPZbNPEj-s=@wezdecki.pl>
 <bb9bd07a-5197-46e1-8541-aeb540b421a3@intel.com>
 <5_wII6n600vppHk7s--lu7jrLDbxtBBglPTXx8BxdhPfYS5YaArq9XZ3OhcuRnYKOfBIxSTUGk7CAz-d1KZ-_-7J9g3qVNkzxDvewTrIX-I=@wezdecki.pl>
In-Reply-To: <5_wII6n600vppHk7s--lu7jrLDbxtBBglPTXx8BxdhPfYS5YaArq9XZ3OhcuRnYKOfBIxSTUGk7CAz-d1KZ-_-7J9g3qVNkzxDvewTrIX-I=@wezdecki.pl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8441:EE_|DS0PR11MB7482:EE_
x-ms-office365-filtering-correlation-id: 2683dc65-cb5c-4a40-c264-08dc33dcd6d2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iQBgMBbqq1aEZa1ML1x5HHoCwcpaVQagLAyoupBOTimzvkwkEdxXgABhLHAkw9VY7Zg96bJKLwzABU/mZu5OYsFvVYR9DBhOCy2NgbFO9Km9So6T/vmrtka7WpPLg8PhQpdDFjQB4ryIi/hyra32YezYOc/SJ+GtcknmF4MWFv3Ieddalqrl0SXVgGEH144/GHVntsv9Zd1thMngJkYO2/4vkwv3KD9sL9dOCy6Lj3T6Um1otaf7A/Jmc9zYyXBXTFMkAoatOLbY4sxvmvbZqpPLhEGF1X9DyKh3Sw6tHJnQSlrVrcX9UVAQLlZgiCuRZkc1jB2o9Fi8ebzzL3hj8fIUbh3LtqkL4GyUEdhGxIvIaqibT6PEzPOTlQm9Srj9gXCi45nx4YgTvpvjNgo9mDRjrBfveCHF8ZWQc26TB3vPOXT7UoZowFGLjiWiCktNA5zZTHtYErbSs7bwBNJtzkQVvGgwuREC6+GjrpVKkzM13/ltb30k0Izw/BXjBwUGze/14onNhhWxbDr2LAJLTOoZmwr247JHJU1C2UsJ3Fwo8dfH17VPfktp4E7K144/erUns0wEO6U6V3IQNHsA0RJ8O9rIUmpj1M2wzPlDHma0xD3BwjIaY46FXq7NM9YV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MFN2QXg4KzNKYUhTbTgwTG9KZWMwcnJycTJZdE1wci95UGp4WEhhTHk2NlFt?=
 =?utf-8?B?QUtpQ0E1WWU5S0YyWEhUOThaNXI4ekJZN3c3MThqeno1WDJwQnVCOG8wd044?=
 =?utf-8?B?eGxhdEFWVEVKY3FEajA5bDJSQmlrRzM0MVBKa1Q1S2FNMkJuSWlKT0RkZ0dE?=
 =?utf-8?B?bkZQakZLV09KTFBGblpZQkhHQlUvWlVBaEgyOWt6dXR2MmdNZm1TL1JLdjRZ?=
 =?utf-8?B?RkRlUEZQS1hLUXRvWVpyczN0cGtlNjZ1U1l0cGUrRnVTWUIvUU9rMkhiQ2pO?=
 =?utf-8?B?Vm9UUW1ueHJaU3ZCM2JIOEZ0TThhOUV3dVlrbU40OXNPSFR2NTVUbzRnV2xJ?=
 =?utf-8?B?bFlOOE16QTgvY1dJajluaG0wNzRQcThxQ3pNMGR0RHdQRE5oRTFOekhiU3Fp?=
 =?utf-8?B?Rk9DLysrNE5HUG9BNXZuNW5LNmhyOEwrb0luSVdJQUpMTGhNcENDdERUcGxE?=
 =?utf-8?B?cXhLNHVacEtibllOUGpOZ21yWmxCYWlUVnUwWmxXUUxFY0JLa2x4T0JhVHFK?=
 =?utf-8?B?eUxwcm9WNERCNzdoa1lrNUhEUVJERDFHdXR4S3NLTW1ScjdWTFBKdi9LN3dt?=
 =?utf-8?B?TmEyWkxXaTZ6SUF5QTNDZTNqU0tQYmg3QWU1b0p3Ymw3Mk8wSHQ0bDRWZjBY?=
 =?utf-8?B?Kzh5Y3NlSmRjd1ppaWxhU3ltMy9DYk1BMUVqeUx5VEtuSm04Mkg3OGV3M3hx?=
 =?utf-8?B?L29JQnRSVmMxc1haOVZsVHB5dlVhOFFSK2RHT3JGM21TSVovbnI4TGhkTE1Q?=
 =?utf-8?B?cDBDWjdvK0gwRkU1dDZCdlVjY01OZ3lUdHdkV1dnd2IyZ2p3OEhhWGFHR0k4?=
 =?utf-8?B?UzgxQ05wKzgvelBLYWxNbzdFTFNUbWdJSDZBaEIwZjc0anFaZlVZODFJVGlG?=
 =?utf-8?B?bWZzVWZPcXVOSHhuSnh5bE1jMEgwMHlYZmI0WFkwUEdRQ25GQnNDV0VOb3Bj?=
 =?utf-8?B?MjRXTVBaakJueVZxamVhcHdwdm91djNRMnRmRVlwK1ZUMHRHbisxT1MzWENQ?=
 =?utf-8?B?MHB1Q1Rydk9wZHR0SDJqYlhCcURManFXRVlPdldMUEl3ek5IZDFBbzBBcjBs?=
 =?utf-8?B?Mnp3SFpZMjY0MTEyK20yK0JmeisxaGpYd0V3NnAzSDFQdk5OQmhpR2NFNDBJ?=
 =?utf-8?B?bFc4Z1B6cko1L3MrTUE4dis0UjdNUU0wYkhsbDZycGRwaFMxUlNTK3dUK0Ny?=
 =?utf-8?B?bW1URnRXTVltM3NyNzZMTkhXQWp4M20wMEJOWmd0KzF2VFRFTSt4dmJiZzVs?=
 =?utf-8?B?N3FUY2VFZ3VvVHpWa3NSNkwyZVlTNjFLUXp6U2FwRUlRZGZOVThEUFhYbkVu?=
 =?utf-8?B?MDl2VjFnWjMxMUdaRTBaWHJGdEZaWHhZREhFcktJOHViQ1RZc0ZZbVk5SlhQ?=
 =?utf-8?B?eTZRU1ZZNjdQTys3NDVVaDRUTkd3b2RVbXVsZFdaYzNkVnRBMzVmL3lBa1g4?=
 =?utf-8?B?KzIxTXNoMDl4QTVWY24wcGxEZzdwR2pjYzg2bnlTUUFDSCsvUTdmOFVHNzB1?=
 =?utf-8?B?cDZUandsaE1BRG0zVEw4YVJUOHpYL0k5amZHbUg4TnkxMG02T1h0MFlSSURK?=
 =?utf-8?B?QWZLaXdSb2dId0FRMFlXZCttZmJ3MmZ2TCtjMTJPVlEzQWxzM1lMVHhhZTA2?=
 =?utf-8?B?VGQ0Wk9PbERkZW5zaExwc25WS1NpY2JrdWM3amhYQy9paEM3M0RDQ3kyR2Vk?=
 =?utf-8?B?dW0wWHBycTR5T2Z1T0hNMFd0d3UyOG9tYWtkeVV5bTRGSFIyQlhnVTQzZVBy?=
 =?utf-8?B?c3B5VndjeEh0OC8yVlI1aDE1aUp5UnV6Wjc0N0xmME9ldjFseFY0RDV1ZER6?=
 =?utf-8?B?YWlMbzl4Q3YvT2hqSFlBbjJBMmNUdS8ycU8yeTZpMi94QU9vRmFNTG9sSWVS?=
 =?utf-8?B?MzQzR2xYM28vVjlkRy8xeHJZSTNjY1lMZFZTOHlFTTl0VUlFWlpXYmxqdjZL?=
 =?utf-8?B?YjJhazJUSnZxd2tYVUp5QkN0U2l4NEtTTGllekl3SVB2UEZWZWRJU1VsTkRH?=
 =?utf-8?B?Wmo4RVQyNmU0dUlWaW5VVHdnZE9UYU03WGU2TEJmZkRMdTN3RHZOTSsrOW54?=
 =?utf-8?B?VTNJT09Qc3llWGtPNitTWk95VHZlTzYyeHhNZFg1UWYzU0hKcUhjeVdrQXBt?=
 =?utf-8?Q?2smda+XvgeZWE24eEvtpTJyIz?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2683dc65-cb5c-4a40-c264-08dc33dcd6d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2024 19:31:16.9281 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HvpH/dB1VrQXKmk3MHzu4pJOzEQfmaoLuMhURHalb4cj8Tq0x1oSz17Z5LPDtpbymaxcPT3xlTCAEQ4PDokWDBvm4N8HE4Qfh+XNv1s/xGE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7482
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

SGVsbG8sDQoNClRoYXQgd29ya2VkIGJldHRlci4gVGhlIGNvbXBsYWludCBpcyB0aGF0IHRoZSBl
bmdpbmUgbWFwcGluZyB0YWJsZSBpcyBpbnZhbGlkLiBTZWUgdGhlIGk5MTUgY29kZSBpbiBndWNf
bWFwcGluZ190YWJsZV9pbml0ICgpIGluIGd0L3VjL2ludGVsX2d1Y19hZHMuYyBmb3IgYW4gZXhh
bXBsZSBvZiBob3cgdG8gaW5pdGlhbGlzZSB0aGUgdGFibGUuDQoNCkpvaG4uDQoNCg0KLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IG1ha3N5bUB3ZXpkZWNraS5wbCA8bWFrc3ltQHdl
emRlY2tpLnBsPiANClNlbnQ6IFdlZG5lc2RheSwgRmVicnVhcnkgMjEsIDIwMjQgMDc6MTUNClRv
OiBIYXJyaXNvbiwgSm9obiBDIDxqb2huLmMuaGFycmlzb25AaW50ZWwuY29tPg0KQ2M6IG1ha3N5
bUB3ZXpkZWNraS5wbDsgV2FqZGVjemtvLCBNaWNoYWwgPE1pY2hhbC5XYWpkZWN6a29AaW50ZWwu
Y29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KU3ViamVjdDogUmU6IEd1QyBp
c3N1ZQ0KDQpBaCwgSSBkdW1wZWQgdGhlbSB3aXRoIFdpbmRvd3MgbmV3IGxpbmUgY2hhcmFjdGVy
cy4NCg0KSGVyZSBpcyBhIG5ldyBsb2cgYmluYXJ5IGR1bXAuDQoNCkkgbW92ZWQgdG8gdGhlIG5l
d2VzdCBUR0wgR3VDIGZpcm13YXJlIGZyb20gbGludXgtZmlybXdhcmUgcmVwby4NCg0KDQrFm3Jv
ZGEsIDIxIGx1dGVnbyAyMDI0IDEyOjE2IEFNLCBKb2huIEhhcnJpc29uIDxqb2huLmMuaGFycmlz
b25AaW50ZWwuY29tPiBuYXBpc2HFgihhKToNCg0KPiANCj4gDQo+IEhlbGxvLA0KPiANCj4gU29t
ZXRoaW5nIGlzIHZlcnkgY29ycnVwdGVkIHdpdGggdGhhdCBHdUMgbG9nLiBUaGUgbG9nIGNvbnNp
c3RzIG9mIGEgDQo+IGhlYWRlciBwYWdlIGFuZCB0aGVuIGEgc3RyZWFtIG9mIGxvZyBlbnRyeSBz
dHJ1Y3R1cmVzLiBUaGUgc3RydWN0dXJlIA0KPiBpcyBzdXBwb3NlZCB0byBiZSAyMCBieXRlcyBs
b25nIGFuZCBzdGFydHMgd2l0aCBhIGZvdXIgYnl0ZSB0aW1lIA0KPiBzdGFtcC4gQnV0IEkgYW0g
c2VlaW5nIHdoYXQgaXMgY29uY2VpdmFibHkgYSAzMmJpdCB0aW1lc3RhbXAgYXBwZWFyaW5nIA0K
PiBhdCAyMSBieXRlIGluY3JlbWVudHMgdGhyb3VnaCB0aGUgbG9nLiBFdmVuIG1vcmUgY3VyaW91
c2x5LCB0aGUgdGltZSANCj4gc3RhbXAgc2VlbXMgdG8gaGF2ZSBhbiAweDBELCAweDBBIGFmdGVy
IGl0LiBBcmUgeW91IGRvaW5nIGFueSBwcmludGYgDQo+IHR5cGUgb3BlcmF0aW9uIGluIG9yZGVy
IHRvIHdyaXRlIHRoZSBsb2cgb3V0IGZyb20gbWVtb3J5IHRvIGRpc2s/DQo+IA0KPiBJTlRFTF9H
VUNfTE9BRF9TVEFUVVNfSU5JVF9EQVRBX0lOVkFMSUQgbWVhbnMgdGhhdCB0aGUgR3VDIGRpZCBu
b3QgDQo+IGxpa2UgdGhlIGluaXRpYWxpc2F0aW9uIGRhdGEgcGFzc2VkIGluLiBNb3N0IGxpa2Vs
eSwgc29tZXRoaW5nIGluIHRoZSANCj4gQURTIHN0cnVjdHVyZSBpcyBub3QgdmFsaWQuIElmIHlv
dSB0cnkgd2l0aCB0aGUgbGF0ZXN0IEd1QyB2ZXJzaW9uLCANCj4gdGhhdCBtaWdodCBnaXZlIHlv
dSBtb3JlIGluZm9ybWF0aW9uIGFzIHRvIHdoYXQgaXMgdGhlIGluY29ycmVjdC4gTW9yZSANCj4g
c3RhdHVzIGNvZGVzIGhhdmUgYmVlbiBhZGRlZCBzaW5jZSA3MC4xLjEuDQo+IA0KPiBKb2huLg0K
PiANCj4gDQo+IE9uIDIvMjAvMjAyNCAwNTowMywgbWFrc3ltQHdlemRlY2tpLnBsIHdyb3RlOg0K
PiANCj4gPiBIaSwNCj4gPiANCj4gPiBQbGVhc2Ugc2VlIEd1QyBsb2cgYXR0YWNoZWQgdG8gdGhp
cyBlbWFpbC4NCj4gPiANCj4gPiBMb2cgc2l6ZSBpcyAiUEFHRV9TSVpFK0RlYnVnIExvZyg2NEtC
KSArIENyYXNoIExvZyAoOEtCKSArIENhcHR1cmUgTG9nICgxTSkiDQo+ID4gDQo+ID4gQ2FuIGFu
eWJvZHkgZnJvbSBJbnRlbCBkZWNvZGUgdGhpcyBsb2cgYnVmZmVyPyBUaGFua3MuDQo+ID4gDQo+
ID4gV2hhdCBhbSBJIGRvaW5nIHdyb25nPw0KPiA+IA0KPiA+IE1ha3N5bQ0KPiA+IA0KPiA+IHBv
bmllZHppYcWCZWssIDE5IGx1dGVnbyAyMDI0IDA5OjQ0LCBtYWtzeW1Ad2V6ZGVja2kucGwgbWFr
c3ltQHdlemRlY2tpLnBsIG5hcGlzYcWCKGEpOg0KPiA+IA0KPiA+ID4gSGksDQo+ID4gPiANCj4g
PiA+IEkgZml4ZWQgb25lIGlzc3VlIGluIG15IGRyaXZlci4gTG9nIGFkZHJlc3Mgd2FzIHNldCBp
bmNvcnJlY3RseS4NCj4gPiA+IA0KPiA+ID4gUmlnaHQgbm93LCBhZnRlciBHdUMgdXBsb2FkaW5n
LCBHVUNfU1RBVFVTIGNoYW5nZWQuDQo+ID4gPiBSaWdodCBub3csIGludGVsX2d1Y19sb2FkX3N0
YXR1cyBpcyBJTlRFTF9HVUNfTE9BRF9TVEFUVVNfSU5JVF9EQVRBX0lOVkFMSUQgPSAweDcxLg0K
PiA+ID4gDQo+ID4gPiBXaGF0IGRvZXMgaXQgbWVhbj8NCj4gPiA+IENvdWxkIHlvdSBwbGVhc2Ug
aGVscCBtZSB3aXRoIHRoaXM/DQo+ID4gPiANCj4gPiA+IFRoYW5rcywNCj4gPiA+IE1ha3N5bQ0K
PiA+ID4gDQo+ID4gPiBwacSFdGVrLCA5IGx1dGVnbyAyMDI0IDA4OjQyLCBuYXR1ci5wcm9kdWt0
QHBtLm1lIG5hdHVyLnByb2R1a3RAcG0ubWUgbmFwaXNhxYIoYSk6DQo+ID4gPiANCj4gPiA+ID4g
SGVsbG8sDQo+ID4gPiA+IA0KPiA+ID4gPiBQbGVhc2Ugc2VlIG15IGNvbW1lbnRzIGJlbG93Lg0K
PiA+ID4gPiANCj4gPiA+ID4gcGnEhXRlaywgOSBsdXRlZ28gMjAyNCAyOjQ1IEFNLCBKb2huIEhh
cnJpc29uIGpvaG4uYy5oYXJyaXNvbkBpbnRlbC5jb20gbmFwaXNhxYIoYSk6DQo+ID4gPiA+IA0K
PiA+ID4gPiA+IEhlbGxvLA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFdoYXQgcGxhdGZvcm0gaXMg
dGhpcyBvbj8gQW5kIHdoaWNoIEd1QyBmaXJtd2FyZSB2ZXJzaW9uIGFyZSB5b3UgdXNpbmc/DQo+
ID4gPiA+ID4gSXQncyBUR0wuIEknbSB1c2luZyB0Z2xfZ3VjXzcwLjEuMS5iaW4gZmlybXdhcmUg
YmxvYi4NCj4gPiA+ID4gDQo+ID4gPiA+ID4gT25lIHRoaW5nIHlvdSBtYWRlIG5lZWQgdG8gZG8g
aXMgZm9yY2UgbWF4aW11bSBHVCBmcmVxdWVuY3kgDQo+ID4gPiA+ID4gZHVyaW5nIEd1QyBsb2Fk
LiBUaGF0IGlzIHNvbWV0aGluZyB0aGUgaTkxNSBkcml2ZXIgZG9lcy4gSWYgDQo+ID4gPiA+ID4g
dGhlIHN5c3RlbSBkZWNpZGVzIHRoZSBHUFUgaXMgaWRsZSBhbmQgZHJvcHMgdGhlIGZyZXF1ZW5j
eSB0byANCj4gPiA+ID4gPiBtaW5pbXVtIHRoZW4gaXQgY2FuIHRha2UgbXVsdGlwbGUgc2Vjb25k
cyBmb3IgdGhlIEd1QyBpbml0aWFsaXNhdGlvbiB0byBjb21wbGV0ZS4NCj4gPiA+ID4gPiBUaGFu
a3MgZm9yIHRoZSBoaW50LiBJJ20gbm90IGRvaW5nIHRoYXQgYXQgYWxsIGluIG15IGNvZGUuIEhv
dyBhbSBJIHN1cHBvc2VkIHRvIGRvIHRoaXM/IElzIHRoZXJlIGEgc3BlY2lmaWMgcmVnaXN0ZXIg
Zm9yIHRoYXQ/DQo+ID4gPiA+IA0KPiA+ID4gPiA+IERpZCB0aGUgc3RhdHVzIGNoYW5nZSBhdCBh
bGwgZHVyaW5nIHRoYXQgc2Vjb25kIG9mIHdhaXRpbmc/IE9yIA0KPiA+ID4gPiA+IHdhcyBpdCBz
dGlsbCByZWFkaW5nIExBUElDX0RPTkU/DQo+ID4gPiA+ID4gSXQncyBhbHdheXMgTEFQSUNfRE9O
RS4NCj4gPiA+ID4gDQo+ID4gPiA+ID4gRm9yIEFEUyBkb2N1bWVudGF0aW9uLCBJJ20gYWZyYWlk
IHRoYXQgdGhlIGJlc3Qgd2UgY3VycmVudGx5IA0KPiA+ID4gPiA+IGhhdmUgcHVibGljbHkgYXZh
aWxhYmxlIGlzIHRoZSBpOTE1IGRyaXZlciBjb2RlLiBJZiB5b3UgYXJlIA0KPiA+ID4gPiA+IG5v
dCBpbnRlbmRpbmcgdG8gdXNlIEd1QyBzdWJtaXNzaW9uIHRoZW4gbW9zdCBvZiB0aGUgQURTIGNh
biBiZSBpZ25vcmVkLg0KPiA+ID4gPiA+IE9rLCB0aGF0IGdyZWF0LiBXaGljaCBwYXJ0IG9mIEFE
UyBpcyBtdXN0LWhhdmUgdGhlbj8NCj4gPiA+ID4gDQo+ID4gPiA+ID4gSWYgeW91IGNhbiBzaGFy
ZSB0aGUgR3VDIGxvZywgdGhhdCBtaWdodCBwcm92aWRlIHNvbWUgY2x1ZXMgYXMgDQo+ID4gPiA+
ID4gdG8gd2hhdCBpcyBoYXBwZW5pbmcuIEZvciBqdXN0IGxvZ2dpbmcgdGhlIGJvb3QgcHJvY2Vz
cywgeW91IA0KPiA+ID4gPiA+IHNob3VsZG4ndCBuZWVkIHRvIGFsbG9jYXRlIGEgbGFyZ2UgbG9n
LiBUaGUgZGVmYXVsdCBzaXplIG9mIA0KPiA+ID4gPiA+IGk5MTUgZm9yIHJlbGVhc2UgYnVpbGRz
IGlzIDY0S0IuIFRoYXQgc2hvdWxkIGJlIHBsZW50eS4NCj4gPiA+ID4gPiBJJ2xsIGNvbGxlY3Qg
R3VDIGxvZyBhcyBzb29uIGFzIHBvc3NpYmxlLiBJcyBpdCBzb21ldGhpbmcgdGhhdCBjYW4gYmUg
dW5kZXJzdG9vZCB3aXRob3V0IGEga25vd2xlZGdlIG9mIEd1QyBpbnRlcm5hbHM/IE9yIGlzIGl0
IHNpbXBseSBoZXggZHVtcHM/DQo+ID4gPiA+IA0KPiA+ID4gPiA+IEpvaG4uDQo+ID4gPiA+ID4g
DQo+ID4gPiA+ID4gT24gMi82LzIwMjQgMjM6NTksIG5hdHVyLnByb2R1a3RAcG0ubWUgd3JvdGU6
DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBIaSwNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4g
SSdtIGN1cnJlbnRseSBpbXBsZW1lbnRpbmcgR3VDL0h1QyBmaXJtd2FyZSBzdXBwb3J0IGluIG9u
ZSBTYWZldHkgQ3JpdGljYWwgT1MuDQo+ID4gPiA+ID4gPiBJJ20gZm9sbG93aW5nIGk5MTUgY29k
ZSBhbmQgSSBpbXBsZW1lbnRlZCBhbGwgcGF0aHMgKEkgZG9uJ3Qgd2FudCBHdUMgc3VibWlzc2lv
biBvciBTTFBDIGZlYXR1cmVzKS4gSSBuZWVkIEd1QyB0byBhdXRoZW50aWNhdGUgSHVDIGZpcm13
YXJlIGJsb2IuDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IEkgbWlycm9yZWQgR3VDIGltcGxl
bWVudGF0aW9uIGluIG15IGNvZGUuDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IEFmdGVyIEd1
QyBETUEgdHJhbnNmZXIgc3VjY2VlZHMsIEknbSByZWFkaW5nIEdVQ19TVEFUVVMgcmVnaXN0ZXIu
DQo+ID4gPiA+ID4gPiBIVyByZXR1cm5zIElOVEVMX0JPT1RST01fU1RBVFVTX0pVTVBfUEFTU0VE
IGFzIGJvb3Ryb20gc3RhdHVzIGFuZCBJTlRFTF9HVUNfTE9BRF9TVEFUVVNfTEFQSUNfRE9ORSBh
cyBHdUMgbG9hZCBzdGF0dXMuDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IFVuZm9ydHVuYXRl
bHksIGFmdGVyIG9uZSBzZWNvbmQgb2Ygd2FpdGluZywgdGhlIHN0YXR1cyBkaWRuJ3QgZ2V0IGNo
YW5nZWQgdG8gSU5URUxfR1VDX0xPQURfU1RBVFVTX1JFQURZIGF0IGFsbC4NCj4gPiA+ID4gPiA+
IA0KPiA+ID4gPiA+ID4gV2hhdCBpcyBhIHBvdGVudGlhbCBpc3N1ZSBoZXJlPw0KPiA+ID4gPiA+
ID4gQ291bGQgeW91IHBsZWFzZSBoZWxwIG1lPw0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBJ
biBhZGRpdGlvbiB0byB0aGlzLCBjb3VsZCB5b3UgcGxlYXNlIHBvaW50IG91dCBzb21lIGRvY3Vt
ZW50YXRpb24gYWJvdXQgR3VDJ3MgQURTIHN0cnVjdD8NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+
ID4gVGhhbmtzLA0KPiA+ID4gPiA+ID4gTWFrc3ltDQoNCg==
