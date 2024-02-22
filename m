Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6AF85F413
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 10:15:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D876310E8CC;
	Thu, 22 Feb 2024 09:15:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S/J0Tbum";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAD4010E8CC
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 09:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708593319; x=1740129319;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=w9tf2BP5LIiIR8kCYqmTzGM8Hvxmp7UkjclMQl42XXo=;
 b=S/J0Tbumsir0WCD3mjYCrVufu3XtsIeyONj53p1G6Mhqavswmwhnma78
 BS8LBavsPqwrXFqKcO24JD7yj0V1X+OAJfNfX3mkrGXEY3CO2awT163Fi
 KpyVYWurGCyZwfbZkNMnq+iEDPrpjcGGuweMOL6pfqWbIOhwq2sGEvZ22
 ofsTBxvsESQt6goBTTXX+oFgktbbuBWDwmhdFXc6xiMOqPiNcPsB3Y6pm
 Kbqga7Z+fHrv73rJJI+fHNq6zuhUCQKxjCbWaz+X2QPK+axvB6e9qXlhs
 w5TU0PWZ9eeEdh2WQdwS1Fsyl5H6F18f6NNIX6oKvDZi9/zuFatsqAZ1d g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="25265613"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="25265613"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 01:15:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="913487088"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="913487088"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 01:15:17 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 01:15:17 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 01:15:17 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 01:15:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kaDciQNWH93BBFylQ8Vf7Zgm07u4BQ/WG0ECWvFlix4nlRk8ytNi+C/cPb2cZ33s8kOQBkeN9EU9MfMrljVKhx8kgOcK3P92DUBk9zAgBjb5B51YYEtQKmjvB7eucRHzRUqPVBZwUBn+wV6ZqL5kvvteCwi5y5DQenuMPIimFHUjspK4cm3W4ChWvCrIXQXrtU1TsGiFNi8AxNuKdrWN2Ial++/L3XcMvg4SuB2+Pa6mH021/TOD3zC3HF1KzYtflvxZGQxqVFNK2zZZoPFY9mT646gxEFrjdXTlUpFL3Al0HUIs7GvG+lTgSIizG/m6S40eQ7Ap6YqX3l2nMFUpMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w9tf2BP5LIiIR8kCYqmTzGM8Hvxmp7UkjclMQl42XXo=;
 b=EfADdf3+0IAC8G0h/Hb5zfz4x0j3oyTJuFJSZA0urhafTameVeEpybdEk7e7Xp5fLDYVYGsNmeQEaz2OmAUtON1MZhD331AybzH/ARAqupHm6U0ihts3EHoIYlkqfqb9l+nn7XUe2tkH2RjmT5cqaL6CdmEpiHaUjE50UaO7SABqW8B8i/Zv1BtnoAgaYO2HjqPsvXw4ipZPqs/g2rAs5etK1xcWH+wVegobv3LSjRjpC5H3+WjFqUSMbCcaQmvPGA/0duqHeGfhn17yoUBDm7/dsR+CEIwjkuc0xWU/zZTovk5NxS99srwaioZ8dWJQE3XkjJg4c0mNkENroXhBjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB7878.namprd11.prod.outlook.com (2603:10b6:8:f6::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7292.39; Thu, 22 Feb 2024 09:15:15 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3418:ecc7:297e:ff6f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3418:ecc7:297e:ff6f%6]) with mapi id 15.20.7316.023; Thu, 22 Feb 2024
 09:15:15 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 3/3] drm/i915/display: Increase number of fast wake
 precharge pulses
Thread-Topic: [PATCH 3/3] drm/i915/display: Increase number of fast wake
 precharge pulses
Thread-Index: AQHaZJshnSMrHoMcKkGJy4qh4X/MrbEVKjiAgADr2YA=
Date: Thu, 22 Feb 2024 09:15:15 +0000
Message-ID: <2a8e2f71a0dfea2d342eeb71f2e32edf4a63129c.camel@intel.com>
References: <20240221075322.2764209-1-jouni.hogander@intel.com>
 <20240221075322.2764209-4-jouni.hogander@intel.com>
 <ZdZKycWDtduq6AN0@intel.com>
