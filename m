Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 382708A9FBC
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 18:12:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 180FB10FCF9;
	Thu, 18 Apr 2024 16:12:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nGruTk5W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0822A10FCF9
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Apr 2024 16:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713456751; x=1744992751;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=fzGDxaV+iwfdIZjDQ/uGpSeH/kcjdqDWi1MrY/mbkRY=;
 b=nGruTk5WntqDkrtxCXn8USq242pp4hGBc5+UnkzwChOIhq9NvEuIvYen
 KkZEZfh9/7zw+rGJ+tzdVo9x9fcMHkVPP879Ff1WG/RV9xR3ScFAsAmKp
 mMBt2Dd7Y8ghvYY1NTcmD2WN1uj5iAfdZXZ/i/WUqujiK8xCXS3HG2rxG
 vmSVd9KrDGARe4zYlMgWyj0uoJXUAI1p4gDumpKq656XeJhclneU2ukhe
 0f4bYDVFaAr8FtfWaK0hsPLSDBmpKf2nm6bbpZgwambN+z+qmEgyj7766
 qDbkSa3Baroa5HpdCxdY9auKiLrxFfM4FQYyacZ5xTep4adckIvqLLpUv g==;
X-CSE-ConnectionGUID: nEZMTe0uSMOqHktVQlY3wQ==
X-CSE-MsgGUID: FpkSQYmZSWOxZF93HsH9Bg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="8941563"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; 
   d="scan'208";a="8941563"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 09:12:04 -0700
X-CSE-ConnectionGUID: W4SQTvlGRjqwVvvFWJxk2g==
X-CSE-MsgGUID: xahIqUBTR+246RKZRv3LNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="23651744"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 09:12:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 09:12:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 09:12:02 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 09:12:02 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 09:12:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZP9v0Dbb+TLooTDDt4o1/LwloVhytBbHfyLovxNQpJgO/TFR5QXkT/VVH3vGVrfy+uIKSLfl5d9elzSo/A52/dBt8gt0US90tgh26/WUtsMU6t4x4f98FHHJgtJT00Nmm4JGc/Nlw7tf7PwEm1NhJv5wIXByz4rVLCZW9vGHerzsI2BQy+AcjogEVdk6xCF6hSpu3NfLQ4so/WKzj/kqXWD8hs6Ct1OD3r3bitZrkoBEu0Qvx9EMWNOP6DCP3sOoGmwCGTB4/xpGFS2QhL+mjZgmkD2tqJ6mgICrUVzZMAcF/MvZhc9uMRJG0Swg3/CUq7GnLAkx/NF1cf1QoJxZUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fzGDxaV+iwfdIZjDQ/uGpSeH/kcjdqDWi1MrY/mbkRY=;
 b=BeBweqxJ3L9cjnOM8+vrTCHdt9tAL/wS018zb04ZKar/WcIyFCfxisn4hG/LgD0LFysY4erbgHvDtdADji/2el6C3pfJecIMiPAvK1mjk0X6SqXjtvjCkrjroXw4FVp/0tEoYUaHhtTkrk8wFOVFOegCMesNue6ynaSuVdYNxYWK4NOUDaK5rbLO0g8yd40IEvLlpSe8ciUzdXqC9FpSs6+G2VfQD+iR59SmTUxP0qk3atJEUPoph7gxxPZRVZaQ7erk0Af7HgGHxwU5WvJG+OIDFNsZuzJCslvp9jRPzrJcpu5pH3EbGQk4lHizmU9Gt2kAqMBumR01DtWvoWGB+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by PH7PR11MB6881.namprd11.prod.outlook.com (2603:10b6:510:200::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.11; Thu, 18 Apr
 2024 16:12:00 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016%6]) with mapi id 15.20.7472.042; Thu, 18 Apr 2024
 16:12:00 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 3/6] drm/i915: Allow the initial async flip to change
 modifier
Thread-Topic: [PATCH 3/6] drm/i915: Allow the initial async flip to change
 modifier
Thread-Index: AQHaeuBubQVnQjJ42UKTqm7mtWFWVLFt+2mQ
Date: Thu, 18 Apr 2024 16:11:59 +0000
Message-ID: <SJ0PR11MB67896C68B7BCDCCA55FE427B8D0E2@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20240320160424.700-1-ville.syrjala@linux.intel.com>
 <20240320160424.700-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20240320160424.700-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|PH7PR11MB6881:EE_
