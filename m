Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1477F48C50F
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 14:43:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8206810FAE2;
	Wed, 12 Jan 2022 13:43:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from APC01-PSA-obe.outbound.protection.outlook.com
 (mail-psaapc01olkn2032.outbound.protection.outlook.com [40.92.52.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F93610FAE2
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 13:42:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dxt/GyBdcmeBP8QrctRoOFI61TpVBHK71cvRzHGRYcmm16FZZvm1UYcM/LkcCXAPFVT/CfJDPmtrEEtMqvNgKWQGH1Iz69wbfhFW34ghZailPfIRk2SqrtH2uw01sIdnYby6hd1CiviF//xWDIg/AL7I2ZcSTQ2sodX0IkfMEGR2M5h7PjCy73syk4jw/zvClPRhi+5Opq2DryRLKI9z6pgjU0cQO1QYKginDC6P0U4PJkYsZqPyPq2IWU8oNSFGvcz8d4hf8TgZmoLz4pq9Y5XiJm74n6qvN7xRxQwj7Rn1QkHsHiQGELeV8q5Yp2aRPEvs30tMs+GpZtHkOGGnWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yLhueSCe2exrGqKbfsNxbxyX8BI9g6wf1vH+CyCV204=;
 b=Alxqj1H1Za7n9gCvt7y1mLFcqJEHc4obbhrPMVWQbw20vhzmpj71OuhutG2mySW9AfmzlzQpf5oaJcGgtHxfZqX2opwNLrCGN1ZUS81w6KL4QUI5L77seiwnWhAdMNYjqKdjydkfS/n+j3XBbkZHGO1tPQAJ3tJuB30eRZtdk2jp/G5VKcGA60hvMw5LmJ09OTN7uqY9lXakmOKoE0Exp31IgPJTSl/gmQhZgNlk6Snbem1XArxMKBMWBikq60Qc5PNMm/ABPM29bNAaQPeAaXRBAxaOrKkCG73N21n2luR3dUJgi5dhbSDN59alFSGvqBrbU/ZR4Lg81VkcOWBZbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yLhueSCe2exrGqKbfsNxbxyX8BI9g6wf1vH+CyCV204=;
 b=HA8KcoWOvAGAh/sscPvAf6N1XnFBc/k4yzzQPmowgWAJ7Ptkzk9NhmnMTP1yJxFa43RXl6aX4BFDOyiKUUU+mocITPP8bYJiNQCsyVJN2dI7wQh9bypS/kPU922H4eoMqsjEYRYZc2SKoSQsWt+6nY5Qo3x1CY0v+ar9evUeZfoq4KB8vdzkbZ8ahM0dn6DEyOIRPLcnYF5z4R5G2pXTNgenBJCeBSbRzLT/G9/43QI3qkZdOT08sGqFyNKaVTm5zR4g84X4bYQQjvKk07ipHBbHNDLmFPehqDJjvtH3SOU2mAx92zcchORwRoNZiKwGdhO0oo6WQDEUSaQkoD42pQ==
Received: from PS2PR03MB3719.apcprd03.prod.outlook.com (2603:1096:300:38::18)
 by KL1PR03MB5524.apcprd03.prod.outlook.com (2603:1096:820:3b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.4; Wed, 12 Jan
 2022 13:42:28 +0000
Received: from PS2PR03MB3719.apcprd03.prod.outlook.com
 ([fe80::f9e6:8a12:82ba:99ca]) by PS2PR03MB3719.apcprd03.prod.outlook.com
 ([fe80::f9e6:8a12:82ba:99ca%5]) with mapi id 15.20.4888.008; Wed, 12 Jan 2022
 13:42:28 +0000
From: Ashish Arora <ashisharora.linux@outlook.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH - v3] drm/i915: Discard large BIOS
 framebuffers causing display corruption.
Thread-Index: AQHYBsCWeWXVwjeiJECU6Sxgoszm4qxfZZgAgAABXgA=
Date: Wed, 12 Jan 2022 13:42:28 +0000
Message-ID: <5D28E8A8-3189-4097-A954-7C746A190417@outlook.com>
References: <31D69334-DEF9-41B7-968B-B847796926FF@outlook.com>
 <Yd7ZnBlU0sjP4qcG@intel.com>
In-Reply-To: <Yd7ZnBlU0sjP4qcG@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [HXbQbut4sFgYaAVRknECfogw/vL7UXNlfVT+hiPvrhVxX3mJS8baVD9he23HRmUC]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0b5d95e1-efd8-455f-61c8-08d9d5d15fec
x-ms-exchange-slblob-mailprops: I5qrvvDeUuRWNA+tb6inFviO+HiFe3fmAbvLoArwUJPB835QLT1KpGLm0sYquDvzRNjB0gLbEGAsosn/DJm244b7ZlDkpWI9xfWS3h/GBBcfm8FZuua4REi1v/0BcVOd2JeFkmu2e9p/7d6zmhQV38bvku7Yr2GK3N3vQIRUJCzdDjiIbMqGdDDzNlc6CvPxTKgxwjVCSw0LBPNZlE3Iugyj2w18EwSNjXPbgW8B4X8LhjIiG24hqxXNHz0j/gUmFPlEOp3ckMsf+mNc9cQA6AtL6SiC0xUU4We6Wvb8R15hdPxUDbGG/Ssef6mY/VJoKfBJZDDsv7c6WwYgkAOhhNAf7X0Olof+VvRF60Z3rf7PQzgegflqIKftdL3qyd0KOrXLGuCjJfTmt8kWrdQhG7nUs2sD7YSRg0qQv8HUXXoamPQWVG7NZU0UBjr0ZtlH9xnC6PHPumo4W29vt601gP3rkXe+/Sj0Z7bazi9jqxNbyZmLWcQOXV3S9+SVy9lR6JjI9PwY2fP2mVZhTynryMwaviWC7BsYnfuwuAUmGAZ21G0JFNq2JumbuHCmsmZrMuVfQ7rYPWkQ4PWeFE2pbW7I4pHaOF5LSwXmwxqPpcmHmjZxKtLzdXEgiy+7i6RWpb75gAO81GyUp19KKER8qZersy9ePvrvtFY+mpqyaKuJOJFpwMeZ1deSTs3NrAzUOb4V2vPnHrZoGZWx+hZVFKi5+mUIbwpc7Lpc8hh2OZ9FbVt6tf5GusLAuV8R4lqw50qa6V7ZkzcT1jkAUntL2Q==
x-ms-traffictypediagnostic: KL1PR03MB5524:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h8iKWzhbarbrSZN8+eEJzpj2DbHptZfPpm1H9SGAm1Xa+K9w7iGfl4GYR3f8Y/CYVHa4RsUkJvMcUhi9sc6at/+ClY8NOv834qjwx7g4DuwY0b5QgNy1fmSwN0iJgpuQ4GqsLb3SPLY7gX0nSdJ/MulwXRjSMOAZz8zyu7cUoghBRJFTfIHFHR0GcsWu5KXJKgL1TpH4vxDbiCXt8S7rVF4BhUgBwksJeTc+ct6+kL1w/aHzakc+6fQBSwn0jblO/wqlOPfSyx1cD32E+McT77JZzG4zv+dtFd9HjDkvdgN1BIwzjV67efgdRmhnJRsiXLUZ44KVbqbW4locm597IWQY/JT0zD8075LER9kHKqDZhohRqbepiMHQj78wDVwhxGhkqUz7IWrmVhyluDbSXBvCWFxBn/k90NwMl6Yp4Qh0uxctxnzk9WyQtV9lBY/yrsqWEnjAcXdWOX4jVSl4PmSvQjJp80QR56j+IrOHCIZyfc4USOm16p9YnTO1FhqWJLifslXzkt8xTcFdvBuEugiLnXSBhbtvxmRuYKlLw96DytJvyRbzIvh1g1sEjhTlHDcALkcI8Yuk8FNmMZdcKA==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NkhES0FtMmJteDIvVHhJcFUwM2NsM3BvSUlYek9DZlpubXNxYXNUSU9obER5?=
 =?utf-8?B?aVk5d1BaYUVzMytYc1pOK0gveG1adFJqNmlOaVMxY0xOWDcyaFEvd2p1dFJp?=
 =?utf-8?B?dUxGc0pGQnV4L2tuTUFMZThIYjB1aDBVcTBGNG03SWtkSWV4T29GTlBWOStk?=
 =?utf-8?B?bi9HS0ljK1RMUWhkT3lNaVVJZ2ROZFQ5U0U2ZjZyck00Q3lBU29YeVQxL2Ft?=
 =?utf-8?B?RVZsR2xZcGtXVkRISEdKcTNQV1dMZzFDZ2l0TUE4VXpkbm1rV0ZqM0txSWQx?=
 =?utf-8?B?TUt6RldjVTVHWjZKRXdtMHZIZ0VRK1gvcW9CU1ErNnpKYy83c2g1eTVBQVpm?=
 =?utf-8?B?SzlXVlpGWlkzN0hwbG5FdFVNalRYOGFNMXBjdHh2aWlNYTd2NVZnOGNkcDBF?=
 =?utf-8?B?K3pxanNaVmJMbU9TRGp2OWNiR2lEV1NNT3plR1dkUW12ZkVZUm5hN2xkUmpv?=
 =?utf-8?B?Qjg2dHArN1EraVF0Q3hIakVEakpIMGVtbE1DY2JNZ3NRU0ZETVBpT1p1bmJF?=
 =?utf-8?B?YnI4NFlQeTlzcGxpVE1UbTZSb3BwczFJdUdZY25aN3NPaWNTY056cjByQk1o?=
 =?utf-8?B?ZVhLcCtlM1dBV3Y4eGNOYXB6NS9DM2hkV2oxc3JadUt1L0FidFZUUkF1L0Jr?=
 =?utf-8?B?QjBwdU4vMWpNUVhONmR0ZndSRlJQVW4xWVVsM1ZtOUVwUWJpdHQ3TmpMcmZT?=
 =?utf-8?B?UmNyT3ZWelNzN3pXRU12bmpQVWJLa0pxSXVtUlZLbzdUTGRScFBtNloxWEUr?=
 =?utf-8?B?UkdwRlg1Y3QvMCtCZ2E1aElHaktGcGo1N09CYzNIb1B6TE5YKy9CQ3BEV3NX?=
 =?utf-8?B?VlNoeTFsT05DRTBlMWpwOGpYdWFPWXUvZDdHQ2ZFRHJyeHFoZlNsL242ZTNr?=
 =?utf-8?B?MkdoVzJ1dTl2WkFPbnJZNjMwbEN6dlNFbkhXb0FpbEwwQ055dW9IOW52Mzg3?=
 =?utf-8?B?b04wVXRwVXd1c0hxN0FDRHQ3MlEvc2dwbUtmdlpCZ1djckNLZklWQjVOYXFa?=
 =?utf-8?B?SkxoTFdiSGUxVWgzWkppaWxkTXM1L21wMEZHNE9CMjQ5eUdiWEFlSEtWclJv?=
 =?utf-8?B?MUtUR0FQQWNEd0Y5NFJSOVRnQXBSNkg2NFR1ZWFuZGduU01WRk9OMXB4SVFr?=
 =?utf-8?B?V1hEbmdwa2dYMm9URk5FdlhxbDQvNmRrOWpMZGhjT1gxMk93YnI2UVBYbUpK?=
 =?utf-8?B?U3JLajdneXJiQ08rOExWeXdXNFM3VzU2WWlNVzViaXBtTDNjWmxqckxTWkFN?=
 =?utf-8?B?dWlFVXh0Q2hMUFpyeUxLT2VTRkM0V2JvYmRRRERoRFlTcnlNZ3dpY2xaYWE4?=
 =?utf-8?B?a2FnV2QwUm5nQko0eXp2cXNBM0xyU0ZKdzFXeWFQVEhSNnk4THpPdTltTXpI?=
 =?utf-8?B?V295Y2VhVGpjSFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1B2C7EFAC650CA44A2CDA8625E8900B4@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PS2PR03MB3719.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b5d95e1-efd8-455f-61c8-08d9d5d15fec
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2022 13:42:28.2594 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB5524
X-Mailman-Approved-At: Wed, 12 Jan 2022 13:43:49 +0000
Subject: Re: [Intel-gfx] [PATCH - v3] drm/i915: Discard large BIOS
 framebuffers causing display corruption.
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
Cc: Aun-Ali Zaidi <admin@kodeit.net>,
 Orlando Chamberlain <redecorating@protonmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Aditya Garg <gargaditya08@live.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gT24gMTItSmFuLTIwMjIsIGF0IDc6MDcgUE0sIFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOg0KPiANCj4gT24gVHVlLCBKYW4gMTEsIDIw
MjIgYXQgMDc6NTU6MjJBTSArMDAwMCwgQXNoaXNoIEFyb3JhIHdyb3RlOg0KPj4gRnJvbTogQXNo
aXNoIEFyb3JhIDxhc2hpc2hhcm9yYS5saW51eEBvdXRsb29rLmNvbT4NCj4+IA0KPj4gT24gY2Vy
dGFpbiA0ayBwYW5lbHMgYW5kIE1hY3MsIHRoZSBCSU9TIGZyYW1lYnVmZmVyIGlzIGxhcmdlciB0
aGFuIHdoYXQNCj4+IHBhbmVsIHJlcXVpcmVzIGNhdXNpbmcgZGlzcGxheSBjb3JydXB0aW9uLiBJ
bnRyb2R1Y2UgYSBjaGVjayBmb3IgdGhlIHNhbWUuDQo+IA0KPiBJZiBhIGxhcmdlciBmYiBjYXVz
ZXMgY29ycnVwdGlvbiB0aGVuIHRoZXJlIGlzIGEgcmVhbCBidWcgc29tZXdoZXJlLg0KSSB3b3Vs
ZCBsaWtlIHRvIGNsYXJpZnkgdGhhdCB3aGF0IEkgbWVhbnQgYnkgZGlzcGxheSBjb3JydXB0aW9u
IHRoYXQgc29tZSBlZGdlcyBvZiBzY3JlZW4gYXJlIG5vdCBzZWVuLg0KDQpPcmxhbmRvIGRlc2Ny
aWJlZCBiZXR0ZXIgaW4gYSBtYWlsIGFzIGZvbGxvd3MgOi0gDQoNCiJJIGhhdmVuJ3Qgb2JzZXJ2
ZWQgImRpc3BsYXkgY29ycnVwdGlvbiIsIGJ1dCBvbiBteSBNYWNCb29rUHJvMTYsMSB0aGUgYm90
dG9tDQphbmQgcmlnaHQgZWRnZXMgb2YgdGhlIFRUWSBhcmUgbm90IG9uIHRoZSBzY3JlZW4sIHNv
IGEgZmV3IGxpbmVzIG9mIHRleHQNCmNhbm5vdCBiZSBzZWVuLg0KDQpUaGlzIGFsc28gb2NjdXJz
IG9uIHRoZSBpbnRlcm5hbCBkaXNwbGF5cyBvZiBhbGwgKGFzIGZhciBhcyBJIGtub3cpIG90aGVy
DQoyMDE4LTIwMjAgSW50ZWwgTWFjYm9va3Mgd2hlbiB1c2luZyB0aGUgSW50ZWwgR1BVIChUaGUg
MTUiIGFuZCAxNiIgb25lcw0KYWxzbyBoYXZlIGFuIEFNREdQVSwgYnV0IHRoaXMgaXNzdWUgb2Nj
dXJzIHdoZW4gdGhleSBoYXZlIHRoZSBJbnRlbCBHUFUNCnNldCBhcyB0aGUgYm9vdCBncHUpLuKA
nQ0KPiANCj4+IA0KPj4gDQo+PiBTaWduZWQtb2ZmLWJ5OiBBc2hpc2ggQXJvcmEgPGFzaGlzaGFy
b3JhLmxpbnV4QG91dGxvb2suY29tPg0KPj4gUmV2aWV3ZWQtYnk6IEF1bi1BbGkgWmFpZGkgPGFk
bWluQGtvZGVpdC5uZXQ+DQo+PiAtLS0NCj4+IFYyIDotIFVzZSAhPSBpbnN0ZWFkIG9mIDwgYW5k
ID4NCj4+IFYzIDotIE1lbnRpb24gTWFjcyAoVGhhbmtzIHRvIE9ybGFuZG8pDQo+PiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMgfCA2ICsrKy0tLQ0KPj4gMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4+IA0KPj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYw0KPj4gaW5kZXggODQyYzA0ZTYz
Li4xNmIxYzgyYjIgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiZGV2LmMNCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJkZXYuYw0KPj4gQEAgLTE4MSwxMCArMTgxLDEwIEBAIHN0YXRpYyBpbnQgaW50ZWxmYl9j
cmVhdGUoc3RydWN0IGRybV9mYl9oZWxwZXIgKmhlbHBlciwNCj4+IAlpbnQgcmV0Ow0KPj4gDQo+
PiAJaWYgKGludGVsX2ZiICYmDQo+PiAtCSAgICAoc2l6ZXMtPmZiX3dpZHRoID4gaW50ZWxfZmIt
PmJhc2Uud2lkdGggfHwNCj4+IC0JICAgICBzaXplcy0+ZmJfaGVpZ2h0ID4gaW50ZWxfZmItPmJh
c2UuaGVpZ2h0KSkgew0KPj4gKwkgICAgKHNpemVzLT5mYl93aWR0aCAhPSBpbnRlbF9mYi0+YmFz
ZS53aWR0aCB8fA0KPj4gKwkgICAgIHNpemVzLT5mYl9oZWlnaHQgIT0gaW50ZWxfZmItPmJhc2Uu
aGVpZ2h0KSkgew0KPj4gCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4+IC0JCQkgICAg
IkJJT1MgZmIgdG9vIHNtYWxsICglZHglZCksIHdlIHJlcXVpcmUgKCVkeCVkKSwiDQo+PiArCQkJ
ICAgICJCSU9TIGZiIG5vdCB2YWxpZCAoJWR4JWQpLCB3ZSByZXF1aXJlICglZHglZCksIg0KPj4g
CQkJICAgICIgcmVsZWFzaW5nIGl0XG4iLA0KPj4gCQkJICAgIGludGVsX2ZiLT5iYXNlLndpZHRo
LCBpbnRlbF9mYi0+YmFzZS5oZWlnaHQsDQo+PiAJCQkgICAgc2l6ZXMtPmZiX3dpZHRoLCBzaXpl
cy0+ZmJfaGVpZ2h0KTsNCj4+IC0tIA0KPj4gMi4yNS4xDQo+PiANCj4gDQo+IC0tIA0KPiBWaWxs
ZSBTeXJqw6Rsw6QNCj4gSW50ZWwNCg0K
