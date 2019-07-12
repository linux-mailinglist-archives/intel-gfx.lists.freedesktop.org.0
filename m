Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0366694D
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 10:45:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BCF16E311;
	Fri, 12 Jul 2019 08:45:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD0B26E311
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 08:45:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 01:45:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,481,1557212400"; d="scan'208";a="166625011"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga008.fm.intel.com with ESMTP; 12 Jul 2019 01:45:22 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 12 Jul 2019 01:45:22 -0700
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
 FMSMSX157.amr.corp.intel.com (10.18.116.73) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 12 Jul 2019 01:45:22 -0700
Received: from shsmsx104.ccr.corp.intel.com ([169.254.5.110]) by
 SHSMSX151.ccr.corp.intel.com ([169.254.3.55]) with mapi id 14.03.0439.000;
 Fri, 12 Jul 2019 16:45:19 +0800
From: "Wang, Zhi A" <zhi.a.wang@intel.com>
To: Zhenyu Wang <zhenyuw@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>
Thread-Topic: [PATCH 1/2] Revert "drm/i915: Introduce private PAT management"
Thread-Index: AQHVMMnOUze37Gur+0CJkBMAU6cNnaa2spAAgA93CYCAAAZigIAAid6A
Date: Fri, 12 Jul 2019 08:45:18 +0000
Message-ID: <F3B0350DF4CB6849A642218320DE483D7DA6CC42@SHSMSX104.ccr.corp.intel.com>
References: <20190702113149.21200-1-michal.winiarski@intel.com>
 <156206856424.2466.13005612349532861735@skylake-alporthouse-com>
 <156291876155.8011.12180387362444561726@jlahtine-mobl.fi.intel.com>
 <20190712082851.GG9684@zhen-hp.sh.intel.com>
