Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3CFB5158
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 17:22:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 005D46ECE1;
	Tue, 17 Sep 2019 15:22:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02E466ECE1
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 15:22:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 08:22:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,516,1559545200"; d="scan'208";a="198723112"
Received: from leonidf-mobl.ger.corp.intel.com (HELO [10.252.3.171])
 ([10.252.3.171])
 by orsmga002.jf.intel.com with ESMTP; 17 Sep 2019 08:22:52 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190917074312.12290-1-chris@chris-wilson.co.uk>
 <9626a365-534f-3134-f7cf-d66cee3dee0b@linux.intel.com>
 <156873264323.5729.15738004098811029322@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <36b881cc-aa19-7ca1-e46a-a868de8433f0@linux.intel.com>
Date: Tue, 17 Sep 2019 16:22:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156873264323.5729.15738004098811029322@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Lock signaler timeline while
 navigating
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

Ck9uIDE3LzA5LzIwMTkgMTY6MDQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA5LTE3IDE1OjUxOjQ1KQo+Pgo+PiBPbiAxNy8wOS8yMDE5IDA4OjQz
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBBcyB3ZSBuZWVkIHRvIHRha2UgYSB3YWxrIGJhY2sg
YWxvbmcgdGhlIHNpZ25hbGVyIHRpbWVsaW5lIHRvIGZpbmQgdGhlCj4+PiBmZW5jZSBiZWZvcmUg
dXBvbiB3aGljaCB3ZSB3YW50IHRvIHdhaXQsIHdlIG5lZWQgdG8gbG9jayB0aGF0IHRpbWVsaW5l
Cj4+PiB0byBwcmV2ZW50IGl0IGJlaW5nIG1vZGlmaWVkIGFzIHdlIHdhbGsuIFNpbWlsYXJseSwg
d2UgYWxzbyBuZWVkIHRvCj4+PiBhY3F1aXJlIGEgcmVmZXJlbmNlIHRvIHRoZSBlYXJsaWVyIGZl
bmNlIHdoaWxlIGl0IHN0aWxsIGV4aXN0cyEKPj4+Cj4+PiBUaG91Z2ggd2UgbGFjayB0aGUgY29y
cmVjdCBsb2NraW5nIHRvZGF5LCB3ZSBhcmUgc2F2ZWQgYnkgdGhlCj4+PiBvdmVyYXJjaGluZyBz
dHJ1Y3RfbXV0ZXggLS0gYnV0IHRoYXQgcHJvdGVjdGlvbiBpcyBiZWluZyByZW1vdmVkLgo+Pj4K
Pj4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+Pj4gLS0tCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyB8IDMw
ICsrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tCj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgMjQg
aW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlcXVlc3QuYwo+Pj4gaW5kZXggZjEyMzU4MTUwMDk3Li40NTJhZDdhOGZmMGMgMTAwNjQ0Cj4+
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+Pj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKPj4+IEBAIC03NjcsMTYgKzc2NywzNCBA
QCBpOTE1X3JlcXVlc3RfY3JlYXRlKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKPj4+ICAgIHN0
YXRpYyBpbnQKPj4+ICAgIGk5MTVfcmVxdWVzdF9hd2FpdF9zdGFydChzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycSwgc3RydWN0IGk5MTVfcmVxdWVzdCAqc2lnbmFsKQo+Pj4gICAgewo+Pj4gLSAgICAg
aWYgKGxpc3RfaXNfZmlyc3QoJnNpZ25hbC0+bGluaywgJnNpZ25hbC0+dGltZWxpbmUtPnJlcXVl
c3RzKSkKPj4+ICsgICAgIHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwgPSBzaWduYWwtPnRpbWVs
aW5lOwo+Pj4gKyAgICAgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7Cj4+PiArICAgICBpbnQgZXJy
Owo+Pj4gKwo+Pj4gKyAgICAgaWYgKGxpc3RfaXNfZmlyc3QoJnNpZ25hbC0+bGluaywgJnRsLT5y
ZXF1ZXN0cykpCj4+PiAgICAgICAgICAgICAgICByZXR1cm4gMDsKPj4+ICAgIAo+Pj4gLSAgICAg
c2lnbmFsID0gbGlzdF9wcmV2X2VudHJ5KHNpZ25hbCwgbGluayk7Cj4+PiAtICAgICBpZiAoaW50
ZWxfdGltZWxpbmVfc3luY19pc19sYXRlcihycS0+dGltZWxpbmUsICZzaWduYWwtPmZlbmNlKSkK
Pj4+ICsgICAgIGlmIChtdXRleF9sb2NrX2ludGVycnVwdGlibGVfbmVzdGVkKCZ0bC0+bXV0ZXgs
IFNJTkdMRV9ERVBUSF9ORVNUSU5HKSkKPj4KPj4gV2UgYXJlIGdldHRpbmcgbW9yZSBhbmQgbW9y
ZSB0aGVzZSBuZXN0ZWQgb25lcyBhbmQgaXQgd2lsbCBiZWNvbWUKPj4gdW5tYW5hZ2VhYmxlIHRv
IHJlbWVtYmVyIHdoaWNoIG9uZXMsIHdoeSBhbmQgb24gd2hhdCBwYXRocy4gUGVyaGFwcyB3ZQo+
PiBuZWVkIGEgY29tbWVudCBuZXh0IHRvIHRoZSBtZW1iZXIgaW4gdGhlIHN0cnVjdHVyZSBkZWZp
bml0aW9uPwo+IAo+IFRoZSB0aW1lbGluZSBtdXRleCBpcyBoZWxkIGZvciByZXF1ZXN0IGNvbnN0
cnVjdGlvbiBhbmQgcmV0aXJlOyBlbnRyeQo+IGFuZCBleGl0IG9mIHRoZSB0aW1lbGluZS0+cmVx
dWVzdHMuIFNpbmNlIHdlIGhhdmUgYSByZXF1ZXN0LCBpdCBzaG91bGQKPiBiZSBob2xkaW5nIGl0
cyBycS0+dGltZWxpbmUtPm11dGV4OyBpcyB0aGF0IHdoYXQgeW91IHdpc2ggZG9jdW1lbnRlZD8K
PiAKPiBTaW1pbGFybHkgdGhhdCBzaWduYWwtPnRpbWVsaW5lICE9IHJxLT50aW1lbGluZS4KPiAK
PiBHRU1fQlVHX09OKHNpZ25hbC0+dGltZWxpbmUgPT0gcnEtPnRpbWVsaW5lKTsKPiBsb2NrZGVw
X2Fzc2VydF9oZWxkKCZycS0+dGltZWxpbmUtPm11dGV4KTsKClllYWggdGhhdCBoZWxwcy4KCj4+
PiArICAgICAgICAgICAgIHJldHVybiAtRUlOVFI7Cj4+PiArCj4+PiArICAgICBpZiAobGlzdF9p
c19maXJzdCgmc2lnbmFsLT5saW5rLCAmdGwtPnJlcXVlc3RzKSkgewo+Pj4gKyAgICAgICAgICAg
ICBmZW5jZSA9IE5VTEw7Cj4+PiArICAgICB9IGVsc2Ugewo+Pj4gKyAgICAgICAgICAgICBzaWdu
YWwgPSBsaXN0X3ByZXZfZW50cnkoc2lnbmFsLCBsaW5rKTsKPj4+ICsgICAgICAgICAgICAgZmVu
Y2UgPSBkbWFfZmVuY2VfZ2V0X3JjdSgmc2lnbmFsLT5mZW5jZSk7Cj4+PiArICAgICB9Cj4+PiAr
ICAgICBtdXRleF91bmxvY2soJnRsLT5tdXRleCk7Cj4+PiArICAgICBpZiAoIWZlbmNlKQo+Pgo+
PiBDYW4gaXQgYmUgbm8gZmVuY2Ugd2hlbiBpdCB3YXMgb2J0YWluZWQgdW5kZXIgdGhlIG11dGV4
Pwo+IAo+IFllcy4gVGhlIHByZXZpb3VzIGZlbmNlIG1heSBoYXZlIGJlZW4gcmV0aXJlZCBhbmQg
c28gcmVtb3ZlZCBmcm9tIHRoZQo+IHRsLT5yZXF1ZXN0cyBiZWZvcmUgd2UgYWNxdWlyZSB0aGUg
bXV0ZXguIEl0IHNob3VsZCBub3QgYmUgZnJlZWQgd2hpbGUKPiBpdCBpcyBzdGlsbCBpbiB0aGUg
bGlzdCwgaS5lLiBkbWFfZmVuY2VfZ2V0X3JjdSgpIHNob3VsZCBuZXZlciByZXR1cm4KPiBOVUxM
LgoKSSBkaWQgbm90IHdvcnJ5IGFib3V0IHRoZSBsaXN0X2lzX2ZpcnN0IGNoZWNrLCBqdXN0IGFi
b3V0IApkbWFfZmVuY2VfZ2V0X3JjdS4gQXQgbGVhc3QgSSdtIGhhcHB5IHRoYXQgb25lIGlzIHNh
ZmUgYW5kIHYyIGlzIGV2ZW4gCmJldHRlciBpbiB0aGlzIHJlc3BlY3QuCgpSZWdhcmRzLAoKVHZy
dGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
