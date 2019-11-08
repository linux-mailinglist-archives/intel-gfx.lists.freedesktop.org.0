Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C32EDF44C5
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 11:40:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BB5B6F92C;
	Fri,  8 Nov 2019 10:40:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 797066F92C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 10:40:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 02:40:24 -0800
X-IronPort-AV: E=Sophos;i="5.68,281,1569308400"; d="scan'208";a="206429333"
Received: from cstylian-mobl.ger.corp.intel.com (HELO [10.251.95.7])
 ([10.251.95.7])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 08 Nov 2019 02:40:22 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191107221201.30497-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e63b3693-ba4c-6e92-48a6-8ad3284ee7d9@linux.intel.com>
Date: Fri, 8 Nov 2019 10:40:21 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191107221201.30497-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Mark up sole accessor
 to ctx->vm as being protected
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

Ck9uIDA3LzExLzIwMTkgMjI6MTIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBJbiB0aGUgc2VsZnRl
c3RzLCB3aGVyZSB3ZSBhcmUgYWNjZXNzaW5nIGEgcHJpdmF0ZSBjdHggZnJvbSB3aXRoaW4gdGhl
Cj4gY29uZmluZXMgb2YgYSBzaW5nbGUgdGVzdCwgd2Uga25vdyB0aGF0IHRoZSBjdHgtPnZtIHBv
aW50ZXIgaXMgc3RhdGljCj4gYW5kIGJvdW5kZWQgYnkgdGhlIGxpZmV0aW1lIG9mIHRoZSB0ZXN0
LiBXZSBjYW4gdXNlIGEgc2ltcGxlIGhlbHBlciB0bwo+IHByb3ZpZGUgdGhlIFJDVSBhbm5vdGF0
aW9ucyB0byBrZWVwIHNwYXJzZSBoYXBweS4KClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwoKPiBTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgIC4u
Li9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYyB8IDI0ICsrKysrKysr
KysrLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAxMCBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0
ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRl
c3RzL2k5MTVfZ2VtX2NvbnRleHQuYwo+IGluZGV4IDBkNGNkZjM4ZDVmOS4uMTNhZThmNjZiZWQ2
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9n
ZW1fY29udGV4dC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9p
OTE1X2dlbV9jb250ZXh0LmMKPiBAQCAtMjYsNiArMjYsMTIgQEAKPiAgIAo+ICAgI2RlZmluZSBE
V19QRVJfUEFHRSAoUEFHRV9TSVpFIC8gc2l6ZW9mKHUzMikpCj4gICAKPiArc3RhdGljIGlubGlu
ZSBzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICpjdHhfdm0oc3RydWN0IGk5MTVfZ2VtX2NvbnRl
eHQgKmN0eCkKPiArewo+ICsJLyogc2luZ2xlIHRocmVhZGVkLCBwcml2YXRlIGN0eCAqLwo+ICsJ
cmV0dXJuIHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQoY3R4LT52bSwgdHJ1ZSk7Cj4gK30KPiAr
Cj4gICBzdGF0aWMgaW50IGxpdmVfbm9wX3N3aXRjaCh2b2lkICphcmcpCj4gICB7Cj4gICAJY29u
c3QgdW5zaWduZWQgaW50IG5jdHggPSAxMDI0Owo+IEBAIC03ODcsMTQgKzc5MywxNSBAQCBzdGF0
aWMgaW50IGlndF9zaGFyZWRfY3R4X2V4ZWModm9pZCAqYXJnKQo+ICAgCQkJfQo+ICAgCj4gICAJ
CQltdXRleF9sb2NrKCZjdHgtPm11dGV4KTsKPiAtCQkJX19hc3NpZ25fcHBndHQoY3R4LCBwYXJl
bnQtPnZtKTsKPiArCQkJX19hc3NpZ25fcHBndHQoY3R4LCBjdHhfdm0ocGFyZW50KSk7Cj4gICAJ
CQltdXRleF91bmxvY2soJmN0eC0+bXV0ZXgpOwo+ICAgCj4gICAJCQljZSA9IGk5MTVfZ2VtX2Nv
bnRleHRfZ2V0X2VuZ2luZShjdHgsIGVuZ2luZS0+bGVnYWN5X2lkeCk7Cj4gICAJCQlHRU1fQlVH
X09OKElTX0VSUihjZSkpOwo+ICAgCj4gICAJCQlpZiAoIW9iaikgewo+IC0JCQkJb2JqID0gY3Jl
YXRlX3Rlc3Rfb2JqZWN0KHBhcmVudC0+dm0sIGZpbGUsICZvYmplY3RzKTsKPiArCQkJCW9iaiA9
IGNyZWF0ZV90ZXN0X29iamVjdChjdHhfdm0ocGFyZW50KSwKPiArCQkJCQkJCSBmaWxlLCAmb2Jq
ZWN0cyk7Cj4gICAJCQkJaWYgKElTX0VSUihvYmopKSB7Cj4gICAJCQkJCWVyciA9IFBUUl9FUlIo
b2JqKTsKPiAgIAkJCQkJaW50ZWxfY29udGV4dF9wdXQoY2UpOwo+IEBAIC0xMzQ0LDE0ICsxMzUx
LDExIEBAIHN0YXRpYyBpbnQgaWd0X2N0eF9yZWFkb25seSh2b2lkICphcmcpCj4gICAJCWdvdG8g
b3V0X2ZpbGU7Cj4gICAJfQo+ICAgCj4gLQlyY3VfcmVhZF9sb2NrKCk7Cj4gLQl2bSA9IHJjdV9k
ZXJlZmVyZW5jZShjdHgtPnZtKSA/OiAmaTkxNS0+Z2d0dC5hbGlhcy0+dm07Cj4gKwl2bSA9IGN0
eF92bShjdHgpID86ICZpOTE1LT5nZ3R0LmFsaWFzLT52bTsKPiAgIAlpZiAoIXZtIHx8ICF2bS0+
aGFzX3JlYWRfb25seSkgewo+IC0JCXJjdV9yZWFkX3VubG9jaygpOwo+ICAgCQllcnIgPSAwOwo+
ICAgCQlnb3RvIG91dF9maWxlOwo+ICAgCX0KPiAtCXJjdV9yZWFkX3VubG9jaygpOwo+ICAgCj4g
ICAJbmR3b3JkcyA9IDA7Cj4gICAJZHcgPSAwOwo+IEBAIC0xMzgxLDcgKzEzODUsNyBAQCBzdGF0
aWMgaW50IGlndF9jdHhfcmVhZG9ubHkodm9pZCAqYXJnKQo+ICAgCQkJCXByX2VycigiRmFpbGVk
IHRvIGZpbGwgZHdvcmQgJWx1IFslbHUvJWx1XSB3aXRoIGdwdSAoJXMpIFtmdWxsLXBwZ3R0PyAl
c10sIGVycj0lZFxuIiwKPiAgIAkJCQkgICAgICAgbmR3b3JkcywgZHcsIG1heF9kd29yZHMob2Jq
KSwKPiAgIAkJCQkgICAgICAgY2UtPmVuZ2luZS0+bmFtZSwKPiAtCQkJCSAgICAgICB5ZXNubygh
IXJjdV9hY2Nlc3NfcG9pbnRlcihjdHgtPnZtKSksCj4gKwkJCQkgICAgICAgeWVzbm8oISFjdHhf
dm0oY3R4KSksCj4gICAJCQkJICAgICAgIGVycik7Cj4gICAJCQkJaTkxNV9nZW1fY29udGV4dF91
bmxvY2tfZW5naW5lcyhjdHgpOwo+ICAgCQkJCWdvdG8gb3V0X2ZpbGU7Cj4gQEAgLTE2OTksMTEg
KzE3MDMsMTEgQEAgc3RhdGljIGludCBpZ3Rfdm1faXNvbGF0aW9uKHZvaWQgKmFyZykKPiAgIAl9
Cj4gICAKPiAgIAkvKiBXZSBjYW4gb25seSB0ZXN0IHZtIGlzb2xhdGlvbiwgaWYgdGhlIHZtIGFy
ZSBkaXN0aW5jdCAqLwo+IC0JaWYgKGN0eF9hLT52bSA9PSBjdHhfYi0+dm0pCj4gKwlpZiAoY3R4
X3ZtKGN0eF9hKSA9PSBjdHhfdm0oY3R4X2IpKQo+ICAgCQlnb3RvIG91dF9maWxlOwo+ICAgCj4g
LQl2bV90b3RhbCA9IGN0eF9hLT52bS0+dG90YWw7Cj4gLQlHRU1fQlVHX09OKGN0eF9iLT52bS0+
dG90YWwgIT0gdm1fdG90YWwpOwo+ICsJdm1fdG90YWwgPSBjdHhfdm0oY3R4X2EpLT50b3RhbDsK
PiArCUdFTV9CVUdfT04oY3R4X3ZtKGN0eF9iKS0+dG90YWwgIT0gdm1fdG90YWwpOwo+ICAgCXZt
X3RvdGFsIC09IEk5MTVfR1RUX1BBR0VfU0laRTsKPiAgIAo+ICAgCWNvdW50ID0gMDsKPiAKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
