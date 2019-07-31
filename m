Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 112CC7BA03
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 08:56:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6CF8899BB;
	Wed, 31 Jul 2019 06:56:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F60B899BB
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 06:56:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17750295-1500050 for multiple; Wed, 31 Jul 2019 07:56:34 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190730154853.19157-1-chris@chris-wilson.co.uk>
 <e5749218-69ed-919a-a0bd-1bd53210d55d@linux.intel.com>
In-Reply-To: <e5749218-69ed-919a-a0bd-1bd53210d55d@linux.intel.com>
Message-ID: <156455619343.6373.3750797104242725213@skylake-alporthouse-com>
Date: Wed, 31 Jul 2019 07:56:33 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Pass intel_context to
 igt_spinner
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0zMSAwNjo1NToyMykKPiAKPiBPbiAzMC8w
Ny8yMDE5IDE2OjQ4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBAQCAtMTE4MywxMSArMTE4OSwx
NiBAQCBsaXZlX2VuZ2luZV9yZXNldF93b3JrYXJvdW5kcyh2b2lkICphcmcpCj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgZ290byBlcnI7Cj4gPiAgICAgICAgICAgICAgIH0KPiA+ICAgCj4gPiAt
ICAgICAgICAgICAgIHJldCA9IGlndF9zcGlubmVyX2luaXQoJnNwaW4sIGk5MTUpOwo+ID4gLSAg
ICAgICAgICAgICBpZiAocmV0KQo+ID4gLSAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+
ID4gKyAgICAgICAgICAgICBjZSA9IGk5MTVfZ2VtX2NvbnRleHRfZ2V0X2VuZ2luZShjdHgsIGVu
Z2luZS0+aWQpOwo+ID4gKyAgICAgICAgICAgICBpZiAoSVNfRVJSKGNlKSkKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICBjb250aW51ZTsKPiAKPiBDYW4ndCBpbnN0ZWFkIHVzZSB0aGUgZm9yX2Vh
Y2hfZ2VtX2VuZ2luZSBwYXR0ZXJuIGFzIGluIGxpdmVfc2FuaXR5Y2hlY2s/CgpUaGUgcHJvYmxl
bSBoZXJlIGlzIHRoYXQgdGhlIHZlcmlmeV93YSB3aGljaCB0aGVuIGFsc28gdXNlcwpmb3JfZWFj
aF9nZW1fZW5naW5lLiBKdXN0IG5lZWRzIHRvIHJlamlnZ2xlIHRoZSBvdGhlciBjYWxsZXJzIHNv
IHRoYXQKdGhlIGNvbnRleHQgaXMgYWx3YXlzIGxvY2tlZC4KCj4gPiAtICAgICBzcGluLT5od3Mg
PSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGk5MTUsIFBBR0VfU0laRSk7Cj4gPiAr
ICAgICBzcGluLT5od3MgPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGd0LT5pOTE1
LCBQQUdFX1NJWkUpOwo+IAo+IEknZCBhZGQgdGhlIGk5MTUgbG9jYWwuCgpNYXliZSwgYXQgc29t
ZSBwb2ludCB3ZSBuZWVkIHRvIHBhc3MgZ3QgaW50byBbaW50ZXJuYWxdIG9iamVjdCBjcmVhdGlv
bi4KQXQgdGhlIG1vbWVudCwgSSBsaWtlIGd0LT5pOTE1IGZvciBiZWluZyBhbiBleWVzb3JlLiBX
aGVuIHRoZXJlIGFyZQplbm91Z2ggb2YgdGhlbSwgaXQgaW5kaWNhdGVzIHdoaWNoIEFQSSBuZWVk
cyBhZGp1c3RpbmcgbmV4dCA6KQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
