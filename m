Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E76F186277
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 15:00:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFF7C6E586;
	Thu,  8 Aug 2019 13:00:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C21316E586
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 13:00:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 06:00:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,361,1559545200"; d="scan'208";a="258700542"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 08 Aug 2019 06:00:17 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 666485C0569; Thu,  8 Aug 2019 15:59:41 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190808110612.23539-2-chris@chris-wilson.co.uk>
References: <20190808110612.23539-1-chris@chris-wilson.co.uk>
 <20190808110612.23539-2-chris@chris-wilson.co.uk>
Date: Thu, 08 Aug 2019 15:59:41 +0300
Message-ID: <87o90zhkxu.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Fix up the inverse mapping
 for default ctx->engines[]
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gVGhlIG9y
ZGVyIGluIHdoaWNoIHdlIHN0b3JlIHRoZSBlbmdpbmVzIGluc2lkZSBkZWZhdWx0X2VuZ2luZXMo
KSBmb3IgdGhlCj4gbGVnYWN5IGN0eC0+ZW5naW5lc1tdIGhhcyB0byBtYXRjaCB0aGUgbGVnYWN5
IEk5MTVfRVhFQ19SSU5HIHNlbGVjdG9yCj4gbWFwcGluZyBpbiBleGVjYnVmOjp1c2VyX21hcC4g
SWYgd2UgcHJlc2VudCBWQ1MyIGFzIGJlaW5nIHRoZSBzZWNvbmQKPiBpbnN0YW5jZSBvZiB0aGUg
dmlkZW8gZW5naW5lLCBsZWdhY3kgdXNlcnNwYWNlIGNhbGxzIHRoYXQgSTkxNV9FWEVDX0JTRDIK
PiBhbmQgc28gd2UgbmVlZCB0byBpbnNlcnQgaXQgaW50byB0aGUgc2Vjb25kIHZpZGVvIHNsb3Qu
Cj4KPiB2MjogUmVjb3JkIHRoZSBsZWdhY3kgbWFwcGluZyAoaG9wZWZ1bGx5IHdlIGNhbiByZW1v
dmUgdGhpcyBuZWVkIGluIHRoZQo+IGZ1dHVyZSkKPgo+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEzMjgKPiBGaXhlczogMmVkZGE4MGRi
M2QwICgiZHJtL2k5MTU6IFJlbmFtZSBlbmdpbmVzIHRvIG1hdGNoIHRoZWlyIHVzZXIgaW50ZXJm
YWNlIikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+
Cj4gUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwu
Y29tPiAjdjEKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRl
eHQuYyAgIHwgIDcgKy0tCj4gIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2lndF9nZW1fdXRp
bHMuYyAgICB8ICAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90
eXBlcy5oICB8ICAzICsrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV91
c2VyLmMgICB8IDUyICsrKysrKysrKysrKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZ3RfdHlwZXMuaCAgICAgIHwgIDEgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF9scmMuYyAgICAgICAgfCAgMiArLQo+ICAuLi4vZ3B1L2RybS9pOTE1L2d0L3Nl
bGZ0ZXN0X3dvcmthcm91bmRzLmMgICAgfCAgMiArLQo+ICA3IGZpbGVzIGNoYW5nZWQsIDYzIGlu
c2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9jb250ZXh0LmMKPiBpbmRleCAxYzViYzIxYTgwZmYuLmI0MDdiYWFmMDAxNCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwo+IEBA
IC0xNTksNyArMTU5LDcgQEAgbG9va3VwX3VzZXJfZW5naW5lKHN0cnVjdCBpOTE1X2dlbV9jb250
ZXh0ICpjdHgsCj4gIAkJaWYgKCFlbmdpbmUpCj4gIAkJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwp
Owo+ICAKPiAtCQlpZHggPSBlbmdpbmUtPmlkOwo+ICsJCWlkeCA9IGVuZ2luZS0+bGVnYWN5X2lk
eDsKPiAgCX0gZWxzZSB7Cj4gIAkJaWR4ID0gY2ktPmVuZ2luZV9pbnN0YW5jZTsKPiAgCX0KPiBA
QCAtMjc5LDYgKzI3OSw3IEBAIHN0YXRpYyB2b2lkIGZyZWVfZW5naW5lc19yY3Uoc3RydWN0IHJj
dV9oZWFkICpyY3UpCj4gIAo+ICBzdGF0aWMgc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXMgKmRlZmF1
bHRfZW5naW5lcyhzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4KQoKY2xvbmVfbGVnYWN5X2Vu
Z2luZXMKY3JlYXRlX2d0X2VuZ2luZXMKCnNocnVnCgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFs
YSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cgo+ICB7Cj4gKwljb25zdCBzdHJ1Y3Qg
aW50ZWxfZ3QgKmd0ID0gJmN0eC0+aTkxNS0+Z3Q7Cj4gIAlzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmU7Cj4gIAlzdHJ1Y3QgaTkxNV9nZW1fZW5naW5lcyAqZTsKPiAgCWVudW0gaW50ZWxf
ZW5naW5lX2lkIGlkOwo+IEBAIC0yODgsNyArMjg5LDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X2dl
bV9lbmdpbmVzICpkZWZhdWx0X2VuZ2luZXMoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCkK
PiAgCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKPiAgCj4gIAlpbml0X3JjdV9oZWFkKCZlLT5y
Y3UpOwo+IC0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgY3R4LT5pOTE1LCBpZCkgewo+ICsJZm9y
X2VhY2hfZW5naW5lKGVuZ2luZSwgZ3QsIGlkKSB7Cj4gIAkJc3RydWN0IGludGVsX2NvbnRleHQg
KmNlOwo+ICAKPiAgCQljZSA9IGludGVsX2NvbnRleHRfY3JlYXRlKGN0eCwgZW5naW5lKTsKPiBA
QCAtMjk4LDggKzI5OSw4IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9nZW1fZW5naW5lcyAqZGVmYXVs
dF9lbmdpbmVzKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgpCj4gIAkJfQo+ICAKPiAgCQll
LT5lbmdpbmVzW2lkXSA9IGNlOwo+ICsJCWUtPm51bV9lbmdpbmVzID0gaWQgKyAxOwo+ICAJfQo+
IC0JZS0+bnVtX2VuZ2luZXMgPSBpZDsKPiAgCj4gIAlyZXR1cm4gZTsKPiAgfQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2lndF9nZW1fdXRpbHMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaWd0X2dlbV91dGlscy5jCj4gaW5k
ZXggYjIzMmU2ZDJjZDkyLi45M2M2MzZhZWFlNzMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pZ3RfZ2VtX3V0aWxzLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2lndF9nZW1fdXRpbHMuYwo+IEBAIC0yMyw3ICsyMyw3
IEBAIGlndF9yZXF1ZXN0X2FsbG9jKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsIHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiAgCSAqIEdHVFQgc3BhY2UsIHNvIGRvIHRoaXMg
Zmlyc3QgYmVmb3JlIHdlIHJlc2VydmUgYSBzZXFubyBmb3IKPiAgCSAqIG91cnNlbHZlcy4KPiAg
CSAqLwo+IC0JY2UgPSBpOTE1X2dlbV9jb250ZXh0X2dldF9lbmdpbmUoY3R4LCBlbmdpbmUtPmlk
KTsKPiArCWNlID0gaTkxNV9nZW1fY29udGV4dF9nZXRfZW5naW5lKGN0eCwgZW5naW5lLT5sZWdh
Y3lfaWR4KTsKPiAgCWlmIChJU19FUlIoY2UpKQo+ICAJCXJldHVybiBFUlJfQ0FTVChjZSk7Cj4g
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlw
ZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oCj4gaW5k
ZXggZGFjYWE3MDdjNzk3Li5jNzlmZDFkYWZhODggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaAo+IEBAIC0yNjQsOCArMjY0LDExIEBAIHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3Mgewo+ICAJY2hhciBuYW1lW0lOVEVMX0VOR0lORV9DU19NQVhfTkFN
RV07Cj4gIAo+ICAJZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7Cj4gKwllbnVtIGludGVsX2VuZ2lu
ZV9pZCBsZWdhY3lfaWR4Owo+ICsKPiAgCXVuc2lnbmVkIGludCBod19pZDsKPiAgCXVuc2lnbmVk
IGludCBndWNfaWQ7Cj4gKwo+ICAJaW50ZWxfZW5naW5lX21hc2tfdCBtYXNrOwo+ICAKPiAgCXU4
IGNsYXNzOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmVfdXNlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3VzZXIuYwo+
IGluZGV4IGM0MWFlMDU5ODhhNS4uNzdjZDVkZTgzOTMwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV91c2VyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdXNlci5jCj4gQEAgLTE0Miw4ICsxNDIsNTcgQEAgY29u
c3QgY2hhciAqaW50ZWxfZW5naW5lX2NsYXNzX3JlcHIodTggY2xhc3MpCj4gIAlyZXR1cm4gdWFi
aV9uYW1lc1tjbGFzc107Cj4gIH0KPiAgCj4gK3N0cnVjdCBsZWdhY3lfcmluZyB7Cj4gKwlzdHJ1
Y3QgaW50ZWxfZ3QgKmd0Owo+ICsJdTggY2xhc3M7Cj4gKwl1OCBpbnN0YW5jZTsKPiArfTsKPiAr
Cj4gK3N0YXRpYyBpbnQgbGVnYWN5X3JpbmdfaWR4KGNvbnN0IHN0cnVjdCBsZWdhY3lfcmluZyAq
cmluZykKPiArewo+ICsJc3RhdGljIGNvbnN0IHN0cnVjdCB7Cj4gKwkJdTggYmFzZSwgbWF4Owo+
ICsJfSBtYXBbXSA9IHsKPiArCQlbUkVOREVSX0NMQVNTXSA9IHsgUkNTMCwgMSB9LAo+ICsJCVtD
T1BZX0VOR0lORV9DTEFTU10gPSB7IEJDUzAsIDEgfSwKPiArCQlbVklERU9fREVDT0RFX0NMQVNT
XSA9IHsgVkNTMCwgSTkxNV9NQVhfVkNTIH0sCj4gKwkJW1ZJREVPX0VOSEFOQ0VNRU5UX0NMQVNT
XSA9IHsgVkVDUzAsIEk5MTVfTUFYX1ZFQ1MgfSwKPiArCX07Cj4gKwo+ICsJaWYgKEdFTV9ERUJV
R19XQVJOX09OKHJpbmctPmNsYXNzID49IEFSUkFZX1NJWkUobWFwKSkpCj4gKwkJcmV0dXJuIC0x
Owo+ICsKPiArCWlmIChHRU1fREVCVUdfV0FSTl9PTihyaW5nLT5pbnN0YW5jZSA+PSBtYXBbcmlu
Zy0+Y2xhc3NdLm1heCkpCj4gKwkJcmV0dXJuIC0xOwo+ICsKPiArCXJldHVybiBtYXBbcmluZy0+
Y2xhc3NdLmJhc2UgKyByaW5nLT5pbnN0YW5jZTsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgYWRk
X2xlZ2FjeV9yaW5nKHN0cnVjdCBsZWdhY3lfcmluZyAqcmluZywKPiArCQkJICAgIHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiArewo+ICsJaW50IGlkeDsKPiArCj4gKwlpZiAoZW5n
aW5lLT5ndCAhPSByaW5nLT5ndCB8fCBlbmdpbmUtPmNsYXNzICE9IHJpbmctPmNsYXNzKSB7Cj4g
KwkJcmluZy0+Z3QgPSBlbmdpbmUtPmd0Owo+ICsJCXJpbmctPmNsYXNzID0gZW5naW5lLT5jbGFz
czsKPiArCQlyaW5nLT5pbnN0YW5jZSA9IDA7Cj4gKwl9Cj4gKwo+ICsJaWR4ID0gbGVnYWN5X3Jp
bmdfaWR4KHJpbmcpOwo+ICsJaWYgKHVubGlrZWx5KGlkeCA9PSAtMSkpCj4gKwkJcmV0dXJuOwo+
ICsKPiArCUdFTV9CVUdfT04oaWR4ID49IEFSUkFZX1NJWkUocmluZy0+Z3QtPmVuZ2luZSkpOwo+
ICsJcmluZy0+Z3QtPmVuZ2luZVtpZHhdID0gZW5naW5lOwo+ICsJcmluZy0+aW5zdGFuY2UrKzsK
PiArCj4gKwllbmdpbmUtPmxlZ2FjeV9pZHggPSBpZHg7Cj4gK30KPiArCj4gIHZvaWQgaW50ZWxf
ZW5naW5lc19kcml2ZXJfcmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4g
IHsKPiArCXN0cnVjdCBsZWdhY3lfcmluZyByaW5nID0ge307Cj4gIAl1OCB1YWJpX2luc3RhbmNl
c1s0XSA9IHt9Owo+ICAJc3RydWN0IGxpc3RfaGVhZCAqaXQsICpuZXh0Owo+ICAJc3RydWN0IHJi
X25vZGUgKipwLCAqcHJldjsKPiBAQCAtMTc5LDYgKzIyOCw5IEBAIHZvaWQgaW50ZWxfZW5naW5l
c19kcml2ZXJfcmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIAkJCQkJ
CSAgICBlbmdpbmUtPnVhYmlfY2xhc3MsCj4gIAkJCQkJCSAgICBlbmdpbmUtPnVhYmlfaW5zdGFu
Y2UpICE9IGVuZ2luZSk7Cj4gIAo+ICsJCS8qIEZpeCB1cCB0aGUgbWFwcGluZyB0byBtYXRjaCBk
ZWZhdWx0IGV4ZWNidWY6OnVzZXJfbWFwW10gKi8KPiArCQlhZGRfbGVnYWN5X3JpbmcoJnJpbmcs
IGVuZ2luZSk7Cj4gKwo+ICAJCXByZXYgPSAmZW5naW5lLT51YWJpX25vZGU7Cj4gIAkJcCA9ICZw
cmV2LT5yYl9yaWdodDsKPiAgCX0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZ3RfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5
cGVzLmgKPiBpbmRleCA1ZmQxMWUzNjFkMDMuLjc4OTEwMmY0ZjQ2YiAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaAo+IEBAIC03OCw2ICs3OCw3IEBAIHN0cnVj
dCBpbnRlbF9ndCB7Cj4gIAo+ICAJdTMyIHBtX2d1Y19ldmVudHM7Cj4gIAo+ICsJc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lW0k5MTVfTlVNX0VOR0lORVNdOwo+ICAJc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lX2NsYXNzW01BWF9FTkdJTkVfQ0xBU1MgKyAxXQo+ICAJCQkJCSAg
ICBbTUFYX0VOR0lORV9JTlNUQU5DRSArIDFdOwo+ICB9Owo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NlbGZ0ZXN0X2xyYy5jCj4gaW5kZXggYjI2MjI1NzUxYTU0Li45MWYxYzkwMTI0ODkgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYwo+IEBAIC00OTAsNyArNDkwLDcg
QEAgc3Bpbm5lcl9jcmVhdGVfcmVxdWVzdChzdHJ1Y3QgaWd0X3NwaW5uZXIgKnNwaW4sCj4gIAlz
dHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7Cj4gIAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKPiAg
Cj4gLQljZSA9IGk5MTVfZ2VtX2NvbnRleHRfZ2V0X2VuZ2luZShjdHgsIGVuZ2luZS0+aWQpOwo+
ICsJY2UgPSBpOTE1X2dlbV9jb250ZXh0X2dldF9lbmdpbmUoY3R4LCBlbmdpbmUtPmxlZ2FjeV9p
ZHgpOwo+ICAJaWYgKElTX0VSUihjZSkpCj4gIAkJcmV0dXJuIEVSUl9DQVNUKGNlKTsKPiAgCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRz
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jCj4gaW5k
ZXggNWVmZDJiYjg5ZDVmLi5lYjVkYTAxZDBhMDggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMKPiBAQCAtMjUwLDcgKzI1MCw3IEBAIHN3
aXRjaF90b19zY3JhdGNoX2NvbnRleHQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+
ICAKPiAgCUdFTV9CVUdfT04oaTkxNV9nZW1fY29udGV4dF9pc19iYW5uYWJsZShjdHgpKTsKPiAg
Cj4gLQljZSA9IGk5MTVfZ2VtX2NvbnRleHRfZ2V0X2VuZ2luZShjdHgsIGVuZ2luZS0+aWQpOwo+
ICsJY2UgPSBpOTE1X2dlbV9jb250ZXh0X2dldF9lbmdpbmUoY3R4LCBlbmdpbmUtPmxlZ2FjeV9p
ZHgpOwo+ICAJR0VNX0JVR19PTihJU19FUlIoY2UpKTsKPiAgCj4gIAlycSA9IEVSUl9QVFIoLUVO
T0RFVik7Cj4gLS0gCj4gMi4yMy4wLnJjMQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