In-Reply-To: <ZdZKycWDtduq6AN0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB7878:EE_
x-ms-office365-filtering-correlation-id: 6dedbf0c-2f54-4b99-93b5-08dc3386c838
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vaz/Hxy7w7RULF3ccrD1hD1C739Ec+d4ybm5KnO/Hydu7J/jWmMS+t8240Ck2IxxpBb5hlcDIs9q8qfbUPJqhRUCkVb71wyvJBdBkFfu2rxGGD7IkMSWYMoyZAVh9d+EVeJRuUXyWZWDOi8gcfCgtDux9jq/7C4WVsYWXqUXEyJSLl2ICjdjg8S+H9NRyLSmr4RyLh1rnguornrq85JQLZ1We8WHhlauiM8x0FEvibIwikxtxKZrJLXK0dcQs63ojBwoum+GsUvjnve9xAZElviV7rBzG6MZod2EGDEmvluo7ZLFyfiPJ4byFP7pylg3rV8auR9wMqlDifsLi9s2/WJwOo3CHVxj4ZEtS9khFz1tYwlzBAnd9yv5umQbGdQYKCRi7hmUWWkcriWTVqgZ8Mv0sPFunORVF8rmPk017karnWLJdkgWYuSFtQUCXZhbjKFdxJH56QgsBrGDdJrnbAp2/L2rCIVxtW7L3CsrwpDcihPhUOco1hgcWdPrNMmBIRsmPcY9mVCJTR3jVFoM3M47bYIUVaHg5hhvgDbENrDdTEEjCAxRE8K+sWDW1PSO7xQSPaRIxfvTO72LGHElg2680IKDUKwwc39UlDaS8DE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q2dDTTEybjZaVXRpaFVRWGdrR1YzWnNkaW8vYzduRG5rd3Q5aStWb0VrY1pE?=
 =?utf-8?B?SGd0dWRsRDlPYWtEN2VLRmdnSG9LMU55azl3MWtYNHczTWEvN1BTeEx0N0Yy?=
 =?utf-8?B?RVR1YURoU0RvWHdML09ReE91SXk0OGFVd1pnQTk3bmJOSDg0cDJyOWc1N2xu?=
 =?utf-8?B?bU0yMktMOVpTaFVrd3IvcFdyVkx6VTdKV2FxUXF0M3RhMUdkZ1p1NDZpUUhS?=
 =?utf-8?B?R1pENkRBWmhGSHBwNEdzYm43cCtZUkc5eVlqdVdHdDFnTjNoWEQ1ZFQwUkZo?=
 =?utf-8?B?aTQxeExiUGw5d05Talh6QnVlSzBpYncybW5aWCs2cFQzZ0xOdTdqbElZeCtR?=
 =?utf-8?B?amVta3NRaDRWMzBsTWgwT2xXck52ZXdOL05RWFEvSGl5aXdIaFhrUHdub3dt?=
 =?utf-8?B?NDQ1bHNyRXE1R0xCc2lueUIveEhSb2ZSQXM3bWs1RmdIS0lhWXpJMks4d2lL?=
 =?utf-8?B?dUpoTXpOZHBCbmNIOXNJYUR5cjhKaENQNGlMdHd2OUFWWGlFUmdQN1Yrd3VJ?=
 =?utf-8?B?ak5Vd1lZRXpPRU9CWmJmSkhuUXpqdyt1OWZXL3JzY21hSWpEU2owb0xLUzRV?=
 =?utf-8?B?cEpPeEE5V0dFUjFJZE5Mc3d5TURGaUFmemc2VzBmdjV3UE5qend3M0xLN0FV?=
 =?utf-8?B?ellzVklPWjdOaUIrVzdOM1dhazdGSzlqZHptaHJRTjM4d1RvV2FCT0c1TW5R?=
 =?utf-8?B?Qkx4VmVrUFhvVW94NFVrYTJxWTNjRkU3dFkxTWRORzdLK3ZlNm05VW5jTVNp?=
 =?utf-8?B?eElZbEQ5VmRNS1QwRG1mMlZYMlVBV3l3ZTVuY1I5THNLbEF1bnlzbmJuMXZE?=
 =?utf-8?B?dSszOU9EQ1p5UkU4YW1UdU9SRFFHaWZiYW1kYktxWHdESUdXZ2ZicXl0SVdE?=
 =?utf-8?B?QkhsN2IzT2xhWWtiMVhDWUUvT2RnTTE5V2t0bllnR3Y2andkOWRoUVJ0OU9X?=
 =?utf-8?B?QWVyLzN5bjdqd1dkaVF2NjdaR1pBZmZjT21aZVdpSXFaanh2cGhlaTRJZ3Fl?=
 =?utf-8?B?cSszbHp0RCtRbEZXRHVOYkR4ZmpjRTQzMVI2eXpOanZ3SlhRYWl2SXhuaUN4?=
 =?utf-8?B?WnEvSzBVUU1BODRGcTBjcStxdVRzbU5mL3lITnRzL1ZGZ2FrVEZHd2VhMzRY?=
 =?utf-8?B?THlTbmZSWVFNM0c2N3piclUvN2pVbFNBY1k1M0VDOExYeXE2M3JpOGF2N0I2?=
 =?utf-8?B?WVhMVHlFdnVOUEU3czM1Q29oWElqMTl1VHAvd1QrR2hqUHVGeklYaVBHb2NJ?=
 =?utf-8?B?NTZOL2VpV2VFNk1iRXY2dVdFanl0Z01BMEc3aHFGUkNwRjVmQWJxSi8vT0Uy?=
 =?utf-8?B?eGNoTnpvZ2tPOFVnSmlRL1RYTU5mYkxSWWpOVzlsRzNnRHFnU1o5NzJqd0Vo?=
 =?utf-8?B?d3p2a1MzdU0xa0F2TS9YZUxCV3hnNkdBS09YV2lLQ2x1NmZ3Tll2Y3dPbHh4?=
 =?utf-8?B?L25sMDErS25EY2ZZN2tVNUdXa0pPMUVVTVlSeXZlbU1DSDFrcEFpTVpsZDE0?=
 =?utf-8?B?UFp5NHV1SThnNGEyQnlHbzNJeEp4TmhIWjIvUUttYThEWjhXNlpTRFlWZDda?=
 =?utf-8?B?bE9rNllPQkJueWcveDVTTkhKSVZJeGVHYTRZZDRYdzZVWlZ1bDdwaER3RmtR?=
 =?utf-8?B?SWFVK0xMbmZWTXcwNVAvczhTWEhONVhDREZQU1BqQVRNTEJ0cHgxNCtzYTI1?=
 =?utf-8?B?MjdtblJsQjNOcVRMKzl4eldrN2tFRm43ZkMwaEhCZXJOTkZTQ3ZoZHk4aGZ6?=
 =?utf-8?B?SGc3UlU5a3RiaVl3b0xuNU9Hc2xsQUFOSUZDWnloVU15U2FaSU52ZzBqdjl4?=
 =?utf-8?B?dzk2ckN0dU9Gc0pOdERRTTF5YkZDNDZ4cHBYVVJ2OU1YUVM4UkFvbXpCT2Iw?=
 =?utf-8?B?SERLMWhQOVdtWWJhTDJ2elF3SjFoU2JKNTVYZlVCVEtUcFIwL005K29FTTBu?=
 =?utf-8?B?SHZ1a0MyNWk5elo3M2lOTXF2Rko5UlJHc2VkZnQ0MFZUSWUxSzJTSnR3eldF?=
 =?utf-8?B?NmZoLzN1L21uWXVobEJGcVFFdHNBaVA5aFdFN0ZMZ2tQT2sxZHhtSTNMbzI4?=
 =?utf-8?B?bVhMTW1hZ2dLUm16bUNOV1hDWjFJRVlZaUl3aHdDMzg3dXhZRkVzVU9CNHFp?=
 =?utf-8?B?aUxHM3U5QnFTN0I4aUZmcGlWZkZOckJJOXp2RGNKWkNxQm53ZjlNbEVXMXNt?=
 =?utf-8?B?Y1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <440E8AECF6AC4D45A103C2959527EEEB@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dedbf0c-2f54-4b99-93b5-08dc3386c838
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2024 09:15:15.7447 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GYd46WqIDdx3f6G6pV2yCsJkkAlVghq8cV8qvEdID2iC9HJuax6UdliXkIkDkms4w8hivJZLs/1cvDhB9SExfFyb0yFVlTAoTwo5TNVoqQI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7878
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

