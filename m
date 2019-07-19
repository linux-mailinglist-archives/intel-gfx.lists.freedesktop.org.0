Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EC46EA48
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 19:40:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 587346E480;
	Fri, 19 Jul 2019 17:39:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76CE56E480
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 17:39:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 10:39:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,283,1559545200"; d="scan'208";a="343749053"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga005.jf.intel.com with ESMTP; 19 Jul 2019 10:39:56 -0700
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 19 Jul 2019 10:39:56 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.206]) by
 FMSMSX125.amr.corp.intel.com ([169.254.2.73]) with mapi id 14.03.0439.000;
 Fri, 19 Jul 2019 10:39:56 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [PATCH] drm/i915/gtt: Fix rounding for 36b
Thread-Index: AQHVPjL3l3Qf8TtWgUeP7UQ1Xlz7cabSquaA
Date: Fri, 19 Jul 2019 17:39:55 +0000
Message-ID: <8a2286c938000dc83f61219a7bb488ecf86beb93.camel@intel.com>
References: <20190719130737.5835-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190719130737.5835-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.121.193.213]
Content-ID: <48FC26E53F7DAF4F8FA8C89B419B25A0@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: Fix rounding for 36b
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDE5LTA3LTE5IGF0IDE0OjA3ICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6DQo+
IFRoZSB0b3AtbGV2ZWwgcGFnZSBkaXJlY3RvcnkgZm9yIDM2YiBpcyBhIHNpbmdsZSBlbnRyeSwg
bm90IG11bHRpcGxlDQo+IGxpa2UgMzJiLiBGaXggdXAgdGhlIHJvdW5kaW5nIG9uIHRoZSBjYWxj
dWxhdGlvbiBvZiB0aGUgc2l6ZSBvZiB0aGUNCj4gdG9wDQo+IGxldmVsIHNvIHRoYXQgd2UgcG9w
dWxhdGUgdGhlIDR0aCBsZXZlbCBjb3JyZWN0bHkgZm9yIDM2Yi4NCj4gDQoNCkl0IGZpeGVkIHRo
ZSBidWcsIHRoYW5rcw0KDQpUZXN0ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPg0KDQo+IFJlcG9ydGVkLWJ5OiBKb3NlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+DQo+IEZpeGVzOiAxZWRhNzAxZWFjZTIgKCJkcm0vaTkxNS9ndHQ6IFJlY3Vy
c2l2ZSBjbGVhbnVwIGZvciBnZW44IikNCj4gQ2M6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmph
bnVsZ3VlQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IEpvc2UgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwg
MTcgKysrKysrKysrKy0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCsp
LCA3IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMN
Cj4gaW5kZXggMjIwYWJhNWE5NGQyLi43ZGQwOGZmNmMwZWIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5jDQo+IEBAIC05MDUsNiArOTA1LDEyIEBAIHN0YXRpYyBpbmxpbmUg
dW5zaWduZWQgaW50IGdlbjhfcHRfY291bnQodTY0DQo+IHN0YXJ0LCB1NjQgZW5kKQ0KPiAgCQly
ZXR1cm4gZW5kIC0gc3RhcnQ7DQo+ICB9DQo+ICANCj4gK3N0YXRpYyBpbmxpbmUgdW5zaWduZWQg
aW50IGdlbjhfcGRfdG9wX2NvdW50KGNvbnN0IHN0cnVjdA0KPiBpOTE1X2FkZHJlc3Nfc3BhY2Ug
KnZtKQ0KPiArew0KPiArCXVuc2lnbmVkIGludCBzaGlmdCA9IF9fZ2VuOF9wdGVfc2hpZnQodm0t
PnRvcCk7DQo+ICsJcmV0dXJuICh2bS0+dG90YWwgKyAoMXVsbCA8PCBzaGlmdCkgLSAxKSA+PiBz
aGlmdDsNCj4gK30NCj4gKw0KPiAgc3RhdGljIHZvaWQgX19nZW44X3BwZ3R0X2NsZWFudXAoc3Ry
dWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sDQo+ICAJCQkJIHN0cnVjdCBpOTE1X3BhZ2VfZGly
ZWN0b3J5ICpwZCwNCj4gIAkJCQkgaW50IGNvdW50LCBpbnQgbHZsKQ0KPiBAQCAtOTMwLDkgKzkz
Niw3IEBAIHN0YXRpYyB2b2lkIGdlbjhfcHBndHRfY2xlYW51cChzdHJ1Y3QNCj4gaTkxNV9hZGRy
ZXNzX3NwYWNlICp2bSkNCj4gIAlpZiAoaW50ZWxfdmdwdV9hY3RpdmUodm0tPmk5MTUpKQ0KPiAg
CQlnZW44X3BwZ3R0X25vdGlmeV92Z3QocHBndHQsIGZhbHNlKTsNCj4gIA0KPiAtCV9fZ2VuOF9w
cGd0dF9jbGVhbnVwKHZtLCBwcGd0dC0+cGQsDQo+IC0JCQkgICAgIHZtLT50b3RhbCA+PiBfX2dl
bjhfcHRlX3NoaWZ0KHZtLT50b3ApLA0KPiAtCQkJICAgICB2bS0+dG9wKTsNCj4gKwlfX2dlbjhf
cHBndHRfY2xlYW51cCh2bSwgcHBndHQtPnBkLCBnZW44X3BkX3RvcF9jb3VudCh2bSksIHZtLQ0K
PiA+dG9wKTsNCj4gIAlmcmVlX3NjcmF0Y2godm0pOw0KPiAgfQ0KPiAgDQo+IEBAIC0xMzkxLDcg
KzEzOTUsNyBAQCBzdGF0aWMgaW50DQo+IGdlbjhfcHJlYWxsb2NhdGVfdG9wX2xldmVsX3BkcChz
dHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQpDQo+ICAJdW5zaWduZWQgaW50IGlkeDsNCj4gIA0KPiAg
CUdFTV9CVUdfT04odm0tPnRvcCAhPSAyKTsNCj4gLQlHRU1fQlVHX09OKCh2bS0+dG90YWwgPj4g
X19nZW44X3B0ZV9zaGlmdCgyKSkgIT0NCj4gR0VOOF8zTFZMX1BEUEVTKTsNCj4gKwlHRU1fQlVH
X09OKGdlbjhfcGRfdG9wX2NvdW50KHZtKSAhPSBHRU44XzNMVkxfUERQRVMpOw0KPiAgDQo+ICAJ
Zm9yIChpZHggPSAwOyBpZHggPCBHRU44XzNMVkxfUERQRVM7IGlkeCsrKSB7DQo+ICAJCXN0cnVj
dCBpOTE1X3BhZ2VfZGlyZWN0b3J5ICpwZGU7DQo+IEBAIC0xNDI4LDcgKzE0MzIsNyBAQCBzdGF0
aWMgdm9pZCBwcGd0dF9pbml0KHN0cnVjdCBpOTE1X3BwZ3R0DQo+ICpwcGd0dCwgc3RydWN0IGlu
dGVsX2d0ICpndCkNCj4gIHN0YXRpYyBzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAqDQo+ICBn
ZW44X2FsbG9jX3RvcF9wZChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkNCj4gIHsNCj4g
LQljb25zdCB1bnNpZ25lZCBpbnQgY291bnQgPSB2bS0+dG90YWwgPj4gX19nZW44X3B0ZV9zaGlm
dCh2bS0NCj4gPnRvcCk7DQo+ICsJY29uc3QgdW5zaWduZWQgaW50IGNvdW50ID0gZ2VuOF9wZF90
b3BfY291bnQodm0pOw0KPiAgCXN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0b3J5ICpwZDsNCj4gIA0K
PiAgCUdFTV9CVUdfT04oY291bnQgPiBBUlJBWV9TSVpFKHBkLT5lbnRyeSkpOw0KPiBAQCAtMTUx
NCw4ICsxNTE4LDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3BwZ3R0DQo+ICpnZW44X3BwZ3R0X2Ny
ZWF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gIA0KPiAgZXJyX2ZyZWVfcGQ6
DQo+ICAJX19nZW44X3BwZ3R0X2NsZWFudXAoJnBwZ3R0LT52bSwgcHBndHQtPnBkLA0KPiAtCQkJ
ICAgICBwcGd0dC0+dm0udG90YWwgPj4gX19nZW44X3B0ZV9zaGlmdChwcGd0dC0NCj4gPnZtLnRv
cCksDQo+IC0JCQkgICAgIHBwZ3R0LT52bS50b3ApOw0KPiArCQkJICAgICBnZW44X3BkX3RvcF9j
b3VudCgmcHBndHQtPnZtKSwgcHBndHQtDQo+ID52bS50b3ApOw0KPiAgZXJyX2ZyZWVfc2NyYXRj
aDoNCj4gIAlmcmVlX3NjcmF0Y2goJnBwZ3R0LT52bSk7DQo+ICBlcnJfZnJlZToNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
