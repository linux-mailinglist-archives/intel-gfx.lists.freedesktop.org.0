Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CEDA0434C
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 15:52:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8922C10EAFF;
	Tue,  7 Jan 2025 14:52:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=live.com header.i=@live.com header.b="XlW2sNHy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from MA0PR01CU009.outbound.protection.outlook.com
 (mail-southindiaazolkn19010009.outbound.protection.outlook.com [52.103.67.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C9AB10E6C7
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2025 12:26:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RPlWtgM0FOWXx6Y3hG9RlWBYxZkgBwwS4Cv8E1kaQsxTzNCoO6TkaEvjcbnpW8exUxk4MCO+YBu02qfFnR8JLmhUTl1kNgVgEGp67684QQlz31Ce/W6d8KyMMd1CUdvoOAsHxM08y831QHwwMb6+OiiNDiSViwzJe3sqk6R3t4fKy2jr/fJ6XgZOhA6iOAOx+wCwcLaK1ROlSl3ZL0Hx/tw0mgqryT8qhACxfg3Wc7X9F8dnGY2tWPR37qD2AUcL0SIK5E8UJ8cOrlEKChdlpYD5f/2UuZA9iC/xBsa9TY6qgjFpWemsthWafKMgLJdQuFYzlmfWak9lAMkESY491g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MXLT8DpuOaiIoed2fkUhSb6gx+OAREIMc/wr5Ltp0Jg=;
 b=sn+fceBh3Z8GaKhtzVh+cWQ3xK6bS5PPAQh6sN3h44VkDV88/R0qrcCw4xdBQx0NyfFE7PQbuhEWxF8WuiuEriQBucFZB6vqBFOumroisBU5Um/NRL74uL/Zle6OX3C+DRXxHBooB1vIutgiWyRq4/Hou5q+Az7QmffvITmDTXjuwTsY0IkBGgCY7FQTPDEwANSl97I6fijnbHAKz8T4dT0wvCtdPpoN5kNVZ4yJZi5EdsnnCCaKW7rfoKhhvN8tI4mrltwKpv2zmYGFnxrMZcIDyrGtvgSTCJjlnD7AiCJ/M+Tja5ZQFpAwdBRXH3p2j+iLGcZAql3LWrzUQN51+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MXLT8DpuOaiIoed2fkUhSb6gx+OAREIMc/wr5Ltp0Jg=;
 b=XlW2sNHyQOAEOXPJIe5gsjvV/ApyM+kkdvnRmo/qEmFyf2K85D6SmJ4S4B2aHVW73pSpEBbAWbOB/n9nZKZ31qMQjIPO3MhgwHul0leGCEoXz3vMuMQx4fbCIhav5RnH2PjMWKIYJw2oBtV/WtvFc1UCkbEZNm6jF7IlCLIieWcautm56OZZpkm3wNqeAuqD48D5wpJbDwJHUTbG+jwQ6YDK2K017AhT298piemdRI80QOJ6n4X4CZ8Zgga7c5gah0kbRdzvwGR6QTS7QY39rDOVHjxhI/lfB+NQjX2ljunDUajyowdGhY6xttSo99X1g0FjNetKvbZl6h3KtaTV0A==
Received: from PN3PR01MB7728.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:cd::12)
 by PN2PPFE2CA103C2.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c04:1::5ad)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.17; Tue, 7 Jan
 2025 12:26:00 +0000
Received: from PN3PR01MB7728.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d3b7:2498:cd95:5d06]) by PN3PR01MB7728.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d3b7:2498:cd95:5d06%4]) with mapi id 15.20.8314.015; Tue, 7 Jan 2025
 12:25:59 +0000
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
Thread-Index: AQHbXdDIDf5VW4xMpkiVpOoaKfsiqLMFGAyAgAYq2wA=
Date: Tue, 7 Jan 2025 12:25:59 +0000
Message-ID: <EB3BFFE1-88C0-4C6D-815E-47F43CB618D3@live.com>
References: <31D69334-DEF9-41B7-968B-B847796926FF@outlook.com>
 <02E00F62-D48C-4F34-9F81-BE75A1833795@live.com> <87bjwom1be.fsf@intel.com>
