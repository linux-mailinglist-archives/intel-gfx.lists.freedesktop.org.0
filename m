Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D040DC9CF
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 17:52:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E4FA6EB74;
	Fri, 18 Oct 2019 15:52:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 344336EB74
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 15:52:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 08:52:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,312,1566889200"; d="scan'208";a="226575770"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga002.fm.intel.com with ESMTP; 18 Oct 2019 08:52:28 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x9IFqQBj001111; Fri, 18 Oct 2019 16:52:27 +0100
To: intel-gfx@lists.freedesktop.org, "Janusz Krzysztofik"
 <janusz.krzysztofik@linux.intel.com>
References: <6250061.7lZMOAyebC@jkrzyszt-desk.ger.corp.intel.com>
Date: Fri, 18 Oct 2019 17:52:26 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z9u41odsxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <6250061.7lZMOAyebC@jkrzyszt-desk.ger.corp.intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915: Restore full symmetry in
 i915_driver_modeset_probe/remove
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxOCBPY3QgMjAxOSAxMjowNzoxMCArMDIwMCwgSmFudXN6IEtyenlzenRvZmlrICAK
PGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+IHdyb3RlOgoKPiBDb21taXQgMmQ2
ZjZmMzU5ZmQ4ICgiZHJtL2k5MTU6IGFkZCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3JlbW92ZSgpIikK
PiBjbGFpbWVkIHJlbW92YWwgb2YgYXN5bW1ldHJ5IGluIHByb2JlKCkgYW5kIHJlbW92ZSgpIGNh
bGxzLCBob3dldmVyLCBpdAo+IGRpZG4ndCB0YWtlIGNhcmUgb2YgY2FsbGluZyBpbnRlbF9pcnFf
dW5pbnN0YWxsKCkgb24gZHJpdmVyIHJlbW92ZS4KPiBUaGF0IGRvZXNuJ3QgaHVydCBhcyBsb25n
IGFzIHdlIHN0aWxsIGNhbGwgaXQgZnJvbQo+IGludGVsX21vZGVzZXRfZHJpdmVyX3JlbW92ZSgp
IGJ1dCBpbiBvcmRlciB0byBoYXZlIGZ1bGwgc3ltbWV0cnkgd2UKPiBzaG91bGQgY2FsbCBpdCBh
Z2FpbiBmcm9tIGk5MTVfZHJpdmVyX21vZGVzZXRfcmVtb3ZlKCkuCj4KPiBOb3RlIHRoYXQgaXQn
cyBzYWZlIHRvIGNhbGwgaW50ZWxfaXJxX3VuaW5zdGFsbCgpIHR3aWNlIHRoYW5rcyB0bwo+IGNv
bW1pdCBiMzE4YjgyNDU1YmQgKCJkcm0vaTkxNTogTnVrZSBkcm1fZHJpdmVyIGlycSB2ZnVuY3Mi
KS4gIFdlIG1heQo+IG9ubHkgd2FudCB0byBtZW50aW9uIHRoZSBjYXNlIHdlIGFyZSBhZGRpbmcg
aW4gYSByZWxhdGVkIEZJWE1FIGNvbW1lbnQKPiBwcm92aWRlZCBieSB0aGF0IGNvbW1pdC4gIFdo
aWxlIGJlaW5nIGF0IGl0LCB1cGRhdGUgdGhlIG5hbWUgb2YKPiBmdW5jdGlvbiBtZW50aW9uZWQg
YXMgY2FsbGluZyBpdCBvdXQgb2Ygc2VxdWVuY2UgYXMgdGhhdCBuYW1lIGhhcyBiZWVuCj4gY2hh
bmdlZCBtZWFud2hpbGUgYnkgY29tbWl0IDc4ZGFlMWFjMzVkZCAoImRybS9pOTE1OiBQcm9wYWdh
dGUKPiAiX3JlbW92ZSIgZnVuY3Rpb24gbmFtZSBzdWZmaXggZG93biIpLgo+Cj4gU3VnZ2VzdGVk
LWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5p
bnRlbC5jb20+Cj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwu
Y29tPgo+IC0tLQoKUmV2aWV3ZWQtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6
a29AaW50ZWwuY29tPgpidXQgcGxlYXNlIHNlZSBiZWxvdwoKPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuYyB8IDIgKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8
IDggKysrKy0tLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAg
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gaW5kZXggZGQ5NjEzZTQ1NzIz
Li40YWU5YmZhOTYyOTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBAQCAtNDUyLDYg
KzQ1Miw4IEBAIHN0YXRpYyB2b2lkIGk5MTVfZHJpdmVyX21vZGVzZXRfcmVtb3ZlKHN0cnVjdCAg
Cj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAJaW50ZWxfbW9kZXNldF9kcml2ZXJfcmVtb3Zl
KGk5MTUpOwo+ICsJaW50ZWxfaXJxX3VuaW5zdGFsbChpOTE1KTsKPiArCj4gIAlpbnRlbF9iaW9z
X2RyaXZlcl9yZW1vdmUoaTkxNSk7CgpJJ20gd29uZGVyaW5nIGlmIHRoaXMgaXMgYSBnb29kIGxv
Y2F0aW9uIGZvciB0aGlzIGNhbGwgYXMgaW4KaTkxNV9kcml2ZXJfbW9kZXNldF9wcm9iZSgpIHdl
IGNhbGwgaXQgYmVmb3JlIGludGVsX3ZnYV9yZWdpc3RlcigpCnNvIGxpa2VseSBjbGVhbnVwIHNo
b3VsZCBiZSBkb25lIGFmdGVyIGludGVsX3ZnYV91bnJlZ2lzdGVyKCkKCml0IGFsc28gbG9va3Mg
dGhhdCB3ZSBtaXNzZWQgdG8gY2FsbCBpbnRlbF9iaW9zX2RyaXZlcl9yZW1vdmUoKQpvbiB0aGUg
ZXJyb3IgcGF0aCBpbiBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2JlKCkKCmJ1dCBsZXQncyBmaXgg
aXQgaW4gYSBzZXBhcmF0ZSBwYXRjaAoKPiAJdmdhX3N3aXRjaGVyb29fdW5yZWdpc3Rlcl9jbGll
bnQocGRldik7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMg
IAo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+IGluZGV4IGJjODNmMDk0MDY1
YS4uMDE2MDI4Mzg2MGE2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
aXJxLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCj4gQEAgLTQ1MTUs
MTAgKzQ1MTUsMTAgQEAgdm9pZCBpbnRlbF9pcnFfdW5pbnN0YWxsKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICAKPiAqZGV2X3ByaXYpCj4gIAlpbnQgaXJxID0gZGV2X3ByaXYtPmRybS5wZGV2LT5p
cnE7Cj4gCS8qCj4gLQkgKiBGSVhNRSB3ZSBjYW4gZ2V0IGNhbGxlZCB0d2ljZSBkdXJpbmcgZHJp
dmVyIGxvYWQKPiAtCSAqIGVycm9yIGhhbmRsaW5nIGR1ZSB0byBpbnRlbF9tb2Rlc2V0X2NsZWFu
dXAoKQo+IC0JICogY2FsbGluZyB1cyBvdXQgb2Ygc2VxdWVuY2UuIFdvdWxkIGJlIG5pY2UgaWYK
PiAtCSAqIGl0IGRpZG4ndCBkbyB0aGF0Li4uCj4gKwkgKiBGSVhNRSB3ZSBjYW4gZ2V0IGNhbGxl
ZCB0d2ljZSBkdXJpbmcgZHJpdmVyIHByb2JlCj4gKwkgKiBlcnJvciBoYW5kbGluZyBhcyB3ZWxs
IGFzIGR1cmluZyBkcml2ZXIgcmVtb3ZlIGR1ZSB0bwo+ICsJICogaW50ZWxfbW9kZXNldF9kcml2
ZXJfcmVtb3ZlKCkgY2FsbGluZyB1cyBvdXQgb2Ygc2VxdWVuY2UuCj4gKwkgKiBXb3VsZCBiZSBu
aWNlIGlmIGl0IGRpZG4ndCBkbyB0aGF0Li4uCj4gIAkgKi8KPiAgCWlmICghZGV2X3ByaXYtPmRy
bS5pcnFfZW5hYmxlZCkKPiAgCQlyZXR1cm47Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
