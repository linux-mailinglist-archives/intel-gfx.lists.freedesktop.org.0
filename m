Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D59A04342
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 15:52:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 393F410EAF2;
	Tue,  7 Jan 2025 14:52:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=live.com header.i=@live.com header.b="dPbrsQks";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from MA0PR01CU009.outbound.protection.outlook.com
 (mail-southindiaazolkn19010011.outbound.protection.outlook.com
 [52.103.67.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F33B10E330
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2025 14:48:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j/CvrOoE4BqM5L8uSrEQ5r/kACrE/e6ZB4qylsCjbN4qweT3LORj38Q2seyMg6wEissNRK+WuTb3+U1e7AKkk7cuN49mKIFzqwvAEWeMG87HTYjllPXnFZpZ/MZwLwEsOjJRM6IObt1/f5Kp6xonAAab5vvfCEfWqKymMsxG9fnYpUXnhOHDge8SqDxWSxDjJvlm5YxnkDAMItCbv6/p5+aIBYrqvqbDEt0YI0mks1u/DfIiYuqOWojrasvYcokWFFVoilbswbTWgO3054NbTO/4zaYSZAktRgyNKEyBoeySR/ccJyl5vWbb0WYYWkIw4YWjvJZHu5Srcb08V07Nkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CdahCprXMG5AiB2JLvBScabKsutem0JbZ/V2koYaQHQ=;
 b=j3lVreaDFUeBAF43CO+5Y/9Xn7YRBHrdhT92gGSZl8YUfJY/186etTsM8+Wryzb/bszyJvrR48kX0PdvK3q/FRj1/VyERaoct1iMXuirxb1spCLIdV4us7Wj9unk0kNPXmVn6WuX9Blh1GlYeLeyYeGvrYgHxa2JmAab86euMS622HlrZDp4IGaPkUbytP2gMbVvNI8vIpwv5l0TgGZNsZNNeYo976Vto9cKnKc0hYGFSivuU0qSI4H572sNgs1S46bwNctpUdhXoWpVVIpO9T/1kDaaau8l2qz0yLLneRPsPsoCtynr//bg1pZNSAI5cajQVuXBQ1AzRgapXMRwoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CdahCprXMG5AiB2JLvBScabKsutem0JbZ/V2koYaQHQ=;
 b=dPbrsQksnIe6b/+KE1N6/FjLM9qdziPcBDYw5ytjLHoceToFG77Bt9nw6QrwH1j8vwQ3NpB5pK7s7liyOrD6tbHzCBzDXI48kpJV+gXAgVpBcVGyW/UFVl0C1vejhV4EDMFN/4PDI1BffATrLl0hDFlgqb1VQ+jQ60niB/BOXHOJ1H36CVg5HOFw0o+JGJZqlMSZ4Tkc+6uVNm8eO8gFFtlFDIQ1QEJs6MtrcvQ09ff7PXbkYv+MtkoCNGIlnJGEec9P/AOREYqWWDuTXMF5PGy+tIgpe5akN4v9+DlPPG6j0y/ClBF3vgc0vpRSCrOmOvU0Ffv8wAEa8n0PkXSNfw==
Received: from MAZPR01MB7715.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a01:21::14)
 by PN3PPF66E6C00F5.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c04:1::2d)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.18; Tue, 7 Jan
 2025 14:32:23 +0000
Received: from MAZPR01MB7715.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::32b:d8a4:652b:7cea]) by MAZPR01MB7715.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::32b:d8a4:652b:7cea%6]) with mapi id 15.20.8314.018; Tue, 7 Jan 2025
 14:32:23 +0000
From: Aditya Garg <gargaditya08@live.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Ashish Arora <ashisharora.linux@outlook.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, Linux
 Kernel Mailing List <linux-kernel@vger.kernel.org>, Orlando Chamberlain
 <orlandoch.dev@gmail.com>
Subject: Re: [BUG] The bottom and right edges on the tty are not shown on
 Apple T2 MacBooks with Retina display
Thread-Topic: [BUG] The bottom and right edges on the tty are not shown on
 Apple T2 MacBooks with Retina display
