Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 382EE4658C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 19:20:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62C1489B38;
	Fri, 14 Jun 2019 17:20:01 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EE9489B38
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 17:19:59 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 10:19:59 -0700
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga002-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Jun 2019 10:19:58 -0700
Date: Fri, 14 Jun 2019 10:20:30 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20190614172030.GA28583@intel.com>
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
 <20190614151731.17608-7-tvrtko.ursulin@linux.intel.com>
 <20190614152512.GC19512@intel.com>
 <dc2cfa23-42a2-f51f-434e-1534bccb48cc@linux.intel.com>
 <20190614161618.GJ19512@intel.com>
 <94563ea1-0ca2-689b-b51e-6ee7d26984d3@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <94563ea1-0ca2-689b-b51e-6ee7d26984d3@linux.intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [RFC 06/31] drm/i915: Convert
 i915_gem_init_swizzling to intel_gt
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMDU6MjE6MzlQTSArMDEwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cj4gCj4gT24gMTQvMDYvMjAxOSAxNzoxNiwgUm9kcmlnbyBWaXZpIHdyb3RlOgo+ID4g
T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMDQ6MzY6NTdQTSArMDEwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cj4gPiA+IAo+ID4gPiBPbiAxNC8wNi8yMDE5IDE2OjI1LCBSb2RyaWdvIFZpdmkgd3Jv
dGU6Cj4gPiA+ID4gT24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMDQ6MTc6MDZQTSArMDEwMCwgVHZy
dGtvIFVyc3VsaW4gd3JvdGU6Cj4gPiA+ID4gPiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBTdGFydCB1c2luZyB0aGUg
bmV3bHkgaW50cm9kdWNlZCBzdHJ1Y3QgaW50ZWxfZ3QgdG8gZnVzZSB0b2dldGhlciBjb3JyZWN0
Cj4gPiA+ID4gPiBsb2dpY2FsIGluaXQgZmxvdyB3aXRoIHVuY29yZSBmb3IgbW9yZSByZW1vdmFs
IG9mIGltcGxpY2l0IGRldl9wcml2IGluCj4gPiA+ID4gPiBtbWlvIGFjY2Vzcy4KPiA+ID4gPiA+
IAo+ID4gPiA+ID4gdjI6Cj4gPiA+ID4gPiAgICAqIE1vdmUgY29kZSB0byBpOTE1X2dlbV9mZW5j
ZV9yZWcuIChDaHJpcykKPiA+ID4gPiA+IAo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogVHZydGtv
IFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiA+ID4gPiA+IC0tLQo+ID4gPiA+
ID4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgfCAgNCArLS0K
PiA+ID4gPiA+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgIHwg
IDEgLQo+ID4gPiA+ID4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAg
ICAgfCAyNSArLS0tLS0tLS0tLS0tLS0KPiA+ID4gPiA+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jIHwgMzcgKysrKysrKysrKysrKysrKysrKysrKysKPiA+ID4g
PiA+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5oIHwgIDMgKysK
PiA+ID4gPiA+ICAgIDUgZmlsZXMgY2hhbmdlZCwgNDMgaW5zZXJ0aW9ucygrKSwgMjcgZGVsZXRp
b25zKC0pCj4gPiA+ID4gPiAKPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+ID4gPiA+
ID4gaW5kZXggOTcxNTVjNWViN2UxLi4xZGY3NmY3YzcxN2UgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gPiA+ID4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gPiA+ID4gPiBAQCAtMjkzNSw3ICsyOTM1LDcgQEAg
c3RhdGljIGludCBpbnRlbF9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRldmljZSAqa2RldikKPiA+
ID4gPiA+ICAgIAkJaW50ZWxfdWNfcmVzdW1lKGRldl9wcml2KTsKPiA+ID4gPiA+IC0JCWk5MTVf
Z2VtX2luaXRfc3dpenpsaW5nKGRldl9wcml2KTsKPiA+ID4gPiA+ICsJCWludGVsX2d0X2luaXRf
c3dpenpsaW5nKCZkZXZfcHJpdi0+Z3QpOwo+ID4gPiA+ID4gICAgCQlpOTE1X2dlbV9yZXN0b3Jl
X2ZlbmNlcyhkZXZfcHJpdik7Cj4gPiA+ID4gPiAgICAJCWVuYWJsZV9ycG1fd2FrZXJlZl9hc3Nl
cnRzKGRldl9wcml2KTsKPiA+ID4gPiA+IEBAIC0zMDM2LDcgKzMwMzYsNyBAQCBzdGF0aWMgaW50
IGludGVsX3J1bnRpbWVfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmtkZXYpCj4gPiA+ID4gPiAgICAJ
ICogTm8gcG9pbnQgb2Ygcm9sbGluZyBiYWNrIHRoaW5ncyBpbiBjYXNlIG9mIGFuIGVycm9yLCBh
cyB0aGUgYmVzdAo+ID4gPiA+ID4gICAgCSAqIHdlIGNhbiBkbyBpcyB0byBob3BlIHRoYXQgdGhp
bmdzIHdpbGwgc3RpbGwgd29yayAoYW5kIGRpc2FibGUgUlBNKS4KPiA+ID4gPiA+ICAgIAkgKi8K
PiA+ID4gPiA+IC0JaTkxNV9nZW1faW5pdF9zd2l6emxpbmcoZGV2X3ByaXYpOwo+ID4gPiA+ID4g
KwlpbnRlbF9ndF9pbml0X3N3aXp6bGluZygmZGV2X3ByaXYtPmd0KTsKPiA+ID4gPiA+ICAgIAlp
OTE1X2dlbV9yZXN0b3JlX2ZlbmNlcyhkZXZfcHJpdik7Cj4gPiA+ID4gPiAgICAJLyoKPiA+ID4g
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+ID4gPiA+ID4gaW5kZXggZTJjODgxM2M5MzU1Li4x
ZWIyMDNmZGVlNjAgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
Cj4gPiA+ID4gPiBAQCAtMjU4Niw3ICsyNTg2LDYgQEAgYm9vbCBpOTE1X2dlbV91bnNldF93ZWRn
ZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKPiA+ID4gPiA+ICAgIHZvaWQg
aTkxNV9nZW1faW5pdF9tbWlvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKPiA+ID4g
PiA+ICAgIGludCBfX211c3RfY2hlY2sgaTkxNV9nZW1faW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpOwo+ID4gPiA+ID4gICAgaW50IF9fbXVzdF9jaGVjayBpOTE1X2dlbV9p
bml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Cj4gPiA+ID4gPiAtdm9p
ZCBpOTE1X2dlbV9pbml0X3N3aXp6bGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpOwo+ID4gPiA+ID4gICAgdm9pZCBpOTE1X2dlbV9maW5pX2h3KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdik7Cj4gPiA+ID4gPiAgICB2b2lkIGk5MTVfZ2VtX2Zpbmkoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKPiA+ID4gPiA+ICAgIGludCBpOTE1X2dlbV93
YWl0X2Zvcl9pZGxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiA+ID4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+ID4gPiA+ID4gaW5kZXggN2ZkZjI1MmY5MzIyLi41YzBk
YjkzNDMxNWIgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbS5jCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCj4g
PiA+ID4gPiBAQCAtMTIwNSwyOSArMTIwNSw2IEBAIHZvaWQgaTkxNV9nZW1fc2FuaXRpemUoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gPiA+ID4gPiAgICAJbXV0ZXhfdW5sb2NrKCZp
OTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiA+ID4gPiA+ICAgIH0KPiA+ID4gPiA+IC12b2lkIGk5
MTVfZ2VtX2luaXRfc3dpenpsaW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
PiA+ID4gPiA+IC17Cj4gPiA+ID4gPiAtCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgNSB8fAo+
ID4gPiA+ID4gLQkgICAgZGV2X3ByaXYtPm1tLmJpdF82X3N3aXp6bGVfeCA9PSBJOTE1X0JJVF82
X1NXSVpaTEVfTk9ORSkKPiA+ID4gPiA+IC0JCXJldHVybjsKPiA+ID4gPiA+IC0KPiA+ID4gPiA+
IC0JSTkxNV9XUklURShESVNQX0FSQl9DVEwsIEk5MTVfUkVBRChESVNQX0FSQl9DVEwpIHwKPiA+
ID4gPiA+IC0JCQkJIERJU1BfVElMRV9TVVJGQUNFX1NXSVpaTElORyk7Cj4gPiA+ID4gPiAtCj4g
PiA+ID4gPiAtCWlmIChJU19HRU4oZGV2X3ByaXYsIDUpKQo+ID4gPiA+ID4gLQkJcmV0dXJuOwo+
ID4gPiA+ID4gLQo+ID4gPiA+ID4gLQlJOTE1X1dSSVRFKFRJTEVDVEwsIEk5MTVfUkVBRChUSUxF
Q1RMKSB8IFRJTEVDVExfU1daQ1RMKTsKPiA+ID4gPiA+IC0JaWYgKElTX0dFTihkZXZfcHJpdiwg
NikpCj4gPiA+ID4gPiAtCQlJOTE1X1dSSVRFKEFSQl9NT0RFLCBfTUFTS0VEX0JJVF9FTkFCTEUo
QVJCX01PREVfU1dJWlpMRV9TTkIpKTsKPiA+ID4gPiA+IC0JZWxzZSBpZiAoSVNfR0VOKGRldl9w
cml2LCA3KSkKPiA+ID4gPiA+IC0JCUk5MTVfV1JJVEUoQVJCX01PREUsIF9NQVNLRURfQklUX0VO
QUJMRShBUkJfTU9ERV9TV0laWkxFX0lWQikpOwo+ID4gPiA+ID4gLQllbHNlIGlmIChJU19HRU4o
ZGV2X3ByaXYsIDgpKQo+ID4gPiA+ID4gLQkJSTkxNV9XUklURShHQU1UQVJCTU9ERSwgX01BU0tF
RF9CSVRfRU5BQkxFKEFSQl9NT0RFX1NXSVpaTEVfQkRXKSk7Cj4gPiA+ID4gPiAtCWVsc2UKPiA+
ID4gPiA+IC0JCUJVRygpOwo+ID4gPiA+ID4gLX0KPiA+ID4gPiA+IC0KPiA+ID4gPiA+ICAgIHN0
YXRpYyB2b2lkIGluaXRfdW51c2VkX3Jpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LCB1MzIgYmFzZSkKPiA+ID4gPiA+ICAgIHsKPiA+ID4gPiA+ICAgIAlJOTE1X1dSSVRFKFJJ
TkdfQ1RMKGJhc2UpLCAwKTsKPiA+ID4gPiA+IEBAIC0xMjc0LDcgKzEyNTEsNyBAQCBpbnQgaTkx
NV9nZW1faW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gPiA+ID4g
PiAgICAJLyogLi4uYW5kIGRldGVybWluZSB3aGV0aGVyIHRoZXkgYXJlIHN0aWNraW5nLiAqLwo+
ID4gPiA+ID4gICAgCWludGVsX2d0X3ZlcmlmeV93b3JrYXJvdW5kcyhkZXZfcHJpdiwgImluaXQi
KTsKPiA+ID4gPiA+IC0JaTkxNV9nZW1faW5pdF9zd2l6emxpbmcoZGV2X3ByaXYpOwo+ID4gPiA+
ID4gKwlpbnRlbF9ndF9pbml0X3N3aXp6bGluZygmZGV2X3ByaXYtPmd0KTsKPiA+ID4gPiA+ICAg
IAkvKgo+ID4gPiA+ID4gICAgCSAqIEF0IGxlYXN0IDgzMCBjYW4gbGVhdmUgc29tZSBvZiB0aGUg
dW51c2VkIHJpbmdzCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZmVuY2VfcmVnLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5j
ZV9yZWcuYwo+ID4gPiA+ID4gaW5kZXggMWM5NDY2Njc2Y2FmLi5mYzI2ODU5OWEwYzMgMTAwNjQ0
Cj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcu
Ywo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVn
LmMKPiA+ID4gPiA+IEBAIC04MzQsMyArODM0LDQwIEBAIHZvaWQgaTkxNV9nZ3R0X2luaXRfZmVu
Y2VzKHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCj4gPiA+ID4gPiAgICAJaTkxNV9nZW1fcmVzdG9y
ZV9mZW5jZXMoaTkxNSk7Cj4gPiA+ID4gPiAgICB9Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArdm9p
ZCBpbnRlbF9ndF9pbml0X3N3aXp6bGluZyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+ID4gPiA+ID4g
K3sKPiA+ID4gPiA+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsK
PiA+ID4gPiA+ICsJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ3QtPnVuY29yZTsKPiA+
ID4gPiA+ICsKPiA+ID4gPiA+ICsJaWYgKElOVEVMX0dFTihpOTE1KSA8IDUgfHwKPiA+ID4gPiA+
ICsJICAgIGk5MTUtPm1tLmJpdF82X3N3aXp6bGVfeCA9PSBJOTE1X0JJVF82X1NXSVpaTEVfTk9O
RSkKPiA+ID4gPiA+ICsJCXJldHVybjsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsJaW50ZWxfdW5j
b3JlX3dyaXRlKHVuY29yZSwKPiA+ID4gPiA+ICsJCQkgICBESVNQX0FSQl9DVEwsCj4gPiA+ID4g
PiArCQkJICAgaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBESVNQX0FSQl9DVEwpIHwKPiA+ID4g
PiA+ICsJCQkgICBESVNQX1RJTEVfU1VSRkFDRV9TV0laWkxJTkcpOwo+ID4gPiA+IAo+ID4gPiA+
IGNvdWxkIHdlIGNoYW5nZSB0aGlzIHRvIGludGVsX3VuY29yZV9ybXcgPwo+ID4gPiA+IAo+ID4g
PiA+ID4gKwo+ID4gPiA+ID4gKwlpZiAoSVNfR0VOKGk5MTUsIDUpKQo+ID4gPiA+ID4gKwkJcmV0
dXJuOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKwlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLAo+
ID4gPiA+ID4gKwkJCSAgIFRJTEVDVEwsCj4gPiA+ID4gPiArCQkJICAgaW50ZWxfdW5jb3JlX3Jl
YWQodW5jb3JlLCBUSUxFQ1RMKSB8IFRJTEVDVExfU1daQ1RMKTsKPiA+ID4gPiAKPiA+ID4gPiBh
bmQgaGVyZSBhcyB3ZWxsPwo+ID4gPiAKPiA+ID4gWWVzIG9mIGNvdXJzZS4uIG1hcmtpbmcgYXMg
VE9ETy4KPiA+IAo+ID4gb3BzLCBhbmQgSSBmb3Jnb3QgdG8gc3RhdGUgdGhhdCB3aXRoIHRoYXQg
YWxyZWFkeSBhZGQKPiA+IAo+ID4gUmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52
aXZpQGludGVsLmNvbT4KPiAKPiBUaGFua3MhIEkgaG93ZXZlciBwbGFubmVkIHRvIGNvbnNvbGlk
YXRlIHdpdGggcm13IGluIGEgc2VwYXJhdGUgcGF0Y2guIEp1c3QKPiB0byBrZWVwIGRpZmZlcmVu
dCBjbGFzcyBvZiBjaGFuZ2VzIHNlcGFyYXRlLiBDYW4gSSBrZWVwIHRoZSByLWIgZm9yIHRoaXMK
PiBwYXRjaCBhcyBpcyBpbiB0aGlzIGNhc2U/CgpvaCwgc3VyZSEgd2hhdGV2ZXIgaXMgZWFzaWVy
Cgo+IAo+IFJlZ2FyZHMsCj4gCj4gVHZydGtvCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