In-Reply-To: <87bjwom1be.fsf@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PN3PR01MB7728:EE_|PN2PPFE2CA103C2:EE_
x-ms-office365-filtering-correlation-id: 8e6af42f-1ce9-47d0-281d-08dd2f1671a4
x-microsoft-antispam: BCL:0;
 ARA:14566002|8022599003|8060799006|8062599003|19110799003|15080799006|461199028|7092599003|10035399004|440099028|3412199025|4302099013|102099032|1602099012;
x-microsoft-antispam-message-info: =?utf-8?B?c3dhZkRFdVNkeElST0dlNzd4STFhZmhSRjFuZ3Z6UzdjZmRDKzA0ME93TXlm?=
 =?utf-8?B?NkpkdUI2VFYxMElLVjNpUE10UnFaZ0RzSDlMUmQ2RXZCRm01VjFTSVVOS1hC?=
 =?utf-8?B?VXN1VlBidGN0M1diZlBRYkQwZkxlcXVQSHdoTWIyS0dWOGwrWDkzSDNISmta?=
 =?utf-8?B?QUNUakV5cFdoOStSRWNwWWY0NlUxZTVtdFRteTNDbHVOSlh3UDRCVHpuOFZO?=
 =?utf-8?B?MmtTZXpFTStoY1Btb040T3BCNlhlMDZUbzhNYTFwb29HUU95a0ZnMEtsZTdV?=
 =?utf-8?B?d1BCd29ZK0hRbHZDNnhkQmxueWpHTnhnN1VzMlRQWEFLYVVadWNORnhkSDJp?=
 =?utf-8?B?M0lNN2paaHpJdzlvMUd3TTg4VlZYckhKYnV4bmREeEtCNE1Sa2hqQ3NTU2Js?=
 =?utf-8?B?UElGbURjVzBNQXdPV1FDM053M3Q3cDZGV2hERkJ2d0FrSXlLcHBUNDdPdlhD?=
 =?utf-8?B?U2xNaEdMUzIzTkdCYTdFak1JWFd3Z3pFMGFnRHZ4RWJmN0FtWlZlM1VIRGRC?=
 =?utf-8?B?VHJPRHdrbU5kQ1dFcnhiOEZSMnppNE9lczY0L2hqcGt2NFd5cmlSV0xPUXEx?=
 =?utf-8?B?M2R6QlNPZUkzR0cwZG53RzhlYjJEMWRoNTZZSXhCNnlEV090dlAwLzRpa3hs?=
 =?utf-8?B?eldJaXNhUzVOZGF0OEhrWnlRMjVmVVBKeUczMUpIRXA0TjBtZFZyelQ5NERZ?=
 =?utf-8?B?SzI1N01RSFdHbnRYMHdoeklkaFBJSU95MnpRdGhFTnRiT0wxcG9TV0NkN2pR?=
 =?utf-8?B?TkQwN3hMdldBWEt1c1gvZlZ1THBweGl3WFJxakhRWHBLZGVQYjdTYUk4eHo2?=
 =?utf-8?B?RWxOL1ltQkRPbkRaN3JZckZTbW45azhvRUtrRDdjNnEzVUJsOWF2cEowd1lu?=
 =?utf-8?B?S1RqTHZXVUQ0ZmNndE9XUEJUOWZSN1VmYndpMTJFM2ZuZUNiODlGQVNvUnpP?=
 =?utf-8?B?MmhzcHBiMzUvRHRicGF5Rk50Y2pVS0JKWjJZb0EwQ1V0alhETVBOOXFjT2xm?=
 =?utf-8?B?dXVNKy9JUHg5ZG1nQmFZU3k4WVE5cC9WSGVnZG5NREdHdE1tRkxsMVJwUHpE?=
 =?utf-8?B?ckNmMnFONGI5S2c1L1cyamo2R1BXaFQ1R2VOZDlIb2RCcHpPSnQwOVN1Ykk1?=
 =?utf-8?B?d0dWS0cxS1hVOVRnSlVzVHpLRDBpZkxvVEJjSkE4V1MvZENkTytRY1hZQXNn?=
 =?utf-8?B?d2VtaUlFVEpmK0pqVkl5V0JQSlV0eW5jbVN2M2d2dzFVcWR4Z1ZncE5rQk5z?=
 =?utf-8?B?b3QzSTVxdEZQR3VqOFRtd0tVZUc0a0poRzdUTjloTnpVNlpYVXE4YjN0SWs2?=
 =?utf-8?B?Y2FhMlUyQ3ZxRDZIazJVak5XYW92WFRodFpISHlHUUtFSXlYbkNqUGJzMzZp?=
 =?utf-8?B?UCt3K0hvVVN2VjdncTRuUHUrNy8yRWVUWmxoVmpkNjJjdEtka2FZbWhXODYv?=
 =?utf-8?B?MUlscHVMTHJ4TDFuVkIxOEdsY2QvRSs0ak1Db3N2RmIyTGxxN2ZKT29GcVV0?=
 =?utf-8?B?NXhuUG9VNk9vQTdxclBqbnZlcEJWdUl1RTVqUG14bXluQUJOam5NcEJEby8v?=
 =?utf-8?B?NUlFdEpnT2RndWRHQTg5R3d2TlpwTXFHQ2xjQWFOZjEvYkptbDg2TGN3Ym5o?=
 =?utf-8?Q?izcePd2d2EYMVG9cOJ2dsX29RUGw8YdNPbBTIOvsMXlU=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aVhsdjRFdkpHcFFrYXhSSWlTVHlkK01KUGIrcGhBMVVQQVEybnZGL1BNWElB?=
 =?utf-8?B?ZkhXTTRlS2dnOVUrVFduT0J3U2V1NmM5czFRS2ppcGtxRnJhS2JXK3FjY25U?=
 =?utf-8?B?MjlvNW41MGNBRWpMUlQyaTE2SE9RYzErbVJBRW1ON2YremVVQUNWSndGVHps?=
 =?utf-8?B?SFRIa240ZEswb2R6N1NwR1RxK0p1MGYxWGdxWG1KUXl2YXZobm9wM0xXVnlw?=
 =?utf-8?B?TlpaNHJLcURXK0Y0anZaNUxlOEpnYTdmU3Q0WkNtakhpOHhUOC9mcXNrY3Bs?=
 =?utf-8?B?RElBRldnRjZSZldOWlpQRzZZR0x0K0RnWHp6dHdyeFZwRkI3VnBFeEZ4ZjNG?=
 =?utf-8?B?VlJ5Si9ra3BZU0hHSnVPVWg2QnEydGlHRHBPRzRSRlQ4ZVBnU0dyTkc2SmtV?=
 =?utf-8?B?NUhTUnE2RzlqYjdZV3NwUDRpSjkxc3pxUnM3VXdMdmhEOU1jUVRCMnJOZzUz?=
 =?utf-8?B?bmVhbmVkamxLTTF2dVp4bkEvUEh6Z3k3dnJmOVk3MHYxMW9sYXZ2ZUFwMTc5?=
 =?utf-8?B?V2xsSEw5NUlBZHBHRzFYWDNJWG9YRGcwMXVBd0ovOVJ3dDQ4SllWc1VnYXVM?=
 =?utf-8?B?UnV0QjgxcDNTMkxYZ0JuZFZIL3l1anZNeUFVWmVrSmhIbGhDTEFCWDRNZjFV?=
 =?utf-8?B?a2dBMlpNNzlnY0NkTUFnMjVCTUN6UFJqMmIwZVk2eXpGUm5aaE9uMXV2SjJw?=
 =?utf-8?B?NzYxc0dpWGE1ZG55eXpVWk1OTFY5eHRuU2RGdjE3VlRKeE9EMTlScEZaQW9Z?=
 =?utf-8?B?dm4yT2VSaHE3c1FRc2gwN0VDSkJyTWJRdk9MVTFMbUc0TmtCY3ZRZTQ3NThq?=
 =?utf-8?B?Y1l3UzRPY3I4S29sSGpuU1F3TmhFeExhNHdtaWpOMkIwQnJhYVVxVDlEdVgx?=
 =?utf-8?B?SHpFRXZLVEtyZ2wycWdScVF1RUgvb29jUVVBU1k2NTIrK3h4ZW80aitqYjAz?=
 =?utf-8?B?OEJhVUQ5UklNUzJheGVYRnF5N2ZTUXllNVRMcU9nZDJpYlltYXRiMFdqd2JQ?=
 =?utf-8?B?eHFNSk1HbXdiTE9MSWF1WlBoYzVKZmREUGcwdFZDUmJiWGowUkkzUkFHMDNQ?=
 =?utf-8?B?ZzlVeUNNSzZPa0RJdXloK0I3Q1B1eUFDZG5VSW1vblphM1VxZmFxUXBxVmZh?=
 =?utf-8?B?ZGZZdWlkZFJKc2dmaUdXTDdsOXRrZC9GOUFWMzdBVGIyWkcwWVo1b2JEL2dN?=
 =?utf-8?B?Y3d2SFZabjRhTnhOWnhSOXdiNlRGckNBWWwyTHZEUzJXK1k3NEYvYllSdXJo?=
 =?utf-8?B?dWFIc2xXMEQya2MrRERMUlc2UllQVFZxQ0t1UDhpaEZnTkJmam4zNENHUEV5?=
 =?utf-8?B?dWkvM05ROHZ2VXZjMEh3bXBKUk1tVXg0Z2pOSmhPZ3AxclYvNGlXbE12MWMw?=
 =?utf-8?B?NVlqUlRLSmZoVHRyelFZOWVGaXFyNDFEdWI1Q0dZU1c5UGw5aHg5MHM3NCtW?=
 =?utf-8?B?V3hoYXJMaTYxeE16TzlFNUNZeHZtdENsVlBnWTFscnBsZUVPbXFoVU0vajZU?=
 =?utf-8?B?Q1VDSkNBcDh1bTFzVHJEMVNkQnkrcDRRWnRvZk80N3htSS93cXhudUl5L1A3?=
 =?utf-8?B?ZmFHa1BlTU8rVXloY2Vyc3FWRlplZGhkUWxSRjQxL3RjZERFaWpTS2k1bTFi?=
 =?utf-8?B?KzBudDc0VHM5d3JhZTlKSFk2TTQzME1hTFBISTRVRnhvZ2lGWjBoT3pMbTdL?=
 =?utf-8?B?YlNlbmdobmIybnh4UnVKVVZicFpGYmlUc3NsdVB5TFFxcllhbGdFekoyZzdz?=
 =?utf-8?Q?sjQ/UP1Ptc1qw7FdBqpv2cvR16yJIlP2Bj7XKQ5?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CBA90070612703448574BA2E2FCDCF18@INDPRD01.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-ae5c4.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PN3PR01MB7728.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e6af42f-1ce9-47d0-281d-08dd2f1671a4
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2025 12:25:59.8324 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN2PPFE2CA103C2
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

