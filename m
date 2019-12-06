Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 916631159B5
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 00:35:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49A256FAAD;
	Fri,  6 Dec 2019 23:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA29B6FAAD
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 23:35:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19490635-1500050 for multiple; Fri, 06 Dec 2019 23:35:17 +0000
MIME-Version: 1.0
To: Andi Shyti <andi@etezian.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191206233126.GA1300@jack.zhora.eu>
References: <20191206105527.1130413-1-chris@chris-wilson.co.uk>
 <20191206105527.1130413-4-chris@chris-wilson.co.uk>
 <20191206233126.GA1300@jack.zhora.eu>
Message-ID: <157567531590.2300.12567955104217498472@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 06 Dec 2019 23:35:15 +0000
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/gem: Pin gen6_ppgtt prior to
 constructing the request
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbmRpIFNoeXRpICgyMDE5LTEyLTA2IDIzOjMxOjI2KQo+IEhpIENocmlzLAo+IAo+
ID4gQWxsIHBpbm5pbmcgbXVzdCBiZSBkb25lIHByaW9yIHRvIGk5MTVfcmVxdWVzdF9jcmVhdGUs
IHRvIGF2b2lkCj4gPiB0aW1lbGluZS0+bXV0ZXggaW52ZXJzaW9ucy4KPiA+IAo+ID4gSGVyZSB3
ZSBzbGlnaHRseSBhYnVzZSB0aGUgY29udGV4dF9iYXJyaWVyX3Rhc2sgc3RhZ2VzIHRvIHV0aWxp
c2UgdGhlCj4gPiAnc2tpcCcgZGVjaXNpb24gYXMgYW4gb3Bwb3J0dW5pdHkgdG8gYWNxdWlyZSB0
aGUgcGluIG9uIHRoZSBuZXcgcHBndHQuCj4gPiBDb25zaWRlciBpdCBzL3NraXAvcHJlcGFyZS8u
IEF0IHRoZSBtb21lbnQsIHdlIG9ubHkgaGF2ZSBvbiB1c2VyIG9mCj4gPiBjb250ZXh0X2JhcnJp
ZXJfdGFzaywgc28gaXQgbWlnaHQgYmUgd29ydGggYnJlYWtpbmcgaXQgZG93biBmb3IgdGhlCj4g
PiBzcGVjaWZpYyB0YXNrIG9mIHNldC12bSBhbmQgcmVmYWN0b3IgaXQgbGF0ZXIgaWYgd2UgZmlu
ZCBhIHNlY29uZAo+ID4gcHVycG9zZS4KPiAKPiBbLi4uXQo+IAo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4gPiBpbmRleCA5ZjFkYzk2YjEwYTYuLjlk
OGQ3NTc2NWVlNCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9jb250ZXh0LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9jb250ZXh0LmMKPiA+IEBAIC0xMTQxLDggKzExNDEsNiBAQCBzdGF0aWMgaW50IGVtaXRfcHBn
dHRfdXBkYXRlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCB2b2lkICpkYXRhKQo+ID4gICAgICAg
ICAgICAgICAqY3MrKyA9IE1JX05PT1A7Cj4gPiAgICAgICAgICAgICAgIGludGVsX3JpbmdfYWR2
YW5jZShycSwgY3MpOwo+ID4gICAgICAgfSBlbHNlIHsKPiA+IC0gICAgICAgICAgICAgLyogcHBH
VFQgaXMgbm90IHBhcnQgb2YgdGhlIGxlZ2FjeSBjb250ZXh0IGltYWdlICovCj4gPiAtICAgICAg
ICAgICAgIGdlbjZfcHBndHRfcGluKGk5MTVfdm1fdG9fcHBndHQodm0pKTsKPiA+ICAgICAgIH0K
PiAKPiBtaD8gQW0gSSBub3Qgc2VlaW5nIHNvbWV0aGluZyBvYnZpb3VzPyBDYW4gd2UgcmVtb3Zl
IHRoZSBlbHNlPwoKU3VyZSwgSSBqdXN0IGhhdmUgdGhpcyB0aGluZyBhYm91dCBpZigpIGVsc2Ug
aWYoKSB0aGF0IGZlZWxzIHVuYmFsYW5jZWQKSnVzdCBmZWVscyBvZGQgbm90IHRvIGhhdmUgc29t
ZXRoaW5nIHRoZXJlLiAgOikKCj4gCj4gPiAgCj4gPiAgICAgICByZXR1cm4gMDsKPiA+IEBAIC0x
MTUwLDEwICsxMTQ4LDIwIEBAIHN0YXRpYyBpbnQgZW1pdF9wcGd0dF91cGRhdGUoc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEsIHZvaWQgKmRhdGEpCj4gPiAgCj4gPiAgc3RhdGljIGJvb2wgc2tpcF9w
cGd0dF91cGRhdGUoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCB2b2lkICpkYXRhKQo+ID4gIHsK
PiA+ICsgICAgIGlmICghdGVzdF9iaXQoQ09OVEVYVF9BTExPQ19CSVQsICZjZS0+ZmxhZ3MpKQo+
ID4gKyAgICAgICAgICAgICByZXR1cm4gdHJ1ZTsKPiA+ICsKPiA+ICAgICAgIGlmIChIQVNfTE9H
SUNBTF9SSU5HX0NPTlRFWFRTKGNlLT5lbmdpbmUtPmk5MTUpKQo+ID4gLSAgICAgICAgICAgICBy
ZXR1cm4gIWNlLT5zdGF0ZTsKPiA+IC0gICAgIGVsc2UKPiA+IC0gICAgICAgICAgICAgcmV0dXJu
ICFhdG9taWNfcmVhZCgmY2UtPnBpbl9jb3VudCk7Cj4gPiArICAgICAgICAgICAgIHJldHVybiBm
YWxzZTsKPiA+ICsKPiA+ICsgICAgIGlmICghYXRvbWljX3JlYWQoJmNlLT5waW5fY291bnQpKQo+
ID4gKyAgICAgICAgICAgICByZXR1cm4gdHJ1ZTsKPiA+ICsKPiA+ICsgICAgIC8qIHBwR1RUIGlz
IG5vdCBwYXJ0IG9mIHRoZSBsZWdhY3kgY29udGV4dCBpbWFnZSAqLwo+ID4gKyAgICAgaWYgKGdl
bjZfcHBndHRfcGluKGk5MTVfdm1fdG9fcHBndHQoY2UtPnZtKSkpCj4gPiArICAgICAgICAgICAg
IHJldHVybiB0cnVlOwo+ID4gKwo+ID4gKyAgICAgcmV0dXJuIGZhbHNlOwo+IAo+IGxvb2tzIGNv
cnJlY3QsIGEgYml0IHRyaWNreSwgYnV0IEkgZG9uJ3Qgc2VlIGFueSBpc3N1ZS4KClRoZSBpc3N1
ZSBpcyB0aGUgY29kZSBpcyBjcmVha2luZyBiZXlvbmQgaXRzIGRlc2lnbiB0b2xlcmFuY2VzLiA6
KQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
