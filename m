Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DAB63850
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 16:59:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 670E76E073;
	Tue,  9 Jul 2019 14:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFA496E073
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 14:59:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 07:59:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="317050708"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 09 Jul 2019 07:59:50 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id A2FE05C0307; Tue,  9 Jul 2019 17:59:38 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190707210024.26192-4-chris@chris-wilson.co.uk>
References: <20190707210024.26192-1-chris@chris-wilson.co.uk>
 <20190707210024.26192-4-chris@chris-wilson.co.uk>
Date: Tue, 09 Jul 2019 17:59:38 +0300
Message-ID: <878st71cf9.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915/gtt: Reorder gen8 ppgtt
 free/clear/alloc
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gSW4gcHJl
cGFyYXRpb24gZm9yIHJlZmFjdG9yaW5nIHRoZSBmcmVlL2NsZWFyL2FsbG9jLCBmaXJzdCBtb3Zl
IHRoZSBjb2RlCj4gYXJvdW5kIHNvIHRoYXQgd2UgY2FuIGF2b2lkIGZvcndhcmQgZGVjbGFyYXRp
b25zIGluIHRoZSBuZXh0IHNldCBvZgo+IHBhdGNoZXMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KCkRpZmYgZ290IGZ1bmt5IGF0IHNv
bWUgcG9pbnQgYnV0IGFmdGVyIGFwcGx5aW5nCmVuZCByZXN1bHQgbG9va2VkIGdvb2QuCgpSZXZp
ZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDY3MyArKysrKysr
KysrKysrKy0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzMzcgaW5zZXJ0aW9ucygr
KSwgMzM2IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiBp
bmRleCAxZmE5M2Y1Njc5MmUuLmRhNGRiNzZjZTA1NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2d0dC5jCj4gQEAgLTgzMSw2ICs4MzEsMTA0IEBAIHN0YXRpYyB2b2lkIG1hcmtfdGxi
c19kaXJ0eShzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQpCj4gIAlwcGd0dC0+cGRfZGlydHlfZW5n
aW5lcyA9IEFMTF9FTkdJTkVTOwo+ICB9Cj4gIAo+ICtzdGF0aWMgaW50IGdlbjhfcHBndHRfbm90
aWZ5X3ZndChzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQsIGJvb2wgY3JlYXRlKQo+ICt7Cj4gKwlz
dHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSA9ICZwcGd0dC0+dm07Cj4gKwlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB2bS0+aTkxNTsKPiArCWVudW0gdmd0X2cydl90eXBl
IG1zZzsKPiArCWludCBpOwo+ICsKPiArCWlmIChjcmVhdGUpCj4gKwkJYXRvbWljX2luYyhweF91
c2VkKHBwZ3R0LT5wZCkpOyAvKiBuZXZlciByZW1vdmUgKi8KPiArCWVsc2UKPiArCQlhdG9taWNf
ZGVjKHB4X3VzZWQocHBndHQtPnBkKSk7Cj4gKwo+ICsJaWYgKGk5MTVfdm1faXNfNGx2bCh2bSkp
IHsKPiArCQljb25zdCB1NjQgZGFkZHIgPSBweF9kbWEocHBndHQtPnBkKTsKPiArCj4gKwkJSTkx
NV9XUklURSh2Z3RpZl9yZWcocGRwWzBdLmxvKSwgbG93ZXJfMzJfYml0cyhkYWRkcikpOwo+ICsJ
CUk5MTVfV1JJVEUodmd0aWZfcmVnKHBkcFswXS5oaSksIHVwcGVyXzMyX2JpdHMoZGFkZHIpKTsK
PiArCj4gKwkJbXNnID0gKGNyZWF0ZSA/IFZHVF9HMlZfUFBHVFRfTDRfUEFHRV9UQUJMRV9DUkVB
VEUgOgo+ICsJCQkJVkdUX0cyVl9QUEdUVF9MNF9QQUdFX1RBQkxFX0RFU1RST1kpOwo+ICsJfSBl
bHNlIHsKPiArCQlmb3IgKGkgPSAwOyBpIDwgR0VOOF8zTFZMX1BEUEVTOyBpKyspIHsKPiArCQkJ
Y29uc3QgdTY0IGRhZGRyID0gaTkxNV9wYWdlX2Rpcl9kbWFfYWRkcihwcGd0dCwgaSk7Cj4gKwo+
ICsJCQlJOTE1X1dSSVRFKHZndGlmX3JlZyhwZHBbaV0ubG8pLCBsb3dlcl8zMl9iaXRzKGRhZGRy
KSk7Cj4gKwkJCUk5MTVfV1JJVEUodmd0aWZfcmVnKHBkcFtpXS5oaSksIHVwcGVyXzMyX2JpdHMo
ZGFkZHIpKTsKPiArCQl9Cj4gKwo+ICsJCW1zZyA9IChjcmVhdGUgPyBWR1RfRzJWX1BQR1RUX0wz
X1BBR0VfVEFCTEVfQ1JFQVRFIDoKPiArCQkJCVZHVF9HMlZfUFBHVFRfTDNfUEFHRV9UQUJMRV9E
RVNUUk9ZKTsKPiArCX0KPiArCj4gKwlJOTE1X1dSSVRFKHZndGlmX3JlZyhnMnZfbm90aWZ5KSwg
bXNnKTsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgZ2VuOF9mcmVl
X3BhZ2VfdGFibGVzKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAo+ICsJCQkJICBzdHJ1
Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAqcGQpCj4gK3sKPiArCWludCBpOwo+ICsKPiArCWZvciAo
aSA9IDA7IGkgPCBJOTE1X1BERVM7IGkrKykgewo+ICsJCWlmIChwZC0+ZW50cnlbaV0gIT0gJnZt
LT5zY3JhdGNoX3B0KQo+ICsJCQlmcmVlX3BkKHZtLCBwZC0+ZW50cnlbaV0pOwo+ICsJfQo+ICt9
Cj4gKwo+ICtzdGF0aWMgdm9pZCBnZW44X3BwZ3R0X2NsZWFudXBfM2x2bChzdHJ1Y3QgaTkxNV9h
ZGRyZXNzX3NwYWNlICp2bSwKPiArCQkJCSAgICBzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAq
cGRwKQo+ICt7Cj4gKwljb25zdCB1bnNpZ25lZCBpbnQgcGRwZXMgPSBpOTE1X3BkcGVzX3Blcl9w
ZHAodm0pOwo+ICsJaW50IGk7Cj4gKwo+ICsJZm9yIChpID0gMDsgaSA8IHBkcGVzOyBpKyspIHsK
PiArCQlpZiAocGRwLT5lbnRyeVtpXSA9PSAmdm0tPnNjcmF0Y2hfcGQpCj4gKwkJCWNvbnRpbnVl
Owo+ICsKPiArCQlnZW44X2ZyZWVfcGFnZV90YWJsZXModm0sIHBkcC0+ZW50cnlbaV0pOwo+ICsJ
CWZyZWVfcGQodm0sIHBkcC0+ZW50cnlbaV0pOwo+ICsJfQo+ICsKPiArCWZyZWVfcHgodm0sIHBk
cCk7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIGdlbjhfcHBndHRfY2xlYW51cF80bHZsKHN0cnVj
dCBpOTE1X3BwZ3R0ICpwcGd0dCkKPiArewo+ICsJc3RydWN0IGk5MTVfcGFnZV9kaXJlY3Rvcnkg
KiBjb25zdCBwbWw0ID0gcHBndHQtPnBkOwo+ICsJaW50IGk7Cj4gKwo+ICsJZm9yIChpID0gMDsg
aSA8IEdFTjhfUE1MNEVTX1BFUl9QTUw0OyBpKyspIHsKPiArCQlzdHJ1Y3QgaTkxNV9wYWdlX2Rp
cmVjdG9yeSAqcGRwID0gaTkxNV9wZHBfZW50cnkocG1sNCwgaSk7Cj4gKwo+ICsJCWlmIChweF9i
YXNlKHBkcCkgPT0gJnBwZ3R0LT52bS5zY3JhdGNoX3BkcCkKPiArCQkJY29udGludWU7Cj4gKwo+
ICsJCWdlbjhfcHBndHRfY2xlYW51cF8zbHZsKCZwcGd0dC0+dm0sIHBkcCk7Cj4gKwl9Cj4gKwo+
ICsJZnJlZV9weCgmcHBndHQtPnZtLCBwbWw0KTsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgZ2Vu
OF9wcGd0dF9jbGVhbnVwKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtKQo+ICt7Cj4gKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHZtLT5pOTE1Owo+ICsJc3RydWN0IGk5MTVf
cHBndHQgKnBwZ3R0ID0gaTkxNV92bV90b19wcGd0dCh2bSk7Cj4gKwo+ICsJaWYgKGludGVsX3Zn
cHVfYWN0aXZlKGk5MTUpKQo+ICsJCWdlbjhfcHBndHRfbm90aWZ5X3ZndChwcGd0dCwgZmFsc2Up
Owo+ICsKPiArCWlmIChpOTE1X3ZtX2lzXzRsdmwodm0pKQo+ICsJCWdlbjhfcHBndHRfY2xlYW51
cF80bHZsKHBwZ3R0KTsKPiArCWVsc2UKPiArCQlnZW44X3BwZ3R0X2NsZWFudXBfM2x2bCgmcHBn
dHQtPnZtLCBwcGd0dC0+cGQpOwo+ICsKPiArCWZyZWVfc2NyYXRjaCh2bSk7Cj4gK30KPiArCj4g
IC8qIFJlbW92ZXMgZW50cmllcyBmcm9tIGEgc2luZ2xlIHBhZ2UgdGFibGUsIHJlbGVhc2luZyBp
dCBpZiBpdCdzIGVtcHR5Lgo+ICAgKiBDYWxsZXIgY2FuIHVzZSB0aGUgcmV0dXJuIHZhbHVlIHRv
IHVwZGF0ZSBoaWdoZXItbGV2ZWwgZW50cmllcy4KPiAgICovCj4gQEAgLTkxNyw5NSArMTAxNSwy
NjUgQEAgc3RhdGljIHZvaWQgZ2VuOF9wcGd0dF9jbGVhcl80bHZsKHN0cnVjdCBpOTE1X2FkZHJl
c3Nfc3BhY2UgKnZtLAo+ICAJfQo+ICB9Cj4gIAo+IC1zdGF0aWMgaW5saW5lIHN0cnVjdCBzZ3Rf
ZG1hIHsKPiAtCXN0cnVjdCBzY2F0dGVybGlzdCAqc2c7Cj4gLQlkbWFfYWRkcl90IGRtYSwgbWF4
Owo+IC19IHNndF9kbWEoc3RydWN0IGk5MTVfdm1hICp2bWEpIHsKPiAtCXN0cnVjdCBzY2F0dGVy
bGlzdCAqc2cgPSB2bWEtPnBhZ2VzLT5zZ2w7Cj4gLQlkbWFfYWRkcl90IGFkZHIgPSBzZ19kbWFf
YWRkcmVzcyhzZyk7Cj4gLQlyZXR1cm4gKHN0cnVjdCBzZ3RfZG1hKSB7IHNnLCBhZGRyLCBhZGRy
ICsgc2ctPmxlbmd0aCB9Owo+IC19Cj4gLQo+IC1zdHJ1Y3QgZ2VuOF9pbnNlcnRfcHRlIHsKPiAt
CXUxNiBwbWw0ZTsKPiAtCXUxNiBwZHBlOwo+IC0JdTE2IHBkZTsKPiAtCXUxNiBwdGU7Cj4gLX07
Cj4gIAo+IC1zdGF0aWMgX19hbHdheXNfaW5saW5lIHN0cnVjdCBnZW44X2luc2VydF9wdGUgZ2Vu
OF9pbnNlcnRfcHRlKHU2NCBzdGFydCkKPiArc3RhdGljIGludCBnZW44X3BwZ3R0X2FsbG9jX3Bk
KHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAo+ICsJCQkgICAgICAgc3RydWN0IGk5MTVf
cGFnZV9kaXJlY3RvcnkgKnBkLAo+ICsJCQkgICAgICAgdTY0IHN0YXJ0LCB1NjQgbGVuZ3RoKQo+
ICB7Cj4gLQlyZXR1cm4gKHN0cnVjdCBnZW44X2luc2VydF9wdGUpIHsKPiAtCQkgZ2VuOF9wbWw0
ZV9pbmRleChzdGFydCksCj4gLQkJIGdlbjhfcGRwZV9pbmRleChzdGFydCksCj4gLQkJIGdlbjhf
cGRlX2luZGV4KHN0YXJ0KSwKPiAtCQkgZ2VuOF9wdGVfaW5kZXgoc3RhcnQpLAo+IC0JfTsKPiAt
fQo+ICsJc3RydWN0IGk5MTVfcGFnZV90YWJsZSAqcHQsICphbGxvYyA9IE5VTEw7Cj4gKwl1NjQg
ZnJvbSA9IHN0YXJ0Owo+ICsJdW5zaWduZWQgaW50IHBkZTsKPiArCWludCByZXQgPSAwOwo+ICAK
PiAtc3RhdGljIF9fYWx3YXlzX2lubGluZSBib29sCj4gLWdlbjhfcHBndHRfaW5zZXJ0X3B0ZV9l
bnRyaWVzKHN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dCwKPiAtCQkJICAgICAgc3RydWN0IGk5MTVf
cGFnZV9kaXJlY3RvcnkgKnBkcCwKPiAtCQkJICAgICAgc3RydWN0IHNndF9kbWEgKml0ZXIsCj4g
LQkJCSAgICAgIHN0cnVjdCBnZW44X2luc2VydF9wdGUgKmlkeCwKPiAtCQkJICAgICAgZW51bSBp
OTE1X2NhY2hlX2xldmVsIGNhY2hlX2xldmVsLAo+IC0JCQkgICAgICB1MzIgZmxhZ3MpCj4gLXsK
PiAtCXN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0b3J5ICpwZDsKPiAtCWNvbnN0IGdlbjhfcHRlX3Qg
cHRlX2VuY29kZSA9IGdlbjhfcHRlX2VuY29kZSgwLCBjYWNoZV9sZXZlbCwgZmxhZ3MpOwo+IC0J
Z2VuOF9wdGVfdCAqdmFkZHI7Cj4gLQlib29sIHJldDsKPiArCXNwaW5fbG9jaygmcGQtPmxvY2sp
Owo+ICsJZ2VuOF9mb3JfZWFjaF9wZGUocHQsIHBkLCBzdGFydCwgbGVuZ3RoLCBwZGUpIHsKPiAr
CQljb25zdCBpbnQgY291bnQgPSBnZW44X3B0ZV9jb3VudChzdGFydCwgbGVuZ3RoKTsKPiAgCj4g
LQlHRU1fQlVHX09OKGlkeC0+cGRwZSA+PSBpOTE1X3BkcGVzX3Blcl9wZHAoJnBwZ3R0LT52bSkp
Owo+IC0JcGQgPSBpOTE1X3BkX2VudHJ5KHBkcCwgaWR4LT5wZHBlKTsKPiAtCXZhZGRyID0ga21h
cF9hdG9taWNfcHgoaTkxNV9wdF9lbnRyeShwZCwgaWR4LT5wZGUpKTsKPiAtCWRvIHsKPiAtCQl2
YWRkcltpZHgtPnB0ZV0gPSBwdGVfZW5jb2RlIHwgaXRlci0+ZG1hOwo+ICsJCWlmIChweF9iYXNl
KHB0KSA9PSAmdm0tPnNjcmF0Y2hfcHQpIHsKPiArCQkJc3Bpbl91bmxvY2soJnBkLT5sb2NrKTsK
PiAgCj4gLQkJaXRlci0+ZG1hICs9IEk5MTVfR1RUX1BBR0VfU0laRTsKPiAtCQlpZiAoaXRlci0+
ZG1hID49IGl0ZXItPm1heCkgewo+IC0JCQlpdGVyLT5zZyA9IF9fc2dfbmV4dChpdGVyLT5zZyk7
Cj4gLQkJCWlmICghaXRlci0+c2cpIHsKPiAtCQkJCXJldCA9IGZhbHNlOwo+IC0JCQkJYnJlYWs7
Cj4gKwkJCXB0ID0gZmV0Y2hfYW5kX3plcm8oJmFsbG9jKTsKPiArCQkJaWYgKCFwdCkKPiArCQkJ
CXB0ID0gYWxsb2NfcHQodm0pOwo+ICsJCQlpZiAoSVNfRVJSKHB0KSkgewo+ICsJCQkJcmV0ID0g
UFRSX0VSUihwdCk7Cj4gKwkJCQlnb3RvIHVud2luZDsKPiAgCQkJfQo+ICAKPiAtCQkJaXRlci0+
ZG1hID0gc2dfZG1hX2FkZHJlc3MoaXRlci0+c2cpOwo+IC0JCQlpdGVyLT5tYXggPSBpdGVyLT5k
bWEgKyBpdGVyLT5zZy0+bGVuZ3RoOwo+ICsJCQlpZiAoY291bnQgPCBHRU44X1BURVMgfHwgaW50
ZWxfdmdwdV9hY3RpdmUodm0tPmk5MTUpKQo+ICsJCQkJZmlsbF9weChwdCwgdm0tPnNjcmF0Y2hf
cHRlKTsKPiArCj4gKwkJCXNwaW5fbG9jaygmcGQtPmxvY2spOwo+ICsJCQlpZiAocGQtPmVudHJ5
W3BkZV0gPT0gJnZtLT5zY3JhdGNoX3B0KSB7Cj4gKwkJCQlzZXRfcGRfZW50cnkocGQsIHBkZSwg
cHQpOwo+ICsJCQl9IGVsc2Ugewo+ICsJCQkJYWxsb2MgPSBwdDsKPiArCQkJCXB0ID0gcGQtPmVu
dHJ5W3BkZV07Cj4gKwkJCX0KPiAgCQl9Cj4gIAo+IC0JCWlmICgrK2lkeC0+cHRlID09IEdFTjhf
UFRFUykgewo+IC0JCQlpZHgtPnB0ZSA9IDA7Cj4gKwkJYXRvbWljX2FkZChjb3VudCwgJnB0LT51
c2VkKTsKPiArCX0KPiArCXNwaW5fdW5sb2NrKCZwZC0+bG9jayk7Cj4gKwlnb3RvIG91dDsKPiAg
Cj4gLQkJCWlmICgrK2lkeC0+cGRlID09IEk5MTVfUERFUykgewo+IC0JCQkJaWR4LT5wZGUgPSAw
Owo+ICt1bndpbmQ6Cj4gKwlnZW44X3BwZ3R0X2NsZWFyX3BkKHZtLCBwZCwgZnJvbSwgc3RhcnQg
LSBmcm9tKTsKPiArb3V0Ogo+ICsJaWYgKGFsbG9jKQo+ICsJCWZyZWVfcHgodm0sIGFsbG9jKTsK
PiArCXJldHVybiByZXQ7Cj4gK30KPiAgCj4gLQkJCQkvKiBMaW1pdGVkIGJ5IHNnIGxlbmd0aCBm
b3IgM2x2bCAqLwo+IC0JCQkJaWYgKCsraWR4LT5wZHBlID09IEdFTjhfUE1MNEVTX1BFUl9QTUw0
KSB7Cj4gLQkJCQkJaWR4LT5wZHBlID0gMDsKPiAtCQkJCQlyZXQgPSB0cnVlOwo+IC0JCQkJCWJy
ZWFrOwo+IC0JCQkJfQo+ICtzdGF0aWMgaW50IGdlbjhfcHBndHRfYWxsb2NfcGRwKHN0cnVjdCBp
OTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAo+ICsJCQkJc3RydWN0IGk5MTVfcGFnZV9kaXJlY3Rvcnkg
KnBkcCwKPiArCQkJCXU2NCBzdGFydCwgdTY0IGxlbmd0aCkKPiArewo+ICsJc3RydWN0IGk5MTVf
cGFnZV9kaXJlY3RvcnkgKnBkLCAqYWxsb2MgPSBOVUxMOwo+ICsJdTY0IGZyb20gPSBzdGFydDsK
PiArCXVuc2lnbmVkIGludCBwZHBlOwo+ICsJaW50IHJldCA9IDA7Cj4gIAo+IC0JCQkJR0VNX0JV
R19PTihpZHgtPnBkcGUgPj0gaTkxNV9wZHBlc19wZXJfcGRwKCZwcGd0dC0+dm0pKTsKPiAtCQkJ
CXBkID0gcGRwLT5lbnRyeVtpZHgtPnBkcGVdOwo+ICsJc3Bpbl9sb2NrKCZwZHAtPmxvY2spOwo+
ICsJZ2VuOF9mb3JfZWFjaF9wZHBlKHBkLCBwZHAsIHN0YXJ0LCBsZW5ndGgsIHBkcGUpIHsKPiAr
CQlpZiAocHhfYmFzZShwZCkgPT0gJnZtLT5zY3JhdGNoX3BkKSB7Cj4gKwkJCXNwaW5fdW5sb2Nr
KCZwZHAtPmxvY2spOwo+ICsKPiArCQkJcGQgPSBmZXRjaF9hbmRfemVybygmYWxsb2MpOwo+ICsJ
CQlpZiAoIXBkKQo+ICsJCQkJcGQgPSBhbGxvY19wZCh2bSk7Cj4gKwkJCWlmIChJU19FUlIocGQp
KSB7Cj4gKwkJCQlyZXQgPSBQVFJfRVJSKHBkKTsKPiArCQkJCWdvdG8gdW53aW5kOwo+ICAJCQl9
Cj4gIAo+IC0JCQlrdW5tYXBfYXRvbWljKHZhZGRyKTsKPiAtCQkJdmFkZHIgPSBrbWFwX2F0b21p
Y19weChpOTE1X3B0X2VudHJ5KHBkLCBpZHgtPnBkZSkpOwo+ICsJCQlpbml0X3BkKHBkLCAmdm0t
PnNjcmF0Y2hfcHQpOwo+ICsKPiArCQkJc3Bpbl9sb2NrKCZwZHAtPmxvY2spOwo+ICsJCQlpZiAo
cGRwLT5lbnRyeVtwZHBlXSA9PSAmdm0tPnNjcmF0Y2hfcGQpIHsKPiArCQkJCXNldF9wZF9lbnRy
eShwZHAsIHBkcGUsIHBkKTsKPiArCQkJfSBlbHNlIHsKPiArCQkJCWFsbG9jID0gcGQ7Cj4gKwkJ
CQlwZCA9IHBkcC0+ZW50cnlbcGRwZV07Cj4gKwkJCX0KPiAgCQl9Cj4gLQl9IHdoaWxlICgxKTsK
PiAtCWt1bm1hcF9hdG9taWModmFkZHIpOwo+ICsJCWF0b21pY19pbmMocHhfdXNlZChwZCkpOwo+
ICsJCXNwaW5fdW5sb2NrKCZwZHAtPmxvY2spOwo+ICsKPiArCQlyZXQgPSBnZW44X3BwZ3R0X2Fs
bG9jX3BkKHZtLCBwZCwgc3RhcnQsIGxlbmd0aCk7Cj4gKwkJaWYgKHVubGlrZWx5KHJldCkpCj4g
KwkJCWdvdG8gdW53aW5kX3BkOwo+ICsKPiArCQlzcGluX2xvY2soJnBkcC0+bG9jayk7Cj4gKwkJ
YXRvbWljX2RlYyhweF91c2VkKHBkKSk7Cj4gKwl9Cj4gKwlzcGluX3VubG9jaygmcGRwLT5sb2Nr
KTsKPiArCWdvdG8gb3V0Owo+ICAKPiArdW53aW5kX3BkOgo+ICsJaWYgKHJlbGVhc2VfcGRfZW50
cnkocGRwLCBwZHBlLCAmcGQtPnB0LCAmdm0tPnNjcmF0Y2hfcGQpKQo+ICsJCWZyZWVfcHgodm0s
IHBkKTsKPiArdW53aW5kOgo+ICsJZ2VuOF9wcGd0dF9jbGVhcl9wZHAodm0sIHBkcCwgZnJvbSwg
c3RhcnQgLSBmcm9tKTsKPiArb3V0Ogo+ICsJaWYgKGFsbG9jKQo+ICsJCWZyZWVfcHgodm0sIGFs
bG9jKTsKPiAgCXJldHVybiByZXQ7Cj4gIH0KPiAgCj4gLXN0YXRpYyB2b2lkIGdlbjhfcHBndHRf
aW5zZXJ0XzNsdmwoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCj4gLQkJCQkgICBzdHJ1
Y3QgaTkxNV92bWEgKnZtYSwKPiAtCQkJCSAgIGVudW0gaTkxNV9jYWNoZV9sZXZlbCBjYWNoZV9s
ZXZlbCwKPiAtCQkJCSAgIHUzMiBmbGFncykKPiArc3RhdGljIGludCBnZW44X3BwZ3R0X2FsbG9j
XzNsdmwoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCj4gKwkJCQkgdTY0IHN0YXJ0LCB1
NjQgbGVuZ3RoKQo+ICB7Cj4gLQlzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQgPSBpOTE1X3ZtX3Rv
X3BwZ3R0KHZtKTsKPiArCXJldHVybiBnZW44X3BwZ3R0X2FsbG9jX3BkcCh2bSwKPiArCQkJCSAg
ICBpOTE1X3ZtX3RvX3BwZ3R0KHZtKS0+cGQsIHN0YXJ0LCBsZW5ndGgpOwo+ICt9Cj4gKwo+ICtz
dGF0aWMgaW50IGdlbjhfcHBndHRfYWxsb2NfNGx2bChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNl
ICp2bSwKPiArCQkJCSB1NjQgc3RhcnQsIHU2NCBsZW5ndGgpCj4gK3sKPiArCXN0cnVjdCBpOTE1
X3BwZ3R0ICpwcGd0dCA9IGk5MTVfdm1fdG9fcHBndHQodm0pOwo+ICsJc3RydWN0IGk5MTVfcGFn
ZV9kaXJlY3RvcnkgKiBjb25zdCBwbWw0ID0gcHBndHQtPnBkOwo+ICsJc3RydWN0IGk5MTVfcGFn
ZV9kaXJlY3RvcnkgKnBkcCwgKmFsbG9jID0gTlVMTDsKPiArCXU2NCBmcm9tID0gc3RhcnQ7Cj4g
KwlpbnQgcmV0ID0gMDsKPiArCXUzMiBwbWw0ZTsKPiArCj4gKwlzcGluX2xvY2soJnBtbDQtPmxv
Y2spOwo+ICsJZ2VuOF9mb3JfZWFjaF9wbWw0ZShwZHAsIHBtbDQsIHN0YXJ0LCBsZW5ndGgsIHBt
bDRlKSB7Cj4gKwkJaWYgKHB4X2Jhc2UocGRwKSA9PSAmdm0tPnNjcmF0Y2hfcGRwKSB7Cj4gKwkJ
CXNwaW5fdW5sb2NrKCZwbWw0LT5sb2NrKTsKPiArCj4gKwkJCXBkcCA9IGZldGNoX2FuZF96ZXJv
KCZhbGxvYyk7Cj4gKwkJCWlmICghcGRwKQo+ICsJCQkJcGRwID0gYWxsb2NfcGQodm0pOwo+ICsJ
CQlpZiAoSVNfRVJSKHBkcCkpIHsKPiArCQkJCXJldCA9IFBUUl9FUlIocGRwKTsKPiArCQkJCWdv
dG8gdW53aW5kOwo+ICsJCQl9Cj4gKwo+ICsJCQlpbml0X3BkKHBkcCwgJnZtLT5zY3JhdGNoX3Bk
KTsKPiArCj4gKwkJCXNwaW5fbG9jaygmcG1sNC0+bG9jayk7Cj4gKwkJCWlmIChwbWw0LT5lbnRy
eVtwbWw0ZV0gPT0gJnZtLT5zY3JhdGNoX3BkcCkgewo+ICsJCQkJc2V0X3BkX2VudHJ5KHBtbDQs
IHBtbDRlLCBwZHApOwo+ICsJCQl9IGVsc2Ugewo+ICsJCQkJYWxsb2MgPSBwZHA7Cj4gKwkJCQlw
ZHAgPSBwbWw0LT5lbnRyeVtwbWw0ZV07Cj4gKwkJCX0KPiArCQl9Cj4gKwkJYXRvbWljX2luYyhw
eF91c2VkKHBkcCkpOwo+ICsJCXNwaW5fdW5sb2NrKCZwbWw0LT5sb2NrKTsKPiArCj4gKwkJcmV0
ID0gZ2VuOF9wcGd0dF9hbGxvY19wZHAodm0sIHBkcCwgc3RhcnQsIGxlbmd0aCk7Cj4gKwkJaWYg
KHVubGlrZWx5KHJldCkpCj4gKwkJCWdvdG8gdW53aW5kX3BkcDsKPiArCj4gKwkJc3Bpbl9sb2Nr
KCZwbWw0LT5sb2NrKTsKPiArCQlhdG9taWNfZGVjKHB4X3VzZWQocGRwKSk7Cj4gKwl9Cj4gKwlz
cGluX3VubG9jaygmcG1sNC0+bG9jayk7Cj4gKwlnb3RvIG91dDsKPiArCj4gK3Vud2luZF9wZHA6
Cj4gKwlpZiAocmVsZWFzZV9wZF9lbnRyeShwbWw0LCBwbWw0ZSwgJnBkcC0+cHQsICZ2bS0+c2Ny
YXRjaF9wZHApKQo+ICsJCWZyZWVfcHgodm0sIHBkcCk7Cj4gK3Vud2luZDoKPiArCWdlbjhfcHBn
dHRfY2xlYXJfNGx2bCh2bSwgZnJvbSwgc3RhcnQgLSBmcm9tKTsKPiArb3V0Ogo+ICsJaWYgKGFs
bG9jKQo+ICsJCWZyZWVfcHgodm0sIGFsbG9jKTsKPiArCXJldHVybiByZXQ7Cj4gK30KPiArCj4g
K3N0YXRpYyBpbmxpbmUgc3RydWN0IHNndF9kbWEgewo+ICsJc3RydWN0IHNjYXR0ZXJsaXN0ICpz
ZzsKPiArCWRtYV9hZGRyX3QgZG1hLCBtYXg7Cj4gK30gc2d0X2RtYShzdHJ1Y3QgaTkxNV92bWEg
KnZtYSkgewo+ICsJc3RydWN0IHNjYXR0ZXJsaXN0ICpzZyA9IHZtYS0+cGFnZXMtPnNnbDsKPiAr
CWRtYV9hZGRyX3QgYWRkciA9IHNnX2RtYV9hZGRyZXNzKHNnKTsKPiArCXJldHVybiAoc3RydWN0
IHNndF9kbWEpIHsgc2csIGFkZHIsIGFkZHIgKyBzZy0+bGVuZ3RoIH07Cj4gK30KPiArCj4gK3N0
cnVjdCBnZW44X2luc2VydF9wdGUgewo+ICsJdTE2IHBtbDRlOwo+ICsJdTE2IHBkcGU7Cj4gKwl1
MTYgcGRlOwo+ICsJdTE2IHB0ZTsKPiArfTsKPiArCj4gK3N0YXRpYyBfX2Fsd2F5c19pbmxpbmUg
c3RydWN0IGdlbjhfaW5zZXJ0X3B0ZSBnZW44X2luc2VydF9wdGUodTY0IHN0YXJ0KQo+ICt7Cj4g
KwlyZXR1cm4gKHN0cnVjdCBnZW44X2luc2VydF9wdGUpIHsKPiArCQkgZ2VuOF9wbWw0ZV9pbmRl
eChzdGFydCksCj4gKwkJIGdlbjhfcGRwZV9pbmRleChzdGFydCksCj4gKwkJIGdlbjhfcGRlX2lu
ZGV4KHN0YXJ0KSwKPiArCQkgZ2VuOF9wdGVfaW5kZXgoc3RhcnQpLAo+ICsJfTsKPiArfQo+ICsK
PiArc3RhdGljIF9fYWx3YXlzX2lubGluZSBib29sCj4gK2dlbjhfcHBndHRfaW5zZXJ0X3B0ZV9l
bnRyaWVzKHN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dCwKPiArCQkJICAgICAgc3RydWN0IGk5MTVf
cGFnZV9kaXJlY3RvcnkgKnBkcCwKPiArCQkJICAgICAgc3RydWN0IHNndF9kbWEgKml0ZXIsCj4g
KwkJCSAgICAgIHN0cnVjdCBnZW44X2luc2VydF9wdGUgKmlkeCwKPiArCQkJICAgICAgZW51bSBp
OTE1X2NhY2hlX2xldmVsIGNhY2hlX2xldmVsLAo+ICsJCQkgICAgICB1MzIgZmxhZ3MpCj4gK3sK
PiArCXN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0b3J5ICpwZDsKPiArCWNvbnN0IGdlbjhfcHRlX3Qg
cHRlX2VuY29kZSA9IGdlbjhfcHRlX2VuY29kZSgwLCBjYWNoZV9sZXZlbCwgZmxhZ3MpOwo+ICsJ
Z2VuOF9wdGVfdCAqdmFkZHI7Cj4gKwlib29sIHJldDsKPiArCj4gKwlHRU1fQlVHX09OKGlkeC0+
cGRwZSA+PSBpOTE1X3BkcGVzX3Blcl9wZHAoJnBwZ3R0LT52bSkpOwo+ICsJcGQgPSBpOTE1X3Bk
X2VudHJ5KHBkcCwgaWR4LT5wZHBlKTsKPiArCXZhZGRyID0ga21hcF9hdG9taWNfcHgoaTkxNV9w
dF9lbnRyeShwZCwgaWR4LT5wZGUpKTsKPiArCWRvIHsKPiArCQl2YWRkcltpZHgtPnB0ZV0gPSBw
dGVfZW5jb2RlIHwgaXRlci0+ZG1hOwo+ICsKPiArCQlpdGVyLT5kbWEgKz0gSTkxNV9HVFRfUEFH
RV9TSVpFOwo+ICsJCWlmIChpdGVyLT5kbWEgPj0gaXRlci0+bWF4KSB7Cj4gKwkJCWl0ZXItPnNn
ID0gX19zZ19uZXh0KGl0ZXItPnNnKTsKPiArCQkJaWYgKCFpdGVyLT5zZykgewo+ICsJCQkJcmV0
ID0gZmFsc2U7Cj4gKwkJCQlicmVhazsKPiArCQkJfQo+ICsKPiArCQkJaXRlci0+ZG1hID0gc2df
ZG1hX2FkZHJlc3MoaXRlci0+c2cpOwo+ICsJCQlpdGVyLT5tYXggPSBpdGVyLT5kbWEgKyBpdGVy
LT5zZy0+bGVuZ3RoOwo+ICsJCX0KPiArCj4gKwkJaWYgKCsraWR4LT5wdGUgPT0gR0VOOF9QVEVT
KSB7Cj4gKwkJCWlkeC0+cHRlID0gMDsKPiArCj4gKwkJCWlmICgrK2lkeC0+cGRlID09IEk5MTVf
UERFUykgewo+ICsJCQkJaWR4LT5wZGUgPSAwOwo+ICsKPiArCQkJCS8qIExpbWl0ZWQgYnkgc2cg
bGVuZ3RoIGZvciAzbHZsICovCj4gKwkJCQlpZiAoKytpZHgtPnBkcGUgPT0gR0VOOF9QTUw0RVNf
UEVSX1BNTDQpIHsKPiArCQkJCQlpZHgtPnBkcGUgPSAwOwo+ICsJCQkJCXJldCA9IHRydWU7Cj4g
KwkJCQkJYnJlYWs7Cj4gKwkJCQl9Cj4gKwo+ICsJCQkJR0VNX0JVR19PTihpZHgtPnBkcGUgPj0g
aTkxNV9wZHBlc19wZXJfcGRwKCZwcGd0dC0+dm0pKTsKPiArCQkJCXBkID0gcGRwLT5lbnRyeVtp
ZHgtPnBkcGVdOwo+ICsJCQl9Cj4gKwo+ICsJCQlrdW5tYXBfYXRvbWljKHZhZGRyKTsKPiArCQkJ
dmFkZHIgPSBrbWFwX2F0b21pY19weChpOTE1X3B0X2VudHJ5KHBkLCBpZHgtPnBkZSkpOwo+ICsJ
CX0KPiArCX0gd2hpbGUgKDEpOwo+ICsJa3VubWFwX2F0b21pYyh2YWRkcik7Cj4gKwo+ICsJcmV0
dXJuIHJldDsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgZ2VuOF9wcGd0dF9pbnNlcnRfM2x2bChz
dHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKPiArCQkJCSAgIHN0cnVjdCBpOTE1X3ZtYSAq
dm1hLAo+ICsJCQkJICAgZW51bSBpOTE1X2NhY2hlX2xldmVsIGNhY2hlX2xldmVsLAo+ICsJCQkJ
ICAgdTMyIGZsYWdzKQo+ICt7Cj4gKwlzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQgPSBpOTE1X3Zt
X3RvX3BwZ3R0KHZtKTsKPiAgCXN0cnVjdCBzZ3RfZG1hIGl0ZXIgPSBzZ3RfZG1hKHZtYSk7Cj4g
IAlzdHJ1Y3QgZ2VuOF9pbnNlcnRfcHRlIGlkeCA9IGdlbjhfaW5zZXJ0X3B0ZSh2bWEtPm5vZGUu
c3RhcnQpOwo+ICAKPiBAQCAtMTE2MSwxNyArMTQyOSw2IEBAIHN0YXRpYyB2b2lkIGdlbjhfcHBn
dHRfaW5zZXJ0XzRsdmwoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCj4gIAl9Cj4gIH0K
PiAgCj4gLXN0YXRpYyB2b2lkIGdlbjhfZnJlZV9wYWdlX3RhYmxlcyhzdHJ1Y3QgaTkxNV9hZGRy
ZXNzX3NwYWNlICp2bSwKPiAtCQkJCSAgc3RydWN0IGk5MTVfcGFnZV9kaXJlY3RvcnkgKnBkKQo+
IC17Cj4gLQlpbnQgaTsKPiAtCj4gLQlmb3IgKGkgPSAwOyBpIDwgSTkxNV9QREVTOyBpKyspIHsK
PiAtCQlpZiAocGQtPmVudHJ5W2ldICE9ICZ2bS0+c2NyYXRjaF9wdCkKPiAtCQkJZnJlZV9wZCh2
bSwgcGQtPmVudHJ5W2ldKTsKPiAtCX0KPiAtfQo+IC0KPiAgc3RhdGljIGludCBnZW44X2luaXRf
c2NyYXRjaChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKPiAgewo+ICAJaW50IHJldDsK
PiBAQCAtMTIzOSwyNjIgKzE0OTYsNiBAQCBzdGF0aWMgaW50IGdlbjhfaW5pdF9zY3JhdGNoKHN0
cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtKQo+ICAJcmV0dXJuIHJldDsKPiAgfQo+ICAKPiAt
c3RhdGljIGludCBnZW44X3BwZ3R0X25vdGlmeV92Z3Qoc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0
LCBib29sIGNyZWF0ZSkKPiAtewo+IC0Jc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0gPSAm
cHBndHQtPnZtOwo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdm0tPmk5
MTU7Cj4gLQllbnVtIHZndF9nMnZfdHlwZSBtc2c7Cj4gLQlpbnQgaTsKPiAtCj4gLQlpZiAoY3Jl
YXRlKQo+IC0JCWF0b21pY19pbmMocHhfdXNlZChwcGd0dC0+cGQpKTsgLyogbmV2ZXIgcmVtb3Zl
ICovCj4gLQllbHNlCj4gLQkJYXRvbWljX2RlYyhweF91c2VkKHBwZ3R0LT5wZCkpOwo+IC0KPiAt
CWlmIChpOTE1X3ZtX2lzXzRsdmwodm0pKSB7Cj4gLQkJY29uc3QgdTY0IGRhZGRyID0gcHhfZG1h
KHBwZ3R0LT5wZCk7Cj4gLQo+IC0JCUk5MTVfV1JJVEUodmd0aWZfcmVnKHBkcFswXS5sbyksIGxv
d2VyXzMyX2JpdHMoZGFkZHIpKTsKPiAtCQlJOTE1X1dSSVRFKHZndGlmX3JlZyhwZHBbMF0uaGkp
LCB1cHBlcl8zMl9iaXRzKGRhZGRyKSk7Cj4gLQo+IC0JCW1zZyA9IChjcmVhdGUgPyBWR1RfRzJW
X1BQR1RUX0w0X1BBR0VfVEFCTEVfQ1JFQVRFIDoKPiAtCQkJCVZHVF9HMlZfUFBHVFRfTDRfUEFH
RV9UQUJMRV9ERVNUUk9ZKTsKPiAtCX0gZWxzZSB7Cj4gLQkJZm9yIChpID0gMDsgaSA8IEdFTjhf
M0xWTF9QRFBFUzsgaSsrKSB7Cj4gLQkJCWNvbnN0IHU2NCBkYWRkciA9IGk5MTVfcGFnZV9kaXJf
ZG1hX2FkZHIocHBndHQsIGkpOwo+IC0KPiAtCQkJSTkxNV9XUklURSh2Z3RpZl9yZWcocGRwW2ld
LmxvKSwgbG93ZXJfMzJfYml0cyhkYWRkcikpOwo+IC0JCQlJOTE1X1dSSVRFKHZndGlmX3JlZyhw
ZHBbaV0uaGkpLCB1cHBlcl8zMl9iaXRzKGRhZGRyKSk7Cj4gLQkJfQo+IC0KPiAtCQltc2cgPSAo
Y3JlYXRlID8gVkdUX0cyVl9QUEdUVF9MM19QQUdFX1RBQkxFX0NSRUFURSA6Cj4gLQkJCQlWR1Rf
RzJWX1BQR1RUX0wzX1BBR0VfVEFCTEVfREVTVFJPWSk7Cj4gLQl9Cj4gLQo+IC0JSTkxNV9XUklU
RSh2Z3RpZl9yZWcoZzJ2X25vdGlmeSksIG1zZyk7Cj4gLQo+IC0JcmV0dXJuIDA7Cj4gLX0KPiAt
Cj4gLXN0YXRpYyB2b2lkIGdlbjhfcHBndHRfY2xlYW51cF8zbHZsKHN0cnVjdCBpOTE1X2FkZHJl
c3Nfc3BhY2UgKnZtLAo+IC0JCQkJICAgIHN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0b3J5ICpwZHAp
Cj4gLXsKPiAtCWNvbnN0IHVuc2lnbmVkIGludCBwZHBlcyA9IGk5MTVfcGRwZXNfcGVyX3BkcCh2
bSk7Cj4gLQlpbnQgaTsKPiAtCj4gLQlmb3IgKGkgPSAwOyBpIDwgcGRwZXM7IGkrKykgewo+IC0J
CWlmIChwZHAtPmVudHJ5W2ldID09ICZ2bS0+c2NyYXRjaF9wZCkKPiAtCQkJY29udGludWU7Cj4g
LQo+IC0JCWdlbjhfZnJlZV9wYWdlX3RhYmxlcyh2bSwgcGRwLT5lbnRyeVtpXSk7Cj4gLQkJZnJl
ZV9wZCh2bSwgcGRwLT5lbnRyeVtpXSk7Cj4gLQl9Cj4gLQo+IC0JZnJlZV9weCh2bSwgcGRwKTsK
PiAtfQo+IC0KPiAtc3RhdGljIHZvaWQgZ2VuOF9wcGd0dF9jbGVhbnVwXzRsdmwoc3RydWN0IGk5
MTVfcHBndHQgKnBwZ3R0KQo+IC17Cj4gLQlzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAqIGNv
bnN0IHBtbDQgPSBwcGd0dC0+cGQ7Cj4gLQlpbnQgaTsKPiAtCj4gLQlmb3IgKGkgPSAwOyBpIDwg
R0VOOF9QTUw0RVNfUEVSX1BNTDQ7IGkrKykgewo+IC0JCXN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0
b3J5ICpwZHAgPSBpOTE1X3BkcF9lbnRyeShwbWw0LCBpKTsKPiAtCj4gLQkJaWYgKHB4X2Jhc2Uo
cGRwKSA9PSAmcHBndHQtPnZtLnNjcmF0Y2hfcGRwKQo+IC0JCQljb250aW51ZTsKPiAtCj4gLQkJ
Z2VuOF9wcGd0dF9jbGVhbnVwXzNsdmwoJnBwZ3R0LT52bSwgcGRwKTsKPiAtCX0KPiAtCj4gLQlm
cmVlX3B4KCZwcGd0dC0+dm0sIHBtbDQpOwo+IC19Cj4gLQo+IC1zdGF0aWMgdm9pZCBnZW44X3Bw
Z3R0X2NsZWFudXAoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0pCj4gLXsKPiAtCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdm0tPmk5MTU7Cj4gLQlzdHJ1Y3QgaTkxNV9wcGd0
dCAqcHBndHQgPSBpOTE1X3ZtX3RvX3BwZ3R0KHZtKTsKPiAtCj4gLQlpZiAoaW50ZWxfdmdwdV9h
Y3RpdmUoaTkxNSkpCj4gLQkJZ2VuOF9wcGd0dF9ub3RpZnlfdmd0KHBwZ3R0LCBmYWxzZSk7Cj4g
LQo+IC0JaWYgKGk5MTVfdm1faXNfNGx2bCh2bSkpCj4gLQkJZ2VuOF9wcGd0dF9jbGVhbnVwXzRs
dmwocHBndHQpOwo+IC0JZWxzZQo+IC0JCWdlbjhfcHBndHRfY2xlYW51cF8zbHZsKCZwcGd0dC0+
dm0sIHBwZ3R0LT5wZCk7Cj4gLQo+IC0JZnJlZV9zY3JhdGNoKHZtKTsKPiAtfQo+IC0KPiAtc3Rh
dGljIGludCBnZW44X3BwZ3R0X2FsbG9jX3BkKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZt
LAo+IC0JCQkgICAgICAgc3RydWN0IGk5MTVfcGFnZV9kaXJlY3RvcnkgKnBkLAo+IC0JCQkgICAg
ICAgdTY0IHN0YXJ0LCB1NjQgbGVuZ3RoKQo+IC17Cj4gLQlzdHJ1Y3QgaTkxNV9wYWdlX3RhYmxl
ICpwdCwgKmFsbG9jID0gTlVMTDsKPiAtCXU2NCBmcm9tID0gc3RhcnQ7Cj4gLQl1bnNpZ25lZCBp
bnQgcGRlOwo+IC0JaW50IHJldCA9IDA7Cj4gLQo+IC0Jc3Bpbl9sb2NrKCZwZC0+bG9jayk7Cj4g
LQlnZW44X2Zvcl9lYWNoX3BkZShwdCwgcGQsIHN0YXJ0LCBsZW5ndGgsIHBkZSkgewo+IC0JCWNv
bnN0IGludCBjb3VudCA9IGdlbjhfcHRlX2NvdW50KHN0YXJ0LCBsZW5ndGgpOwo+IC0KPiAtCQlp
ZiAocHhfYmFzZShwdCkgPT0gJnZtLT5zY3JhdGNoX3B0KSB7Cj4gLQkJCXNwaW5fdW5sb2NrKCZw
ZC0+bG9jayk7Cj4gLQo+IC0JCQlwdCA9IGZldGNoX2FuZF96ZXJvKCZhbGxvYyk7Cj4gLQkJCWlm
ICghcHQpCj4gLQkJCQlwdCA9IGFsbG9jX3B0KHZtKTsKPiAtCQkJaWYgKElTX0VSUihwdCkpIHsK
PiAtCQkJCXJldCA9IFBUUl9FUlIocHQpOwo+IC0JCQkJZ290byB1bndpbmQ7Cj4gLQkJCX0KPiAt
Cj4gLQkJCWlmIChjb3VudCA8IEdFTjhfUFRFUyB8fCBpbnRlbF92Z3B1X2FjdGl2ZSh2bS0+aTkx
NSkpCj4gLQkJCQlmaWxsX3B4KHB0LCB2bS0+c2NyYXRjaF9wdGUpOwo+IC0KPiAtCQkJc3Bpbl9s
b2NrKCZwZC0+bG9jayk7Cj4gLQkJCWlmIChwZC0+ZW50cnlbcGRlXSA9PSAmdm0tPnNjcmF0Y2hf
cHQpIHsKPiAtCQkJCXNldF9wZF9lbnRyeShwZCwgcGRlLCBwdCk7Cj4gLQkJCX0gZWxzZSB7Cj4g
LQkJCQlhbGxvYyA9IHB0Owo+IC0JCQkJcHQgPSBwZC0+ZW50cnlbcGRlXTsKPiAtCQkJfQo+IC0J
CX0KPiAtCj4gLQkJYXRvbWljX2FkZChjb3VudCwgJnB0LT51c2VkKTsKPiAtCX0KPiAtCXNwaW5f
dW5sb2NrKCZwZC0+bG9jayk7Cj4gLQlnb3RvIG91dDsKPiAtCj4gLXVud2luZDoKPiAtCWdlbjhf
cHBndHRfY2xlYXJfcGQodm0sIHBkLCBmcm9tLCBzdGFydCAtIGZyb20pOwo+IC1vdXQ6Cj4gLQlp
ZiAoYWxsb2MpCj4gLQkJZnJlZV9weCh2bSwgYWxsb2MpOwo+IC0JcmV0dXJuIHJldDsKPiAtfQo+
IC0KPiAtc3RhdGljIGludCBnZW44X3BwZ3R0X2FsbG9jX3BkcChzdHJ1Y3QgaTkxNV9hZGRyZXNz
X3NwYWNlICp2bSwKPiAtCQkJCXN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0b3J5ICpwZHAsCj4gLQkJ
CQl1NjQgc3RhcnQsIHU2NCBsZW5ndGgpCj4gLXsKPiAtCXN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0
b3J5ICpwZCwgKmFsbG9jID0gTlVMTDsKPiAtCXU2NCBmcm9tID0gc3RhcnQ7Cj4gLQl1bnNpZ25l
ZCBpbnQgcGRwZTsKPiAtCWludCByZXQgPSAwOwo+IC0KPiAtCXNwaW5fbG9jaygmcGRwLT5sb2Nr
KTsKPiAtCWdlbjhfZm9yX2VhY2hfcGRwZShwZCwgcGRwLCBzdGFydCwgbGVuZ3RoLCBwZHBlKSB7
Cj4gLQkJaWYgKHB4X2Jhc2UocGQpID09ICZ2bS0+c2NyYXRjaF9wZCkgewo+IC0JCQlzcGluX3Vu
bG9jaygmcGRwLT5sb2NrKTsKPiAtCj4gLQkJCXBkID0gZmV0Y2hfYW5kX3plcm8oJmFsbG9jKTsK
PiAtCQkJaWYgKCFwZCkKPiAtCQkJCXBkID0gYWxsb2NfcGQodm0pOwo+IC0JCQlpZiAoSVNfRVJS
KHBkKSkgewo+IC0JCQkJcmV0ID0gUFRSX0VSUihwZCk7Cj4gLQkJCQlnb3RvIHVud2luZDsKPiAt
CQkJfQo+IC0KPiAtCQkJaW5pdF9wZChwZCwgJnZtLT5zY3JhdGNoX3B0KTsKPiAtCj4gLQkJCXNw
aW5fbG9jaygmcGRwLT5sb2NrKTsKPiAtCQkJaWYgKHBkcC0+ZW50cnlbcGRwZV0gPT0gJnZtLT5z
Y3JhdGNoX3BkKSB7Cj4gLQkJCQlzZXRfcGRfZW50cnkocGRwLCBwZHBlLCBwZCk7Cj4gLQkJCX0g
ZWxzZSB7Cj4gLQkJCQlhbGxvYyA9IHBkOwo+IC0JCQkJcGQgPSBwZHAtPmVudHJ5W3BkcGVdOwo+
IC0JCQl9Cj4gLQkJfQo+IC0JCWF0b21pY19pbmMocHhfdXNlZChwZCkpOwo+IC0JCXNwaW5fdW5s
b2NrKCZwZHAtPmxvY2spOwo+IC0KPiAtCQlyZXQgPSBnZW44X3BwZ3R0X2FsbG9jX3BkKHZtLCBw
ZCwgc3RhcnQsIGxlbmd0aCk7Cj4gLQkJaWYgKHVubGlrZWx5KHJldCkpCj4gLQkJCWdvdG8gdW53
aW5kX3BkOwo+IC0KPiAtCQlzcGluX2xvY2soJnBkcC0+bG9jayk7Cj4gLQkJYXRvbWljX2RlYyhw
eF91c2VkKHBkKSk7Cj4gLQl9Cj4gLQlzcGluX3VubG9jaygmcGRwLT5sb2NrKTsKPiAtCWdvdG8g
b3V0Owo+IC0KPiAtdW53aW5kX3BkOgo+IC0JaWYgKHJlbGVhc2VfcGRfZW50cnkocGRwLCBwZHBl
LCAmcGQtPnB0LCAmdm0tPnNjcmF0Y2hfcGQpKQo+IC0JCWZyZWVfcHgodm0sIHBkKTsKPiAtdW53
aW5kOgo+IC0JZ2VuOF9wcGd0dF9jbGVhcl9wZHAodm0sIHBkcCwgZnJvbSwgc3RhcnQgLSBmcm9t
KTsKPiAtb3V0Ogo+IC0JaWYgKGFsbG9jKQo+IC0JCWZyZWVfcHgodm0sIGFsbG9jKTsKPiAtCXJl
dHVybiByZXQ7Cj4gLX0KPiAtCj4gLXN0YXRpYyBpbnQgZ2VuOF9wcGd0dF9hbGxvY18zbHZsKHN0
cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAo+IC0JCQkJIHU2NCBzdGFydCwgdTY0IGxlbmd0
aCkKPiAtewo+IC0JcmV0dXJuIGdlbjhfcHBndHRfYWxsb2NfcGRwKHZtLAo+IC0JCQkJICAgIGk5
MTVfdm1fdG9fcHBndHQodm0pLT5wZCwgc3RhcnQsIGxlbmd0aCk7Cj4gLX0KPiAtCj4gLXN0YXRp
YyBpbnQgZ2VuOF9wcGd0dF9hbGxvY180bHZsKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZt
LAo+IC0JCQkJIHU2NCBzdGFydCwgdTY0IGxlbmd0aCkKPiAtewo+IC0Jc3RydWN0IGk5MTVfcHBn
dHQgKnBwZ3R0ID0gaTkxNV92bV90b19wcGd0dCh2bSk7Cj4gLQlzdHJ1Y3QgaTkxNV9wYWdlX2Rp
cmVjdG9yeSAqIGNvbnN0IHBtbDQgPSBwcGd0dC0+cGQ7Cj4gLQlzdHJ1Y3QgaTkxNV9wYWdlX2Rp
cmVjdG9yeSAqcGRwLCAqYWxsb2MgPSBOVUxMOwo+IC0JdTY0IGZyb20gPSBzdGFydDsKPiAtCWlu
dCByZXQgPSAwOwo+IC0JdTMyIHBtbDRlOwo+IC0KPiAtCXNwaW5fbG9jaygmcG1sNC0+bG9jayk7
Cj4gLQlnZW44X2Zvcl9lYWNoX3BtbDRlKHBkcCwgcG1sNCwgc3RhcnQsIGxlbmd0aCwgcG1sNGUp
IHsKPiAtCQlpZiAocHhfYmFzZShwZHApID09ICZ2bS0+c2NyYXRjaF9wZHApIHsKPiAtCQkJc3Bp
bl91bmxvY2soJnBtbDQtPmxvY2spOwo+IC0KPiAtCQkJcGRwID0gZmV0Y2hfYW5kX3plcm8oJmFs
bG9jKTsKPiAtCQkJaWYgKCFwZHApCj4gLQkJCQlwZHAgPSBhbGxvY19wZCh2bSk7Cj4gLQkJCWlm
IChJU19FUlIocGRwKSkgewo+IC0JCQkJcmV0ID0gUFRSX0VSUihwZHApOwo+IC0JCQkJZ290byB1
bndpbmQ7Cj4gLQkJCX0KPiAtCj4gLQkJCWluaXRfcGQocGRwLCAmdm0tPnNjcmF0Y2hfcGQpOwo+
IC0KPiAtCQkJc3Bpbl9sb2NrKCZwbWw0LT5sb2NrKTsKPiAtCQkJaWYgKHBtbDQtPmVudHJ5W3Bt
bDRlXSA9PSAmdm0tPnNjcmF0Y2hfcGRwKSB7Cj4gLQkJCQlzZXRfcGRfZW50cnkocG1sNCwgcG1s
NGUsIHBkcCk7Cj4gLQkJCX0gZWxzZSB7Cj4gLQkJCQlhbGxvYyA9IHBkcDsKPiAtCQkJCXBkcCA9
IHBtbDQtPmVudHJ5W3BtbDRlXTsKPiAtCQkJfQo+IC0JCX0KPiAtCQlhdG9taWNfaW5jKHB4X3Vz
ZWQocGRwKSk7Cj4gLQkJc3Bpbl91bmxvY2soJnBtbDQtPmxvY2spOwo+IC0KPiAtCQlyZXQgPSBn
ZW44X3BwZ3R0X2FsbG9jX3BkcCh2bSwgcGRwLCBzdGFydCwgbGVuZ3RoKTsKPiAtCQlpZiAodW5s
aWtlbHkocmV0KSkKPiAtCQkJZ290byB1bndpbmRfcGRwOwo+IC0KPiAtCQlzcGluX2xvY2soJnBt
bDQtPmxvY2spOwo+IC0JCWF0b21pY19kZWMocHhfdXNlZChwZHApKTsKPiAtCX0KPiAtCXNwaW5f
dW5sb2NrKCZwbWw0LT5sb2NrKTsKPiAtCWdvdG8gb3V0Owo+IC0KPiAtdW53aW5kX3BkcDoKPiAt
CWlmIChyZWxlYXNlX3BkX2VudHJ5KHBtbDQsIHBtbDRlLCAmcGRwLT5wdCwgJnZtLT5zY3JhdGNo
X3BkcCkpCj4gLQkJZnJlZV9weCh2bSwgcGRwKTsKPiAtdW53aW5kOgo+IC0JZ2VuOF9wcGd0dF9j
bGVhcl80bHZsKHZtLCBmcm9tLCBzdGFydCAtIGZyb20pOwo+IC1vdXQ6Cj4gLQlpZiAoYWxsb2Mp
Cj4gLQkJZnJlZV9weCh2bSwgYWxsb2MpOwo+IC0JcmV0dXJuIHJldDsKPiAtfQo+IC0KPiAgc3Rh
dGljIGludCBnZW44X3ByZWFsbG9jYXRlX3RvcF9sZXZlbF9wZHAoc3RydWN0IGk5MTVfcHBndHQg
KnBwZ3R0KQo+ICB7Cj4gIAlzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSA9ICZwcGd0dC0+
dm07Cj4gLS0gCj4gMi4yMC4xCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
