Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0232DFD3
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 16:33:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6345E6E336;
	Wed, 29 May 2019 14:33:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99C426E336;
 Wed, 29 May 2019 14:33:29 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 07:33:29 -0700
X-ExtLoop1: 1
Received: from intel.fi.intel.com (HELO intel.intel) ([10.237.72.194])
 by fmsmga004.fm.intel.com with ESMTP; 29 May 2019 07:33:27 -0700
Date: Wed, 29 May 2019 17:33:28 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190529143328.GD3552@intel.intel>
References: <20190529132421.27905-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529132421.27905-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib: Fix
 intel_get_current_physical_engine() iterator
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpPbiBXZWQsIE1heSAyOSwgMjAxOSBhdCAwMjoyNDoyMVBNICswMTAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gSWYgd2UgcnVuIG91dCBvZiBlbmdpbmVzLCBpbnRlbF9nZXRfY3Vy
cmVudF9waHlzaWNhbF9lbmdpbmUoKSBkZWdyYWRlcwo+IGludG8gYW4gaW5maW5pdGUgbG9vcCBh
cyBhbHRob3VnaCBpdCBhZHZhbmNlZCB0aGUgaXRlcmF0b3IsIGl0IGRpZCBub3QKPiB1cGRhdGUg
aXRzIGxvY2FsIGVuZ2luZSBwb2ludGVyLgoKVGhlIHBhdGNoIGxvb2tzIGxpa2UgaXQgZG9lcyBl
dmVyeXRoaW5nICJidXQiIHdoYXQgeW91IHNheSBpbiB0aGUKY29tbWl0IGxvZyA6KQoKPiAKPiBS
ZXBvcnRlZC1ieTogUGV0cmkgTGF0dmFsYSA8cGV0cmkubGF0dmFsYUBpbnRlbC5jb20+Cj4gRml4
ZXM6IDE3Yzc3ZTdiMGMzYyAoImxpYi9pOTE1OiBhZGQgZ2VtX2VuZ2luZV90b3BvbG9neSBsaWJy
YXJ5IGFuZCBmb3JfZWFjaCBsb29wIGRlZmluaXRpb24iKQo+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBBbmRpIFNoeXRpIDxhbmRp
LnNoeXRpQGludGVsLmNvbT4KPiBDYzogUGV0cmkgTGF0dmFsYSA8cGV0cmkubGF0dmFsYUBpbnRl
bC5jb20+Cj4gLS0tCj4gIGxpYi9pOTE1L2dlbV9lbmdpbmVfdG9wb2xvZ3kuYyB8IDQ5ICsrKysr
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgbGliL2k5MTUvZ2VtX2VuZ2luZV90b3Bv
bG9neS5oIHwgMzYgKysrKysrKysrKysrKysrKy0tLS0tLS0tLQo+ICAyIGZpbGVzIGNoYW5nZWQs
IDI5IGluc2VydGlvbnMoKyksIDU2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9saWIv
aTkxNS9nZW1fZW5naW5lX3RvcG9sb2d5LmMgYi9saWIvaTkxNS9nZW1fZW5naW5lX3RvcG9sb2d5
LmMKPiBpbmRleCBmZGQxYjk1MTYuLjE3ZjY3Nzg2ZiAxMDA2NDQKPiAtLS0gYS9saWIvaTkxNS9n
ZW1fZW5naW5lX3RvcG9sb2d5LmMKPiArKysgYi9saWIvaTkxNS9nZW1fZW5naW5lX3RvcG9sb2d5
LmMKPiBAQCAtODEsMTEgKzgxLDEwIEBAIHN0YXRpYyB2b2lkIGN0eF9tYXBfZW5naW5lcyhpbnQg
ZmQsIHN0cnVjdCBpbnRlbF9lbmdpbmVfZGF0YSAqZWQsCj4gIAkJCSAgICBzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX2NvbnRleHRfcGFyYW0gKnBhcmFtKQo+ICB7Cj4gIAlzdHJ1Y3QgaTkxNV9jb250ZXh0
X3BhcmFtX2VuZ2luZXMgKmVuZ2luZXMgPQo+IC0JCQlmcm9tX3VzZXJfcG9pbnRlcihwYXJhbS0+
dmFsdWUpOwo+ICsJCWZyb21fdXNlcl9wb2ludGVyKHBhcmFtLT52YWx1ZSk7Cj4gIAlpbnQgaSA9
IDA7Cj4gIAo+IC0JZm9yICh0eXBlb2YoZW5naW5lcy0+ZW5naW5lc1swXSkgKnAgPQo+IC0JICAg
ICAmZW5naW5lcy0+ZW5naW5lc1swXTsKPiArCWZvciAoc3RydWN0IGk5MTVfZW5naW5lX2NsYXNz
X2luc3RhbmNlICpwID0gJmVuZ2luZXMtPmVuZ2luZXNbMF07Cj4gIAkgICAgIGkgPCBlZC0+bmVu
Z2luZXM7IGkrKywgcCsrKSB7Cj4gIAkJcC0+ZW5naW5lX2NsYXNzID0gZWQtPmVuZ2luZXNbaV0u
Y2xhc3M7Cj4gIAkJcC0+ZW5naW5lX2luc3RhbmNlID0gZWQtPmVuZ2luZXNbaV0uaW5zdGFuY2U7
Cj4gQEAgLTEzNiw3ICsxMzUsNyBAQCBzdGF0aWMgdm9pZCBxdWVyeV9lbmdpbmVfbGlzdChpbnQg
ZmQsIHN0cnVjdCBpbnRlbF9lbmdpbmVfZGF0YSAqZWQpCj4gIHsKPiAgCXVpbnQ4X3QgYnVmZltT
SVpFT0ZfUVVFUlldID0geyB9Owo+ICAJc3RydWN0IGRybV9pOTE1X3F1ZXJ5X2VuZ2luZV9pbmZv
ICpxdWVyeV9lbmdpbmUgPQo+IC0JCQkoc3RydWN0IGRybV9pOTE1X3F1ZXJ5X2VuZ2luZV9pbmZv
ICopIGJ1ZmY7Cj4gKwkJKHN0cnVjdCBkcm1faTkxNV9xdWVyeV9lbmdpbmVfaW5mbyAqKWJ1ZmY7
CgpVbnRpbCBoZXJlLCBub3RoaW5nIGlzIHJlbGF0ZWQgdG8gdGhlIGRlc2NyaXB0aW9uIGluIHRo
ZSBjb21taXQKbG9nLiBDYW4gd2UgcHV0IHRoZSBhYm92ZSBpbiBhIGRpZmZlcmVudCBwYXRjaD8K
Cj4gLXN0cnVjdCBpbnRlbF9leGVjdXRpb25fZW5naW5lMiAqCj4gLWludGVsX2dldF9jdXJyZW50
X2VuZ2luZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2RhdGEgKmVkKQo+IC17Cj4gLQlpZiAoIWVkLT5u
KQo+IC0JCWVkLT5jdXJyZW50X2VuZ2luZSA9ICZlZC0+ZW5naW5lc1swXTsKPiAtCWVsc2UgaWYg
KGVkLT5uID49IGVkLT5uZW5naW5lcykKPiAtCQllZC0+Y3VycmVudF9lbmdpbmUgPSBOVUxMOwo+
IC0KPiAtCXJldHVybiBlZC0+Y3VycmVudF9lbmdpbmU7Cj4gLX0KPiAtCj4gLXZvaWQgaW50ZWxf
bmV4dF9lbmdpbmUoc3RydWN0IGludGVsX2VuZ2luZV9kYXRhICplZCkKPiAtewo+IC0JaWYgKGVk
LT5uICsgMSA8IGVkLT5uZW5naW5lcykgewo+IC0JCWVkLT5uKys7Cj4gLQkJZWQtPmN1cnJlbnRf
ZW5naW5lID0gJmVkLT5lbmdpbmVzW2VkLT5uXTsKPiAtCX0gZWxzZSB7Cj4gLQkJZWQtPm4gPSBl
ZC0+bmVuZ2luZXM7Cj4gLQkJZWQtPmN1cnJlbnRfZW5naW5lID0gTlVMTDsKPiAtCX0KPiAtfQo+
IC0KPiAtc3RydWN0IGludGVsX2V4ZWN1dGlvbl9lbmdpbmUyICoKPiAtaW50ZWxfZ2V0X2N1cnJl
bnRfcGh5c2ljYWxfZW5naW5lKHN0cnVjdCBpbnRlbF9lbmdpbmVfZGF0YSAqZWQpCj4gLXsKPiAt
CXN0cnVjdCBpbnRlbF9leGVjdXRpb25fZW5naW5lMiAqZTsKPiAtCj4gLQlmb3IgKGUgPSBpbnRl
bF9nZXRfY3VycmVudF9lbmdpbmUoZWQpOwo+IC0JICAgICBlICYmIGUtPmlzX3ZpcnR1YWw7Cj4g
LQkgICAgIGludGVsX25leHRfZW5naW5lKGVkKSkKPiAtCQk7Cj4gLQo+IC0JcmV0dXJuIGU7Cj4g
LX0KPiAtCgpNb3ZpbmcgdGhlc2UgZnVuY3Rpb25zIHRvIGlubGluZSBpbiB0aGUgaGVhZGVyIGZp
bGUgaXMgdW5yZWxhdGVkCnRvIHRoZSBwYXRjaCB0b3BpYywgcmlnaHQ/Cgo+ICBzdGF0aWMgaW50
IGdlbV90b3BvbG9neV9nZXRfcGFyYW0oaW50IGZkLAo+ICAJCQkJICBzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX2NvbnRleHRfcGFyYW0gKnApCj4gIHsKPiBAQCAtMTk3LDEwICsxNjEsOSBAQCBzdGF0aWMg
aW50IGdlbV90b3BvbG9neV9nZXRfcGFyYW0oaW50IGZkLAo+ICAJCXJldHVybiAwOwo+ICAKPiAg
CS8qIHNpemUgd2lsbCBzdG9yZSB0aGUgZW5naW5lIGNvdW50ICovCj4gLQlwLT5zaXplID0gKHAt
PnNpemUgLSBzaXplb2Yoc3RydWN0IGk5MTVfY29udGV4dF9wYXJhbV9lbmdpbmVzKSkgLwo+IC0J
CSAgKG9mZnNldG9mKHN0cnVjdCBpOTE1X2NvbnRleHRfcGFyYW1fZW5naW5lcywKPiAtCQkJICAg
IGVuZ2luZXNbMV0pIC0KPiAtCQkgIHNpemVvZihzdHJ1Y3QgaTkxNV9jb250ZXh0X3BhcmFtX2Vu
Z2luZXMpKTsKPiArCWlndF9hc3NlcnQocC0+c2l6ZSA+PSBzaXplb2Yoc3RydWN0IGk5MTVfY29u
dGV4dF9wYXJhbV9lbmdpbmVzKSk7Cj4gKwlwLT5zaXplIC09IHNpemVvZihzdHJ1Y3QgaTkxNV9j
b250ZXh0X3BhcmFtX2VuZ2luZXMpOwo+ICsJcC0+c2l6ZSAvPSBzaXplb2Yoc3RydWN0IGk5MTVf
ZW5naW5lX2NsYXNzX2luc3RhbmNlKTsKClRoaXMgaXMgYWxzbyB1bnJlbGF0ZWQuCgo+ICBzdHJ1
Y3QgaW50ZWxfZW5naW5lX2RhdGEgewo+IC0JdWludDMyX3QgbmVuZ2luZXM7Cj4gLQl1aW50MzJf
dCBuOwo+IC0Jc3RydWN0IGludGVsX2V4ZWN1dGlvbl9lbmdpbmUyICpjdXJyZW50X2VuZ2luZTsK
CnNvIHdlIGRvbid0IGhhdmUgYW55bW9yZSBjdXJyZW50X2VuZ2luZS4uLiBJIGhhZCB0aGUgZmVl
bGluZyB0aGUKVHZydGtvIHJlYWxseSB3YW50ZWQgaXQgOikKCj4gKwl1aW50MzJfdCBuZW5naW5l
cywgY3VyOwoKWyBzb21lIGNvcHkgcGFzdGUgXQoKPiAtCXVpbnQzMl90IG5lbmdpbmVzOwo+IC0J
dWludDMyX3QgbjsKPiArCXVpbnQzMl90IG5lbmdpbmVzLCBjdXI7CgptbWhoaC4uLiB3aHk/Cgo+
ICtzdGF0aWMgaW5saW5lIHN0cnVjdCBpbnRlbF9leGVjdXRpb25fZW5naW5lMiAqCj4gK2ludGVs
X2dldF9jdXJyZW50X2VuZ2luZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2RhdGEgKmVkKQo+ICt7Cj4g
KwlpZiAoZWQtPmN1ciA+PSBlZC0+bmVuZ2luZXMpCj4gKwkJcmV0dXJuIE5VTEw7Cj4gKwo+ICsJ
cmV0dXJuICZlZC0+ZW5naW5lc1tlZC0+Y3VyXTsKPiArfQo+ICsKPiArc3RhdGljIGlubGluZSBz
dHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZTIgKgo+ICtpbnRlbF9nZXRfY3VycmVudF9waHlz
aWNhbF9lbmdpbmUoc3RydWN0IGludGVsX2VuZ2luZV9kYXRhICplZCkKPiArewo+ICsJc3RydWN0
IGludGVsX2V4ZWN1dGlvbl9lbmdpbmUyICplOwo+ICsKPiArCWZvciAoOyAoZSA9IGludGVsX2dl
dF9jdXJyZW50X2VuZ2luZShlZCkpICYmIGUtPmlzX3ZpcnR1YWw7IGVkLT5jdXIrKykKPiArCQk7
CgpUaGUgYWJvdmUgdHdvIGxpbmVzIGFyZSB0aGUgb25seSBvbmVzIHJlbGF0ZWQgdG8gdGhlIGNv
bW1pdAptZXNzYWdlLiAgQ2FuIHdlIGtlZXAgdGhpcyBwYXRjaCBzbWFsbGVyPyBhbmQgcHV0IGNv
c21ldGljcyBpbiBhCmRpZmZlcmVudCBwYXRjaHNldD8KClRoYW5rcywKQW5kaQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
