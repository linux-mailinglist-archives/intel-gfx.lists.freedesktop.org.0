Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5548CA04345
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 15:52:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1FE510EAF8;
	Tue,  7 Jan 2025 14:52:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=live.com header.i=@live.com header.b="K/EskEzX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from MA0PR01CU009.outbound.protection.outlook.com
 (mail-southindiaazolkn19010004.outbound.protection.outlook.com [52.103.67.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBC4A10E886
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 11:29:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gh4TBRoxTeM+rKINPLlF8PITZ7FjAbQzPR2KzQVoeBUyLMD+rFQ4Qz+P7XOXY8tRCYzD3760mZxP639iynkEFp6VlpPD+fgsx4rKx/5hXbyw2Qi6lV1G06ke2hFaHoZgXdGDarLyrJ1VmQBzTvuljivzFIhv49Zbmgl8fMhi3F3xhNvPAkMWAS15JFIfY2M6p96sH2njJwvGgUur0y1RJ6iwgyxfOVgDE/cErykyk81WZQsnPglxLV2vIxmJzJuSQLgjabndh2cu+5yiy8whOggJ4J5c89LNCvDsa5j3YTQtCFXnmQXQIRiQm0HtraxZPCW4NO/GeoMOJOEsglV6XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tyHkOl5xJ4J6A497I5S7TgU8fCCsP9KDMsKKl10qsC4=;
 b=C7dguk1mfrLuUrmaMPCq4UHEGTAkY1/diThGHI7+5yuRtJJSUkkOzpGnRhJaBjP4+Oe6cOd8qL2Bg3BLBHxcA+0xH5bOunvqZmAiSoYd+u7fSu0POI3G+AH/gqFinCIEnX8V2i3mD+We3F30bWg5cHGa067KN77ZjjzKgrkeMqd78LSL6CJFjePMp0+a7qnu9Hs+y1gLbX0nniolgzNZVlJ2ZLJPXGhwr7CZFNaRD1aOus906ZAJjI0rV713fRdEX29JEso1SsgVgGkVd1c28pxqhaWQBOSjMS54bjaGKZnNVqyLcujQ7fKk6AcnZeaIkj30xu2t5GpaTKzTw+gTcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tyHkOl5xJ4J6A497I5S7TgU8fCCsP9KDMsKKl10qsC4=;
 b=K/EskEzX9zgYy3IShHoQZ3SLcq25/7ZBgSqkcy9Tv7E74Lb3DlKXPWvz98I82+e+heG6l/j4Z0qA74rHs6RAPLPfBVOqilG6e/la6CGvjMnDldcUWt1eTM6USjw/6acalS1KgdC/DyX5Opzt3vbZJcgHk0MqnpDWbTTa5BlUxsM1jvW6zqEG4K4GOhYGSTA36E8FGt3+NA63YK9sJzeilla4y+tSCINhmjPRax6nC6453Eah/A7WZegzGfMYjpuil3uuO2oTWpT5eviIYSflsHLTS/5lwqPPBfcatb9W4BSVAXdT5ki6mwdmBc2lOAl74j79yem2raH6p2Jp7KVNsw==
Received: from PN3PR01MB7728.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:cd::12)
 by MA0PR01MB6858.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a01:37::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.14; Fri, 3 Jan
 2025 11:15:23 +0000
Received: from PN3PR01MB7728.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d3b7:2498:cd95:5d06]) by PN3PR01MB7728.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d3b7:2498:cd95:5d06%4]) with mapi id 15.20.8314.013; Fri, 3 Jan 2025
 11:15:22 +0000
From: Aditya Garg <gargaditya08@live.com>
To: Ashish Arora <ashisharora.linux@outlook.com>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, Linux
 Kernel Mailing List <linux-kernel@vger.kernel.org>, Orlando Chamberlain
 <orlandoch.dev@gmail.com>
Subject: [BUG] The bottom and right edges on the tty are not shown on Apple T2
 MacBooks with Retina display
Thread-Topic: [BUG] The bottom and right edges on the tty are not shown on
 Apple T2 MacBooks with Retina display
