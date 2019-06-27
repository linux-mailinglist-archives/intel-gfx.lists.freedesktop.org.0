Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A48AC58E95
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 01:35:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19A1B6E853;
	Thu, 27 Jun 2019 23:35:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B789F6E852
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 23:35:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17050742-1500050 for multiple; Fri, 28 Jun 2019 00:35:29 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-11-matthew.auld@intel.com>
In-Reply-To: <20190627205633.1143-11-matthew.auld@intel.com>
Message-ID: <156167852700.21955.17736612429448840979@skylake-alporthouse-com>
Date: Fri, 28 Jun 2019 00:35:27 +0100
Subject: Re: [Intel-gfx] [PATCH v2 10/37] drm/i915/blt: support copying
 objects
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMjcgMjE6NTY6MDYpCj4gV2UgY2FuIGFscmVh
ZHkgY2xlYXIgYW4gb2JqZWN0IHdpdGggdGhlIGJsdCwgc28gdHJ5IHRvIGRvIHRoZSBzYW1lIHRv
Cj4gc3VwcG9ydCBjb3B5aW5nIGZyb20gb25lIG9iamVjdCBiYWNraW5nIHN0b3JlIHRvIGFub3Ro
ZXIuIFJlYWxseSB0aGlzIGlzCj4ganVzdCBvYmplY3QgLT4gb2JqZWN0LCB3aGljaCBpcyBub3Qg
dGhhdCB1c2VmdWwgeWV0LCB3aGF0IHdlIHJlYWxseSB3YW50Cj4gaXMgdHdvIGJhY2tpbmcgc3Rv
cmVzLCBidXQgdGhhdCB3aWxsIHJlcXVpcmUgc29tZSB2bWEgcmV3b3JrIGZpcnN0LAo+IG90aGVy
d2lzZSB3ZSBhcmUgc3R1Y2sgd2l0aCAidG1wIiBvYmplY3RzLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiBDYzogSm9vbmFzIExhaHRp
bmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+IENjOiBBYmRpZWwgSmFudWxn
dWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRlbC5jb20KPiAtLS0KPiAgLi4uL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5jICAgIHwgMTM1ICsrKysrKysrKysrKysrKysr
Kwo+ICAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfYmx0LmggICAgfCAgIDgg
KysKPiAgLi4uL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9vYmplY3RfYmx0LmMgIHwgMTA1
ICsrKysrKysrKysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21t
YW5kcy5oICB8ICAgMyArLQo+ICA0IGZpbGVzIGNoYW5nZWQsIDI1MCBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9vYmplY3RfYmx0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
b2JqZWN0X2JsdC5jCj4gaW5kZXggY2I0MmUzYTMxMmUyLi5jMmIyOGUwNmMzNzkgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9ibHQuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfYmx0LmMKPiBAQCAt
MTAyLDYgKzEwMiwxNDEgQEAgaW50IGk5MTVfZ2VtX29iamVjdF9maWxsX2JsdChzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+ICAgICAgICAgcmV0dXJuIGVycjsKPiAgfQo+ICAKPiAr
aW50IGludGVsX2VtaXRfdm1hX2NvcHlfYmx0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKnNyYywKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGk5MTVfdm1hICpkc3QpCj4gK3sKPiArICAgICAg
IGNvbnN0IGludCBnZW4gPSBJTlRFTF9HRU4ocnEtPmk5MTUpOwo+ICsgICAgICAgdTMyICpjczsK
PiArCj4gKyAgICAgICBHRU1fQlVHX09OKHNyYy0+c2l6ZSAhPSBkc3QtPnNpemUpOwoKRm9yIGEg
bG93IGxldmVsIGludGVyZmFjZSwgSSB3b3VsZCBzdWdnZXN0IGEgbGl0dGxlIG92ZXIgZW5naW5l
ZXJpbmcgYW5kCnRha2Ugc3JjX29mZnNldCwgZHN0X29mZnNldCwgbGVuZ3RoLiBGb3IgYm9udXMg
cG9pbnRzLCAyRCAtLSBidXQgSQphY2NlcHQgdGhhdCBtYXkgYmUgdG9vIG11Y2ggb3Zlci1lbmdp
bmVlcmluZyB3aXRob3V0IGEgdXNlci4KCj4gKyAgICAgICBjcyA9IGludGVsX3JpbmdfYmVnaW4o
cnEsIDEwKTsKPiArICAgICAgIGlmIChJU19FUlIoY3MpKQo+ICsgICAgICAgICAgICAgICByZXR1
cm4gUFRSX0VSUihjcyk7Cj4gKwo+ICsgICAgICAgaWYgKGdlbiA+PSA5KSB7Cj4gKyAgICAgICAg
ICAgICAgICpjcysrID0gR0VOOV9YWV9GQVNUX0NPUFlfQkxUX0NNRCB8ICgxMC0yKTsKPiArICAg
ICAgICAgICAgICAgKmNzKysgPSBCTFRfREVQVEhfMzIgfCBQQUdFX1NJWkU7Cj4gKyAgICAgICAg
ICAgICAgICpjcysrID0gMDsKPiArICAgICAgICAgICAgICAgKmNzKysgPSBzcmMtPnNpemUgPj4g
UEFHRV9TSElGVCA8PCAxNiB8IFBBR0VfU0laRSAvIDQ7Cj4gKyAgICAgICAgICAgICAgICpjcysr
ID0gbG93ZXJfMzJfYml0cyhkc3QtPm5vZGUuc3RhcnQpOwo+ICsgICAgICAgICAgICAgICAqY3Mr
KyA9IHVwcGVyXzMyX2JpdHMoZHN0LT5ub2RlLnN0YXJ0KTsKPiArICAgICAgICAgICAgICAgKmNz
KysgPSAwOwo+ICsgICAgICAgICAgICAgICAqY3MrKyA9IFBBR0VfU0laRTsKPiArICAgICAgICAg
ICAgICAgKmNzKysgPSBsb3dlcl8zMl9iaXRzKHNyYy0+bm9kZS5zdGFydCk7Cj4gKyAgICAgICAg
ICAgICAgICpjcysrID0gdXBwZXJfMzJfYml0cyhzcmMtPm5vZGUuc3RhcnQpOwoKUmVtaW5kcyBt
ZSB0aGF0IHdlIGRpZG4ndCBmaXggdGhlIGVhcmxpZXIgcm91dGluZXMgdG8gaGFuZGxlIG1vcmUg
dGhhbgozMmsgcGFnZXMgZWl0aGVyLiBQbGVhc2UgYWRkIGEgdGVzdCBjYXNlIDopCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
