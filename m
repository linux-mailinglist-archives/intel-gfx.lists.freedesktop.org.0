Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6D2968C9
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 20:55:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD5536E84A;
	Tue, 20 Aug 2019 18:55:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E97536E84A
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 18:55:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18206378-1500050 for multiple; Tue, 20 Aug 2019 19:55:03 +0100
MIME-Version: 1.0
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190820170631.26570-1-daniel.vetter@ffwll.ch>
References: <20190820170631.26570-1-daniel.vetter@ffwll.ch>
Message-ID: <156632730188.1374.698930507357040712@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 20 Aug 2019 19:55:01 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: disable set/get_tiling ioctl on
 gen12+
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Kenneth Graunke <kenneth@whitecape.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTA4LTIwIDE4OjA2OjMxKQo+IFRoZSBjcHUgKGRl
KXRpbGVyIGh3IGlzIGdvbmUsIHRoaXMgc3RvcHBlZCBiZWluZyB1c2VmdWwuIFBsdXMgaXQgbmV2
ZXIKPiBzdXBwb3J0ZWQgYW55IG9mIHRoZSBmYW5jeSBuZXcgdGlsaW5nIGZvcm1hdHMsIHdoaWNo
IG1lYW5zIHVzZXJzcGFjZQo+IGFsc28gc3RvcHBlZCB1c2luZyB0aGUgbWFnaWMgc2lkZS1jaGFu
bmVsIHRoaXMgcHJvdmlkZXMuCj4gCj4gVGhpcyB3b3VsZCB0b3RhbGx5IGJyZWFrIGEgbG90IG9m
IHRoZSBpZ3RzLCBidXQgdGhleSdyZSBhbHJlYWR5IGJyb2tlbgo+IGZvciB0aGUgc2FtZSByZWFz
b25zIGFzIHVzZXJzcGFjZSBvbiBnZW4xMiB3b3VsZCBiZS4KPiAKPiBDYzogS2VubmV0aCBHcmF1
bmtlIDxrZW5uZXRoQHdoaXRlY2FwZS5vcmc+Cj4gQ2M6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBq
bGVrc3RyYW5kLm5ldD4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdGlsaW5nLmMgfCA4ICsrKysr
KysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3RpbGluZy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3RpbGluZy5jCj4gaW5kZXggY2EwYzJmNDUxNzQyLi4yZWU5
NmYyN2EyOTQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3RpbGluZy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3RpbGlu
Zy5jCj4gQEAgLTMxMywxMCArMzEzLDE1IEBAIGludAo+ICBpOTE1X2dlbV9zZXRfdGlsaW5nX2lv
Y3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCj4gIHsKPiArICAgICAgIHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKPiAgICAgICAgIHN0cnVj
dCBkcm1faTkxNV9nZW1fc2V0X3RpbGluZyAqYXJncyA9IGRhdGE7Cj4gICAgICAgICBzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwo+ICAgICAgICAgaW50IGVycjsKPiAgCj4gKyAgICAg
ICAvKiB0aGVyZSBpcyBubyBjcHUgKGRlKXRpbGluZyBpbiB0aGUgaHcgYW55bW9yZSBvbiBnZW4x
MisgKi8KPiArICAgICAgIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQoKVGhpcyBzaG91
bGQgYmUgaWYgKCFOVU1fRkVOQ0VTKGRldl9wcml2KSkgaWYgYW55dGhpbmcuIFlvdSB3b3VsZG4n
dCBldmVuCm5lZWQgdGhlIGNvbW1lbnQgdGFsa2luZyBhYm91dCByYW5kb20gZmVhdHVyZXMsIGFu
ZCBpbnN0ZWFkIGZvY3VzIG9uIHdoeQpub3Qgc3VwcG9ydGluZyB0aGUgYmFjayBjaGFubmVsIGlz
IHdvcnRoIHRoZSBtYWludGVuYW5jZSBjb3N0IG9mCmRpdmVyZ2VuY2UuCgo+ICsgICAgICAgICAg
ICAgICByZXR1cm4gLUVPUE5PVFNVUFA7Cj4gKwo+ICAgICAgICAgb2JqID0gaTkxNV9nZW1fb2Jq
ZWN0X2xvb2t1cChmaWxlLCBhcmdzLT5oYW5kbGUpOwo+ICAgICAgICAgaWYgKCFvYmopCj4gICAg
ICAgICAgICAgICAgIHJldHVybiAtRU5PRU5UOwo+IEBAIC00MDIsNiArNDA3LDkgQEAgaTkxNV9n
ZW1fZ2V0X3RpbGluZ19pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+
ICAgICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKPiAgICAgICAgIGludCBl
cnIgPSAtRU5PRU5UOwo+ICAKPiArICAgICAgIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEy
KQo+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVPUE5PVFNVUFA7CgpOb3QgcmVxdWlyZWQuCi1D
aHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