SGVyZSBhcmUgdGhlIGxvZ3MgcmVxdWVzdGVkIGFzIHBlciB0aGUgbGluayB5b3Ugc2VudCBtZToN
Cg0KMS4gdW5hbWUgLWE6DQoNCkxpbnV4IE1hY0Jvb2sgNi4xMi44LTEtdDItbm9ibGUgIzEgU01Q
IFBSRUVNUFRfRFlOQU1JQyBGcmkgSmFuIDMgMTU6NDM6MjMgVVRDIDIwMjUgeDg2XzY0IHg4Nl82
NCB4ODZfNjQgR05VL0xpbnV4DQoNCjIuIGxzcGNpIC12bm4gLWQgOio6MDMwMDoNCg0KMDA6MDIu
MCBWR0EgY29tcGF0aWJsZSBjb250cm9sbGVyIFswMzAwXTogSW50ZWwgQ29ycG9yYXRpb24gQ29m
ZmVlTGFrZS1IIEdUMiBbVUhEIEdyYXBoaWNzIDYzMF0gWzgwODY6M2U5Yl0gKHByb2ctaWYgMDAg
W1ZHQSBjb250cm9sbGVyXSkNCglTdWJzeXN0ZW06IEFwcGxlIEluYy4gQ29mZmVlTGFrZS1IIEdU
MiBbVUhEIEdyYXBoaWNzIDYzMF0gWzEwNmI6MDE5Y10NCglGbGFnczogYnVzIG1hc3RlciwgZmFz
dCBkZXZzZWwsIGxhdGVuY3kgMCwgSVJRIDkzLCBJT01NVSBncm91cCAwDQoJTWVtb3J5IGF0IDgw
MDAwMDAwICg2NC1iaXQsIG5vbi1wcmVmZXRjaGFibGUpIFtzaXplPTE2TV0NCglNZW1vcnkgYXQg
YTAwMDAwMDAgKDY0LWJpdCwgcHJlZmV0Y2hhYmxlKSBbc2l6ZT0yNTZNXQ0KCUkvTyBwb3J0cyBh
dCA0MDAwIFtzaXplPTY0XQ0KCUV4cGFuc2lvbiBST00gYXQgMDAwYzAwMDAgW3ZpcnR1YWxdIFtk
aXNhYmxlZF0gW3NpemU9MTI4S10NCglDYXBhYmlsaXRpZXM6IFs0MF0gVmVuZG9yIFNwZWNpZmlj
IEluZm9ybWF0aW9uOiBMZW49MGMgPD8+DQoJQ2FwYWJpbGl0aWVzOiBbNzBdIEV4cHJlc3MgUm9v
dCBDb21wbGV4IEludGVncmF0ZWQgRW5kcG9pbnQsIE1TSSAwMA0KCUNhcGFiaWxpdGllczogW2Fj
XSBNU0k6IEVuYWJsZSsgQ291bnQ9MS8xIE1hc2thYmxlLSA2NGJpdC0NCglDYXBhYmlsaXRpZXM6
IFtkMF0gUG93ZXIgTWFuYWdlbWVudCB2ZXJzaW9uIDINCglDYXBhYmlsaXRpZXM6IFsxMDBdIFBy
b2Nlc3MgQWRkcmVzcyBTcGFjZSBJRCAoUEFTSUQpDQoJQ2FwYWJpbGl0aWVzOiBbMjAwXSBBZGRy
ZXNzIFRyYW5zbGF0aW9uIFNlcnZpY2UgKEFUUykNCglDYXBhYmlsaXRpZXM6IFszMDBdIFBhZ2Ug
UmVxdWVzdCBJbnRlcmZhY2UgKFBSSSkNCglLZXJuZWwgZHJpdmVyIGluIHVzZTogaTkxNQ0KCUtl
cm5lbCBtb2R1bGVzOiBpOTE1DQoNCjAzOjAwLjAgVkdBIGNvbXBhdGlibGUgY29udHJvbGxlciBb
MDMwMF06IEFkdmFuY2VkIE1pY3JvIERldmljZXMsIEluYy4gW0FNRC9BVEldIE5hdmkgMTQgW1Jh
ZGVvbiBSWCA1NTAwLzU1MDBNIC8gUHJvIDU1MDBNXSBbMTAwMjo3MzQwXSAocmV2IDQzKSAocHJv
Zy1pZiAwMCBbVkdBIGNvbnRyb2xsZXJdKQ0KCVN1YnN5c3RlbTogQXBwbGUgSW5jLiBOYXZpIDE0
IFtSYWRlb24gUlggNTUwMC81NTAwTSAvIFBybyA1NTAwTV0gWzEwNmI6MDIxMF0NCglGbGFnczog
YnVzIG1hc3RlciwgZmFzdCBkZXZzZWwsIGxhdGVuY3kgMCwgSVJRIDk3LCBJT01NVSBncm91cCAy
DQoJTWVtb3J5IGF0IDQxMDAwMDAwMDAgKDY0LWJpdCwgcHJlZmV0Y2hhYmxlKSBbc2l6ZT00R10N
CglNZW1vcnkgYXQgNDA4MDAwMDAwMCAoNjQtYml0LCBwcmVmZXRjaGFibGUpIFtzaXplPTJNXQ0K
CUkvTyBwb3J0cyBhdCAzMDAwIFtzaXplPTI1Nl0NCglNZW1vcnkgYXQgODE1MDAwMDAgKDMyLWJp
dCwgbm9uLXByZWZldGNoYWJsZSkgW3NpemU9NTEyS10NCglFeHBhbnNpb24gUk9NIGF0IDgxNTgw
MDAwIFtkaXNhYmxlZF0gW3NpemU9MTI4S10NCglDYXBhYmlsaXRpZXM6IFs0OF0gVmVuZG9yIFNw
ZWNpZmljIEluZm9ybWF0aW9uOiBMZW49MDggPD8+DQoJQ2FwYWJpbGl0aWVzOiBbNTBdIFBvd2Vy
IE1hbmFnZW1lbnQgdmVyc2lvbiAzDQoJQ2FwYWJpbGl0aWVzOiBbNjRdIEV4cHJlc3MgTGVnYWN5
IEVuZHBvaW50LCBNU0kgMDANCglDYXBhYmlsaXRpZXM6IFthMF0gTVNJOiBFbmFibGUrIENvdW50
PTEvMSBNYXNrYWJsZS0gNjRiaXQrDQoJQ2FwYWJpbGl0aWVzOiBbMTAwXSBWZW5kb3IgU3BlY2lm
aWMgSW5mb3JtYXRpb246IElEPTAwMDEgUmV2PTEgTGVuPTAxMCA8Pz4NCglDYXBhYmlsaXRpZXM6
IFsxNTBdIEFkdmFuY2VkIEVycm9yIFJlcG9ydGluZw0KCUNhcGFiaWxpdGllczogWzIwMF0gUGh5
c2ljYWwgUmVzaXphYmxlIEJBUg0KCUNhcGFiaWxpdGllczogWzI0MF0gUG93ZXIgQnVkZ2V0aW5n
IDw/Pg0KCUNhcGFiaWxpdGllczogWzI3MF0gU2Vjb25kYXJ5IFBDSSBFeHByZXNzDQoJQ2FwYWJp
bGl0aWVzOiBbMmEwXSBBY2Nlc3MgQ29udHJvbCBTZXJ2aWNlcw0KCUNhcGFiaWxpdGllczogWzJi
MF0gQWRkcmVzcyBUcmFuc2xhdGlvbiBTZXJ2aWNlIChBVFMpDQoJQ2FwYWJpbGl0aWVzOiBbMmMw
XSBQYWdlIFJlcXVlc3QgSW50ZXJmYWNlIChQUkkpDQoJQ2FwYWJpbGl0aWVzOiBbMmQwXSBQcm9j
ZXNzIEFkZHJlc3MgU3BhY2UgSUQgKFBBU0lEKQ0KCUNhcGFiaWxpdGllczogWzMyMF0gTGF0ZW5j
eSBUb2xlcmFuY2UgUmVwb3J0aW5nDQoJQ2FwYWJpbGl0aWVzOiBbNDAwXSBEYXRhIExpbmsgRmVh
dHVyZSA8Pz4NCglDYXBhYmlsaXRpZXM6IFs0MTBdIFBoeXNpY2FsIExheWVyIDE2LjAgR1QvcyA8
Pz4NCglDYXBhYmlsaXRpZXM6IFs0NDBdIExhbmUgTWFyZ2luaW5nIGF0IHRoZSBSZWNlaXZlciA8
Pz4NCglLZXJuZWwgZHJpdmVyIGluIHVzZTogYW1kZ3B1DQoJS2VybmVsIG1vZHVsZXM6IGFtZGdw
dQ0KDQozLiBkbWlkZWNvZGU6DQoNCmh0dHBzOi8vcGFzdGViaW4uY29tL3JORGl0dEVaDQoNCjQu
IGRtZXNnOg0KDQpodHRwczovL2dpc3QuZ2l0aHViLmNvbS9BZGl0eWFHYXJnOC80NGNmOTczYWM1
Y2Y1ZWFjNTMyNDZkY2U2N2U0MzdhYg0KDQo1LiB4cmFuZHIgLS12ZXJib3NlDQoNCmh0dHBzOi8v
cGFzdGViaW4uY29tLzl1ZmJiQkNjDQoNCj4gT24gMyBKYW4gMjAyNSwgYXQgNzo0NOKAr1BNLCBK
YW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPiB3cm90ZToNCj4gDQo+IE9u
IEZyaSwgMDMgSmFuIDIwMjUsIEFkaXR5YSBHYXJnIDxnYXJnYWRpdHlhMDhAbGl2ZS5jb20+IHdy
b3RlOg0KPj4gSGVsbG8gbWFpbnRhaW5lcnMNCj4+IA0KPj4gVGhpcyBidWcgaGFzIGJlZW4gdGhl
cmUgZm9yIGEgbG9uZyB0aW1lLCBhbmQgaGFzbid0IGJlZW4gZml4ZWQgeWV0LiBJbiBjYXNlIHRo
ZSBJbnRlbCBHUFUgaXMgdXNlZCBhcyBib290IEdQVSBvbiBBcHBsZSBUMiBNYWNCb29rcywgdGhl
IGJvdHRvbSBhbmQgcmlnaHQgZWRnZXMgb2YgdGhlIHR0eSBhcmUgbm8gbG9uZ2VyIHNlZW4sIHRo
dXMgbWFraW5nIHNvbWUgdGV4dCBub3QgdmlzaWJsZS4NCj4+IA0KPj4gSXQgaGFzIGJlZW4gcmVw
b3J0ZWQgaW4gYWxtb3N0IGFsbCBBcHBsZSBUMiBNYWNCb29rcyB3aXRoIEludGVsIEdQVSwgd2hp
Y2ggaGF2ZSB0aGUgUmV0aW5hIGRpc3BsYXkuDQo+PiANCj4+IEluIGNhc2Ugb2YgYSBkdWFsIEdQ
VSBNYWNCb29rLCBpZiB0aGUgQU1EIGRHUFUgaXMgdXNlZCB0byBib290LCB0aGUgYnVnIG5vIGxv
bmdlciBleGlzdHMuDQo+PiANCj4+IFRoaXMgcGF0Y2ggYmVsb3cgd2FzIHN1Ym1pdHRlZCAzIHll
YXJzIGFnbywgYW5kIGl0IGZpeGVzIHRoaXMgaXNzdWUuDQo+IA0KPiBQbGVhc2UgZmlsZSBhIGJ1
ZyBhcyBkZXNjcmliZWQgYXQgWzFdLCBhdHRhY2hpbmcgZG1lc2cgZnJvbSBib290IHdpdGgNCj4g
ZGVidWdzIGVuYWJsZWQsIGV0Yy4NCj4gDQo+IEFzIHN1Z2dlc3RlZCBieSBWaWxsZSBpbiBbMl0s
IHRoZSBidWcgaXMgbGlrZWx5IGVsc2V3aGVyZSwgYW5kIHRoaXMganVzdA0KPiBoaWRlcyBpdC4g
QSBiaWdnZXIgZmIgc2hvdWxkbid0IGJlIGEgcHJvYmxlbSwgYW5kIHdlIHNob3VsZG4ndCBhZGQg
dGhpcw0KPiBsaW1pdGF0aW9uIGV2ZXJ5d2hlcmUgYmVjYXVzZSBvZiB0aGUgaXNzdWUgeW91J3Jl
IHNlZWluZy4NCj4gDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gDQo+IA0KPiBbMV0gaHR0cHM6Ly9k
cm0ucGFnZXMuZnJlZWRlc2t0b3Aub3JnL2ludGVsLWRvY3MvaG93LXRvLWZpbGUtaTkxNS1idWdz
Lmh0bWwNCj4gDQo+IFsyXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9yL1lkN1puQmxVMHNqUDRx
Y0dAaW50ZWwuY29tDQo+IA0KPj4gDQo+Pj4gT24gMTEgSmFuIDIwMjIsIGF0IDE6MjXigK9QTSwg
QXNoaXNoIEFyb3JhIDxhc2hpc2hhcm9yYS5saW51eEBvdXRsb29rLmNvbT4gd3JvdGU6DQo+Pj4g
DQo+Pj4gRnJvbTogQXNoaXNoIEFyb3JhIDxhc2hpc2hhcm9yYS5saW51eEBvdXRsb29rLmNvbT4N
Cj4+PiANCj4+PiBPbiBjZXJ0YWluIDRrIHBhbmVscyBhbmQgTWFjcywgdGhlIEJJT1MgZnJhbWVi
dWZmZXIgaXMgbGFyZ2VyIHRoYW4gd2hhdA0KPj4+IHBhbmVsIHJlcXVpcmVzIGNhdXNpbmcgZGlz
cGxheSBjb3JydXB0aW9uLiBJbnRyb2R1Y2UgYSBjaGVjayBmb3IgdGhlIHNhbWUuDQo+Pj4gDQo+
Pj4gDQo+Pj4gU2lnbmVkLW9mZi1ieTogQXNoaXNoIEFyb3JhIDxhc2hpc2hhcm9yYS5saW51eEBv
dXRsb29rLmNvbT4NCj4+PiBSZXZpZXdlZC1ieTogQXVuLUFsaSBaYWlkaSA8YWRtaW5Aa29kZWl0
Lm5ldD4NCj4+PiAtLS0NCj4+PiBWMiA6LSBVc2UgIT0gaW5zdGVhZCBvZiA8IGFuZCA+DQo+Pj4g
VjMgOi0gTWVudGlvbiBNYWNzIChUaGFua3MgdG8gT3JsYW5kbykNCj4+PiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMgfCA2ICsrKy0tLQ0KPj4+IDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+Pj4gDQo+Pj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYw0KPj4+IGluZGV4IDg0MmMwNGU2My4u
MTZiMWM4MmIyIDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJkZXYuYw0KPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJkZXYuYw0KPj4+IEBAIC0xODEsMTAgKzE4MSwxMCBAQCBzdGF0aWMgaW50IGludGVsZmJf
Y3JlYXRlKHN0cnVjdCBkcm1fZmJfaGVscGVyICpoZWxwZXIsDQo+Pj4gaW50IHJldDsNCj4+PiAN
Cj4+PiBpZiAoaW50ZWxfZmIgJiYNCj4+PiAtICAgIChzaXplcy0+ZmJfd2lkdGggPiBpbnRlbF9m
Yi0+YmFzZS53aWR0aCB8fA0KPj4+IC0gICAgIHNpemVzLT5mYl9oZWlnaHQgPiBpbnRlbF9mYi0+
YmFzZS5oZWlnaHQpKSB7DQo+Pj4gKyAgICAoc2l6ZXMtPmZiX3dpZHRoICE9IGludGVsX2ZiLT5i
YXNlLndpZHRoIHx8DQo+Pj4gKyAgICAgc2l6ZXMtPmZiX2hlaWdodCAhPSBpbnRlbF9mYi0+YmFz
ZS5oZWlnaHQpKSB7DQo+Pj4gZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+Pj4gLSAgICAi
QklPUyBmYiB0b28gc21hbGwgKCVkeCVkKSwgd2UgcmVxdWlyZSAoJWR4JWQpLCINCj4+PiArICAg
ICJCSU9TIGZiIG5vdCB2YWxpZCAoJWR4JWQpLCB3ZSByZXF1aXJlICglZHglZCksIg0KPj4+ICAg
IiByZWxlYXNpbmcgaXRcbiIsDQo+Pj4gICBpbnRlbF9mYi0+YmFzZS53aWR0aCwgaW50ZWxfZmIt
PmJhc2UuaGVpZ2h0LA0KPj4+ICAgc2l6ZXMtPmZiX3dpZHRoLCBzaXplcy0+ZmJfaGVpZ2h0KTsN
Cj4+PiAtLSANCj4+PiAyLjI1LjENCj4+PiANCj4+PiANCj4+PiANCj4+IA0KPiANCj4gLS0gDQo+
IEphbmkgTmlrdWxhLCBJbnRlbA0KDQoNCg==
