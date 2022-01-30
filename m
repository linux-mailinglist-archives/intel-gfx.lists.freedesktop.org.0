Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E544A4812
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 14:28:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35B1F10E314;
	Mon, 31 Jan 2022 13:28:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from APC01-PSA-obe.outbound.protection.outlook.com
 (mail-psaapc01olkn2032.outbound.protection.outlook.com [40.92.52.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB3FD10E3A7
 for <intel-gfx@lists.freedesktop.org>; Sun, 30 Jan 2022 09:27:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UcVu8dk441imosHEl9lAhXyrUO7nbvkcjcv79ZuW/IcJvLgkxw2AHHXIwVTPmF725fmOu4KPPVZ+q02mSNsV0Z/Mn0rn6Foo2pnNlf2W+ZELYT1bFirnPnC/5/j2dyc3WWfNWOHQme3uewmrxrDl51bC1WFpr8krdaDC2ScC/8isVpoywlw2pvpdsNaxmZboSOtcb5R8tO9n8sp+qeUi9ghWYU+2K55IOZ79RhOIN35xWLrvrGJOb++G8TOepbqogOmupyYxWS/PX+IpIxH5HS6YldcsbsYKOah2Dl7g6dmqMAcsM3DM5FmEdb+XGMV2b+VYKYuVtFgX8KeGkIHJ2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dTD0hgf/3w70Ziqhw+vAW2Szz1VmldSFO1K/j1P5JSU=;
 b=OFVF0Kw+ftUTqVrCAuwFm2NHFtQl/NgjBUTOpXkxxf2iun6WCUXrsurk21TtVXs0hlWPBrh7k4Xu8laLKacsTzRlzZDJZklEGEpFd52oROn89G987WbOX7VvO2O2U5DN//qkCv1bRtE/oOzcp1zUf3HNKtshWW4IHCHGSt0c5pJZ2NuU6SKTEZ3OqR/hS7izfu2ix58wNy2+qSDxrLQfofgE20ND7QA+m7itFX3orDZ5eRFA7lKb0xNZ8UugNND8TnKMYlo5K9sfixDEqgdGc5EJcfUQ/SeotEpRRrsx3+AWKAGq5bF/CpHlrjMV95dhOCPXiW4VZjaJLk9I8y1xBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dTD0hgf/3w70Ziqhw+vAW2Szz1VmldSFO1K/j1P5JSU=;
 b=nGKmqX1rq/oVCaJqTTtcqXY3karOnde2q4Jm5/mYisx09xOInQDDTwhyAZZzClWYzNO3mzZ9ZVd2KNiEkMqQueverxtJDWEvGGgz7e0sbjoFenpOD3dlSVZckfYxhWywb+zgygnxNBNnuRCmmPJHp2Wl+P7NkYAMzHfCyD2mHWH+iLzSetba6LUnPhu7XaAPZnMF1b87Jcy2TO4J/CcfXjQRrCaYtQflL016+5JBY4XL551ay5fT3aQA2xfY5iE8b0/+fz6W6JHlVQ5ZBEsEndjaRtuypX5De9SlmStOeqbr0E6D7T76v3imSroyVKVgbjmo3F7AvERvKU3Z3IT5/Q==
Received: from PS2PR03MB3719.apcprd03.prod.outlook.com (2603:1096:300:38::18)
 by TY2PR03MB3790.apcprd03.prod.outlook.com (2603:1096:404:5e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.7; Sun, 30 Jan
 2022 09:27:24 +0000
Received: from PS2PR03MB3719.apcprd03.prod.outlook.com
 ([fe80::c09e:7e3:2fc3:5620]) by PS2PR03MB3719.apcprd03.prod.outlook.com
 ([fe80::c09e:7e3:2fc3:5620%5]) with mapi id 15.20.4951.005; Sun, 30 Jan 2022
 09:27:24 +0000
From: Ashish Arora <ashisharora.linux@outlook.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH - v3] drm/i915: Discard large BIOS
 framebuffers causing display corruption.
Thread-Index: AQHYBsCWeWXVwjeiJECU6Sxgoszm4qxfZZgAgBwEE4A=
Date: Sun, 30 Jan 2022 09:27:24 +0000
Message-ID: <E587A4D5-0BD9-4F1C-A428-213BD54BC948@outlook.com>
References: <31D69334-DEF9-41B7-968B-B847796926FF@outlook.com>
 <Yd7ZnBlU0sjP4qcG@intel.com>
In-Reply-To: <Yd7ZnBlU0sjP4qcG@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [csTPGaw1X6fWj7yfr7QCEOstsNRJSlj0]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b70668cb-4dd1-4a3c-85a5-08d9e3d2b9aa
x-ms-traffictypediagnostic: TY2PR03MB3790:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lODSQ3J/cZpW+gJWxW8W1c71uMbJm3ZXH8RWpWJCTowACceKFe7r++L0bx0cakevZrP0T3xMP+k/MvwxHkliuSSHPwux4PbxI6R+kBAzKh9f9z2ijHoeS9gUtofrdJyDloSUk4nYNGsAfV97A6t4avzfd3m9BimzOKEWdXbKVCspmSWX0c1HRsZvjRa+BmEDvum9dmkN9h97l+aA32ylJein76Dq0f4nLaZ1P0H3PWPlqplvvwfPV0vktb7lPcMgsxfIg1LLV8dGVdl75TfcP9nzHl11a806PY5G0LnkTCPeHMAc7dTXf/kV3xjf76E6hFe4Z7HuxqG1cq+uKDoEbVLHV1tB9oYcSdCWe8hh7MdZwzOL8h6Cw4kAKtirXSTT8GpUyXS9e2zVYmuWO+izXssyr/EF8NCv/80wLFpkxCdnyuMk0+XR4gzMK5/eFCPmZPY13EWEtSofY3I/tlRrtev8IyyCdAV0zdQTOaOmZN23MNhWXxO45+zUGIOaMfDVxMlp41G2pe0m+DsdcrnV8dMpg0v/i62Tqm93pSqJyXuCtQEmqlKXscmmnuSQ09xrkMMfyVhUFAtCEgzi5Yh8CQ==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OWFPL01ZNFJxLy9yb3FTWGgyTVBIaVBpa0Jxa04wWTB3cVV6NU1wdVhuTnlv?=
 =?utf-8?B?NEdlRjQ2SnppeVZMQm9NKzZNNXJiYTBXeDg4MHAvdWZ0TDJlOWJBT2RUcVdE?=
 =?utf-8?B?ckdRSThTTGEvWUNLZGQzanlrM1ZFYXNzdHRrSGUrSlNSd3ZvRmM0UGxTanY2?=
 =?utf-8?B?cWhud0lhc2NMcWVDemlVeUwzZHNzYWdjelo5TWRZWlJ6REE5YXFlczY2OG43?=
 =?utf-8?B?TlZ5QWMrcmJmN3B4dzZOV2VCWWgyQThzZEhpemJyYkYyYUNyaThrREpGZTdv?=
 =?utf-8?B?VytYa2xYYm5jejVOeWdNc2NBL2NtbXVoNlhmR0NVMlBPTFhDVnpoZkZwYm1H?=
 =?utf-8?B?NU9vZVRxekJxYmVvT1B2bkF6WXlnbDVhak9vQkJEYyswSG9jbk9rTUFlYys4?=
 =?utf-8?B?STVJOVZFSnE0UnMweFR1bXovVTAwLzZ5U0ZBakNVNmVBajZIbnRhcjlreFYx?=
 =?utf-8?B?TzhVWW1QZEU2SEZ3ejIwcmg3Sk5rWi9ycE9weUdwcmF6M1cyWTdIVUF0bXZv?=
 =?utf-8?B?Nzh4UWFWNGhPSmI3Qk5aTmxjeXZYR0R5TjlGYTRxZ2tFbXdyVnRhWlFSSUdO?=
 =?utf-8?B?RHh1UW0zLzlLWXkwcVZMdkU4ZzRVUTBGL0FZdjZGcGo5RmtlTFhmT0tWOGdx?=
 =?utf-8?B?TE4vNjJMWFdYSFg0WkNIVUdRZDBoL1k1dnlqSTZSNWFDc1poQ2VmNzN4VjhS?=
 =?utf-8?B?THRzUk5sc25WbVY1c1BOYWJzM3VSM0tWUmR2TUtsM2VkR0RLdkhjdERtaUxK?=
 =?utf-8?B?NFpuR01QZjlkR2VTUGx6OVZFa2xUK0MwNForMEFBQVpUclFNSGhCTnJteVlq?=
 =?utf-8?B?Z3JYOXVUSHFkUUp0VUxULzJnc3F5N2ZYQ3BLVU5UbVZRcFc2MVc3RmpZMFNL?=
 =?utf-8?B?ZXMrd2IzZi9NUmtaVnFxSFA4SDgxOWJ3WlBrSEx1TjYrZzBoeXVJWE5QdTNv?=
 =?utf-8?B?TTZwMWhPRTBaVDI5aVIvTjBkNmlBWHRDLzhDN3dRYU1MNHdvWU9VeUgrbTEz?=
 =?utf-8?B?bDZhQmUzNVZYTk0yWnRuV3J1RFRZeXhqOTRhYzRQL25CL1hwSXg5c3ZSY1BP?=
 =?utf-8?B?N3dONndZOElIMDBKU0ExaTN4REhLaVpiMlFzVThsWWtmUmFMS2RNT3ZrYUhL?=
 =?utf-8?B?WXdjYk03MkRZeUdEdlhaV3VKcFlyN0pFazUyMXNaaVRxVTE2N0JTYkdMc29j?=
 =?utf-8?B?dkVPV2F1Z1dFaTFLc3VBZ3JWd1ZaaWdWdjR1TXhacnhnV0xlQVRPVHlKdkY2?=
 =?utf-8?B?ZWtSWEtBNlUwazh1UlgrY2daeG4yYXpDSXV0eUpleXh2VFpiZz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <826F720C25785441B5CD47CF57113D06@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PS2PR03MB3719.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: b70668cb-4dd1-4a3c-85a5-08d9e3d2b9aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2022 09:27:24.5983 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR03MB3790
X-Mailman-Approved-At: Mon, 31 Jan 2022 13:28:49 +0000
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
ZXMgY29ycnVwdGlvbiB0aGVuIHRoZXJlIGlzIGEgcmVhbCBidWcgc29tZXdoZXJlLg0KSGkgVmls
bGUNCg0KSSBhbmQgc29tZSBtZW1iZXJzIG9mIHRoZSB0MiBsaW51eCBncm91cCB3b3VsZCBsaWtl
IHRvIGhhdmUgbW9yZSBkZXRhaWxzIG9mIHRoaXMgYnVnLg0KPiANCj4+IA0KPj4gDQo+PiBTaWdu
ZWQtb2ZmLWJ5OiBBc2hpc2ggQXJvcmEgPGFzaGlzaGFyb3JhLmxpbnV4QG91dGxvb2suY29tPg0K
Pj4gUmV2aWV3ZWQtYnk6IEF1bi1BbGkgWmFpZGkgPGFkbWluQGtvZGVpdC5uZXQ+DQo+PiAtLS0N
Cj4+IFYyIDotIFVzZSAhPSBpbnN0ZWFkIG9mIDwgYW5kID4NCj4+IFYzIDotIE1lbnRpb24gTWFj
cyAoVGhhbmtzIHRvIE9ybGFuZG8pDQo+PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2ZiZGV2LmMgfCA2ICsrKy0tLQ0KPj4gMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkNCj4+IA0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJkZXYuYw0KPj4gaW5kZXggODQyYzA0ZTYzLi4xNmIxYzgyYjIgMTAwNjQ0DQo+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMNCj4+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYw0KPj4gQEAgLTE4MSwx
MCArMTgxLDEwIEBAIHN0YXRpYyBpbnQgaW50ZWxmYl9jcmVhdGUoc3RydWN0IGRybV9mYl9oZWxw
ZXIgKmhlbHBlciwNCj4+IAlpbnQgcmV0Ow0KPj4gDQo+PiAJaWYgKGludGVsX2ZiICYmDQo+PiAt
CSAgICAoc2l6ZXMtPmZiX3dpZHRoID4gaW50ZWxfZmItPmJhc2Uud2lkdGggfHwNCj4+IC0JICAg
ICBzaXplcy0+ZmJfaGVpZ2h0ID4gaW50ZWxfZmItPmJhc2UuaGVpZ2h0KSkgew0KPj4gKwkgICAg
KHNpemVzLT5mYl93aWR0aCAhPSBpbnRlbF9mYi0+YmFzZS53aWR0aCB8fA0KPj4gKwkgICAgIHNp
emVzLT5mYl9oZWlnaHQgIT0gaW50ZWxfZmItPmJhc2UuaGVpZ2h0KSkgew0KPj4gCQlkcm1fZGJn
X2ttcygmZGV2X3ByaXYtPmRybSwNCj4+IC0JCQkgICAgIkJJT1MgZmIgdG9vIHNtYWxsICglZHgl
ZCksIHdlIHJlcXVpcmUgKCVkeCVkKSwiDQo+PiArCQkJICAgICJCSU9TIGZiIG5vdCB2YWxpZCAo
JWR4JWQpLCB3ZSByZXF1aXJlICglZHglZCksIg0KPj4gCQkJICAgICIgcmVsZWFzaW5nIGl0XG4i
LA0KPj4gCQkJICAgIGludGVsX2ZiLT5iYXNlLndpZHRoLCBpbnRlbF9mYi0+YmFzZS5oZWlnaHQs
DQo+PiAJCQkgICAgc2l6ZXMtPmZiX3dpZHRoLCBzaXplcy0+ZmJfaGVpZ2h0KTsNCj4+IC0tIA0K
Pj4gMi4yNS4xDQo+PiANCj4gDQo+IC0tIA0KPiBWaWxsZSBTeXJqw6Rsw6QNCj4gSW50ZWwNCg0K