In-Reply-To: <20190712082851.GG9684@zhen-hp.sh.intel.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiN2QwNTA3MjktMTE4Ni00Yjc1LTljMjktMTRiOGYzMjgzZTRiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZEpFb0x1amJmZ1pZbVFGNkVmdXFVa3RmT29JbTM5Nm1BUE12Y2xIMFBGQ1dHVHJ6eFdiUDlaaE5lSEVYTEZyUSJ9
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] Revert "drm/i915: Introduce private PAT
 management"
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyBxdWl0ZSBhIGxvbmcgdGltZSBhZ28uIEkgY2Fubm90IGZ1bGx5IHJlbWVtYmVyIHRoZSB3
aG9sZSBwaWN0dXJlIG5vdy4gSSByZW1lbWJlcmVkIHRoZSBsYXN0IHN0YXR1cyB3YXMgdG8gcHVz
aCBzb21lIHVuaXQgdGVzdHMgYW5kIHdpdGggdGhlIGxhc3QgcGFydCBvZiBwYXRjaC4gQ3VycmVu
dGx5IEkgdGhpbmsgeW91IGNhbiByZXZlcnQgdGhpcyBpZiBpdCBjYXVzZXMgdHJvdWJsZXMsIHdl
IGNhbiBwdXJwb3NlIHRoaXMgYWdhaW4gaWYgd2UgbmVlZCB0aGlzIGluIGZ1dHVyZS4NCg0KVGhh
bmtzLA0KWmhpLg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogWmhlbnl1IFdh
bmcgW21haWx0bzp6aGVueXV3QGxpbnV4LmludGVsLmNvbV0gDQpTZW50OiBGcmlkYXksIEp1bHkg
MTIsIDIwMTkgMTE6MjkgQU0NClRvOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBs
aW51eC5pbnRlbC5jb20+DQpDYzogV2luaWFyc2tpLCBNaWNoYWwgPG1pY2hhbC53aW5pYXJza2lA
aW50ZWwuY29tPjsgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+OyBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBaaGVueXUgV2FuZyA8emhlbnl1d0BsaW51eC5p
bnRlbC5jb20+OyBWaXZpLCBSb2RyaWdvIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPjsgV2FuZywg
WmhpIEEgPHpoaS5hLndhbmdAaW50ZWwuY29tPg0KU3ViamVjdDogUmU6IFtQQVRDSCAxLzJdIFJl
dmVydCAiZHJtL2k5MTU6IEludHJvZHVjZSBwcml2YXRlIFBBVCBtYW5hZ2VtZW50Ig0KDQpPbiAy
MDE5LjA3LjEyIDExOjA2OjAxICswMzAwLCBKb29uYXMgTGFodGluZW4gd3JvdGU6DQo+ICsgWmhl
bnl1IGFzIEZZSQ0KPg0KPiBRdW90aW5nIENocmlzIFdpbHNvbiAoMjAxOS0wNy0wMiAxNDo1Njow
NCkNCj4gPiBRdW90aW5nIE1pY2hhxYIgV2luaWFyc2tpICgyMDE5LTA3LTAyIDEyOjMxOjQ4KQ0K
PiA+ID4gVGhpcyByZXZlcnRzIGNvbW1pdCA0Mzk1ODkwYTQ4NTUxOTgyNTQ5ZDIyMmQxOTIzZTI4
MzNkYWM0N2NmLg0KPiA+ID4gDQo+ID4gPiBJdCdzIGJlZW4gb3ZlciBhIHllYXIgc2luY2UgdGhp
cyB3YXMgbWVyZ2VkLCBhbmQgdGhlIGFjdHVhbCB1c2VycyANCj4gPiA+IG9mIGludGVsX3BwYXRf
Z2V0IC8gaW50ZWxfcHBhdF9wdXQgbmV2ZXIgbWF0ZXJpYWxpemVkLg0KPiA+ID4gDQo+ID4gPiBU
aW1lIHRvIHJlbW92ZSBpdCENCj4gPiA+IA0KPiA+ID4gdjI6IFVuYnJlYWsgc3VzcGVuZCAoQ2hy
aXMpDQo+ID4gPiB2MzogUmViYXNlLCBkcm9wIGZpeGVzIHRhZyB0byBhdm9pZCBjb25mdXNpb24N
Cj4gPiA+IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53
aW5pYXJza2lAaW50ZWwuY29tPg0KPiA+ID4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPg0KPiA+ID4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVu
QGxpbnV4LmludGVsLmNvbT4NCj4gPiA+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBp
bnRlbC5jb20+DQo+ID4gPiBDYzogWmhpIFdhbmcgPHpoaS5hLndhbmdAaW50ZWwuY29tPg0KPiA+
IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4NCj4g
PiANCj4gPiBXaGlsZSBJIHdvdWxkIGFwcHJlY2lhdGUgYW4gYWNrIGZyb20gWmhpIChiZWluZyB0
aGUgb3JpZ2luYWwgDQo+ID4gYXV0aG9yKSwgc2luY2Ugd2UndmUgYWxyZWFkeSBzZW50IHRoaXMg
YSBmZXcgdGltZXMsIHRoZXJlJ3Mgbm8gDQo+ID4gcmVhc29uIHRvIGRlbGF5IHdhaXRpbmcgZm9y
IGEgcmVzcG9uc2UuDQoNCldlbGwgSSBhbHNvIGRlcGVuZCBvbiBaaGkgZm9yIGNvbW1lbnQgaGVy
ZSwgYXMgcHJldmlvdXMgaWRlYSB3YXMgdG8gbWFuYWdlIFBQQVQgYWxsb2NhdGlvbiBiZXR3ZWVu
IFZNL2hvc3QsIGJ1dCBJJ20gbm90IHN1cmUgd2hhdCdzIGxlZnQgd29yayBzdGF0dXMgdGhlcmUu
Lg0KDQotLQ0KT3BlbiBTb3VyY2UgVGVjaG5vbG9neSBDZW50ZXIsIEludGVsIGx0ZC4NCg0KJGdw
ZyAtLWtleXNlcnZlciB3d3drZXlzLnBncC5uZXQgLS1yZWN2LWtleXMgNEQ3ODE4MjcNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