Thread-Index: AQHbXdDIhpLOMkiZtkOYwNbAP/CD6w==
Date: Fri, 3 Jan 2025 11:15:22 +0000
Message-ID: <02E00F62-D48C-4F34-9F81-BE75A1833795@live.com>
References: <31D69334-DEF9-41B7-968B-B847796926FF@outlook.com>
In-Reply-To: <31D69334-DEF9-41B7-968B-B847796926FF@outlook.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PN3PR01MB7728:EE_|MA0PR01MB6858:EE_
x-ms-office365-filtering-correlation-id: cdb4feb8-ea15-440c-cda1-08dd2be7ea80
x-microsoft-antispam: BCL:0;
 ARA:14566002|461199028|8062599003|19110799003|15080799006|7092599003|8022599003|8060799006|440099028|102099032|3412199025;
x-microsoft-antispam-message-info: =?utf-8?B?bGZEaHNPRG5wbDlSbU5BWHhNejhYbTRqMXdvYUJXbmhadzczQW1ZUGNFem1D?=
 =?utf-8?B?c2tzS2UxSjZGam82NVlHYis1bFVEZ1FkQmRpSmxqbFR2MW13ZDlNZ2RDT0d1?=
 =?utf-8?B?TUt6MERIOWFOWU5IWlJEekx2S2RPVW9TdmRlQmVoWlJudVAyOCsxZTQ3dzU0?=
 =?utf-8?B?L1dneDhZcDBzMm9JTURDeHBFQzZPQ0V2K1I3N0ZOeGZybVV0UDZyMk02R1dX?=
 =?utf-8?B?QlpsSHN4UEtKQU43emdMQmpyV3dQL0p3QjRRNzFzR1BhUlVFcWRacmpNZ254?=
 =?utf-8?B?eDQyQ1I4ZDZNaXV4NnUvUFRlRjE2cllqTzRVdmlaSnRIbEtBc3JKaENka3Fp?=
 =?utf-8?B?d0R1UUFFRmlmeElNbFhCY1pFZVdmNGV2eE91aVd0cjlQdDlnVmk0RDFtOWlE?=
 =?utf-8?B?dlNxUHdLVEdHd3QvVUl3bnYrQ1NIWWlRaUFMRFQ3ZjdiUVlHSncxbnhyR01S?=
 =?utf-8?B?anNuSlJybkR5TlQ0b1ZUNUE2L21TbTN0RDZQdWJrbGlJd0FBZElNelZBbk9D?=
 =?utf-8?B?b3Nwc1pSVmtNeUJiblp3L2I5MVAvOWhzYUtpbzk5cnhnOTdhNFNaSTgvMTB6?=
 =?utf-8?B?Y2plc3d4TjRNaXJ3YXlPSVU1WnpGQmVkSXZRR1RXdUx4RDNDTm9DN0YxaFJU?=
 =?utf-8?B?NldvTDVadGs2WTBYMy95WXFqUEo5YkVHeWlFUXhxUkVqWlFFbEdHNHc4WTV2?=
 =?utf-8?B?OXNFSGNnVWY4YnVUbzhkL3QxTTlmTitKaUphU0JhTVM4TGl3eGhzcUdvdzU2?=
 =?utf-8?B?dHBMSXk1NUtORG1YOE15c0Y1R1ByMnRHZEVrVU1GQjd0N2VwRmxPNHgrNjBN?=
 =?utf-8?B?aUI1SzE2cGhFRmNtNDlxNzVmOENTZ2hBdmp5UUpUcTJKRDhaS1VFMlJRTnpi?=
 =?utf-8?B?YUZFL000OFpncHpPRFFkTlpBQWZOa3FnZnNWUjRJVS9sMzVva0l0Z3ZiemJG?=
 =?utf-8?B?M0hXdjJRVDlibE5JamNNc09aeHF5bHE2NFh6dlpCZEJJV1ZtZ1JLQWwzblp4?=
 =?utf-8?B?b0ZicTF4MFRrZ1VkNmZFMG4vZldWZVI4em16N3FOYVBoV2pzZlJHTnYrVitv?=
 =?utf-8?B?REZkSXRuK0V3Rk4zV016em1DeGhna3lJVXM3RXRLU0pDS2RuZWhCT0o5U3Zr?=
 =?utf-8?B?MldSVVJUWnhLd1Zab2RZRUxxVDhBUUtFRFRlV0h0dUI1Y3RyUlhCd3ZGZFU0?=
 =?utf-8?B?YUc3WU1JcnNzeWZCL3l0RndRSEZUYm5Uak0ycUVuYmN0Zkg5bTQ0MGZjdWJn?=
 =?utf-8?B?dmd2Vmp3K051Tnk2RmRlYXBBWXVlbUZCc20zSmJsdmV1L0V0LzQzTFVHdUQx?=
 =?utf-8?B?U2Y0dFdsOE9kNHlSbFlCWkpleE1ycmZlUjZYTzN0R0N6bHVKcElaS0pjU3N1?=
 =?utf-8?B?Q0cyM0c5KzRmNTg4Y0FBNTZpNVF5aTczWEJ1KzZaeStwSlBhVUdGbTlNNXBQ?=
 =?utf-8?B?SkNsZVcrbEViSEgrNUx2Y3hSeXhFV0pqbVhFamptV3pCU1ZHUi9YQmlwc0Vo?=
 =?utf-8?Q?ZbQQ1E=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WTBoRytKRExKL2ViQ1hONTl3dVdpamRTcU1LSXFxR3g1Z0xOUTRhVFF6dUt4?=
 =?utf-8?B?N1UxY3NrRkJuNHZ2YTVYZnZaZ0p6S0FOQUNGc3ZkN29zT0loYVNIWStjMDR5?=
 =?utf-8?B?ZGN4cTRUVDI3TXdXTm4wU25QeXl1Y1NYRmZzMTF3RTRPbFR3NnZESGRxaktF?=
 =?utf-8?B?TnIzUGc0Rm1HOHhBUVRVTnhQR2lmYzhaZTVCam41NUhQSjgrWklpWmxISGtz?=
 =?utf-8?B?cWVOWkg0MVQxOVBKVllQR2o2eXNISzRXQjYyKzBnRmhrWVhOMVBBU3d5TG1Z?=
 =?utf-8?B?S1RHY0FZRXlxSjFhb1B4ZEpFU1ZYTlNERmR1OENNUm5wY3c4bC9iNENVRlNY?=
 =?utf-8?B?alNSanJDZngwWVc5Vzc4QlFpTDZzYndXZmpwSjNGejdFc0tFYjVoUk1saVFt?=
 =?utf-8?B?WUo2K1ZCeGFBSHJwOUU5ZG9CY3NqV0pSZ1BnckR3c2FaY3YrUjh1S3UyelVH?=
 =?utf-8?B?U2VHaU44SlY0cTlsdER6Zk5QVG1sMjR6Mi9aSkxDZ3g2SS9HZTdvNHUrZm1l?=
 =?utf-8?B?bTJvTkRrOFlZb0lTSXJpeUdYbVM3YWhlV3FieEpXeFJuNkJISld2aXNENThw?=
 =?utf-8?B?c2pKbTNkSFl0cDZiOXZxTVdHSmZqbzE2czd1ZWZ0cjIxem43aHB3UzgzN0kx?=
 =?utf-8?B?U2J5cGdHbWF2Q0xnbUE3NE5ScG9raFFKM3Y5N1pHdkFWcXozaUdGNUxLTVZk?=
 =?utf-8?B?NmhDVCtuMUxtZlNoQm8vSGd0UVY4MThNRFJzOXJqWlV4cEpKTXdDRkc5MWht?=
 =?utf-8?B?czNHbFE2Vnp5aFYrZmNFOWtFYzJaUFhFSlRTUTdUVlpjdmRwNHNhSHo1c01S?=
 =?utf-8?B?R2VKNDZiTENLMXNTeU9IREVjc3FHRmI1S2pYbjhwZEhCVzNOMzVtNXRqMFkv?=
 =?utf-8?B?clFmaUNJMmRsNWR1cnZ4MXlWSzhXUTlLbWtJeXB3KzNnMHZmZlZycEJTcTVT?=
 =?utf-8?B?aDdPZER1clV3VVBBbmZJZVdWckcvRmpqS2ozZDRYR2xYeC84VnV4M1lIMHI0?=
 =?utf-8?B?Wk5idXlyc1pzeWJwNUhqY2FXZi9INzBGMXRMU0ZKWU5sQkxhZW9SMEpFazhT?=
 =?utf-8?B?dDExaCtaOTJlZ01KR0JnTUxxdlJMNUxRUXFRVG94NDhiT05sZHJyNUFndzJW?=
 =?utf-8?B?bDBSOWxZRTV4dWJsYkh6WWRSUkpHckhTSFNWRGp2OU5kU1BUTnJPSmRSeEp6?=
 =?utf-8?B?RVJ2UGNqajVVZzBUSTdyWU16N1R2RWorbys2Ny9rM3M3THZkM1hKNXlvRjJZ?=
 =?utf-8?B?bDFNQ0k5U1QybHFBUTJRNXBtNlZEN2IvWEhVZ0J5cWg4RWpvdElpZEp0NWo2?=
 =?utf-8?B?ZWg1VGltaDZUS3J1aHR4dnBLMGhIeHZkLzgzT1NHWE1GTDA4ejFzSWdVOVF0?=
 =?utf-8?B?Tkk1ZWZsWkV1V05MQVlhZkc2OVRhalc4ckdOcG5uMzdDQUZQOHdnRHg2Yjhv?=
 =?utf-8?B?bktNcXdQMXB2MUxpblJrZnhNZG1jTzdnVlZCcEF5dEZyQlhxK1BHaTRvYWgv?=
 =?utf-8?B?Qno3eFVNdWRsRWFlRm5NbWU4MDJWUEpQY2VOQlBwY2R3ekJ1QXhhWldBcS8v?=
 =?utf-8?B?emxwMHZXbHZiTi9jR2Vxb01YVFUvK1E5K2R3RmxqQUkxZVlZUEplSm1lelZn?=
 =?utf-8?B?MzRiOXM0NHRCNzNHNko2RnhJb1dkelRuSEVEVExLbi9na3QzSTBTZjB1cTc0?=
 =?utf-8?B?dURrVDJ1MzBRd2l5eWU0MDVpMzhWN2dvdThzQjZjVEoyZjB1ZlI4dm9zY0Z1?=
 =?utf-8?Q?qF7YVk6oWkbw8nd5VUW2aGUG4pekmPsy2huGgXm?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <12425C929DBFB543A9788250C8FAA404@INDPRD01.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-ae5c4.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PN3PR01MB7728.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: cdb4feb8-ea15-440c-cda1-08dd2be7ea80
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2025 11:15:22.8071 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA0PR01MB6858
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

