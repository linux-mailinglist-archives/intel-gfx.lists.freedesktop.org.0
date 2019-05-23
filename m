Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB4F27A0A
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 12:09:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C46CD89D7B;
	Thu, 23 May 2019 10:09:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EC3789D7B;
 Thu, 23 May 2019 10:09:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 03:09:37 -0700
X-ExtLoop1: 1
Received: from gaia.fi.intel.com ([10.237.72.169])
 by fmsmga008.fm.intel.com with ESMTP; 23 May 2019 03:09:36 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 3073C5C1433; Thu, 23 May 2019 13:08:43 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190523094940.30195-1-chris@chris-wilson.co.uk>
References: <20190523094940.30195-1-chris@chris-wilson.co.uk>
Date: Thu, 23 May 2019 13:08:43 +0300
Message-ID: <87mujdfpp0.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] igt/gem_fence_thrash,
 gem_mmap_gtt: Don't let the device sleep
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gVGhlc2Ug
dGVzdHMgYXJlIG5vdCBpbnRlbmRlZCB0byBleGVyY2lzZSBydW50aW1lIHBtLCBidXQgdGhlIGRl
dmljZQo+IGdvaW5nIHRvIHNsZWVwIGluIHRoZSBtaWRkbGUgb2YgdGhlc2UgdGVzdHMgY2FuIHNp
Z25pZmljYW50bHkgc2xvdyB0aGVtCj4gZG93biBhcyB0aGUgR1RUIG1tYXBwaW5nIGlzIHRvcm4g
ZG93biBhbmQgbXVzdCBiZSByZWJ1aWx0LiBUaGlzIGNhbiBiZSBhCj4gbWFqb3IgbnVpc2FuY2Ug
aWYgdGhlIGRldmljZSBhdXRvc3VzcGVuZHMgbWFueSB0aW1lcyBhIHNlY29uZC4KPgo+IFRoZXNl
IHRlc3RzIGRpZmZlciBmcm9tIHR5cGljYWwgYXBwbGljYXRpb25zIGFzIHRoZXkgYXJlIG5vdCBk
b2luZyBhbnkKPiByZW5kZXJpbmcgb3IgdXRpbGl6aW5nIHRoZSBkaXNwbGF5IHdoaWNoIHdvdWxk
IG9yZGluYXJpbHkga2VlcCB0aGUKPiBkZXZpY2UgYXdha2UuCj4KPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgdGVzdHMvaTkx
NS9nZW1fZmVuY2VfdGhyYXNoLmMgfCAxNyArKysrKysrKysrKysrKysrKwo+ICB0ZXN0cy9pOTE1
L2dlbV9tbWFwX2d0dC5jICAgICB8IDE1ICsrKysrKysrKysrKysrLQo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDMxIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS90ZXN0
cy9pOTE1L2dlbV9mZW5jZV90aHJhc2guYyBiL3Rlc3RzL2k5MTUvZ2VtX2ZlbmNlX3RocmFzaC5j
Cj4gaW5kZXggMmQ3ZmIyZmY4Li43NzBlOWNiOTggMTAwNjQ0Cj4gLS0tIGEvdGVzdHMvaTkxNS9n
ZW1fZmVuY2VfdGhyYXNoLmMKPiArKysgYi90ZXN0cy9pOTE1L2dlbV9mZW5jZV90aHJhc2guYwo+
IEBAIC0yMzIsMTAgKzIzMiwyNyBAQCBzdGF0aWMgaW50IHJ1bl90ZXN0KGludCB0aHJlYWRzX3Bl
cl9mZW5jZSwgdm9pZCAqZiwgaW50IHRpbGluZywKPiAgCXJldHVybiAwOwo+ICB9Cj4gIAo+ICtz
dGF0aWMgaW50IHdha2VyZWZfb3BlbihpbnQgZGV2aWNlKQo+ICt7Cj4gKwlpbnQgZGlyLCBmZDsK
PiArCj4gKwlkaXIgPSBpZ3RfZGVidWdmc19kaXIoZGV2aWNlKTsKPiArCWZkID0gb3BlbmF0KGRp
ciwgImk5MTVfd2FrZXJlZl91c2VyIiwgT19SRE9OTFkpOwoKSSB3YXMgc2Vla2luZyB0aGUgY29y
cmVzcG9uZGluZyBkZWJ1Z2ZzIGVudHJ5LiBIb3dldmVyCml0IHNlZW1zIGZvcmNld2FrZSB1c2Vy
IHRha2VzIHRoZSBwbSByZWYgYW5kIHlvdSB3YW50IHRvIHBpZ2d5YmFjayBvbgp0aGF0LgoKYWxz
byBpZ3RfYXNzZXJ0KGZkICE9IC0xKSA/Ci1NaWthCgo+ICsJY2xvc2UoZGlyKTsKPiArCj4gKwly
ZXR1cm4gZmQ7Cj4gK30KPiArCj4gIGlndF9tYWluCj4gIHsKPiAgCWlndF9za2lwX29uX3NpbXVs
YXRpb24oKTsKPiAgCj4gKwlpZ3RfZml4dHVyZSB7Cj4gKwkJaW50IGZkID0gZHJtX29wZW5fZHJp
dmVyKERSSVZFUl9JTlRFTCk7Cj4gKwkJd2FrZXJlZl9vcGVuKGZkKTsKPiArCQljbG9zZShmZCk7
Cj4gKwl9Cj4gKwo+ICAJaWd0X3N1YnRlc3QoImJvLXdyaXRlLXZlcmlmeS1ub25lIikKPiAgCQlp
Z3RfYXNzZXJ0KHJ1bl90ZXN0KDAsIGJvX3dyaXRlX3ZlcmlmeSwgSTkxNV9USUxJTkdfTk9ORSwg
ODApID09IDApOwo+ICAKPiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fbW1hcF9ndHQuYyBi
L3Rlc3RzL2k5MTUvZ2VtX21tYXBfZ3R0LmMKPiBpbmRleCA5YTY3MGYwMzAuLjRiNzA5ZjgxZSAx
MDA2NDQKPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jCj4gKysrIGIvdGVzdHMvaTkx
NS9nZW1fbW1hcF9ndHQuYwo+IEBAIC04NzMsNiArODczLDE3IEBAIHN0YXRpYyBpbnQgbW1hcF9p
b2N0bChpbnQgaTkxNSwgc3RydWN0IGRybV9pOTE1X2dlbV9tbWFwX2d0dCAqYXJnKQo+ICAJcmV0
dXJuIGVycjsKPiAgfQo+ICAKPiArc3RhdGljIGludCB3YWtlcmVmX29wZW4oaW50IGRldmljZSkK
PiArewo+ICsJaW50IGRpciwgZmQ7Cj4gKwo+ICsJZGlyID0gaWd0X2RlYnVnZnNfZGlyKGRldmlj
ZSk7Cj4gKwlmZCA9IG9wZW5hdChkaXIsICJpOTE1X3dha2VyZWZfdXNlciIsIE9fUkRPTkxZKTsK
PiArCWNsb3NlKGRpcik7Cj4gKwo+ICsJcmV0dXJuIGZkOwo+ICt9Cj4gKwo+ICBpbnQgZmQ7Cj4g
IAo+ICBpZ3RfbWFpbgo+IEBAIC04ODAsOCArODkxLDEwIEBAIGlndF9tYWluCj4gIAlpZiAoaWd0
X3J1bl9pbl9zaW11bGF0aW9uKCkpCj4gIAkJT0JKRUNUX1NJWkUgPSAxICogMTAyNCAqIDEwMjQ7
Cj4gIAo+IC0JaWd0X2ZpeHR1cmUKPiArCWlndF9maXh0dXJlIHsKPiAgCQlmZCA9IGRybV9vcGVu
X2RyaXZlcihEUklWRVJfSU5URUwpOwo+ICsJCXdha2VyZWZfb3BlbihmZCk7Cj4gKwl9Cj4gIAo+
ICAJaWd0X3N1YnRlc3QoImJhZC1vYmplY3QiKSB7Cj4gIAkJdWludDMyX3QgcmVhbF9oYW5kbGUg
PSBnZW1fY3JlYXRlKGZkLCA0MDk2KTsKPiAtLSAKPiAyLjIwLjEKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