x-ms-office365-filtering-correlation-id: 33a2cb1d-b110-4bd0-51e7-08dc5fc2470e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: BdKNNgwdvkMnnhbTUH3XCuWIrxD3e6H9C5Jwux+NWkgF2QiGiv4pyt73/X1QSlOvcGu155s/LZMU7dKKf1BgpJkaKWx0bk1hdzdvpJujcSToh55+YUfUktmG8ngv6eVTbt068Q71RYvyizInKHW7fqEaJSSJ5tLgfQMx8ppl/vBnwXN77/EbVmJkDmwFbKQTXvUFK8/kwCj3rRfM/Kzl8HloFjbHl8UlaFV1GmZUQwbWVikx1OP0bTfOA+m0yiSRkxc9/2SHXCLD/IJWYOFHtGik7+d7Fid2i4+r4i04F6rO+XL8NNetd1/3G9T4cDmG3uNvXVWDIZPhdUdXYPEuZusF/EXdtjEX4fyEOaaUAGc/5OXffA53P1D07fU7O1d4T/bsRNA/wJq9xTZ/gKa7+DmpYWsOn4PIKsFsv8XNFKIP8iwWdcVsoi02cB4iejEgpsVlinOdYbNpjVpxwDpHF9iOrjzmisA1XiwkhIJJzsXHVJbWBOiz3s72z/wgtPtBe1goxTeYz3Br0vL6Z73WklKxNzYW3gYsPTSpWYxhht4aw4i1CR8yUtKIFkao3bQBqA7lq99xE7VK7BWxfghujqdOOJ6me9ZsFKq85aY0b/XubCDB6ggTzohwCagcELkT+We0xL/I83Ab9IXVKD/25RXhYF+LmE7dQHA+5NDV3gplWxQV3268a6aD7XepOQbeOHouIJFp2f9dfIY+ZGOTNflKp4MY7mbaZzWe0rQIDkQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Ly9VWkV4K05CQ2xvbkFaZTJ5YjN1NnBRMVJYRGZLMnlUdE1SbVBDdVBDSDhp?=
 =?utf-8?B?dHo3cHlWekROQU8zVmFnL0Zvdm5HS3R0SkZUV3lkbFVXTnBTSmdPTW5JQWJj?=
 =?utf-8?B?OWNhdTJrcDcrL2oxNXdrZTdVQ0RSNGxTUWlXUHEzZVFMUkx2VTdpNXJPZ2Ur?=
 =?utf-8?B?cjM4eEdibkhva2F6MEN5ZTFyNTRMVCtlV0YyUFBER0U4bDkrMVlnQVlHYlJ6?=
 =?utf-8?B?Y1NCZ2JqNk9ZNCtlZlIyVEc0TURnL21WWGVtMytMM1RoWjVrVmFSUHJuMzB0?=
 =?utf-8?B?ZDZhdXBnUDN5TVlNQmRxbDJiWDdaTVkyZjJvWkRHZmNlc25zTm9Ha3k3UnRj?=
 =?utf-8?B?SkRyTWFpcVZqMkhxeGZHMDFGdzJrcWRKOWlDbW1mL0dZeUEvOGtQdWV0Qk8z?=
 =?utf-8?B?eWZZaWpxZUVJaVpPbVFpczdwL080eHk3ZXNRZmk2SjlFWjdVek9mOXFqYkVY?=
 =?utf-8?B?d3JVWFEyaXR1dmliaUYwdVNQUUI4b01JV29sd2Z1bThvOXgrTHF4UERMZUdJ?=
 =?utf-8?B?UXc3aFVWdVNxd2NhM2w4aUd4ZlVOY1lEM0plVTRxeldHU2pUOHhodk40ZHk2?=
 =?utf-8?B?eW56TC9wNHJUanorZmVHMUtndzYwV1FvSWNCcWViU1hjVk4yaE1uOWQvVUtz?=
 =?utf-8?B?cTNJdERmTVpQb0wzZVVWcFo4QkpXZUMyaWdaMUVJQ0M0ek95eUxwTzloSEV3?=
 =?utf-8?B?MmxkOVNwdVozL2VkRW03eWVMSGVEYnMzWmFiNmNXWFdpbTkwVjRhaEV1MWFn?=
 =?utf-8?B?OExWUmsvU2h3bHZ1R1VsaXUwUHg1UXZUSkxUR3phMlZqS3ZsMDV5NVNxOVdy?=
 =?utf-8?B?MmRzTm53aXpZblpYMXdjQjdabWY0a0NuYWJKV0VTUUFEb0lPdis3RWJScFMx?=
 =?utf-8?B?bjNPVCtubDVWQWZWZkovd2p2aWFjcjRjSUtqSDg0cmxsdnlLTWM3N0hmN05T?=
 =?utf-8?B?NWNHcnlEOWF5OXhudWRNUXRjTTlyZDNZRDZzcjQ3R25jT2hpNVNqcXdFeEo2?=
 =?utf-8?B?ck9zeTNxd3pYTWNZaXVqZHBUbm1jOE13VXhOK0RrdDZwbzBLS3Zwd3F5L3Rt?=
 =?utf-8?B?NGkvTll4OU1kZ3BBVzkvSzkvWWZtMURCM1UrU2g0M1NwdVdIbzcxRU9oa0tZ?=
 =?utf-8?B?eElpZ0NQTmNlR3R0dmoyQy9kKzIvNHdNVWQzcHJYTzFaNjdCNXJ3N3lETjBh?=
 =?utf-8?B?ZVNEQU9hVlYxUVQ2aFhmZXhIMm92M1pLd2JsTkhWenIyUkk0eVhlK2V5bjlQ?=
 =?utf-8?B?bGlJamtXTVoxTkd1Q3VWMmNEL3N5SjBiZHdKN0N6aXJHV0w1WU9CTCtoR0Mx?=
 =?utf-8?B?R281WkdkQlZrK1lsZ2F3TFk4dG1vMzNuUFVOTldLSnVIZkNTUE04TWs3dHNz?=
 =?utf-8?B?TlNKWmZGZ3FWVmdRSElHeWttTkZtL2tGTVU5NnhtRnBSZG1reGVCNHdtbWha?=
 =?utf-8?B?REZpQXpTZFUzUFh6VWI3Y1VGeW1sZ0tIckJnTTdPV2RFb0NjeWExbU5HYlNs?=
 =?utf-8?B?UHhoYlk3UVVKay8rY2QwTTNGdmFvT2xjUXl5a1VGaDVoc1J2SEQxaDkweThn?=
 =?utf-8?B?cVQzZXQ0emw1YmlpL3lXT243R01ZUlRvL1lWYWI2VTlIM1B2RlJvbnVjVk9x?=
 =?utf-8?B?WTg1UzQwR2dwSG5kWG1helFQdCszcGVIZ3hZYnQ0RHQ3cnVZT1o1Vjl5WjRv?=
 =?utf-8?B?SDNXUFVPekdoY25tb3UxY1Y0SVo5cU5BbHAyZkcvOXpldkNZZnpkWFdQZ1ov?=
 =?utf-8?B?RnI2RHBBZjhzdXJwbDMwK0JhTWhCVFZSMjdnYzdaaUwyZVJvcUVRbCtTZ1A0?=
 =?utf-8?B?aEh6akdTMDVwKy81Q042VlRIMWdEME1yTC9kOFNSNWU5L20wcjc3eGRBek1Q?=
 =?utf-8?B?cU4yNUhKTFV5TDE0OTJlZ1U1a2pabUZ2dmFDYStqWVVzejR3eVVvWmx0Z2hT?=
 =?utf-8?B?QktqUVVseE4xcWRCODFCWFdkSmN2ZXRwZE5KVjRoYkFCNUVKZ2xqc1NWbVcy?=
 =?utf-8?B?MDhDaktUdDZsdDZlSU8rRWY4UXQycjJFMlcrSE5LOStmY3RHVFJVeUdtYW82?=
 =?utf-8?B?WU9TaHVGcStKdDhrNzlwNjBtTWFRWnlVM0tPQVRRdDFuMjJxM00ycHR3MWtX?=
 =?utf-8?B?amRWOWFwUmVKdUs0aUNYK29LbkdCTUdQYXN1VW80djJvMlVkSmI3YzI3T2FM?=
 =?utf-8?B?MUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33a2cb1d-b110-4bd0-51e7-08dc5fc2470e
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2024 16:12:00.0142 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fa2s+iS8YmmiaZOemg+53c7QotA70K1FiC23R44Ch2WZeDGGZpJOg3hAR1xWQdHpGK/SJ7IzIbpv2u/S2kwMzKK2MH1TWwzngJ/xVlEIhPA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6881
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogV2VkbmVzZGF5LCBNYXJjaCAyMCwgMjAyNCA5OjM0IFBNDQo+IFRvOiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtQQVRDSCAzLzZdIGRy
bS9pOTE1OiBBbGxvdyB0aGUgaW5pdGlhbCBhc3luYyBmbGlwIHRvIGNoYW5nZSBtb2RpZmllcg0K
PiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gDQo+IFdpdGggWG9yZyttb2Rlc2V0dGluZyBvbiBza2wrIHdlIHNlZSB0aGUgZm9sbG93
aW5nIGJlaGF2aW91cjoNCj4gMS4gcm9vdCBwaXhtYXAgaXMgWC10aWxlZA0KPiAyLiBjbGllbnQg
c3VibWl0dGVkIGJ1ZmZlcnMgY2FuIGJlIFktdGlsZWQgKHcvICdPcHRpb24gImRtYWJ1Zl9jYXBh
YmxlIicpIDMuDQo+IHdlIHRyeSB0byBzd2l0Y2ggZnJvbSB0aGUgWC10aWxlZCBidWZmZXIgdG8g
dGhlIFktdGlsZWQgYnVmZmVyDQo+ICAgIHVzaW5nIGFuIGFzeW5jIGZsaXAgKHdoZW4gdnN5bmMg
aXMgZGlzYWJsZWQpLg0KPiA0LiB0aGUgYXN5bmMgZmxpcCB3aWxsIGJlIHJlamVjdGVkIGJ5IGk5
MTUgZHVlIHRvIHRoZSBtb2RpZmllciBjaGFuZ2UNCj4gDQo+IFJlbGF4IHRoZSBydWxlcyBhIGJp
dCBieSB0dXJuaW5nIHRoZSBmaXJzdCBhc3luYyBmbGlwIGludG8gYSBzeW5jIGZsaXAgc28gdGhh
dCB3ZQ0KPiBjYW4gY2hhbmdlIHRoZSBtb2RpZmllciBpZiBuZWNlc3NhcnkuIE5vdGUgdGhhdCB3
ZSBhbHJlYWR5IGNvbnZlcnQgdGhlIGZpcnN0DQo+IGFzeW5jIGZsaXAgaW50byBhIHN5bmMgZmxp
cCBvbiBhZGwrIGluIG9yZGVyIHRvIHJlcHJvZ3JhbSB0aGUgd2F0ZXJtYXJrcy4NCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+IC0tLQ0KDQpMR1RNLg0KUmV2aWV3ZWQtYnk6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRp
dGEua3Vsa2FybmlAaW50ZWwuY29tPg0KDQo+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXRvbWljX3BsYW5lLmMgICAgfCAxNiArKysrKysrKysrKysrLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgICAgfCAgNyArKysrKysrDQo+ICAy
IGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxh
bmUuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5l
LmMNCj4gaW5kZXggNzZkNzdkNWEwNDA5Li43NjkwMTBkMGViYzQgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYw0KPiBAQCAt
NDI5LDEwICs0MjksMjAgQEAgc3RhdGljIGJvb2wgaW50ZWxfcGxhbmVfZG9fYXN5bmNfZmxpcChz
dHJ1Y3QNCj4gaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiAgCSAqIEluIHBsYXRmb3JtcyBhZnRlciBE
SVNQTEFZMTMsIHdlIG1pZ2h0IG5lZWQgdG8gb3ZlcnJpZGUNCj4gIAkgKiBmaXJzdCBhc3luYyBm
bGlwIGluIG9yZGVyIHRvIGNoYW5nZSB3YXRlcm1hcmsgbGV2ZWxzDQo+ICAJICogYXMgcGFydCBv
ZiBvcHRpbWl6YXRpb24uDQo+IC0JICogU28gZm9yIHRob3NlLCB3ZSBhcmUgY2hlY2tpbmcgaWYg
dGhpcyBpcyBhIGZpcnN0IGFzeW5jIGZsaXAuDQo+IC0JICogRm9yIHBsYXRmb3JtcyBlYXJsaWVy
IHRoYW4gRElTUExBWTEzIHdlIGFsd2F5cyBkbyBhc3luYyBmbGlwLg0KPiArCSAqDQo+ICsJICog
QW5kIGxldCdzIGRvIHRoaXMgZm9yIGFsbCBza2wrIHNvIHRoYXQgd2UgY2FuIGVnLiBjaGFuZ2Ug
dGhlDQo+ICsJICogbW9kaWZpZXIgYXMgd2VsbC4NCj4gKwkgKg0KPiArCSAqIFRPRE86IEZvciBv
bGRlciBwbGF0Zm9ybXMgdGhlcmUgaXMgbGVzcyByZWFzb24gdG8gZG8gdGhpcyBhcw0KPiArCSAq
IG9ubHkgWC10aWxlIGlzIHN1cHBvcnRlZCB3aXRoIGFzeW5jIGZsaXBzLCB0aG91Z2ggd2UgY291
bGQNCj4gKwkgKiBleHRlbmQgdGhpcyBzbyBvdGhlciBzY2Fub3V0IHBhcmFtZXRlcnMgKHN0cmlk
ZS9ldGMpIGNvdWxkDQo+ICsJICogYmUgY2hhbmdlZCBhcyB3ZWxsLi4uDQo+ICsJICoNCj4gKwkg
KiBGSVhNRTogUGxhdGZvcm1zIHdpdGggbmVlZF9hc3luY19mbGlwX2Rpc2FibGVfd2E9PXRydWUg
d2lsbA0KPiArCSAqIG5vdyBlbmQgdXAgZG9pbmcgdHdvIHN5bmMgZmxpcHMgaW5pdGlhbGx5LiBX
b3VsZCBiZSBuaWNlIHRvDQo+ICsJICogY29tYmluZSB0aG9zZSBpbnRvIGp1c3QgdGhlIG9uZSBz
eW5jIGZsaXAuLi4NCj4gIAkgKi8NCj4gLQlyZXR1cm4gRElTUExBWV9WRVIoaTkxNSkgPCAxMyB8
fCBvbGRfY3J0Y19zdGF0ZS0+dWFwaS5hc3luY19mbGlwOw0KPiArCXJldHVybiBESVNQTEFZX1ZF
UihpOTE1KSA8IDkgfHwgb2xkX2NydGNfc3RhdGUtPnVhcGkuYXN5bmNfZmxpcDsNCj4gIH0NCj4g
DQo+ICBzdGF0aWMgYm9vbCBpOXh4X211c3RfZGlzYWJsZV9jeHNyKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlDQo+ICpuZXdfY3J0Y19zdGF0ZSwgZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggZDM2NmExMDNhNzA3Li5kYmNkYTc5
Y2Y1M2MgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jDQo+IEBAIC02MDYxLDYgKzYwNjEsMTMgQEAgc3RhdGljIGludCBpbnRlbF9hc3luY19m
bGlwX2NoZWNrX2h3KHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLCBzdHJ1Y3Qg
aW4NCj4gIAkJCXJldHVybiAtRUlOVkFMOw0KPiAgCQl9DQo+IA0KPiArCQkvKg0KPiArCQkgKiBX
ZSB0dXJuIHRoZSBmaXJzdCBhc3luYyBmbGlwIHJlcXVlc3QgaW50byBhIHN5bmMgZmxpcA0KPiAr
CQkgKiBzbyB0aGF0IHdlIGNhbiByZWNvbmZpZ3VyZSB0aGUgcGxhbmUgKGVnLiBjaGFuZ2UNCj4g
bW9kaWZpZXIpLg0KPiArCQkgKi8NCj4gKwkJaWYgKCFuZXdfY3J0Y19zdGF0ZS0+ZG9fYXN5bmNf
ZmxpcCkNCj4gKwkJCWNvbnRpbnVlOw0KPiArDQo+ICAJCWlmIChvbGRfcGxhbmVfc3RhdGUtPnZp
ZXcuY29sb3JfcGxhbmVbMF0ubWFwcGluZ19zdHJpZGUgIT0NCj4gIAkJICAgIG5ld19wbGFuZV9z
dGF0ZS0+dmlldy5jb2xvcl9wbGFuZVswXS5tYXBwaW5nX3N0cmlkZSkgew0KPiAgCQkJZHJtX2Ri
Z19rbXMoJmk5MTUtPmRybSwNCj4gLS0NCj4gMi40My4yDQoNCg==
