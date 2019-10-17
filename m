Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 456C1DB84F
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 22:31:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 547D06E0AD;
	Thu, 17 Oct 2019 20:31:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B9E36EAB7
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 20:31:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18875062-1500050 for multiple; Thu, 17 Oct 2019 21:31:24 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191017174544.22446-3-matthew.auld@intel.com>
References: <20191017174544.22446-1-matthew.auld@intel.com>
 <20191017174544.22446-3-matthew.auld@intel.com>
Message-ID: <157134428310.10597.16779072357609154138@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 17 Oct 2019 21:31:23 +0100
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: treat shmem as a region
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMTcgMTg6NDU6NDMpCj4gQEAgLTQzNCw5ICs0
MzksOSBAQCBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdF9vcHMgaTkxNV9nZW1fc2ht
ZW1fb3BzID0gewo+ICAgICAgICAgLnJlbGVhc2UgPSBzaG1lbV9yZWxlYXNlLAo+ICB9Owo+ICAK
PiAtc3RhdGljIGludCBjcmVhdGVfc2htZW0oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosCj4g
LSAgICAgICAgICAgICAgICAgICAgICAgc2l6ZV90IHNpemUpCj4gK3N0YXRpYyBpbnQgX19jcmVh
dGVfc2htZW0oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgIHNpemVfdCBzaXplKQoKSSB3b3VsZCBmZWVsIGhhcHBpZXIgaWYgb3VyIGludGVy
ZmFjZSB3YXMgY29uc2lzdGVudCwgcmlnaHQgdXAgdW50aWwgdGhlCm1vbWVudCBpdCBtZXQgZHJt
LCBpLmUuIHJlc291cmNlX3NpemVfdCBzaXplLgoKPiAgewo+ICAgICAgICAgdW5zaWduZWQgbG9u
ZyBmbGFncyA9IFZNX05PUkVTRVJWRTsKPiAgICAgICAgIHN0cnVjdCBmaWxlICpmaWxwOwo+IEBA
IC00NTUsMzEgKzQ2MCwyMyBAQCBzdGF0aWMgaW50IGNyZWF0ZV9zaG1lbShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwKPiAgICAgICAgIHJldHVybiAwOwo+ICB9Cj4gIAo+IC1zdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqCj4gLWk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0oc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHU2NCBzaXplKQo+ICtzdGF0aWMgc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKgo+ICtjcmVhdGVfc2htZW0oc3RydWN0IGludGVsX21lbW9yeV9y
ZWdpb24gKm1lbSwKPiArICAgICAgICAgICAgcmVzb3VyY2Vfc2l6ZV90IHNpemUsCj4gKyAgICAg
ICAgICAgIHVuc2lnbmVkIGludCBmbGFncykKPiAgewo+ICsgICAgICAgc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUgPSBtZW0tPmk5MTU7Cj4gICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqOwo+ICAgICAgICAgc3RydWN0IGFkZHJlc3Nfc3BhY2UgKm1hcHBpbmc7Cj4g
ICAgICAgICB1bnNpZ25lZCBpbnQgY2FjaGVfbGV2ZWw7Cj4gICAgICAgICBnZnBfdCBtYXNrOwo+
ICAgICAgICAgaW50IHJldDsKPiAgCj4gLSAgICAgICAvKiBUaGVyZSBpcyBhIHByZXZhbGVuY2Ug
b2YgdGhlIGFzc3VtcHRpb24gdGhhdCB3ZSBmaXQgdGhlIG9iamVjdCdzCj4gLSAgICAgICAgKiBw
YWdlIGNvdW50IGluc2lkZSBhIDMyYml0IF9zaWduZWRfIHZhcmlhYmxlLiBMZXQncyBkb2N1bWVu
dCB0aGlzIGFuZAo+IC0gICAgICAgICogY2F0Y2ggaWYgd2UgZXZlciBuZWVkIHRvIGZpeCBpdC4g
SW4gdGhlIG1lYW50aW1lLCBpZiB5b3UgZG8gc3BvdAo+IC0gICAgICAgICogc3VjaCBhIGxvY2Fs
IHZhcmlhYmxlLCBwbGVhc2UgY29uc2lkZXIgZml4aW5nIQo+IC0gICAgICAgICovCj4gLSAgICAg
ICBpZiAoc2l6ZSA+PiBQQUdFX1NISUZUID4gSU5UX01BWCkKPiAtICAgICAgICAgICAgICAgcmV0
dXJuIEVSUl9QVFIoLUUyQklHKTsKPiAtCj4gLSAgICAgICBpZiAob3ZlcmZsb3dzX3R5cGUoc2l6
ZSwgb2JqLT5iYXNlLnNpemUpKQo+IC0gICAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRTJC
SUcpOwo+IC0KPiAgICAgICAgIG9iaiA9IGk5MTVfZ2VtX29iamVjdF9hbGxvYygpOwo+ICAgICAg
ICAgaWYgKCFvYmopCj4gICAgICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwo+
ICAKPiAtICAgICAgIHJldCA9IGNyZWF0ZV9zaG1lbShpOTE1LCAmb2JqLT5iYXNlLCBzaXplKTsK
PiArICAgICAgIHJldCA9IF9fY3JlYXRlX3NobWVtKGk5MTUsICZvYmotPmJhc2UsIHNpemUpOwo+
ICAgICAgICAgaWYgKHJldCkKPiAgICAgICAgICAgICAgICAgZ290byBmYWlsOwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
