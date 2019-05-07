Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0369916365
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 14:04:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DD846E7B8;
	Tue,  7 May 2019 12:04:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A97256E7B8
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 12:04:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 05:04:03 -0700
X-ExtLoop1: 1
Received: from jzapadkx-mobl1.ger.corp.intel.com (HELO [10.252.0.159])
 ([10.252.0.159])
 by fmsmga005.fm.intel.com with ESMTP; 07 May 2019 05:04:02 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190503115225.30831-1-chris@chris-wilson.co.uk>
 <20190503115225.30831-9-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <27b89e1e-8df2-f045-5f62-3581fe7f3137@linux.intel.com>
Date: Tue, 7 May 2019 13:04:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503115225.30831-9-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/13] drm/i915/execlists: Don't apply
 priority boost for resets
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAzLzA1LzIwMTkgMTI6NTIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBEbyBub3QgdHJlYXQg
cmVzZXQgYXMgYSBub3JtYWwgcHJlZW1wdGlvbiBldmVudCBhbmQgYXZvaWQgZ2l2aW5nIHRoZQo+
IGd1aWx0eSByZXF1ZXN0IGEgcHJpb3JpdHkgYm9vc3QgZm9yIHNpbXBseSBiZWluZyBhY3RpdmUg
YXQgdGhlIHRpbWUgb2YKPiByZXNldC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jIHwgMTYgKysrKysrKysrLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQs
IDkgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYwo+IGluZGV4IGFmY2RmYzQ0MGJiZC4uNjQxOWJjYWYxZWNjIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBAQCAtMzcxLDExICszNzEsMTEgQEAgc3RhdGlj
IHZvaWQgdW53aW5kX3dhX3RhaWwoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCj4gICB9Cj4gICAK
PiAgIHN0YXRpYyBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICoKPiAtX191bndpbmRfaW5jb21wbGV0ZV9y
ZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gK19fdW53aW5kX2luY29t
cGxldGVfcmVxdWVzdHMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBpbnQgYm9vc3Qp
Cj4gICB7Cj4gICAJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsICpybiwgKmFjdGl2ZSA9IE5VTEw7
Cj4gICAJc3RydWN0IGxpc3RfaGVhZCAqdW5pbml0aWFsaXplZF92YXIocGwpOwo+IC0JaW50IHBy
aW8gPSBJOTE1X1BSSU9SSVRZX0lOVkFMSUQgfCBBQ1RJVkVfUFJJT1JJVFk7Cj4gKwlpbnQgcHJp
byA9IEk5MTVfUFJJT1JJVFlfSU5WQUxJRCB8IGJvb3N0Owo+ICAgCj4gICAJbG9ja2RlcF9hc3Nl
cnRfaGVsZCgmZW5naW5lLT50aW1lbGluZS5sb2NrKTsKPiAgIAo+IEBAIC00MTksOCArNDE5LDkg
QEAgX191bndpbmRfaW5jb21wbGV0ZV9yZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUpCj4gICAJICogaW4gdGhlIHByaW9yaXR5IHF1ZXVlLCBidXQgdGhleSB3aWxsIG5vdCBn
YWluIGltbWVkaWF0ZSBhY2Nlc3MgdG8KPiAgIAkgKiB0aGUgR1BVLgo+ICAgCSAqLwo+IC0JaWYg
KH5wcmlvICYgQUNUSVZFX1BSSU9SSVRZICYmIF9faTkxNV9yZXF1ZXN0X2hhc19zdGFydGVkKGFj
dGl2ZSkpIHsKPiAtCQlwcmlvIHw9IEFDVElWRV9QUklPUklUWTsKPiArCWlmICh+cHJpbyAmIGJv
b3N0ICYmIF9faTkxNV9yZXF1ZXN0X2hhc19zdGFydGVkKGFjdGl2ZSkpIHsKPiArCQlwcmlvIHw9
IGJvb3N0Owo+ICsJCUdFTV9CVUdfT04oYWN0aXZlLT5zY2hlZC5hdHRyLnByaW9yaXR5ID49IHBy
aW8pOwo+ICAgCQlhY3RpdmUtPnNjaGVkLmF0dHIucHJpb3JpdHkgPSBwcmlvOwo+ICAgCQlsaXN0
X21vdmVfdGFpbCgmYWN0aXZlLT5zY2hlZC5saW5rLAo+ICAgCQkJICAgICAgIGk5MTVfc2NoZWRf
bG9va3VwX3ByaW9saXN0KGVuZ2luZSwgcHJpbykpOwo+IEBAIC00MzUsNyArNDM2LDcgQEAgZXhl
Y2xpc3RzX3Vud2luZF9pbmNvbXBsZXRlX3JlcXVlc3RzKHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhl
Y2xpc3RzICpleGVjbGlzdHMpCj4gICAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0K
PiAgIAkJY29udGFpbmVyX29mKGV4ZWNsaXN0cywgdHlwZW9mKCplbmdpbmUpLCBleGVjbGlzdHMp
Owo+ICAgCj4gLQlyZXR1cm4gX191bndpbmRfaW5jb21wbGV0ZV9yZXF1ZXN0cyhlbmdpbmUpOwo+
ICsJcmV0dXJuIF9fdW53aW5kX2luY29tcGxldGVfcmVxdWVzdHMoZW5naW5lLCAwKTsKPiAgIH0K
PiAgIAo+ICAgc3RhdGljIGlubGluZSB2b2lkCj4gQEAgLTY1Niw3ICs2NTcsOCBAQCBzdGF0aWMg
dm9pZCBjb21wbGV0ZV9wcmVlbXB0X2NvbnRleHQoc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlz
dHMgKmV4ZWNsaXN0cykKPiAgIAlleGVjbGlzdHNfY2FuY2VsX3BvcnRfcmVxdWVzdHMoZXhlY2xp
c3RzKTsKPiAgIAlfX3Vud2luZF9pbmNvbXBsZXRlX3JlcXVlc3RzKGNvbnRhaW5lcl9vZihleGVj
bGlzdHMsCj4gICAJCQkJCQkgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MsCj4gLQkJCQkJCSAgZXhl
Y2xpc3RzKSk7Cj4gKwkJCQkJCSAgZXhlY2xpc3RzKSwKPiArCQkJCSAgICAgQUNUSVZFX1BSSU9S
SVRZKTsKPiAgIH0KPiAgIAo+ICAgc3RhdGljIHZvaWQgZXhlY2xpc3RzX2RlcXVldWUoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+IEBAIC0xOTA5LDcgKzE5MTEsNyBAQCBzdGF0aWMg
dm9pZCBfX2V4ZWNsaXN0c19yZXNldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGJv
b2wgc3RhbGxlZCkKPiAgIAlleGVjbGlzdHNfY2FuY2VsX3BvcnRfcmVxdWVzdHMoZXhlY2xpc3Rz
KTsKPiAgIAo+ICAgCS8qIFB1c2ggYmFjayBhbnkgaW5jb21wbGV0ZSByZXF1ZXN0cyBmb3IgcmVw
bGF5IGFmdGVyIHRoZSByZXNldC4gKi8KPiAtCXJxID0gX191bndpbmRfaW5jb21wbGV0ZV9yZXF1
ZXN0cyhlbmdpbmUpOwo+ICsJcnEgPSBfX3Vud2luZF9pbmNvbXBsZXRlX3JlcXVlc3RzKGVuZ2lu
ZSwgMCk7Cj4gICAJaWYgKCFycSkKPiAgIAkJZ290byBvdXRfcmVwbGF5Owo+ICAgCj4gCgpSZXZp
ZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2Fy
ZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
