Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AABC9ADD76
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 18:48:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B49B891DD;
	Mon,  9 Sep 2019 16:48:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CAE8891DD
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 16:48:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 09:48:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,486,1559545200"; d="scan'208";a="175034862"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.252.93.73])
 ([10.252.93.73])
 by orsmga007.jf.intel.com with ESMTP; 09 Sep 2019 09:48:09 -0700
To: "Sharma, Shashank" <shashank.sharma@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190907110735.10302-1-animesh.manna@intel.com>
 <20190907110735.10302-4-animesh.manna@intel.com>
 <60a7f029-ec62-9971-4233-e02a1b03fcc6@intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <7b8da406-981c-9b81-3d23-3eff5ad99b2c@intel.com>
Date: Mon, 9 Sep 2019 22:18:07 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <60a7f029-ec62-9971-4233-e02a1b03fcc6@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 03/11] drm/i915/dsb: single register
 write function for DSB.
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA5LzkvMjAxOSA2OjI4IFBNLCBTaGFybWEsIFNoYXNoYW5rIHdyb3RlOgo+Cj4gT24gOS83
LzIwMTkgNDozNyBQTSwgQW5pbWVzaCBNYW5uYSB3cm90ZToKPj4gRFNCIHN1cHBvcnQgc2luZ2xl
IHJlZ2lzdGVyIHdyaXRlIHRocm91Z2ggb3Bjb2RlIDB4MS4gR2VuZXJpYwo+PiBhcGkgY3JlYXRl
ZCB3aGljaCBhY2N1bXVsYXRlIGFsbCBzaW5nbGUgcmVnaXN0ZXIgd3JpdGUgaW4gYSBiYXRjaAo+
PiBidWZmZXIgYW5kIG9uY2UgRFNCIGlzIHRyaWdnZXJlZCwgaXQgd2lsbCBwcm9ncmFtIGFsbCB0
aGUgcmVnaXN0ZXJzCj4+IGF0IHRoZSBzYW1lIHRpbWUuCj4+Cj4+IHYxOiBJbml0aWFsIHZlcnNp
b24uCj4+IHYyOiBVbnVzZWQgbWFjcm8gcmVtb3ZlZCBhbmQgY29zbWV0aWMgY2hhbmdlcyBkb25l
LiAoU2hhc2hhbmspCj4+Cj4+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29t
Pgo+PiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+PiBDYzogU2hh
c2hhbmsgU2hhcm1hIDxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5
OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KPj4gLS0tCj4+ICAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyB8IDMwICsrKysrKysrKysrKysr
KysrKysrKysrKwo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgg
fCAgOSArKysrKysrCj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCAzOSBpbnNlcnRpb25zKCspCj4+Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIAo+
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKPj4gaW5kZXggY2Jh
NWM4ZDM3NjU5Li4xNTBiZTgxZmRmYjMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kc2IuYwo+PiBAQCAtOSw2ICs5LDEzIEBACj4+ICAgICAjZGVmaW5lIERTQl9C
VUZfU0laRSAgICAoMiAqIFBBR0VfU0laRSkKPj4gICArLyogRFNCIG9wY29kZXMuICovCj4+ICsj
ZGVmaW5lIERTQl9PUENPREVfU0hJRlQgICAgICAgIDI0Cj4+ICsjZGVmaW5lIERTQl9PUENPREVf
TU1JT19XUklURSAgICAgICAgMHgxCj4+ICsjZGVmaW5lIERTQl9PUENPREVfSU5ERVhFRF9XUklU
RSAgICAweDkKPj4gKyNkZWZpbmUgRFNCX0JZVEVfRU4gICAgICAgICAgICAweEYKPj4gKyNkZWZp
bmUgRFNCX0JZVEVfRU5fU0hJRlQgICAgICAgIDIwCj4+ICsKPj4gICBzdHJ1Y3QgaW50ZWxfZHNi
ICoKPj4gICBpbnRlbF9kc2JfZ2V0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQo+PiAgIHsKPj4g
QEAgLTQ2LDYgKzUzLDcgQEAgaW50ZWxfZHNiX2dldChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykK
Pj4gICAgICAgICAgIGdvdG8gZXJyOwo+PiAgICAgICB9Cj4+ICAgICAgIGRzYi0+dm1hID0gdm1h
Owo+PiArICAgIGRzYi0+ZnJlZV9wb3MgPSAwOwo+IFRoaXMgc2hvdWxkIGJlIGRvbmUgaW4gZHNi
X3B1dCgpOwo+PiAgICAgZXJyOgo+PiAgICAgICBpbnRlbF9ydW50aW1lX3BtX3B1dCgmaTkxNS0+
cnVudGltZV9wbSwgd2FrZXJlZik7Cj4+IEBAIC02OCwzICs3NiwyNSBAQCB2b2lkIGludGVsX2Rz
Yl9wdXQoc3RydWN0IGludGVsX2RzYiAqZHNiKQo+PiAgICAgICAgICAgbXV0ZXhfdW5sb2NrKCZp
OTE1LT5kcm0uc3RydWN0X211dGV4KTsKPj4gICAgICAgfQo+PiAgIH0KPj4gKwo+PiArdm9pZCBp
bnRlbF9kc2JfcmVnX3dyaXRlKHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwgaTkxNV9yZWdfdCByZWcs
IHUzMiAKPj4gdmFsKQo+PiArewo+PiArICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gY29u
dGFpbmVyX29mKGRzYiwgdHlwZW9mKCpjcnRjKSwgZHNiKTsKPj4gKyAgICBzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKPj4gKyAgICB1
MzIgKmJ1ZiA9IGRzYi0+Y21kX2J1ZjsKPj4gKwo+PiArICAgIGlmICghYnVmKSB7Cj4+ICsgICAg
ICAgIEk5MTVfV1JJVEUocmVnLCB2YWwpOwo+PiArICAgICAgICByZXR1cm47Cj4+ICsgICAgfQo+
PiArCj4+ICsgICAgaWYgKFdBUk5fT04oZHNiLT5mcmVlX3BvcyA+PSBEU0JfQlVGX1NJWkUpKSB7
Cj4+ICsgICAgICAgIERSTV9ERUJVR19LTVMoIkRTQiBidWZmZXIgb3ZlcmZsb3cuXG4iKTsKPgo+
IExldHMgcmVtb3ZlIHRoaXMgJy4nIGluIHRoZSBlbmQsIHRvIG1haW50YWluIGNvbnNpc3RlbmN5
IGluIHRoZSBsb2cuCgpTdXJlLgoKUmVnYXJkcywKQW5pbWVzaAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
