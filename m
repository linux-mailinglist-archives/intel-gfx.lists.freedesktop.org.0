Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2B5AFC5D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 14:19:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BEBF6EAE4;
	Wed, 11 Sep 2019 12:19:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDA086EAE4
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 12:19:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 05:19:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,493,1559545200"; d="scan'208";a="200512122"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga001.fm.intel.com with ESMTP; 11 Sep 2019 05:19:10 -0700
Received: from [10.237.72.73] (mperes-desk.fi.intel.com [10.237.72.73])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id D31265806A0;
 Wed, 11 Sep 2019 05:19:08 -0700 (PDT)
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190911114655.9254-1-chris@chris-wilson.co.uk>
From: Martin Peres <martin.peres@linux.intel.com>
Message-ID: <fe0ef535-d4bb-c118-26ca-20b6f55b61ca@linux.intel.com>
Date: Wed, 11 Sep 2019 15:19:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <20190911114655.9254-1-chris@chris-wilson.co.uk>
Content-Language: en-PH
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Squeeze iommu status into
 debugfs/i915_capabilities
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAxMS8wOS8yMDE5IDE0OjQ2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gVGhlcmUncyBubyBl
YXN5IHdheSBvZiBjaGVja2luZyB3aGV0aGVyIGlvbW11IGlzIGVuYWJsZWQgZm9yIHRoZSBHUFUK
PiAoeW91IGNhbiBncmVwIGRtZXNnIGlmIHlvdSBrbm93IHRoZSBkZXZpY2UsIG9yIHlvdSBjYW4g
Z3JlcAo+IGk5MTVfZ3B1X2luZm8gaWYgdGhhdCdzIGF2YWlsYWJsZSkuIFdlIGRvIGhhdmUgYSBj
ZW50cmFsCj4gaTkxNV9jYXBhYmlsaXRpZXMgd2l0aCB0aGUgaW50ZW50IG9mIGxpc3Rpbmcgc3Vj
aCBwZXJ0aW5lbnQgaW5mb3JtYXRpb24sCj4gc28gYWRkIHRoZSBpb21tdSBzdGF0dXMuCj4gCj4g
U3VnZ2VzdGVkLWJ5OiBNYXJ0aW4gUGVyZXMgPG1hcnRpbi5wZXJlc0BsaW51eC5pbnRlbC5jb20+
Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Cj4gQ2M6IE1hcnRpbiBQZXJlcyA8bWFydGluLnBlcmVzQGxpbnV4LmludGVsLmNvbT4KPiBDYzog
VG9taSBTYXJ2ZWxhIDx0b21pLnAuc2FydmVsYUBpbnRlbC5jb20+Cj4gQ2M6IE1pa2EgS3VvcHBh
bGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYyB8IDcgKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiBpbmRleCA3
MDg4NTVlMDUxYjUuLmU1ODM1MzM3ZjAyMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2RlYnVnZnMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVi
dWdmcy5jCj4gQEAgLTYxLDExICs2MSwxOCBAQCBzdGF0aWMgaW50IGk5MTVfY2FwYWJpbGl0aWVz
KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiA9IG5vZGVfdG9faTkxNShtLT5wcml2YXRlKTsKPiAgCWNvbnN0IHN0cnVj
dCBpbnRlbF9kZXZpY2VfaW5mbyAqaW5mbyA9IElOVEVMX0lORk8oZGV2X3ByaXYpOwo+ICAJc3Ry
dWN0IGRybV9wcmludGVyIHAgPSBkcm1fc2VxX2ZpbGVfcHJpbnRlcihtKTsKPiArCWNvbnN0IGNo
YXIgKm1zZzsKPiAgCj4gIAlzZXFfcHJpbnRmKG0sICJnZW46ICVkXG4iLCBJTlRFTF9HRU4oZGV2
X3ByaXYpKTsKPiAgCXNlcV9wcmludGYobSwgInBsYXRmb3JtOiAlc1xuIiwgaW50ZWxfcGxhdGZv
cm1fbmFtZShpbmZvLT5wbGF0Zm9ybSkpOwo+ICAJc2VxX3ByaW50ZihtLCAicGNoOiAlZFxuIiwg
SU5URUxfUENIX1RZUEUoZGV2X3ByaXYpKTsKPiAgCj4gKwltc2cgPSAibi9hIjsKCkhlcmUsICJu
L2EiIHJlYWxseSBtZWFucyAia2VybmVsIG5vdCBjb21waWxlZCB3aXRoIElPTU1VIHN1cHBvcnQi
LgpTaG91bGQgd2UgZmluZCBhIHdvcmRpbmcgYmV0dGVyIGV4cGxhaW5pbmcgdGhpcyB0byB1c2Vy
cz8gT3IgYXJlIHdlCmdvaW5nIHRvIHRlbGwgdXNlcnMgdG8gY2hlY2sgdGhlaXIgZG1lc2cgZm9y
IElPTU1VIG1lc3NhZ2VzIGFuZCBpZiB0aGVyZQphcmUgbm9uZSwgaXQgbWVhbnMgZWl0aGVyIHRo
ZSBrZXJuZWwgaGFzIG5vdCBiZWVuIGNvbXBpbGVkIHdpdGggc3VwcG9ydApmb3IgaXQsIG9yIGFu
IG9wdGlvbiBuZWVkcyB0byBiZSBlbmFibGVkIGluIHRoZSBiaW9zLCBvciB0aGUgcGxhdGZvcm0K
bGFja3Mgc3VwcG9ydD8KCkFueXdheSwgdGhhbmtzIQoKQWNrZWQtYnk6IE1hcnRpbiBQZXJlcyA8
bWFydGluLnBlcmVzQGxpbnV4LmludGVsLmNvbT4KCj4gKyNpZmRlZiBDT05GSUdfSU5URUxfSU9N
TVUKPiArCW1zZyA9IGVuYWJsZWRkaXNhYmxlZChpbnRlbF9pb21tdV9nZnhfbWFwcGVkKTsKPiAr
I2VuZGlmCj4gKwlzZXFfcHJpbnRmKG0sICJpb21tdTogJXNcbiIsIG1zZyk7Cj4gKwo+ICAJaW50
ZWxfZGV2aWNlX2luZm9fZHVtcF9mbGFncyhpbmZvLCAmcCk7Cj4gIAlpbnRlbF9kZXZpY2VfaW5m
b19kdW1wX3J1bnRpbWUoUlVOVElNRV9JTkZPKGRldl9wcml2KSwgJnApOwo+ICAJaW50ZWxfZHJp
dmVyX2NhcHNfcHJpbnQoJmRldl9wcml2LT5jYXBzLCAmcCk7Cj4gCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
