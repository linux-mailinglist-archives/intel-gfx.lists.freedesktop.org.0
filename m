Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB01D3B426
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 13:45:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE5DB8911F;
	Mon, 10 Jun 2019 11:45:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADEBA8911F
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 11:45:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 04:45:04 -0700
X-ExtLoop1: 1
Received: from gaia.fi.intel.com ([10.237.72.169])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Jun 2019 04:45:03 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 11D755C1EF2; Mon, 10 Jun 2019 14:44:58 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156016407948.2149.4614829501752768729@skylake-alporthouse-com>
References: <20190610072126.6355-1-chris@chris-wilson.co.uk>
 <20190610072126.6355-2-chris@chris-wilson.co.uk>
 <87k1dtai2k.fsf@gaia.fi.intel.com>
 <156016407948.2149.4614829501752768729@skylake-alporthouse-com>
Date: Mon, 10 Jun 2019 14:44:58 +0300
Message-ID: <87h88xaclh.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/28] drm/i915: Move fence register
 tracking from i915->mm to ggtt
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTEwIDEwOjQ2OjQzKQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiA+ICBzdGF0aWMgaW50IGk5MTVfZ2Vt
X2ZlbmNlX3JlZ3NfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpCj4+ID4gIHsK
Pj4gPiAtICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBub2RlX3RvX2k5
MTUobS0+cHJpdmF0ZSk7Cj4+ID4gLSAgICAgc3RydWN0IGRybV9kZXZpY2UgKmRldiA9ICZkZXZf
cHJpdi0+ZHJtOwo+PiA+IC0gICAgIGludCBpLCByZXQ7Cj4+ID4gKyAgICAgc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUgPSBub2RlX3RvX2k5MTUobS0+cHJpdmF0ZSk7Cj4+ID4gKyAgICAg
dW5zaWduZWQgaW50IGk7Cj4+ID4gIAo+PiA+IC0gICAgIHJldCA9IG11dGV4X2xvY2tfaW50ZXJy
dXB0aWJsZSgmZGV2LT5zdHJ1Y3RfbXV0ZXgpOwo+PiA+IC0gICAgIGlmIChyZXQpCj4+ID4gLSAg
ICAgICAgICAgICByZXR1cm4gcmV0Owo+PiA+ICsgICAgIHNlcV9wcmludGYobSwgIlRvdGFsIGZl
bmNlcyA9ICVkXG4iLCBpOTE1LT5nZ3R0Lm51bV9mZW5jZXMpOwo+PiA+ICAKPj4gPiAtICAgICBz
ZXFfcHJpbnRmKG0sICJUb3RhbCBmZW5jZXMgPSAlZFxuIiwgZGV2X3ByaXYtPm51bV9mZW5jZV9y
ZWdzKTsKPj4gPiAtICAgICBmb3IgKGkgPSAwOyBpIDwgZGV2X3ByaXYtPm51bV9mZW5jZV9yZWdz
OyBpKyspIHsKPj4gPiAtICAgICAgICAgICAgIHN0cnVjdCBpOTE1X3ZtYSAqdm1hID0gZGV2X3By
aXYtPmZlbmNlX3JlZ3NbaV0udm1hOwo+PiA+ICsgICAgIHJjdV9yZWFkX2xvY2soKTsKPj4gCj4+
IFRoaXMgZG9lcyBub3Qgc2VlbSB0byBiZSBmb3IgcmVzZXQuIFNvIGl0IG11c3QgYmUgZm9yIGtl
ZXBpbmcKPj4gdGhlIG9iamVjdCBhbGl2ZS4KPgo+IENvcnJlY3QuCj4gIAo+PiBXaGF0IGd1YXJh
bnRlZXMgdGhhdCB0aGUgb2JqIGlzIGtlcHQgYWxpdmUgb3ZlciB0aGlzIHJjdQo+PiBsb2NrPwo+
Cj4gVGhhdCB0aGUgb2JqZWN0IGlzIFJDVSBwcm90ZWN0ZWQuIDotcAo+Cj4gSXQgaXMgYSByZWxh
dGl2ZWx5IHNpbXBsZSBvbmUgKGl0IHVzZWQgdG8gYmUgbWFudWFsIFJDVSBiYXJyaWVycyksCj4g
aTkxNV9nZW1fZnJlZV9vYmplY3QoKSB1c2VzIGNhbGxfcmN1KCkgdG8gb25seSBxdWV1ZSB0aGUg
b2JqZWN0IGZvcgo+IGZyZWVpbmcgYWZ0ZXIgYW4gUkNVIGdyYWNlIHBlcmlvZCBoYXMgZWxhcHNl
ZC4KCkkgd2FzIGdyZXBwaW5nIGZvciBzeW5jaHJvbml6ZV9yY3UgYW5kIGVuZGVkIHVwIGNvbmZ1
c2VkLiBUaGlzCmlzIHdoYXQgSSB3YXMgbG9va2luZyBmb3IuCgpSZXZpZXdlZC1ieTogTWlrYSBL
dW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
