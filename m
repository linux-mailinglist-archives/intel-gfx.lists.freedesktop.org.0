Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 637A2AD97D
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 14:58:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA947899E6;
	Mon,  9 Sep 2019 12:58:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68E17899E6
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 12:58:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 05:58:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,484,1559545200"; d="scan'208";a="335586446"
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.66.116.93])
 ([10.66.116.93])
 by orsmga004.jf.intel.com with ESMTP; 09 Sep 2019 05:58:11 -0700
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190907110735.10302-1-animesh.manna@intel.com>
 <20190907110735.10302-4-animesh.manna@intel.com>
From: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <60a7f029-ec62-9971-4233-e02a1b03fcc6@intel.com>
Date: Mon, 9 Sep 2019 18:28:10 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190907110735.10302-4-animesh.manna@intel.com>
Content-Language: en-US
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

Ck9uIDkvNy8yMDE5IDQ6MzcgUE0sIEFuaW1lc2ggTWFubmEgd3JvdGU6Cj4gRFNCIHN1cHBvcnQg
c2luZ2xlIHJlZ2lzdGVyIHdyaXRlIHRocm91Z2ggb3Bjb2RlIDB4MS4gR2VuZXJpYwo+IGFwaSBj
cmVhdGVkIHdoaWNoIGFjY3VtdWxhdGUgYWxsIHNpbmdsZSByZWdpc3RlciB3cml0ZSBpbiBhIGJh
dGNoCj4gYnVmZmVyIGFuZCBvbmNlIERTQiBpcyB0cmlnZ2VyZWQsIGl0IHdpbGwgcHJvZ3JhbSBh
bGwgdGhlIHJlZ2lzdGVycwo+IGF0IHRoZSBzYW1lIHRpbWUuCj4KPiB2MTogSW5pdGlhbCB2ZXJz
aW9uLgo+IHYyOiBVbnVzZWQgbWFjcm8gcmVtb3ZlZCBhbmQgY29zbWV0aWMgY2hhbmdlcyBkb25l
LiAoU2hhc2hhbmspCj4KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4K
PiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IENjOiBTaGFzaGFu
ayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQW5p
bWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIHwgMzAgKysrKysrKysrKysrKysrKysrKysr
KysrCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oIHwgIDkgKysr
KysrKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAzOSBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKPiBpbmRleCBjYmE1YzhkMzc2NTkuLjE1MGJl
ODFmZGZiMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RzYi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwo+
IEBAIC05LDYgKzksMTMgQEAKPiAgIAo+ICAgI2RlZmluZSBEU0JfQlVGX1NJWkUgICAgKDIgKiBQ
QUdFX1NJWkUpCj4gICAKPiArLyogRFNCIG9wY29kZXMuICovCj4gKyNkZWZpbmUgRFNCX09QQ09E
RV9TSElGVAkJMjQKPiArI2RlZmluZSBEU0JfT1BDT0RFX01NSU9fV1JJVEUJCTB4MQo+ICsjZGVm
aW5lIERTQl9PUENPREVfSU5ERVhFRF9XUklURQkweDkKPiArI2RlZmluZSBEU0JfQllURV9FTgkJ
CTB4Rgo+ICsjZGVmaW5lIERTQl9CWVRFX0VOX1NISUZUCQkyMAo+ICsKPiAgIHN0cnVjdCBpbnRl
bF9kc2IgKgo+ICAgaW50ZWxfZHNiX2dldChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKPiAgIHsK
PiBAQCAtNDYsNiArNTMsNyBAQCBpbnRlbF9kc2JfZ2V0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KQo+ICAgCQlnb3RvIGVycjsKPiAgIAl9Cj4gICAJZHNiLT52bWEgPSB2bWE7Cj4gKwlkc2ItPmZy
ZWVfcG9zID0gMDsKVGhpcyBzaG91bGQgYmUgZG9uZSBpbiBkc2JfcHV0KCk7Cj4gICAKPiAgIGVy
cjoKPiAgIAlpbnRlbF9ydW50aW1lX3BtX3B1dCgmaTkxNS0+cnVudGltZV9wbSwgd2FrZXJlZik7
Cj4gQEAgLTY4LDMgKzc2LDI1IEBAIHZvaWQgaW50ZWxfZHNiX3B1dChzdHJ1Y3QgaW50ZWxfZHNi
ICpkc2IpCj4gICAJCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gICAJ
fQo+ICAgfQo+ICsKPiArdm9pZCBpbnRlbF9kc2JfcmVnX3dyaXRlKHN0cnVjdCBpbnRlbF9kc2Ig
KmRzYiwgaTkxNV9yZWdfdCByZWcsIHUzMiB2YWwpCj4gK3sKPiArCXN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjID0gY29udGFpbmVyX29mKGRzYiwgdHlwZW9mKCpjcnRjKSwgZHNiKTsKPiArCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+
ICsJdTMyICpidWYgPSBkc2ItPmNtZF9idWY7Cj4gKwo+ICsJaWYgKCFidWYpIHsKPiArCQlJOTE1
X1dSSVRFKHJlZywgdmFsKTsKPiArCQlyZXR1cm47Cj4gKwl9Cj4gKwo+ICsJaWYgKFdBUk5fT04o
ZHNiLT5mcmVlX3BvcyA+PSBEU0JfQlVGX1NJWkUpKSB7Cj4gKwkJRFJNX0RFQlVHX0tNUygiRFNC
IGJ1ZmZlciBvdmVyZmxvdy5cbiIpOwoKTGV0cyByZW1vdmUgdGhpcyAnLicgaW4gdGhlIGVuZCwg
dG8gbWFpbnRhaW4gY29uc2lzdGVuY3kgaW4gdGhlIGxvZy4KCi0gU2hhc2hhbmsKCj4gKwkJcmV0
dXJuOwo+ICsJfQo+ICsKPiArCWJ1Zltkc2ItPmZyZWVfcG9zKytdID0gdmFsOwo+ICsJYnVmW2Rz
Yi0+ZnJlZV9wb3MrK10gPSAoRFNCX09QQ09ERV9NTUlPX1dSSVRFICA8PCBEU0JfT1BDT0RFX1NI
SUZUKSB8Cj4gKwkJCSAgICAgICAoRFNCX0JZVEVfRU4gPDwgRFNCX0JZVEVfRU5fU0hJRlQpIHwK
PiArCQkJICAgICAgIGk5MTVfbW1pb19yZWdfb2Zmc2V0KHJlZyk7Cj4gK30KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgKPiBpbmRleCAyN2ViNjhlYjUzOTIuLjMxYjg3
ZGNmZTE2MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RzYi5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaAo+
IEBAIC02LDYgKzYsOCBAQAo+ICAgI2lmbmRlZiBfSU5URUxfRFNCX0gKPiAgICNkZWZpbmUgX0lO
VEVMX0RTQl9ICj4gICAKPiArI2luY2x1ZGUgImk5MTVfcmVnLmgiCj4gKwo+ICAgc3RydWN0IGlu
dGVsX2NydGM7Cj4gICBzdHJ1Y3QgaTkxNV92bWE7Cj4gICAKPiBAQCAtMjEsMTAgKzIzLDE3IEBA
IHN0cnVjdCBpbnRlbF9kc2Igewo+ICAgCWVudW0gZHNiX2lkIGlkOwo+ICAgCXUzMiAqY21kX2J1
ZjsKPiAgIAlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKPiArCj4gKwkvKgo+ICsJICogZnJlZV9wb3Mg
d2lsbCBwb2ludCB0aGUgZmlyc3QgZnJlZSBlbnRyeSBwb3NpdGlvbgo+ICsJICogYW5kIGhlbHAg
aW4gY2FsY3VsYXRpbmcgdGFpbCBvZiBjb21tYW5kIGJ1ZmZlci4KPiArCSAqLwo+ICsJaW50IGZy
ZWVfcG9zOwo+ICAgfTsKPiAgIAo+ICAgc3RydWN0IGludGVsX2RzYiAqCj4gICBpbnRlbF9kc2Jf
Z2V0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsKPiAgIHZvaWQgaW50ZWxfZHNiX3B1dChzdHJ1
Y3QgaW50ZWxfZHNiICpkc2IpOwo+ICt2b2lkIGludGVsX2RzYl9yZWdfd3JpdGUoc3RydWN0IGlu
dGVsX2RzYiAqZHNiLCBpOTE1X3JlZ190IHJlZywgdTMyIHZhbCk7Cj4gICAKPiAgICNlbmRpZgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
