Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7F9982C2
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 20:29:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F53B6E968;
	Wed, 21 Aug 2019 18:29:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98A476E968
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 18:29:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18218411-1500050 for multiple; Wed, 21 Aug 2019 19:29:12 +0100
MIME-Version: 1.0
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190821063236.19705-7-animesh.manna@intel.com>
References: <20190821063236.19705-1-animesh.manna@intel.com>
 <20190821063236.19705-7-animesh.manna@intel.com>
Message-ID: <156641215065.20466.3333013217026008208@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 21 Aug 2019 19:29:10 +0100
Subject: Re: [Intel-gfx] [PATCH v2 06/15] drm/i915/dsb: Update i915_write to
 call dsb-write.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbmltZXNoIE1hbm5hICgyMDE5LTA4LTIxIDA3OjMyOjI2KQo+IEV4aXN0aW5nIG1t
aW8tcmVnLXdyaXRlIG5lZWQgaW50ZWxfdW5jb3JlIGhhbmRsZSB3aGljaCBpcyBwYXJ0Cj4gb2Yg
ZGV2X3ByaXYgc3RydWN0dXJlIGFuZCB0aGUgc2FtZSBkZXNpZ24gaXMgZm9sbG93ZWQgYnkKPiBh
ZGRpbmcgZHNiIGhhbmRsZSBpbiBkZXZfcHJpdiBmb3IgcHJvZ3JhbW1pbmcgcmVnaXN0ZXJzIHRo
cm91Z2ggRFNCLgo+IAo+IEk5MTVfV1JJVEUgaXMgbW9kaWZpZWQgdG8gY2hlY2sgZm9yIHJlZ2lz
dGVyIGNhcGFiaWxpdHkgYW5kIGNhbGwKPiBkc2ItcmVnLXdyaXRlIGJhc2VkIG9uIGl0cyBjYXBh
YmlsaXR5Lgo+IAo+IE5vIGNoYW5nZXMgaW4gSTkxNV9SRUFEIGRlZmluaXRpb24gYXMgRFNCIGRv
IG5vdCBoYXZlIHN1cHBvcnQgdG8KPiByZWFkIGFueSByZWdpc3Rlci4KPiAKPiBDYzogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdv
LnZpdmlAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gu
bWFubmFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RzYi5jIHwgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAg
ICAgIHwgNiArKysrKy0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHNiLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCj4g
aW5kZXggNGZlOGNhYzYyNDZhLi42ZjE5OTkxNDAwODUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKPiBAQCAtMTIzLDcgKzEyMyw3IEBAIHZvaWQgaW50ZWxf
ZHNiX3JlZ193cml0ZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsIGk5MTVfcmVnX3QgcmVnLCB1MzIg
dmFsKQo+ICAgICAgICAgdTMyICpidWYgPSBkc2ItPmNtZF9idWY7Cj4gIAo+ICAgICAgICAgaWYg
KCFidWYpIHsKPiAtICAgICAgICAgICAgICAgSTkxNV9XUklURShyZWcsIHZhbCk7Cj4gKyAgICAg
ICAgICAgICAgIGludGVsX3VuY29yZV93cml0ZSgmKGRldl9wcml2KS0+dW5jb3JlLCByZWcsIHZh
bCk7Cj4gICAgICAgICAgICAgICAgIHJldHVybjsKPiAgICAgICAgIH0KPiAgCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oCj4gaW5kZXggNjQzZmQ2ZDZmZDczLi43YWVkOTU3MzYyYzkgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBAQCAtMTc1Myw2ICsxNzUzLDggQEAgc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgewo+ICAgICAgICAgLyogTXV0ZXggdG8gcHJvdGVjdCB0aGUgYWJvdmUgaGRj
cCBjb21wb25lbnQgcmVsYXRlZCB2YWx1ZXMuICovCj4gICAgICAgICBzdHJ1Y3QgbXV0ZXggaGRj
cF9jb21wX211dGV4Owo+ICAKPiArICAgICAgIHN0cnVjdCBpbnRlbF9kc2IgKmRzYjsKPiArCj4g
ICAgICAgICAvKgo+ICAgICAgICAgICogTk9URTogVGhpcyBpcyB0aGUgZHJpMS91bXMgZHVuZ2Vv
biwgZG9uJ3QgYWRkIHN0dWZmIGhlcmUuIFlvdXIgcGF0Y2gKPiAgICAgICAgICAqIHdpbGwgYmUg
cmVqZWN0ZWQuIEluc3RlYWQgbG9vayBmb3IgYSBiZXR0ZXIgcGxhY2UuCj4gQEAgLTI0MTQsNyAr
MjQxNiw5IEBAIGludCBpOTE1X3JlZ19yZWFkX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
IHZvaWQgKmRhdGEsCj4gICAgICAgICBpbnRlbF91bmNvcmVfIyNvcF9fKCYoZGV2X3ByaXZfXykt
PnVuY29yZSwgX19WQV9BUkdTX18pCj4gIAo+ICAjZGVmaW5lIEk5MTVfUkVBRChyZWdfXykgICAg
ICAgIF9fSTkxNV9SRUdfT1AocmVhZCwgZGV2X3ByaXYsIChyZWdfXykpCj4gLSNkZWZpbmUgSTkx
NV9XUklURShyZWdfXywgdmFsX18pIF9fSTkxNV9SRUdfT1Aod3JpdGUsIGRldl9wcml2LCAocmVn
X18pLCAodmFsX18pKQo+ICsjZGVmaW5lIEk5MTVfV1JJVEUocmVnX18sIHZhbF9fKSBcCj4gKyAg
ICAgICAocmVnX18uY2FwKSA/IGludGVsX2RzYl9yZWdfd3JpdGUoZGV2X3ByaXYtPmRzYiwgKHJl
Z19fKSwgKHZhbF9fKSkgOiBcCj4gKyAgICAgICBfX0k5MTVfUkVHX09QKHdyaXRlLCBkZXZfcHJp
diwgKHJlZ19fKSwgKHZhbF9fKSkKCkphbmksIG92ZXIgdG8geW91LgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
