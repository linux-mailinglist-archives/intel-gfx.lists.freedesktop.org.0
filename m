Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3750DCF5AC
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 11:08:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F5416E29D;
	Tue,  8 Oct 2019 09:08:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39CFA6E29D
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 09:08:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18760945-1500050 for multiple; Tue, 08 Oct 2019 10:07:01 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191004170452.15410-4-matthew.auld@intel.com>
References: <20191004170452.15410-1-matthew.auld@intel.com>
 <20191004170452.15410-4-matthew.auld@intel.com>
Message-ID: <157052561934.5063.13453288871360272207@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 08 Oct 2019 10:06:59 +0100
Subject: Re: [Intel-gfx] [PATCH v3 03/21] drm/i915/region: support
 contiguous allocations
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMDQgMTg6MDQ6MzQpCj4gQEAgLTk4LDEwICsx
MDMsMTIgQEAgaTkxNV9nZW1fb2JqZWN0X2dldF9wYWdlc19idWRkeShzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqKQo+ICB9Cj4gIAo+ICB2b2lkIGk5MTVfZ2VtX29iamVjdF9pbml0X21l
bW9yeV9yZWdpb24oc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiAtICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24g
Km1lbSkKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGlu
dGVsX21lbW9yeV9yZWdpb24gKm1lbSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgdW5zaWduZWQgbG9uZyBmbGFncykKPiAgewo+ICAgICAgICAgSU5JVF9MSVNUX0hF
QUQoJm9iai0+bW0uYmxvY2tzKTsKPiAgICAgICAgIG9iai0+bW0ucmVnaW9uID0gaW50ZWxfbWVt
b3J5X3JlZ2lvbl9nZXQobWVtKTsKPiArICAgICAgIG9iai0+ZmxhZ3MgPSBmbGFnczsKClRoaXMg
aXMgb2RkIGFzIHlvdSBkb24ndCBuZWNlc3NhcmlseSBoYXZlIGV4Y2x1c2l2ZSBjb250cm9sIG9m
IG9iai0+ZmxhZ3MKCkxvb2tzIGxpa2UgdGhpcyBtYXkgYmUgYSB3YXJ0IGluIHRoZSBhcGkuCgo+
ICtzdGF0aWMgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKgo+ICtpZ3Rfb2JqZWN0X2NyZWF0
ZShzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAo+ICsgICAgICAgICAgICAgICAgIHN0
cnVjdCBsaXN0X2hlYWQgKm9iamVjdHMsCj4gKyAgICAgICAgICAgICAgICAgdTY0IHNpemUsCj4g
KyAgICAgICAgICAgICAgICAgdW5zaWduZWQgaW50IGZsYWdzKQo+ICt7Cj4gKyAgICAgICBzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwo+ICsgICAgICAgaW50IGVycjsKPiArCj4gKyAg
ICAgICBvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3JlZ2lvbihtZW0sIHNpemUsIGZsYWdz
KTsKPiArICAgICAgIGlmIChJU19FUlIob2JqKSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIG9i
ajsKPiArCj4gKyAgICAgICBlcnIgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7Cj4g
KyAgICAgICBpZiAoZXJyKQo+ICsgICAgICAgICAgICAgICBnb3RvIHB1dDsKPiArCj4gKyAgICAg
ICBsaXN0X2FkZCgmb2JqLT5zdF9saW5rLCBvYmplY3RzKTsKPiArICAgICAgIHJldHVybiBvYmo7
Cj4gKwo+ICtwdXQ6Cj4gKyAgICAgICBpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7Cj4gKyAgICAg
ICByZXR1cm4gRVJSX1BUUihlcnIpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgdm9pZCBpZ3Rfb2JqZWN0
X3JlbGVhc2Uoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKPiArewo+ICsgICAgICAg
aTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7Cj4gKyAgICAgICBfX2k5MTVfZ2VtX29i
amVjdF9wdXRfcGFnZXMob2JqLCBJOTE1X01NX05PUk1BTCk7Cj4gKyAgICAgICBpOTE1X2dlbV9v
YmplY3RfcHV0KG9iaik7Cj4gKyAgICAgICBsaXN0X2RlbCgmb2JqLT5zdF9saW5rKTsKCkRpZCB5
b3UganVzdCBwdXQgdGhlIG9iamVjdCBiZWZvcmUgb3BlcmF0aW5nIG9uIGl0PyBEaWQgeW91IGhh
dmUgYSBzcGFyZQpyZWZlcmVuY2UgbHlpbmcgYXJvdW5kPyA6KQotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