SGVsbG8gbWFpbnRhaW5lcnMNCg0KVGhpcyBidWcgaGFzIGJlZW4gdGhlcmUgZm9yIGEgbG9uZyB0
aW1lLCBhbmQgaGFzbid0IGJlZW4gZml4ZWQgeWV0LiBJbiBjYXNlIHRoZSBJbnRlbCBHUFUgaXMg
dXNlZCBhcyBib290IEdQVSBvbiBBcHBsZSBUMiBNYWNCb29rcywgdGhlIGJvdHRvbSBhbmQgcmln
aHQgZWRnZXMgb2YgdGhlIHR0eSBhcmUgbm8gbG9uZ2VyIHNlZW4sIHRodXMgbWFraW5nIHNvbWUg
dGV4dCBub3QgdmlzaWJsZS4NCg0KSXQgaGFzIGJlZW4gcmVwb3J0ZWQgaW4gYWxtb3N0IGFsbCBB
cHBsZSBUMiBNYWNCb29rcyB3aXRoIEludGVsIEdQVSwgd2hpY2ggaGF2ZSB0aGUgUmV0aW5hIGRp
c3BsYXkuDQoNCkluIGNhc2Ugb2YgYSBkdWFsIEdQVSBNYWNCb29rLCBpZiB0aGUgQU1EIGRHUFUg
aXMgdXNlZCB0byBib290LCB0aGUgYnVnIG5vIGxvbmdlciBleGlzdHMuDQoNClRoaXMgcGF0Y2gg
YmVsb3cgd2FzIHN1Ym1pdHRlZCAzIHllYXJzIGFnbywgYW5kIGl0IGZpeGVzIHRoaXMgaXNzdWUu
DQoNCj4gT24gMTEgSmFuIDIwMjIsIGF0IDE6MjXigK9QTSwgQXNoaXNoIEFyb3JhIDxhc2hpc2hh
cm9yYS5saW51eEBvdXRsb29rLmNvbT4gd3JvdGU6DQo+IA0KPiBGcm9tOiBBc2hpc2ggQXJvcmEg
PGFzaGlzaGFyb3JhLmxpbnV4QG91dGxvb2suY29tPg0KPiANCj4gT24gY2VydGFpbiA0ayBwYW5l
bHMgYW5kIE1hY3MsIHRoZSBCSU9TIGZyYW1lYnVmZmVyIGlzIGxhcmdlciB0aGFuIHdoYXQNCj4g
cGFuZWwgcmVxdWlyZXMgY2F1c2luZyBkaXNwbGF5IGNvcnJ1cHRpb24uIEludHJvZHVjZSBhIGNo
ZWNrIGZvciB0aGUgc2FtZS4NCj4gDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBc2hpc2ggQXJvcmEg
PGFzaGlzaGFyb3JhLmxpbnV4QG91dGxvb2suY29tPg0KPiBSZXZpZXdlZC1ieTogQXVuLUFsaSBa
YWlkaSA8YWRtaW5Aa29kZWl0Lm5ldD4NCj4gLS0tDQo+IFYyIDotIFVzZSAhPSBpbnN0ZWFkIG9m
IDwgYW5kID4NCj4gVjMgOi0gTWVudGlvbiBNYWNzIChUaGFua3MgdG8gT3JsYW5kbykNCj4gZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jIHwgNiArKystLS0NCj4gMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMNCj4gaW5kZXggODQyYzA0ZTYz
Li4xNmIxYzgyYjIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJkZXYuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiZGV2LmMNCj4gQEAgLTE4MSwxMCArMTgxLDEwIEBAIHN0YXRpYyBpbnQgaW50ZWxmYl9jcmVh
dGUoc3RydWN0IGRybV9mYl9oZWxwZXIgKmhlbHBlciwNCj4gaW50IHJldDsNCj4gDQo+IGlmIChp
bnRlbF9mYiAmJg0KPiAtICAgIChzaXplcy0+ZmJfd2lkdGggPiBpbnRlbF9mYi0+YmFzZS53aWR0
aCB8fA0KPiAtICAgICBzaXplcy0+ZmJfaGVpZ2h0ID4gaW50ZWxfZmItPmJhc2UuaGVpZ2h0KSkg
ew0KPiArICAgIChzaXplcy0+ZmJfd2lkdGggIT0gaW50ZWxfZmItPmJhc2Uud2lkdGggfHwNCj4g
KyAgICAgc2l6ZXMtPmZiX2hlaWdodCAhPSBpbnRlbF9mYi0+YmFzZS5oZWlnaHQpKSB7DQo+IGRy
bV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiAtICAgICJCSU9TIGZiIHRvbyBzbWFsbCAoJWR4
JWQpLCB3ZSByZXF1aXJlICglZHglZCksIg0KPiArICAgICJCSU9TIGZiIG5vdCB2YWxpZCAoJWR4
JWQpLCB3ZSByZXF1aXJlICglZHglZCksIg0KPiAgICAiIHJlbGVhc2luZyBpdFxuIiwNCj4gICAg
aW50ZWxfZmItPmJhc2Uud2lkdGgsIGludGVsX2ZiLT5iYXNlLmhlaWdodCwNCj4gICAgc2l6ZXMt
PmZiX3dpZHRoLCBzaXplcy0+ZmJfaGVpZ2h0KTsNCj4gLS0gDQo+IDIuMjUuMQ0KPiANCj4gDQo+
IA0KDQo=
