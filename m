Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5472528636
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 21:00:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4E8389F75;
	Thu, 23 May 2019 19:00:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A22D189E0D
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 19:00:17 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 12:00:17 -0700
X-ExtLoop1: 1
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga006.jf.intel.com with ESMTP; 23 May 2019 12:00:17 -0700
Date: Thu, 23 May 2019 12:00:44 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190523190044.GV4441@intel.com>
References: <20190523082420.10352-1-lucas.demarchi@intel.com>
 <20190523082420.10352-10-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523082420.10352-10-lucas.demarchi@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH 10/10] drm/i915/dmc: protect against loading
 wrong firmware
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMDE6MjQ6MjBBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEluIGludGVsX3BhY2thZ2VfaGVhZGVyIHZlcnNpb24gMiB0aGVyZSdzIGEgbmV3
IGZpZWxkIGluIHRoZQo+IGZ3X2luZm8gdGFibGUgdGhhdCBtdXN0IGJlIDAsIG90aGVyd2lzZSBp
dCdzIG5vdCB0aGUgY29ycmVjdCBETUMKPiBmaXJtd2FyZS4gQWRkIGEgY2hlY2sgZm9yIHZlcnNp
b24gMiBvciBsYXRlci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2Fz
LmRlbWFyY2hpQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
Y3NyLmMgfCAxNCArKysrKysrKysrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9u
cygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfY3NyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYwo+IGluZGV4
IGI3MTgxY2E2YzhmNS4uZDQ5OTZkY2Y1OTZjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2Nzci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3Ny
LmMKPiBAQCAtMTIwLDcgKzEyMCwxMCBAQCBzdHJ1Y3QgaW50ZWxfY3NzX2hlYWRlciB7Cj4gIH0g
X19wYWNrZWQ7Cj4gIAo+ICBzdHJ1Y3QgaW50ZWxfZndfaW5mbyB7Cj4gLQl1MTYgcmVzZXJ2ZWQx
Owo+ICsJdTggcmVzZXJ2ZWQxOwo+ICsKPiArCS8qIHJlc2VydmVkIG9uIHBhY2thZ2VfaGVhZGVy
IHZlcnNpb24gMSwgbXVzdCBiZSAwIG9uIHZlcnNpb24gMiAqLwoKMis/Cj4gMT8KPj0gMj8KClJl
dmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cgo+ICsJdTgg
ZG1jX2lkOwo+ICAKPiAgCS8qIFN0ZXBwaW5nIChBLCBCLCBDLCAuLi4sICopLiAqIGlzIGEgd2ls
ZGNhcmQgKi8KPiAgCWNoYXIgc3RlcHBpbmc7Cj4gQEAgLTMyNSwxMiArMzI4LDE2IEBAIHZvaWQg
aW50ZWxfY3NyX2xvYWRfcHJvZ3JhbShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
Cj4gICAqLwo+ICBzdGF0aWMgdTMyIGZpbmRfZG1jX2Z3X29mZnNldChjb25zdCBzdHJ1Y3QgaW50
ZWxfZndfaW5mbyAqZndfaW5mbywKPiAgCQkJICAgICAgdW5zaWduZWQgaW50IG51bV9lbnRyaWVz
LAo+IC0JCQkgICAgICBjb25zdCBzdHJ1Y3Qgc3RlcHBpbmdfaW5mbyAqc2kpCj4gKwkJCSAgICAg
IGNvbnN0IHN0cnVjdCBzdGVwcGluZ19pbmZvICpzaSwKPiArCQkJICAgICAgdTggcGFja2FnZV92
ZXIpCj4gIHsKPiAgCXUzMiBkbWNfb2Zmc2V0ID0gQ1NSX0RFRkFVTFRfRldfT0ZGU0VUOwo+ICAJ
dW5zaWduZWQgaW50IGk7Cj4gIAo+ICAJZm9yIChpID0gMDsgaSA8IG51bV9lbnRyaWVzOyBpKysp
IHsKPiArCQlpZiAocGFja2FnZV92ZXIgPiAxICYmIGZ3X2luZm9baV0uZG1jX2lkICE9IDApCj4g
KwkJCWNvbnRpbnVlOwo+ICsKPiAgCQlpZiAoZndfaW5mb1tpXS5zdWJzdGVwcGluZyA9PSAnKicg
JiYKPiAgCQkgICAgc2ktPnN0ZXBwaW5nID09IGZ3X2luZm9baV0uc3RlcHBpbmcpIHsKPiAgCQkJ
ZG1jX29mZnNldCA9IGZ3X2luZm9baV0ub2Zmc2V0Owo+IEBAIC01MDEsNyArNTA4LDggQEAgcGFy
c2VfY3NyX2Z3X3BhY2thZ2Uoc3RydWN0IGludGVsX2NzciAqY3NyLAo+ICAKPiAgCWZ3X2luZm8g
PSAoY29uc3Qgc3RydWN0IGludGVsX2Z3X2luZm8gKikKPiAgCQkoKHU4ICopcGFja2FnZV9oZWFk
ZXIgKyBzaXplb2YoKnBhY2thZ2VfaGVhZGVyKSk7Cj4gLQlkbWNfb2Zmc2V0ID0gZmluZF9kbWNf
Zndfb2Zmc2V0KGZ3X2luZm8sIG51bV9lbnRyaWVzLCBzaSk7Cj4gKwlkbWNfb2Zmc2V0ID0gZmlu
ZF9kbWNfZndfb2Zmc2V0KGZ3X2luZm8sIG51bV9lbnRyaWVzLCBzaSwKPiArCQkJCQlwYWNrYWdl
X2hlYWRlci0+aGVhZGVyX3Zlcik7Cj4gIAlpZiAoZG1jX29mZnNldCA9PSBDU1JfREVGQVVMVF9G
V19PRkZTRVQpIHsKPiAgCQlEUk1fRVJST1IoIkRNQyBmaXJtd2FyZSBub3Qgc3VwcG9ydGVkIGZv
ciAlYyBzdGVwcGluZ1xuIiwKPiAgCQkJICBzaS0+c3RlcHBpbmcpOwo+IC0tIAo+IDIuMjEuMAo+
IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
