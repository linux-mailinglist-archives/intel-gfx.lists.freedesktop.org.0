Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EE33C6AB
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 10:55:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CC4C8910E;
	Tue, 11 Jun 2019 08:55:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F0A38910E
 for <Intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 08:55:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 01:55:30 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 11 Jun 2019 01:55:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
In-Reply-To: <20190607120838.20514-8-tvrtko.ursulin@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190607120838.20514-1-tvrtko.ursulin@linux.intel.com>
 <20190607120838.20514-8-tvrtko.ursulin@linux.intel.com>
Date: Tue, 11 Jun 2019 11:58:30 +0300
Message-ID: <87tvcwxzux.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 07/12] drm/i915: Remove I915_READ8
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

T24gRnJpLCAwNyBKdW4gMjAxOSwgVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KPgo+IE9ubHkgYSBmZXcgY2FsbCBzaXRlcyByZW1haW4gd2hpY2ggaGF2ZSBi
ZWVuIGNvbnZlcnRlZCB0byB1bmNvcmUgbW1pbwo+IGFjY2Vzc29ycyBhbmQgc28gdGhlIG1hY3Jv
IGNhbiBiZSByZW1vdmVkLgo+Cj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaCAgfCAgMiAtLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jcnQuYyB8IDQxICsr
KysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMgIHwgIDYgKystLS0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCsp
LCAyMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+IGluZGV4IGIyNzYz
NzIxYjc2ZC4uMTM4MTU3OTVlMTk3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gQEAg
LTI4NTIsOCArMjg1Miw2IEBAIGV4dGVybiB2b2lkIGludGVsX2Rpc3BsYXlfcHJpbnRfZXJyb3Jf
c3RhdGUoc3RydWN0IGRybV9pOTE1X2Vycm9yX3N0YXRlX2J1ZiAqZSwKPiAgI2RlZmluZSBfX0k5
MTVfUkVHX09QKG9wX18sIGRldl9wcml2X18sIC4uLikgXAo+ICAJaW50ZWxfdW5jb3JlXyMjb3Bf
XygmKGRldl9wcml2X18pLT51bmNvcmUsIF9fVkFfQVJHU19fKQo+ICAKPiAtI2RlZmluZSBJOTE1
X1JFQUQ4KHJlZ19fKQkgIF9fSTkxNV9SRUdfT1AocmVhZDgsIGRldl9wcml2LCAocmVnX18pKQo+
IC0KPiAgI2RlZmluZSBJOTE1X1JFQUQxNihyZWdfXykJICAgX19JOTE1X1JFR19PUChyZWFkMTYs
IGRldl9wcml2LCAocmVnX18pKQo+ICAjZGVmaW5lIEk5MTVfV1JJVEUxNihyZWdfXywgdmFsX18p
IF9fSTkxNV9SRUdfT1Aod3JpdGUxNiwgZGV2X3ByaXYsIChyZWdfXyksICh2YWxfXykpCj4gIAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jcnQuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2NydC5jCj4gaW5kZXggYmI1NjUxODU3NmExLi4zZmNmMmY4NGJj
Y2UgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3J0LmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jcnQuYwo+IEBAIC02NDMsNiArNjQzLDcgQEAg
aW50ZWxfY3J0X2xvYWRfZGV0ZWN0KHN0cnVjdCBpbnRlbF9jcnQgKmNydCwgdTMyIHBpcGUpCj4g
IHsKPiAgCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBjcnQtPmJhc2UuYmFzZS5kZXY7Cj4gIAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7Cj4gKwlzdHJ1
Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSAmZGV2X3ByaXYtPnVuY29yZTsKPiAgCXUzMiBzYXZl
X2JjbHJwYXQ7Cj4gIAl1MzIgc2F2ZV92dG90YWw7Cj4gIAl1MzIgdnRvdGFsLCB2YWN0aXZlOwo+
IEBAIC02NjMsOSArNjY0LDkgQEAgaW50ZWxfY3J0X2xvYWRfZGV0ZWN0KHN0cnVjdCBpbnRlbF9j
cnQgKmNydCwgdTMyIHBpcGUpCj4gIAlwaXBlY29uZl9yZWcgPSBQSVBFQ09ORihwaXBlKTsKPiAg
CXBpcGVfZHNsX3JlZyA9IFBJUEVEU0wocGlwZSk7Cj4gIAo+IC0Jc2F2ZV9iY2xycGF0ID0gSTkx
NV9SRUFEKGJjbHJwYXRfcmVnKTsKPiAtCXNhdmVfdnRvdGFsID0gSTkxNV9SRUFEKHZ0b3RhbF9y
ZWcpOwo+IC0JdmJsYW5rID0gSTkxNV9SRUFEKHZibGFua19yZWcpOwo+ICsJc2F2ZV9iY2xycGF0
ID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBiY2xycGF0X3JlZyk7Cj4gKwlzYXZlX3Z0b3Rh
bCA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgdnRvdGFsX3JlZyk7Cj4gKwl2YmxhbmsgPSBp
bnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIHZibGFua19yZWcpOwo+ICAKPiAgCXZ0b3RhbCA9ICgo
c2F2ZV92dG90YWwgPj4gMTYpICYgMHhmZmYpICsgMTsKPiAgCXZhY3RpdmUgPSAoc2F2ZV92dG90
YWwgJiAweDdmZikgKyAxOwo+IEBAIC02NzQsMjEgKzY3NSwyMyBAQCBpbnRlbF9jcnRfbG9hZF9k
ZXRlY3Qoc3RydWN0IGludGVsX2NydCAqY3J0LCB1MzIgcGlwZSkKPiAgCXZibGFua19lbmQgPSAo
KHZibGFuayA+PiAxNikgJiAweGZmZikgKyAxOwo+ICAKPiAgCS8qIFNldCB0aGUgYm9yZGVyIGNv
bG9yIHRvIHB1cnBsZS4gKi8KPiAtCUk5MTVfV1JJVEUoYmNscnBhdF9yZWcsIDB4NTAwMDUwKTsK
PiArCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIGJjbHJwYXRfcmVnLCAweDUwMDA1MCk7Cj4g
IAo+ICAJaWYgKCFJU19HRU4oZGV2X3ByaXYsIDIpKSB7Cj4gLQkJdTMyIHBpcGVjb25mID0gSTkx
NV9SRUFEKHBpcGVjb25mX3JlZyk7Cj4gLQkJSTkxNV9XUklURShwaXBlY29uZl9yZWcsIHBpcGVj
b25mIHwgUElQRUNPTkZfRk9SQ0VfQk9SREVSKTsKPiAtCQlQT1NUSU5HX1JFQUQocGlwZWNvbmZf
cmVnKTsKPiArCQl1MzIgcGlwZWNvbmYgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIHBpcGVj
b25mX3JlZyk7Cj4gKwkJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKPiArCQkJCSAgIHBpcGVj
b25mX3JlZywKPiArCQkJCSAgIHBpcGVjb25mIHwgUElQRUNPTkZfRk9SQ0VfQk9SREVSKTsKPiAr
CQlpbnRlbF91bmNvcmVfcG9zdGluZ19yZWFkKHVuY29yZSwgcGlwZWNvbmZfcmVnKTsKCkp1c3Qg
bXVzaW5nLCBhIG5ldyBpbnRlbF91bmNvcmVfd3JpdGVfcG9zdCgpIHRvIGNvbWJpbmUgdGhlIHR3
bz8KClJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgoKCgo+
ICAJCS8qIFdhaXQgZm9yIG5leHQgVmJsYW5rIHRvIHN1YnN0aXR1ZQo+ICAJCSAqIGJvcmRlciBj
b2xvciBmb3IgQ29sb3IgaW5mbyAqLwo+ICAJCWludGVsX3dhaXRfZm9yX3ZibGFuayhkZXZfcHJp
diwgcGlwZSk7Cj4gLQkJc3QwMCA9IEk5MTVfUkVBRDgoX1ZHQV9NU1JfV1JJVEUpOwo+ICsJCXN0
MDAgPSBpbnRlbF91bmNvcmVfcmVhZDgodW5jb3JlLCBfVkdBX01TUl9XUklURSk7Cj4gIAkJc3Rh
dHVzID0gKChzdDAwICYgKDEgPDwgNCkpICE9IDApID8KPiAgCQkJY29ubmVjdG9yX3N0YXR1c19j
b25uZWN0ZWQgOgo+ICAJCQljb25uZWN0b3Jfc3RhdHVzX2Rpc2Nvbm5lY3RlZDsKPiAgCj4gLQkJ
STkxNV9XUklURShwaXBlY29uZl9yZWcsIHBpcGVjb25mKTsKPiArCQlpbnRlbF91bmNvcmVfd3Jp
dGUodW5jb3JlLCBwaXBlY29uZl9yZWcsIHBpcGVjb25mKTsKPiAgCX0gZWxzZSB7Cj4gIAkJYm9v
bCByZXN0b3JlX3ZibGFuayA9IGZhbHNlOwo+ICAJCWludCBjb3VudCwgZGV0ZWN0Owo+IEBAIC03
MDIsOSArNzA1LDEwIEBAIGludGVsX2NydF9sb2FkX2RldGVjdChzdHJ1Y3QgaW50ZWxfY3J0ICpj
cnQsIHUzMiBwaXBlKQo+ICAJCQl1MzIgdnN5bmNfc3RhcnQgPSAodnN5bmMgJiAweGZmZmYpICsg
MTsKPiAgCj4gIAkJCXZibGFua19zdGFydCA9IHZzeW5jX3N0YXJ0Owo+IC0JCQlJOTE1X1dSSVRF
KHZibGFua19yZWcsCj4gLQkJCQkgICAodmJsYW5rX3N0YXJ0IC0gMSkgfAo+IC0JCQkJICAgKCh2
YmxhbmtfZW5kIC0gMSkgPDwgMTYpKTsKPiArCQkJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwK
PiArCQkJCQkgICB2YmxhbmtfcmVnLAo+ICsJCQkJCSAgICh2Ymxhbmtfc3RhcnQgLSAxKSB8Cj4g
KwkJCQkJICAgKCh2YmxhbmtfZW5kIC0gMSkgPDwgMTYpKTsKPiAgCQkJcmVzdG9yZV92Ymxhbmsg
PSB0cnVlOwo+ICAJCX0KPiAgCQkvKiBzYW1wbGUgaW4gdGhlIHZlcnRpY2FsIGJvcmRlciwgc2Vs
ZWN0aW5nIHRoZSBsYXJnZXIgb25lICovCj4gQEAgLTcxNiw5ICs3MjAsMTAgQEAgaW50ZWxfY3J0
X2xvYWRfZGV0ZWN0KHN0cnVjdCBpbnRlbF9jcnQgKmNydCwgdTMyIHBpcGUpCj4gIAkJLyoKPiAg
CQkgKiBXYWl0IGZvciB0aGUgYm9yZGVyIHRvIGJlIGRpc3BsYXllZAo+ICAJCSAqLwo+IC0JCXdo
aWxlIChJOTE1X1JFQUQocGlwZV9kc2xfcmVnKSA+PSB2YWN0aXZlKQo+ICsJCXdoaWxlIChpbnRl
bF91bmNvcmVfcmVhZCh1bmNvcmUsIHBpcGVfZHNsX3JlZykgPj0gdmFjdGl2ZSkKPiAgCQkJOwo+
IC0JCXdoaWxlICgoZHNsID0gSTkxNV9SRUFEKHBpcGVfZHNsX3JlZykpIDw9IHZzYW1wbGUpCj4g
KwkJd2hpbGUgKChkc2wgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIHBpcGVfZHNsX3JlZykp
IDw9Cj4gKwkJICAgICAgIHZzYW1wbGUpCj4gIAkJCTsKPiAgCQkvKgo+ICAJCSAqIFdhdGNoIFNU
MDAgZm9yIGFuIGVudGlyZSBzY2FubGluZQo+IEBAIC03MjgsMTQgKzczMywxNCBAQCBpbnRlbF9j
cnRfbG9hZF9kZXRlY3Qoc3RydWN0IGludGVsX2NydCAqY3J0LCB1MzIgcGlwZSkKPiAgCQlkbyB7
Cj4gIAkJCWNvdW50Kys7Cj4gIAkJCS8qIFJlYWQgdGhlIFNUMDAgVkdBIHN0YXR1cyByZWdpc3Rl
ciAqLwo+IC0JCQlzdDAwID0gSTkxNV9SRUFEOChfVkdBX01TUl9XUklURSk7Cj4gKwkJCXN0MDAg
PSBpbnRlbF91bmNvcmVfcmVhZDgodW5jb3JlLCBfVkdBX01TUl9XUklURSk7Cj4gIAkJCWlmIChz
dDAwICYgKDEgPDwgNCkpCj4gIAkJCQlkZXRlY3QrKzsKPiAtCQl9IHdoaWxlICgoSTkxNV9SRUFE
KHBpcGVfZHNsX3JlZykgPT0gZHNsKSk7Cj4gKwkJfSB3aGlsZSAoKGludGVsX3VuY29yZV9yZWFk
KHVuY29yZSwgcGlwZV9kc2xfcmVnKSA9PSBkc2wpKTsKPiAgCj4gIAkJLyogcmVzdG9yZSB2Ymxh
bmsgaWYgbmVjZXNzYXJ5ICovCj4gIAkJaWYgKHJlc3RvcmVfdmJsYW5rKQo+IC0JCQlJOTE1X1dS
SVRFKHZibGFua19yZWcsIHZibGFuayk7Cj4gKwkJCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUs
IHZibGFua19yZWcsIHZibGFuayk7Cj4gIAkJLyoKPiAgCQkgKiBJZiBtb3JlIHRoYW4gMy80IG9m
IHRoZSBzY2FubGluZSBkZXRlY3RlZCBhIG1vbml0b3IsCj4gIAkJICogdGhlbiBpdCBpcyBhc3N1
bWVkIHRvIGJlIHByZXNlbnQuIFRoaXMgd29ya3MgZXZlbiBvbiBpODMwLAo+IEBAIC03NDgsNyAr
NzUzLDcgQEAgaW50ZWxfY3J0X2xvYWRfZGV0ZWN0KHN0cnVjdCBpbnRlbF9jcnQgKmNydCwgdTMy
IHBpcGUpCj4gIAl9Cj4gIAo+ICAJLyogUmVzdG9yZSBwcmV2aW91cyBzZXR0aW5ncyAqLwo+IC0J
STkxNV9XUklURShiY2xycGF0X3JlZywgc2F2ZV9iY2xycGF0KTsKPiArCWludGVsX3VuY29yZV93
cml0ZSh1bmNvcmUsIGJjbHJwYXRfcmVnLCBzYXZlX2JjbHJwYXQpOwo+ICAKPiAgCXJldHVybiBz
dGF0dXM7Cj4gIH0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKPiBpbmRleCBkNzI3MmQ0ZmYyNTgu
LjkzZTQxMWU2YWQxOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwo+IEBAIC04MTYwLDE1
ICs4MTYwLDE1IEBAIHVuc2lnbmVkIGxvbmcgaTkxNV9jaGlwc2V0X3ZhbChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gIAlyZXR1cm4gdmFsOwo+ICB9Cj4gIAo+IC11bnNpZ25l
ZCBsb25nIGk5MTVfbWNoX3ZhbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4g
K3Vuc2lnbmVkIGxvbmcgaTkxNV9tY2hfdmFsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQo+ICB7Cj4gIAl1bnNpZ25lZCBsb25nIG0sIHgsIGI7Cj4gIAl1MzIgdHNmczsKPiAgCj4gLQl0
c2ZzID0gSTkxNV9SRUFEKFRTRlMpOwo+ICsJdHNmcyA9IGludGVsX3VuY29yZV9yZWFkKCZpOTE1
LT51bmNvcmUsIFRTRlMpOwo+ICAKPiAgCW0gPSAoKHRzZnMgJiBUU0ZTX1NMT1BFX01BU0spID4+
IFRTRlNfU0xPUEVfU0hJRlQpOwo+IC0JeCA9IEk5MTVfUkVBRDgoVFIxKTsKPiArCXggPSBpbnRl
bF91bmNvcmVfcmVhZDgoJmk5MTUtPnVuY29yZSwgVFIxKTsKPiAgCj4gIAliID0gdHNmcyAmIFRT
RlNfSU5UUl9NQVNLOwoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGlj
cyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
