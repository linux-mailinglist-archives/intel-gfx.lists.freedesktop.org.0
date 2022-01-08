Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5EA4899D1
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 14:24:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A64D12ABC8;
	Mon, 10 Jan 2022 13:24:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from APC01-SG2-obe.outbound.protection.outlook.com
 (mail-sgaapc01olkn2101.outbound.protection.outlook.com [40.92.53.101])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 645531124A5
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Jan 2022 10:43:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LWr+MZ0JQCKIRg9Be91bzTBdbqsmuMxc4XROgSFgDCov0nHGgOHHH+v8lfvUCZgXwOkGIfQ84uwWw6QPwdzk4UnkAItJxKbyRJQEeypsWtMeYy7n6VQv45ncQozi10ncHQEKiouAlxBnu6qgM2I8h0Jp+gAzLwPXNI8uYEnOHeY68cK7pZk/OTkc/KM+cmUO5LJ7uDuwOQZLMPyEfwiMIkhE2EmUqp9tXsRJ5TW35+vaxsDppv5KZwIJl3vtJsAqj/n4NdLX6W4IdGOyPp77B2DUFbZlMfVnk3t7aAFAUMt2RMRQZ8OUeZMOOj9+30jauQY74RUrajJDeNvmx///Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RFQCPszbW6BnjyQowRhFgrXT2bJPtwajmDs7S5dveHY=;
 b=AE9KoSVtMSfHOnZTe7ROe3o5ArPiGppg0fBWFfuzWoW42aWuecIh/LagcR8ILPIWGMtENfc2b854+KdFuaza1ORu1pAjfQCwVvO8H+tFPhhdlAqqylEivQQQhJAHuVkCWbnhYOhHt8MFoUqrI52nDZGrlmWoW6PAk5ZF5xKdSk+fmdp+a96Q2+WtpMOMZ73hJI2c+PnuaZUhHRLphvn8mUbOaUsG13RC+aac4FkM9gKBX+cOoygXmqI+SAf4ZNDtQL9Icmn6Gy+GVAuFeAaUF1tb2bbkQGS1deeK98Y5D1/uy90QvN/kf1KWFLd5LUabW8mqg1qVYa6KRiYvCcNd3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RFQCPszbW6BnjyQowRhFgrXT2bJPtwajmDs7S5dveHY=;
 b=TlH0cpkpcyCTM7OPyz7c+ubyD3//tLg959m+UXtTLc2FdcXdOJbr20/2QbcvU0xosleC5qqQ83GwXeXHdUC9SAbuWJFF9ScUbF+aVh97Lil1D9WSx6QnQ5rRsCS/z02XnbCRbyGMUFKRCj28BtcP+PwYuzlFlzHJQLqDMoTRfXJCIru4XLmnstB+hqz8DxRwuyOPoe0q9GeyJLkshlhhOkyfj201Q24FWo+K0Vntm8t65XmslhLL2J9ovYuGqhy+Xb02nwrvF44WB9plkothGjFlLLNiaipNukDtoiRc6KRitfyNAZG4M1WvYeoOiH8uO7rfDq46NLriyi92xC7K2g==