Thread-Index: AQHbXdDIDf5VW4xMpkiVpOoaKfsiqLMFGAyAgAYq2wCAAAIDAIAAIU+A
Date: Tue, 7 Jan 2025 14:32:23 +0000
Message-ID: <FA8B7499-CF3E-4843-A7DB-96FCA3C74290@live.com>
References: <31D69334-DEF9-41B7-968B-B847796926FF@outlook.com>
 <02E00F62-D48C-4F34-9F81-BE75A1833795@live.com> <87bjwom1be.fsf@intel.com>
 <EB3BFFE1-88C0-4C6D-815E-47F43CB618D3@live.com> <8734hun6rt.fsf@intel.com>
In-Reply-To: <8734hun6rt.fsf@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MAZPR01MB7715:EE_|PN3PPF66E6C00F5:EE_
x-ms-office365-filtering-correlation-id: a4b29f7b-660f-4d73-5cbc-08dd2f2819f8
x-microsoft-antispam: BCL:0;
 ARA:14566002|7092599003|461199028|8022599003|8062599003|15080799006|19110799003|8060799006|1602099012|10035399004|102099032|440099028|3412199025|4302099013;
x-microsoft-antispam-message-info: =?utf-8?B?dW8yLzBqU2FHSE04L1k5UjZ3bjVkcEJrZHNqcHZ5Skw3VmRUNmNueitkanh2?=
 =?utf-8?B?U3hReGp0WUVIYmtPdVVLUnUrRFh4L1p3czNWNHArYy9FZEJqcGlHaUhsNUtq?=
 =?utf-8?B?NmQrK05sLysxZ3NqUnV0clg3RlMyYURqSjFKb1BaNEJoOGNTZndXYmlaeEZ1?=
 =?utf-8?B?bDZ2Y0d1WFhvV1VGeWgydUdUTmJseHkvaHMrYUNuTzhOd3UwQ0cwbEMxMzRx?=
 =?utf-8?B?NzZQZjQyK3F3K0kxMjF6dXh5NjJlU3V5QTZEQTV2MnA4THYvdGpEdTNQbEpD?=
 =?utf-8?B?ZHduWnhzbTdJZHZUaFhmOU9aVUZ3YVNZdXRiMnZ2QkttTEFxU0I4U2EvZWVi?=
 =?utf-8?B?S3FocXFRQUpEZnRlcU5RTGpaM3dyVXdjT3FGVFVnc3N1MS81cnlMaXN2cHNh?=
 =?utf-8?B?d1dLVnVwN3gyWXdVT2J2QWZPUG9yYlJDWUVPa2Jyb2QzQVhHZVM1Wk1Ucmg1?=
 =?utf-8?B?bHd5dEdYTzJ0NkMrSzdMckRiOVpsblJhc1pHMkp6Ui9LV1lLZ1d2R0tnYy90?=
 =?utf-8?B?YUw5SmZvUHhzTHJLaUpDakdIdEIwcjJ5Z2tJWkYrbnN2bFUrZ3lyY1I2bFdt?=
 =?utf-8?B?MzBiTlloQVpSMlpubTIwdzhWb3lLUjk0SEVSbjcrQkphcDdoTGJjWnZ5TFZ5?=
 =?utf-8?B?Z3V1ZzRYM0JVQXBDVDdWSEc1Y2RKK3pqTDdhaW1kckc1ZzY3aXdxTnRORk1x?=
 =?utf-8?B?SzdSYkNnd0t5N2s1b2NYL1FxdVpOSHZoN2I2SjZYcjcyMC9SaWtwaHdHWDJO?=
 =?utf-8?B?V0x4VmZrTEtIbzR3ZUpyMUNta2MyRlphT3lPNHMvU1NjMTNQSzFyek50dXBH?=
 =?utf-8?B?WlU3K21MOGU0WlNWdHJHbkNQTWYrWlE4NVRVVm1iNEhMMk82NFZDN3U4Z0tN?=
 =?utf-8?B?VjNoRWJqMXBTOXJxSVhWNGZsazk1dmYxMnlQUHhPa1ZSSW91Ti9pZ014QTA5?=
 =?utf-8?B?S3J0L3JFV0ErZ1BOa2FkYUV6M2FQKzBHUXpMRUhrdlM5a3ZOajJHVDJoeVNT?=
 =?utf-8?B?UUh1TjdhUTFrbWFWNjYzd2lPL09uUGpkbUsxYUMzbllRam1QV1dzZ0dkOUlQ?=
 =?utf-8?B?T0tISjJ2ZWpVdjV0ckQ0WHU3UHZJMFF3dUw1SS9ncFRSRlVGWlFZMks0Mkx4?=
 =?utf-8?B?cXNlU2xwM0svQkVWRkxSbE1rR2htaEhKVy9EQktvbUJad1VJbktobmlQeTdZ?=
 =?utf-8?B?dTlSL3RoM3l1RmlJb25IMXNuU3c5dkM1ck9YN0d3Z3FDWFdqTm1CVm4vaGZv?=
 =?utf-8?B?MTZEUkJZRnFyeC9DZncvTjFCd1paSFI4TkhORStTdmxDcG1vMmk4ZHltbXJv?=
 =?utf-8?B?ajRBd1p1ZStmV2t0a3o3SVBUU1gzRXpDYjU0MHozVmFocDN0N050SEMycjRJ?=
 =?utf-8?B?MnpIdnBaZkFMdm10M1ZPWUtieXY2b0VyM0JENXBIRnpNcnByRTN4cmpPRTVJ?=
 =?utf-8?B?blM3RS9MdTQ5KzduTWRIMW9JWGdyYmx4S0FYRll2c2FWWlZOVXZScFBZU0pr?=
 =?utf-8?B?eDB2ZkZiQ1NnUFp3TGp2bHJDQ2R6eGpXdUVzTHpxLytkTzNiaFMvRTNpRTdB?=
 =?utf-8?B?eWE2ajV4L0dlQ3lDUVFqaEhqWFcrRHNucTAxSGdTUkxKOGtEaFN5bk9qUmdx?=
 =?utf-8?B?ejZMYXo0TWJzTVBhOEJRQ1hjenNHRGc9PQ==?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MndpMVFWTzY2alhNVnpuWkZXVEFLYVV5aTRHN01pUnllODlkQ2ZSRm5TeXlr?=
 =?utf-8?B?MmpBdTlaZVJYMWRnaXl5R3BhcVZEeEhXUTNuYm9SUC9yQTllWEEreE5IK0Za?=
 =?utf-8?B?ZXBOcVd5RU9jYUsxY0VJZmpPR1lqeDFyU3Qyb0FzcTFCTHd5eUxCQ3VVUDdu?=
 =?utf-8?B?M2FKcFRUSTh6b1ZDamxoMy8xcEEwQnpsZjFwWmdjY1paNmtncmdWRFBXZmha?=
 =?utf-8?B?Uy9LVExWeWhYVHJldmMzZmhrT0pOOG9xa3IzVHR3Q2VYTWQ5QVJocy9sdW10?=
 =?utf-8?B?UzFiN1JScjBhV09YeThoZWJCbGh0eFJOZCs5ZitkdUJmVEdlTTZxUS8rbktT?=
 =?utf-8?B?VHc5TUdOYXJNY3BwNGI4WUszZnNtNnBtWGl5WTA0dzZJWGJkVG1BU002b3pq?=
 =?utf-8?B?b1Bqb0lZeksxRkROZWtFdFBWckR4d0g3ZWVUWkRFcHFha2ovVzRyakRkbzFY?=
 =?utf-8?B?WWNZUTdpV2ltbk9aYnQzaElCbXlaNlZrd05UTVVvS0dXQnpvODhaUmZUdFZw?=
 =?utf-8?B?eFJjWS9taXo3L091VEhKaHI0cmJyeENpTHJYSnRaNFFwTE5qSE4vQlhKbmlp?=
 =?utf-8?B?dG1paEJGREFaUm9tak1UZi9vZEhjK2FEb0tZbG9EWFlzKzJBM0g2S1FjMTg5?=
 =?utf-8?B?ZXRzNDErUEdJWk5sTExYNlVmMVBac0dQa1RJUXNRZEdYOExjamhkM1Zid3pl?=
 =?utf-8?B?a0hHRkcvbTZ2clJUUzZYRGV6dW0wbVBhdm5NVUs0YkdtdnI1czlCV0xuZkJt?=
 =?utf-8?B?NERRdk9qR052eERYWjRxZThCOFYrSzMvbS9Pa3c5MHhYQ2lEc1JWMVd4U3Q3?=
 =?utf-8?B?MmdES1l6SXVEWkZOaXMzMHduNGV6N2FGbGJZYVA2S3dxZmd6NXI2Y3c0R255?=
 =?utf-8?B?OW5nUmdYTEEwNFJScXRoSzJ5OWtGV1dwSVVWa3NRNWd2TkRVWmxabythRGc0?=
 =?utf-8?B?RVNhZW5wdnNYeHJMSG9zR2xjSk4vR3pvMlNoS1NRSUpUbkZXSHFMUHliMXVU?=
 =?utf-8?B?S2dpRnJ3b0pNMzZMaEd1eTBkUmUvanY1VWU1Sktyd2ZIbStKY3lGVjJ0a1NQ?=
 =?utf-8?B?MnVYTmZVcE83T0dUWEJ3NENOdGdKQ2k4bmlsREY0S1ZKUmVpZGVvOVRkbG5H?=
 =?utf-8?B?VXM2Z0N5c1V2NXNzS2VVNnE5eEtXc1BEZEczcmlzNVBldXNISEphbjY0dE83?=
 =?utf-8?B?Ni9TZkIxa3hoS2R2MzVWZHFzVTRRZXB1K05FS09VR3VHejVaNWVpbjd2ZndZ?=
 =?utf-8?B?VVpkYXBqY0M3OElYNTd4ZkR6NlNTVEEyM3l5OGtOUFVFanpwQ2VCdWQ2UDBz?=
 =?utf-8?B?WEhYVnhkQkorekpTL3N1QWs1UERGS0J5eWJjQWMzMWdLOThnNzBJWW5ZUlU3?=
 =?utf-8?B?MjFpMTRIcHYxMytEb0xnSm1ScmxVb0tucm5kN1JHRmtVNXZJaDZ4aFdLem9W?=
 =?utf-8?B?cWJuYUpjYk9Mc3NETVl2eTl0SUpWWlB1Q3dUR2R5RFM1TGdEenBlN3Bhck5P?=
 =?utf-8?B?NkppOTBIaUJCOTgvWU5mM1Rldkh3bWxNQ3FoQnJnSTFQbU9aUEpCeUFYbUtH?=
 =?utf-8?B?MlBxOVhINm4yNi9ZcHY0czhaOGlQMGFleHB0alU2TmxLTmJXYmNrZmM1YkVi?=
 =?utf-8?B?bXBSY1ZnVmJWSDlqRG4xTG1ZYVVIRkVXWG9kNlc4YUlhL1EycGI5K3M0dXhU?=
 =?utf-8?B?bHBTMHByaE03TDNOd2ttSUZEeUcyaVFXNzVSOU0xYVhEMzk1em8zK0FaVjha?=
 =?utf-8?Q?WF7iLF/uz2gTlZupjum5eFMRqPhioLwERlBupV0?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <29629BEF8A77D44CAB021627EC98EC4A@INDPRD01.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-ae5c4.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MAZPR01MB7715.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: a4b29f7b-660f-4d73-5cbc-08dd2f2819f8
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2025 14:32:23.7124 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN3PPF66E6C00F5
X-Mailman-Approved-At: Tue, 07 Jan 2025 14:52:08 +0000
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

aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8x
MzQ2Ng0KDQpJ4oCZdmUgZmlsZWQgaXQgdGhlcmUuDQoNCj4gT24gNyBKYW4gMjAyNSwgYXQgNjow
MuKAr1BNLCBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPiB3cm90ZToN
Cj4gDQo+IE9uIFR1ZSwgMDcgSmFuIDIwMjUsIEFkaXR5YSBHYXJnIDxnYXJnYWRpdHlhMDhAbGl2
ZS5jb20+IHdyb3RlOg0KPj4gSGVyZSBhcmUgdGhlIGxvZ3MgcmVxdWVzdGVkIGFzIHBlciB0aGUg
bGluayB5b3Ugc2VudCBtZToNCj4gDQo+IEl0IGFsc28gc2F5cywgIlBsZWFzZSBmaWxlIGlzc3Vl
cyBpbiB0aGUgZHJtL2k5MTUgaXNzdWUgdHJhY2tlciBmb3IgaTkxNQ0KPiBkcml2ZXIgYnVncyIN
Cj4gDQo+IEkgd2FzIGxvb2tpbmcgdG8gaGF2ZSB0aGF0IGlzc3VlIGNyZWF0ZWQgd2l0aCB0aGUg
bG9ncyBhdHRhY2hlZCB0aGVyZQ0KPiBpbnN0ZWFkIG9mIG1haWxpbmcgbGlzdHMgYW5kIHBhc3Rl
YmlucyBhbmQgd2hhdG5vdC4NCj4gDQo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9k
cm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMNCj4gDQo+IA0KPiBCUiwNCj4gSmFuaS4NCj4gDQo+IA0K
PiAtLSANCj4gSmFuaSBOaWt1bGEsIEludGVsDQoNCg==