T24gV2VkLCAyMDI0LTAyLTIxIGF0IDIxOjExICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgRmViIDIxLCAyMDI0IGF0IDA5OjUzOjIyQU0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBJbmNyZWFzaW5nIG51bWJlciBvZiBmYXN0IHdha2Ugc3luYyBwdWxz
ZXMgc2VlbSB0byBmaXggcHJvYmxlbXMNCj4gPiB3aXRoDQo+ID4gY2VydGFpbiBQU1IgcGFuZWxz
LiBUaGlzIHNob3VsZCBiZSBvayBmb3Igb3RoZXIgcGFuZWxzIGFzIHdlbGwgYXMNCj4gPiB0aGUg
ZURQDQo+ID4gc3BlY2lmaWNhdGlvbiBhbGxvd3MgMTAuLi4xNiBwcmVjaGFyZ2UgcHVsc2VzIGFu
ZCB3ZSBhcmUgc3RpbGwNCj4gPiB3aXRoaW4gdGhhdA0KPiA+IHJhbmdlLg0KPiANCj4gSG1tLiBE
aWRuJ3Qgd2UgaGF2ZSBzb21lIG90aGVyIHBhbmVsIHRoYXQgZGlkbid0IGxpa2UgdGhlIG9yaWdp
bmFsIDE2DQo+IHByZWNoYXJnZSBwdWxzZXM/IE9yIG1heWJlIHRoYXQgd2FzIGp1c3QgYmVjYXVz
ZSB3ZSB3ZXJlbid0IHVzaW5nIHRoZQ0KPiBmb3JtdWxhIGFuZCB0aHVzIHdlIGhhZCBhIG1pc21h
dGNoIHdydC4gdGhlIGZhc3Qgd2FrZSBzdHVmZj8NCg0KT3JpZ2luYWwgdmFsdWUgd2FzIDMyIGZv
ciBmdyBwdWxzZSBsZW4uIFRoaXMgd2FzIGNoYW5nZWQgdG8gMjQNCig2MDVmN2M3MzEzMzMgZHJt
L2k5MTU6IEZpeCBmYXN0IHdha2UgQVVYIHN5bmMgbGVuKSBhbmQgYmFjayB0aGVuIGl0DQp3YXMg
Zml4aW5nIHByb2JsZW0gd2l0aCBjZXJ0YWluIHBhbmVsIG1vZGVsLiBUaGlzIGRpZG4ndCBtYXRj
aCB3aXRoIG91cg0Kc3RhdGljIDQyIHVzIGlvIHdha2UgdGltZSB1c2VkIHRvIGNhbGN1bGF0ZSBp
byB3YWtlIGxpbmUgY29uZmlndXJhdGlvbi4NCklzc3VlIHdpdGggYW5vdGhlciBwYW5lbCBtb2Rl
bCB3YXMgZml4ZWQgYnkgc2V0dGluZyBpdCB0byAxOA0KKGIyOWEyMGY3YzQ5OSBkcm0vaTkxNTog
VXNlIDE4IGZhc3Qgd2FrZSBBVVggc3luYyBsZW4pIGFzIHdhcyBleHBlY3RlZA0KYnkgdGhhdCA0
MiB1cyBpbyB3YWtlIHRpbWUuDQoNCj4gDQo+IEFuZCBhcmUgd2Ugc3VyZSB0aGlzIGlzIGRlZmlu
aXRlbHkgZHVlIHRvIHRoZSBwcmVjaGFyZ2UgbGVuZ3RoDQo+IGFuZCBub3QgYmVjYXVzZSBlZy4g
b3VyIGlkZWEgb2YgdGhlIGlvIGJ1ZmZlciBvbiBsYXRlbmN5IGlzIHRvbw0KPiBzaG9ydD8NCg0K
SW4gdGhpcyBwcm9ibGVtYXRpYyBjYXNlIGlvIHdha2UgLyBmYXN0IHdha2UgaXMgZW5kaW5nIHVw
IHRvIDQgbGluZXMuDQpJLmUuIGlvIGJ1ZmZlciBvbiBsYXRlbmN5IHNob3VsZCBiZSBpbmNyZWFz
ZWQgcXVpdGUgYSBsb3QgdG8gaGF2ZSBhbnkNCmltcGFjdCBvbiB3aGF0IGlzIGNvbmZpZ3VyZWQg
YXMgaW8gd2FrZSBsaW5lcyBpbiBQU1IyIENUTC4gQW55d2F5cw0KYmFzZWQgb24gbXkgdGVzdGlu
ZyBpc3N1ZSBnZXRzIGZpeGVkIGJ5IGNoYW5naW5nIHRoZSBwdWxzZSBjb3VudCBvcg0KZmFzdCB3
YWtlIGxpbmVzIGNvbmZpZ3VyYXRpb24gb3IgYm90aC4gQ2hhbmdpbmcgSU8gd2FrZSBsaW5lDQpj
b25maWd1cmF0aW9uIGRvZXNuJ3QgaGVscC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+
IA0KPiA+IA0KPiA+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9p
bnRlbC8tL2lzc3Vlcy85NzM5DQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxq
b3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jIHwgMiArLQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMNCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMNCj4gPiBpbmRleCBmYWQzOWIyZTMw
MjIuLjQ2NDFjNWJiOGZiOSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX2F1eC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9hdXguYw0KPiA+IEBAIC0xNDUsNyArMTQ1LDcgQEAgc3RhdGljIGludCBp
bnRlbF9kcF9hdXhfc3luY19sZW4odm9pZCkNCj4gPiDCoA0KPiA+IMKgc3RhdGljIHU4IGludGVs
X2RwX2F1eF9md19zeW5jX2xlbih2b2lkKQ0KPiA+IMKgew0KPiA+IC3CoMKgwqDCoMKgwqDCoHU4
IHByZWNoYXJnZSA9IDEwOyAvKiAxMC0xNiAqLw0KPiA+ICvCoMKgwqDCoMKgwqDCoHU4IHByZWNo
YXJnZSA9IDEyOyAvKiAxMC0xNiAqLw0KPiANCj4gSSB0aGluayB3ZSBuZWVkIGEgY29tbWVudCB0
byByZW1pbmQgcGVvcGxlIHdoeSB3ZSBhcmUgdXNpbmcgYQ0KPiBzcGVjaWZpYw0KPiB2YWx1ZS4N
Cj4gDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHU4IHByZWFtYmxlID0gODsNCj4gPiDCoA0KPiA+IMKg
wqDCoMKgwqDCoMKgwqByZXR1cm4gcHJlY2hhcmdlICsgcHJlYW1ibGU7DQo+ID4gLS0gDQo+ID4g
Mi4zNC4xDQo+IA0KDQo=