Received: from PS2PR03MB3719.apcprd03.prod.outlook.com (2603:1096:300:38::18)
 by SG2PR03MB3449.apcprd03.prod.outlook.com (2603:1096:4:19::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.7; Sat, 8 Jan
 2022 10:43:18 +0000
Received: from PS2PR03MB3719.apcprd03.prod.outlook.com
 ([fe80::f9e6:8a12:82ba:99ca]) by PS2PR03MB3719.apcprd03.prod.outlook.com
 ([fe80::f9e6:8a12:82ba:99ca%5]) with mapi id 15.20.4867.006; Sat, 8 Jan 2022
 10:43:19 +0000
From: Ashish Arora <ashisharora.linux@outlook.com>
To: Aun-Ali Zaidi <admin@kodeit.net>
Thread-Topic: [PATCH] drm/i915: Discard large BIOS framebuffers causing
 display corruption.
Thread-Index: AQHYBE5G/QSI5yAchkqDOVM07m5d8qxY5DiAgAAHbgCAAATUgA==
Date: Sat, 8 Jan 2022 10:43:18 +0000
Message-ID: <676F392C-A3AD-41FA-A06A-E4D276D940F1@outlook.com>
References: <20220108050812.6303-1-redecorating@protonmail.com>
 <AC748346-8777-4107-9E7D-526D5854F11B@outlook.com>
 <D5A25DCE-75BB-404A-9CBC-979B762DD151@kodeit.net>
In-Reply-To: <D5A25DCE-75BB-404A-9CBC-979B762DD151@kodeit.net>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [1+KjZQrHCZLQW8WeTjb467DoWM4xwef+PkU4MJAHdge39v0Wj0QbYyf5OZVOr+qE]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bcbe1fea-926c-426e-7806-08d9d293af42
x-ms-exchange-slblob-mailprops: c2lCoQNu4IDmVCEb86mVc81tg2mOJ6d0aJf6b8eoFDar55VUbke2WW2/o0QIZyHpe3DS7pfxgP5rpMzCPf1QppWayQ3Lgpg1GsdfjewwcRHo1WE1wn7pL3a8hg+6nTH5t7cG71PfZXi18MgSvw4SEkR5wU7TNSJR8aUFLCSGRLSCmZslmwpR+2zPHeeIIcboSeIKoRJNOWPhnAyJB1wokFd358/QlFi06p+baGjPJUGdjID7lvsPdXFbYGKqegtlZuXMjUjrdSZfEaUBzHP9PUzT/BjNRUOPQNFcExxReV17FWUU9kSS27IS5w+x2g5huXqNPyOUSO2tM1Joa/33y90BTH60a2orCQKdnUaHrsJ4W90p55JBJRje0TZvyEQZeB41DWrx92MW4gZk4w+B/RM/7NXIFeGEwiyPoKJXolKsSECt7TSGuvq03cb9inSrtocb11imtFYYexREdPgXJaTZj0PTcXJu12AxrzsMJ91dszge5j5PZj+PyCLbudh7VTCe13d6CO4Wb5BVnroSKvQlzhLSYKpxWkWbN0UV/n3m2z6tVZ3hdRbUGUlDFpI52YDndV8kSjYggybHhpHpN0x4groReFP+tcrHZXGYucQ+W3ma9DnJ/35TEfADvq+2fDZAKUDbxI+EXxtKvPMIcH5AtBn3/Oq2SuthEX93tc0Fuvi0xXov9ynrwlbAibhVG5XGI6dM8+MvwOvkRx925TCn00LCj2lKGP3o9B5fy/g=
x-ms-traffictypediagnostic: SG2PR03MB3449:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FzqruyFO66vD/cslqpb5Kam3ArO7yfwinXMWfaV/Gm4kNIzEZD9ezPrpG3O+FxucahqBnV24gOMTs9WAukfLcWFZ9zQFS+WAgaGEWbvYKTxTHCxA0z2itq4m3nfOw/7Kd7HBoeMqtHJ0/7ZHrbjMXJ9q+NWC8rkj7MAEHqLNseg6tCK8qERSbbmxY5buBeRVYEH04MGIaGhpNt/JQv1hDz8z137LfCKYQISQiWIA8tA9fdA5rwLCB1tK0NtBrmkHye0p0WL3XXZZNGytDFYWTkHKPbl61u3N7Z/YbfInYmfMABrcU6rl811DM38H2llOfLv5S+1TipcsN33Guqaec29ogE1ag+2fbaBKBf9UQNddI31t6JTxcoOnGyiLO0U2ZJauIqpU5B2/Ze/urWqwoTRrTWr5TDTOs2NiPKrPqGtoI1dsFefzNpZpjXDDEZi4yz2yaAXkgns3EBqywv1mIIAVGGESCjbX3jyNiH/vxnQbMyxVdokTgi3Yh4F2f0TqwtJqL4pnUB6M8NgJzD6xmdp7Qio2srUR+olHhJrXC6XT0RQjb5L+WS5KzARkZBwcOlnoNyuSdqF4BZOifuatIw==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ekoySnVIU0txeUVNRmFhSVhJZlFEZkpvYnA3aUI0dFJSVVRJdGNoa3l6K3c4?=
 =?utf-8?B?VGZMWUpNR0tpOWV1MXBhRDJkWS92OEQxTXl0SWhlakF4akxZZDNaNUhlUUJF?=
 =?utf-8?B?RVF0aU5HWkJjcWxLZkc0bUY3eE10YkZIMjllRVZJalIzdTBJMkNnUFFwSU9H?=
 =?utf-8?B?aWRBUC83dit3VWRML2lReVd1eS96MFBVdmR2QjVRRThUNGpyZVJjMDAzalRy?=
 =?utf-8?B?RDNNSm5sYk5vUk1UQU5UdGY3NmNPM2F3UmpQOXlBaVJPSGJ0NFd5UmZLUkxQ?=
 =?utf-8?B?ZTVSbE1EQm9rTS9qVkdMWHdvZHg0dzllN2ZBcWpBRm5OaWpzano2eXpvZUdW?=
 =?utf-8?B?QXgrYUdOZncyTFVwQzltN3FrcDRZR2F3b2FQQ2o4S0dRNWp5K1BabGVPSFVi?=
 =?utf-8?B?K2hjdnZLUGhXbWtqaFNJVCs4dmkwSGttem0vVjhnM1BuVmttdHBHcVRhVWIy?=
 =?utf-8?B?WEtLM3JMa3V2YTJVdTNSL0tDVTdPOUszK1VIdTl4dDZMTWh1SkZvWHNRQlpH?=
 =?utf-8?B?YWNjODJSRmRhdTFJYUdIazRxNTNLR3lHVWZ1QWp6SEkxazVoYVlORW1maEhQ?=
 =?utf-8?B?ajVOcUlnYldDZTRxZHJacmptR0RHMzVBOFpxaTE0QVpXZW8zYWpPdk9vRGtH?=
 =?utf-8?B?TEVQbVp2dml5QkdSZTAwcHFpdDhUZXg2WWc1NkQ1SUhUNE56Qk9XU2g1Uk1t?=
 =?utf-8?B?TU9sc0NvNlp5UHU4UEFhYmNHbXVGM250a21iQWUya04vQ1c4eWJBQlBuQjdp?=
 =?utf-8?B?WHhvWTI0NDZlb29HOFVia1JDOEFGTjZnSE9oRzdoc0JXWTZHSEFjOVgyaEVp?=
 =?utf-8?B?R2RMZzJyczdOYWxWanBTYy9tMjB2dkp1N0FzZGFkTEUyQm5zWGpZTEg3NG5G?=
 =?utf-8?B?Mnd4Z1NudkZvWkl5M2k1VHVVOFo1QWkvdzNZSzloSVBrUXFCQ0dFM2MyODl3?=
 =?utf-8?B?MHNXSE9NR1NCdzA3WWlXZWZQQnBGbEt5Yyt5VTZ5Zld4RFFCNHlESUwrQVdh?=
 =?utf-8?B?NGJxWVVxcjVIczNFSWxaWjBKT2xKcGNWSXBVTy9NczlHMHhzNFFEV2tKMmJ4?=
 =?utf-8?B?SWtRYWlicEFUUFVna3R4VmtUd3dwVS9PTGkwdVpkQU11MFlVL0QzaTJEL3hh?=
 =?utf-8?B?U0lIRmk3c0V4bE50b1lXNU1POGNLOG5LVGdoQUFYck1iVnJTUllBQlhGc2lx?=
 =?utf-8?B?dWwyVWZxQXBLb3IzMWt5S2F5TVJRb3Y3azRRQW1FTGEwV2RwdW16VXc3NEF4?=
 =?utf-8?B?SmI0Vk43bVVQZEsvVm8xVnl5OEdnNS93VE8rQU5raWpVbHh5VnZqdkdnYURj?=
 =?utf-8?B?WUNJWnJJTXhYTkc2cmxiNmlRS2x1dG1UVGNFc0JQMmM3MUpIZE5uVXFGMi9C?=
 =?utf-8?B?ZzBqcDdSUWZ6UUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A1C7FDBC4756E548AB367766868F569D@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PS2PR03MB3719.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: bcbe1fea-926c-426e-7806-08d9d293af42
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2022 10:43:18.9999 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR03MB3449
X-Mailman-Approved-At: Mon, 10 Jan 2022 13:24:14 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Discard large BIOS framebuffers
 causing display corruption.
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
Cc: Orlando Chamberlain <redecorating@protonmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Aditya Garg <gargaditya08@live.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TWF5IEkgYWRkIHlvdXIgcmV2aWV3ZWQtYnkgQXVuLUFsaSBaYWlkaSA/DQoNCj4gT24gMDgtSmFu
LTIwMjIsIGF0IDM6NTYgUE0sIEF1bi1BbGkgWmFpZGkgPGFkbWluQGtvZGVpdC5uZXQ+IHdyb3Rl
Og0KPiANCj4gTEdUTQ0KPiANCj4g4oCUDQo+IEF1bi1BbGkgWmFpZGkNCj4gDQo+PiBPbiBKYW4g
OCwgMjAyMiwgYXQgMzo1OSBBTSwgQXNoaXNoIEFyb3JhIDxhc2hpc2hhcm9yYS5saW51eEBvdXRs
b29rLmNvbT4gd3JvdGU6DQo+PiANCj4+IA0KPj4gSSBiZWxpZXZlIEkgZm9yZ290IHRvIGFkZCBB
ZGl0eWEgdG8gdGhlIGNvbnZlcnNhdGlvbi4gU28sIEkgYW0gc2VuZGluZyB0aGUgcGF0Y2ggYXMg
YW4gYXR0YWNobWVudCBmb3IgdGhvc2Ugd2hvIHdhbnQgdG8gdGVzdCA6KTwwMDAxLWRybS5wYXRj
aD4NCj4gDQoNCg==
