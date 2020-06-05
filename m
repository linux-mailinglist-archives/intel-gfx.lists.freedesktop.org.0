Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC671EEF3B
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 03:51:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 106046E1B9;
	Fri,  5 Jun 2020 01:51:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C4A06E1B9
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 01:51:21 +0000 (UTC)
IronPort-SDR: tSjLFaBK7N6fFTaeXWZKD5Q3EyJ4N1EndlBU/FKdnxZXF78FP7BbJQxyx8NAhhcDpdijBISsEp
 povi5ey7U+XQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 18:51:21 -0700
IronPort-SDR: hKLzgLQDXvJj4XaPk6S8tJYcqXYxBo+BaJG6NtDHegmiSdr/99Kz5pVy6uWxYT5bLKu+4glt3v
 xOZ6H3ytIACQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,474,1583222400"; d="scan'208";a="305094117"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga008.jf.intel.com with ESMTP; 04 Jun 2020 18:51:21 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 4 Jun 2020 18:51:21 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.9]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.180]) with mapi id 14.03.0439.000;
 Thu, 4 Jun 2020 18:51:20 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/psr: Program default IO buffer Wake and Fast
 Wake
Thread-Index: AQHWOs/VQ3MUGFTO7EKdXSlIXyYW5qjJt7eA
Date: Fri, 5 Jun 2020 01:51:19 +0000
Message-ID: <863417d4a19babccaaafeaf00b1c8bdb8cbc8562.camel@intel.com>
References: <20200605002350.151449-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200605002350.151449-1-gwan-gyeong.mun@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.138.209]
Content-ID: <D35D222F7F16014DAB3E6417530A7A34@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Program default IO buffer
 Wake and Fast Wake
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIwLTA2LTA1IGF0IDAzOjIzICswMzAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IFRoZSBJTyBidWZmZXIgV2FrZSBhbmQgRmFzdCBXYWtlIGJpdCBzaXplIGFuZCB2YWx1ZSBo
YXZlIGJlZW4gY2hhbmdlZCBmcm9tDQo+IEdlbjEyKy4NCj4gSXQgcHJvZ3JhbXMgZGVmYXVsdCB2
YWx1ZSBvZiBJTyBidWZmZXIgV2FrZSBhbmQgRmFzdCBXYWtlIG9uIEdlbjEyKy4NCj4gDQo+IC0g
UHJlIEdlbjEyDQo+ICAgQml0IGxvY2F0aW9uOiBJTyBidWZmZXIgV2FrZTogUmVnaXN0ZXJfUFNS
Ml9DVExbMTQ6MTNdDQo+ICAgICAgICAgICAgICAgICBGYXN0IFdha2U6IFJlZ2lzdGVyX1BTUjJf
Q1RMWzEyOjExXQ0KPiANCj4gICBWYWx1ZTogMHgwOiA4IGxpbmVzDQo+ICAgICAgICAgIDB4MTog
NyBsaW5lcw0KPiAgICAgICAgICAweDI6IDYgbGluZXMNCj4gICAgICAgICAgMHgzOiA1IGxpbmVz
DQo+IA0KPiAtIEdlbjEyKw0KPiAgIEJpdCBsb2NhdGlvbjogSU8gYnVmZmVyIFdha2U6IFJlZ2lz
dGVyX1BTUjJfQ1RMWzE1OjEzXQ0KPiAgICAgICAgICAgICAgICAgRmFzdCBXYWtlOiBSZWdpc3Rl
cl9QU1IyX0NUTFsxMjoxMF0NCj4gDQo+ICAgVmFsdWU6IDB4MDogNSBsaW5lcw0KPiAgICAgICAg
ICAweDE6IDYgbGluZXMNCj4gICAgICAgICAgMHgyOiA3IGxpbmVzDQo+ICAgICAgICAgIDB4Mzog
OCBsaW5lcw0KPiAgICAgICAgICAweDQ6IDkgbGluZXMNCj4gICAgICAgICAgMHg1OiAxMCBsaW5l
cw0KPiAgICAgICAgICAweDY6IDExIGxpbmVzDQo+ICAgICAgICAgIDB4NzogMTIgbGluZXMNCg0K
SWYgeW91IGRlZmluZSB0aGUgbWFjcm8gbGlrZSBiZWxsb3cgeW91IGRvbid0IG5lZWQgdG8gYWRk
IHRoaXMgaW5mb3JtYXRpb24gdG8gdGhlIGNvbW1pdCBkZXNjcmlwdGlvbi4NCg0KPiANCj4gQ2M6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBTaWduZWQt
b2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDE5ICsrKysr
KysrKysrKysrKysrKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAg
ICAgfCAgNiArKysrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IGI3YTJj
MTAyNjQ4YS4uZGUyYTE3ZmU4ODYwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gQEAgLTUxOCw2ICs1MTgsMjUgQEAgc3RhdGljIHZvaWQgaHN3X2Fj
dGl2YXRlX3BzcjIoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAllbHNlDQo+ICAJCXZh
bCB8PSBFRFBfUFNSMl9UUDJfVElNRV8yNTAwdXM7DQo+ICANCj4gKwlpZiAoSU5URUxfR0VOKGRl
dl9wcml2KSA+PSAxMikgew0KPiArCQkvKg0KPiArCQkgKiBUT0RPOiBJbiBvcmRlciB0byBzZXR0
aW5nIGFuIG9wdGltYWwgcG93ZXIgY29uc3VtcHRpb24sDQo+ICsJCSAqIGxvd2VyIHRoYW4gNGsg
cmVzb2x1aXRpb24gbW9kZSBuZWVkcyB0byBkZWNyZXNlIElPX0JVRkZFUl9XQUtFDQo+ICsJCSAq
IGFuZCBGQVNUX1dBS0UuIEFuZCBoaWdoZXIgdGhhbiA0SyByZXNvbHV0aW9uIG1vZGUgbmVlZHMN
Cj4gKwkJICogdG8gaW5jcmVhc2UgSU9fQlVGRkVSX1dBS0UgYW5kIEZBU1RfV0FLRS4NCj4gKwkJ
ICovDQo+ICsJCXUzMiBpb19idWZmZXJfd2FrZSA9IDB4MjsgLyogZGVmYXVsdCBCU3BlYyB2YWx1
ZSwgNyBsaW5lcyAqLw0KPiArCQl1MzIgZmFzdF93YWtlID0gMHgyOyAvKiBkZWZhdWx0IEJTcGVj
IHZhbHVlLCA3IGxpbmVzICovDQo+ICsNCj4gKwkJLyoNCj4gKwkJICogVG8gcHJvZ3JhbSBsaW5l
IDkgdG8gMTIgb24gSU9fQlVGRkVSX1dBS0UgYW5kIEZBU1RfV0FLRSwNCj4gKwkJICogRURQX1BT
UjJfQ1RMIHNob3VsZCBiZSBzZXQgRURQX1BTUjJfQkxPQ0tfQ09VTlRfTlVNXzMuDQo+ICsJCSAq
Lw0KPiArCQl2YWwgfD0gRURQX1BTUjJfQkxPQ0tfQ09VTlRfTlVNXzI7DQo+ICsJCXZhbCB8PSBF
RFBfUFNSMl9JT19CVUZGRVJfV0FLRShpb19idWZmZXJfd2FrZSk7DQo+ICsJCXZhbCB8PSBFRFBf
UFNSMl9GQVNUX1dBS0UoZmFzdF93YWtlKTsNCg0KVGhlIHBhcmFtZXRlciBmb3IgdGhpcyAyIG1h
Y3JvcyBzaG91bGQgYmUgdGhlIG51bWJlciBvZiB0aGUgbGluZXMgbm90IHRoZSBiaXQgdmFsdWUu
DQpBcyB5b3UgYXJlIGF0IGl0LCBwbGVhc2Ugc2V0IHRoZSBHRU45KyBkZWZhdWx0IHZhbHVlcywg
dGhlIFRHTCBtYWNyb3Mgd2lsbCBuZWVkIGEgIlRHTF8iIHByZWZpeC4NCg0KDQo+ICsNCj4gIAkv
Kg0KPiAgCSAqIFBTUjIgSFcgaXMgaW5jb3JyZWN0bHkgdXNpbmcgRURQX1BTUl9UUDFfVFAzX1NF
TCBhbmQgQlNwZWMgaXMNCj4gIAkgKiByZWNvbW1lbmRpbmcga2VlcCB0aGlzIGJpdCB1bnNldCB3
aGlsZSBQU1IyIGlzIGVuYWJsZWQuDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBpbmRleCA5
NmQzNTFmYmVlYmIuLmQwNTViN2Q5M2E1ZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
DQo+IEBAIC00NTE0LDEwICs0NTE0LDE2IEBAIGVudW0gew0KPiAgI2RlZmluZSBFRFBfUFNSMl9D
VEwodHJhbikJCV9NTUlPX1RSQU5TMih0cmFuLCBfUFNSMl9DVExfQSkNCj4gICNkZWZpbmUgICBF
RFBfUFNSMl9FTkFCTEUJCSgxIDw8IDMxKQ0KPiAgI2RlZmluZSAgIEVEUF9TVV9UUkFDS19FTkFC
TEUJCSgxIDw8IDMwKQ0KPiArI2RlZmluZSAgIEVEUF9QU1IyX0JMT0NLX0NPVU5UX05VTV8yCSgw
IDw8IDI4KSAvKiBUR0wrICovDQo+ICsjZGVmaW5lICAgRURQX1BTUjJfQkxPQ0tfQ09VTlRfTlVN
XzMJKDEgPDwgMjgpIC8qIFRHTCsgKi8NCj4gICNkZWZpbmUgICBFRFBfWV9DT09SRElOQVRFX1ZB
TElECSgxIDw8IDI2KSAvKiBHTEsgYW5kIENOTCsgKi8NCj4gICNkZWZpbmUgICBFRFBfWV9DT09S
RElOQVRFX0VOQUJMRQkoMSA8PCAyNSkgLyogR0xLIGFuZCBDTkwrICovDQo+ICAjZGVmaW5lICAg
RURQX01BWF9TVV9ESVNBQkxFX1RJTUUodCkJKCh0KSA8PCAyMCkNCj4gICNkZWZpbmUgICBFRFBf
TUFYX1NVX0RJU0FCTEVfVElNRV9NQVNLCSgweDFmIDw8IDIwKQ0KPiArI2RlZmluZSAgIEVEUF9Q
U1IyX0lPX0JVRkZFUl9XQUtFKGEpCSgoYSkgPDwgMTMpDQo+ICsjZGVmaW5lICAgRURQX1BTUjJf
SU9fQlVGRkVSX1dBS0VfTUFTSwkoMHg3IDw8IDEzKSAvKiBUR0wrICovDQo+ICsjZGVmaW5lICAg
RURQX1BTUjJfRkFTVF9XQUtFKGEpCQkoKGEpIDw8IDEwKSAvKiBUR0wrICovDQo+ICsjZGVmaW5l
ICAgRURQX1BTUjJfRkFTVF9XQUtFX01BU0sJKDB4NyA8PCAxMCkgLyogVEdMKyAqLw0KPiAgI2Rl
ZmluZSAgIEVEUF9QU1IyX1RQMl9USU1FXzUwMHVzCSgwIDw8IDgpDQo+ICAjZGVmaW5lICAgRURQ
X1BTUjJfVFAyX1RJTUVfMTAwdXMJKDEgPDwgOCkNCj4gICNkZWZpbmUgICBFRFBfUFNSMl9UUDJf
VElNRV8yNTAwdXMJKDIgPDwgOCkNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
