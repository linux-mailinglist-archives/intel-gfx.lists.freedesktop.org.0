Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41ED2109161
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 16:55:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14EAE89DB9;
	Mon, 25 Nov 2019 15:55:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C58189DB9
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 15:55:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 07:55:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,242,1571727600"; d="scan'208";a="408347760"
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
 by fmsmga005.fm.intel.com with ESMTP; 25 Nov 2019 07:55:04 -0800
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.185]) by
 irsmsx110.ger.corp.intel.com ([169.254.15.37]) with mapi id 14.03.0439.000;
 Mon, 25 Nov 2019 15:55:04 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v2] drm/i915: Support more QGV points
Thread-Index: AQHVoT8Ny6LpEZy2XUmm7KXOn+b9caecCGKAgAAF3QA=
Date: Mon, 25 Nov 2019 15:55:03 +0000
Message-ID: <908f3f1acb69c12e9e880fb269d6d55a60ac3ab3.camel@intel.com>
References: <20191122141049.25608-1-stanislav.lisovskiy@intel.com>
 <20191125153143.GX1208@intel.com>
In-Reply-To: <20191125153143.GX1208@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <C1A80B845883F44DB88832EDBB736F7B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Support more QGV points
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
Cc: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDE5LTExLTI1IGF0IDE3OjMxICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgTm92IDIyLCAyMDE5IGF0IDA0OjEwOjQ5UE0gKzAyMDAsIFN0YW5pc2xhdiBM
aXNvdnNraXkgd3JvdGU6DQo+ID4gQWNjb3JkaW5nIHRvIEJTcGVjIDUzOTk4LCB0aGVyZSBpcyBh
IG1hc2sgb2YNCj4gPiBtYXggOCBTQUdWL1FHViBwb2ludHMgd2UgbmVlZCB0byBzdXBwb3J0Lg0K
PiA+IA0KPiA+IEJ1bXBpbmcgdGhpcyB1cCB0byBrZWVwIHRoZSBDSSBoYXBweShjdXJyZW50bHkN
Cj4gPiBwcmV2ZW50aW5nIHRlc3RzIHRvIHJ1biksIHVudGlsIGFsbCBTQUdWDQo+ID4gY2hhbmdl
cyBsYW5kLg0KPiA+IA0KPiA+IEZpeGVzOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMTIxODkNCj4gPiBTaWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zz
a2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jIHwgMjIgKysrKysrKysrKysrKysrKyst
LQ0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAg
fCAgNiArKysrKy0NCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCA2IGRl
bGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2J3LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYncuYw0KPiA+IGluZGV4IDg2ZTc1ZTg1ODAwOC4uZDFiODA1YjMwMTc3IDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiA+IEBAIC0xNSw3ICsx
NSw3IEBAIHN0cnVjdCBpbnRlbF9xZ3ZfcG9pbnQgew0KPiA+ICB9Ow0KPiA+ICANCj4gPiAgc3Ry
dWN0IGludGVsX3Fndl9pbmZvIHsNCj4gPiAtCXN0cnVjdCBpbnRlbF9xZ3ZfcG9pbnQgcG9pbnRz
WzNdOw0KPiA+ICsJc3RydWN0IGludGVsX3Fndl9wb2ludCBwb2ludHNbSTkxNV9OVU1fU0FHVl9Q
T0lOVFNdOw0KPiA+ICAJdTggbnVtX3BvaW50czsNCj4gPiAgCXU4IG51bV9jaGFubmVsczsNCj4g
PiAgCXU4IHRfYmw7DQo+ID4gQEAgLTI3NiwxNSArMjc2LDI3IEBAIHZvaWQgaW50ZWxfYndfaW5p
dF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ICpkZXZfcHJpdikNCj4gPiAgc3RhdGlj
IHVuc2lnbmVkIGludCBpbnRlbF9tYXhfZGF0YV9yYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
DQo+ID4gKmRldl9wcml2LA0KPiA+ICAJCQkJCWludCBudW1fcGxhbmVzKQ0KPiA+ICB7DQo+ID4g
LQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkNCj4gPiArCWlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDExKSB7DQo+ID4gKwkJLyoNCj4gPiArCQkgKiBBbnkgYncgZ3JvdXAgaGFzIHNh
bWUgYW1vdW50IG9mIFFHViBwb2ludHMNCj4gPiArCQkgKi8NCj4gPiArCQljb25zdCBzdHJ1Y3Qg
aW50ZWxfYndfaW5mbyAqYmkgPQ0KPiA+ICsJCQkmZGV2X3ByaXYtPm1heF9id1swXTsNCj4gPiAr
CQl1bnNpZ25lZCBpbnQgbWluX2J3ID0gVUlOVF9NQVg7DQo+ID4gKwkJaW50IGk7DQo+ID4gKw0K
PiA+ICAJCS8qDQo+ID4gIAkJICogRklYTUUgd2l0aCBTQUdWIGRpc2FibGVkIG1heWJlIHdlIGNh
biBhc3N1bWUNCj4gPiAgCQkgKiBwb2ludCAxIHdpbGwgYWx3YXlzIGJlIHVzZWQ/IFNlZW1zIHRv
IG1hdGNoDQo+ID4gIAkJICogdGhlIGJlaGF2aW91ciBvYnNlcnZlZCBpbiB0aGUgd2lsZC4NCj4g
PiAgCQkgKi8NCj4gPiAtCQlyZXR1cm4gbWluMyhpY2xfbWF4X2J3KGRldl9wcml2LCBudW1fcGxh
bmVzLCAwKSwNCj4gPiAtCQkJICAgIGljbF9tYXhfYncoZGV2X3ByaXYsIG51bV9wbGFuZXMsIDEp
LA0KPiA+IC0JCQkgICAgaWNsX21heF9idyhkZXZfcHJpdiwgbnVtX3BsYW5lcywgMikpOw0KPiA+
ICsJCWZvciAoaSA9IDA7IGkgPCBiaS0+bnVtX3Fndl9wb2ludHM7IGkrKykgew0KPiA+ICsJCQl1
bnNpZ25lZCBpbnQgYncgPSBpY2xfbWF4X2J3KGRldl9wcml2LA0KPiA+IG51bV9wbGFuZXMsIGkp
Ow0KPiA+ICsNCj4gPiArCQkJbWluX2J3ID0gbWluKGJ3LCBtaW5fYncpOw0KPiA+ICsJCX0NCj4g
PiArCQlyZXR1cm4gbWluX2J3Ow0KPiA+ICsJfQ0KPiA+ICAJZWxzZQ0KPiA+ICAJCXJldHVybiBV
SU5UX01BWDsNCj4gPiAgfQ0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ID4gaW5k
ZXggZmRhZTVhOTE5YmM4Li5kNDVhOWZmYWVkNGYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmgNCj4gPiBAQCAtNjIxLDYgKzYyMSw5IEBAIHN0cnVjdCBpOTE1X2dlbV9tbSB7DQo+
ID4gIA0KPiA+ICAjZGVmaW5lIEk5MTVfRU5HSU5FX1dFREdFRF9USU1FT1VUICAoNjAgKiBIWikg
IC8qIFJlc2V0IGJ1dCBubw0KPiA+IHJlY292ZXJ5PyAqLw0KPiA+ICANCj4gPiArLyogQlNwZWMg
cHJlY2lzZWx5IGRlZmluZXMgdGhpcyAqLw0KPiA+ICsjZGVmaW5lIEk5MTVfTlVNX1NBR1ZfUE9J
TlRTIDgNCj4gDQo+IEkgdGhpbmsgZXZlcnl0aGluZyBlbHNlIHRhbGtzIGFib3V0ICJRR1YgcG9p
bnRzIiByYXRoZXINCj4gdGhhbiAiU0FHViBwb2ludHMiIG5vdz8gV291bGQgYmUgbmljZSB0byBi
ZSBjb25zaXN0ZW50Lg0KDQpBZ3JlZSwgX1NBR1ZfIGlzIG5vdCB0aGF0IGFjY3VyYXRlIGhlcmUu
IA0KV2lsbCBjaGFuZ2UgdGhlIG5hbWluZy4NCg0KU3Rhbg0KDQo+IA0KPiBBcGFydCBmcm9tIHRo
YXQNCj4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+IA0KPiA+ICsNCj4gPiAgc3RydWN0IGRkaV92YnRfcG9ydF9pbmZvIHsNCj4g
PiAgCS8qIE5vbi1OVUxMIGlmIHBvcnQgcHJlc2VudC4gKi8NCj4gPiAgCWNvbnN0IHN0cnVjdCBj
aGlsZF9kZXZpY2VfY29uZmlnICpjaGlsZDsNCj4gPiBAQCAtMTIzMiw3ICsxMjM1LDggQEAgc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgew0KPiA+ICAJfSBkcmFtX2luZm87DQo+ID4gIA0KPiA+ICAJ
c3RydWN0IGludGVsX2J3X2luZm8gew0KPiA+IC0JCXVuc2lnbmVkIGludCBkZXJhdGVkYndbM107
IC8qIGZvciBlYWNoIFFHViBwb2ludCAqLw0KPiA+ICsJCS8qIGZvciBlYWNoIFFHViBwb2ludCAq
Lw0KPiA+ICsJCXVuc2lnbmVkIGludCBkZXJhdGVkYndbSTkxNV9OVU1fU0FHVl9QT0lOVFNdOw0K
PiA+ICAJCXU4IG51bV9xZ3ZfcG9pbnRzOw0KPiA+ICAJCXU4IG51bV9wbGFuZXM7DQo+ID4gIAl9
IG1heF9id1s2XTsNCj4gPiAtLSANCj4gPiAyLjE3LjENCj4gDQo+IA0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
