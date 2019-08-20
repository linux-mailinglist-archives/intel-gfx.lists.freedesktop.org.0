Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4099695B
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 21:25:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D92DB6E86B;
	Tue, 20 Aug 2019 19:25:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 250706E86B
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 19:25:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18206653-1500050 for multiple; Tue, 20 Aug 2019 20:25:27 +0100
MIME-Version: 1.0
To: Daniel Vetter <daniel.vetter@ffwll.ch>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAKMK7uGajLkCXqwJLpjgpyZE-CDZMoHfPy=jDwJxo5z6d6KGGQ@mail.gmail.com>
References: <20190820170631.26570-1-daniel.vetter@ffwll.ch>
 <156632730188.1374.698930507357040712@skylake-alporthouse-com>
 <CAKMK7uGajLkCXqwJLpjgpyZE-CDZMoHfPy=jDwJxo5z6d6KGGQ@mail.gmail.com>
Message-ID: <156632912581.1374.6250821211614387353@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 20 Aug 2019 20:25:25 +0100
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Kenneth Graunke <kenneth@whitecape.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTA4LTIwIDIwOjA2OjE5KQo+IE9uIFR1ZSwgQXVn
IDIwLCAyMDE5IGF0IDg6NTUgUE0gQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+ID4KPiA+IFF1b3RpbmcgRGFuaWVsIFZldHRlciAoMjAxOS0wOC0yMCAxODow
NjozMSkKPiA+ID4gVGhlIGNwdSAoZGUpdGlsZXIgaHcgaXMgZ29uZSwgdGhpcyBzdG9wcGVkIGJl
aW5nIHVzZWZ1bC4gUGx1cyBpdCBuZXZlcgo+ID4gPiBzdXBwb3J0ZWQgYW55IG9mIHRoZSBmYW5j
eSBuZXcgdGlsaW5nIGZvcm1hdHMsIHdoaWNoIG1lYW5zIHVzZXJzcGFjZQo+ID4gPiBhbHNvIHN0
b3BwZWQgdXNpbmcgdGhlIG1hZ2ljIHNpZGUtY2hhbm5lbCB0aGlzIHByb3ZpZGVzLgo+ID4gPgo+
ID4gPiBUaGlzIHdvdWxkIHRvdGFsbHkgYnJlYWsgYSBsb3Qgb2YgdGhlIGlndHMsIGJ1dCB0aGV5
J3JlIGFscmVhZHkgYnJva2VuCj4gPiA+IGZvciB0aGUgc2FtZSByZWFzb25zIGFzIHVzZXJzcGFj
ZSBvbiBnZW4xMiB3b3VsZCBiZS4KPiA+ID4KPiA+ID4gQ2M6IEtlbm5ldGggR3JhdW5rZSA8a2Vu
bmV0aEB3aGl0ZWNhcGUub3JnPgo+ID4gPiBDYzogSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtz
dHJhbmQubmV0Pgo+ID4gPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4gPiA+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4K
PiA+ID4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5j
b20+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Rp
bGluZy5jIHwgOCArKysrKysrKwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygr
KQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3RpbGluZy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3RpbGluZy5j
Cj4gPiA+IGluZGV4IGNhMGMyZjQ1MTc0Mi4uMmVlOTZmMjdhMjk0IDEwMDY0NAo+ID4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdGlsaW5nLmMKPiA+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3RpbGluZy5jCj4gPiA+IEBAIC0zMTMs
MTAgKzMxMywxNSBAQCBpbnQKPiA+ID4gIGk5MTVfZ2VtX3NldF90aWxpbmdfaW9jdGwoc3RydWN0
IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPiA+ID4gICAgICAgICAgICAgICAgICAgICAg
ICAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCj4gPiA+ICB7Cj4gPiA+ICsgICAgICAgc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYpOwo+ID4gPiAgICAgICAg
IHN0cnVjdCBkcm1faTkxNV9nZW1fc2V0X3RpbGluZyAqYXJncyA9IGRhdGE7Cj4gPiA+ICAgICAg
ICAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKPiA+ID4gICAgICAgICBpbnQgZXJy
Owo+ID4gPgo+ID4gPiArICAgICAgIC8qIHRoZXJlIGlzIG5vIGNwdSAoZGUpdGlsaW5nIGluIHRo
ZSBodyBhbnltb3JlIG9uIGdlbjEyKyAqLwo+ID4gPiArICAgICAgIGlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDEyKQo+ID4KPiA+IFRoaXMgc2hvdWxkIGJlIGlmICghTlVNX0ZFTkNFUyhkZXZf
cHJpdikpIGlmIGFueXRoaW5nLiBZb3Ugd291bGRuJ3QgZXZlbgo+ID4gbmVlZCB0aGUgY29tbWVu
dCB0YWxraW5nIGFib3V0IHJhbmRvbSBmZWF0dXJlcywgYW5kIGluc3RlYWQgZm9jdXMgb24gd2h5
Cj4gPiBub3Qgc3VwcG9ydGluZyB0aGUgYmFjayBjaGFubmVsIGlzIHdvcnRoIHRoZSBtYWludGVu
YW5jZSBjb3N0IG9mCj4gPiBkaXZlcmdlbmNlLgo+IAo+IFllYWggdGhhdCdzIG11Y2ggYmV0dGVy
Lgo+IAo+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FT1BOT1RTVVBQOwo+ID4gPiArCj4g
PiA+ICAgICAgICAgb2JqID0gaTkxNV9nZW1fb2JqZWN0X2xvb2t1cChmaWxlLCBhcmdzLT5oYW5k
bGUpOwo+ID4gPiAgICAgICAgIGlmICghb2JqKQo+ID4gPiAgICAgICAgICAgICAgICAgcmV0dXJu
IC1FTk9FTlQ7Cj4gPiA+IEBAIC00MDIsNiArNDA3LDkgQEAgaTkxNV9nZW1fZ2V0X3RpbGluZ19p
b2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ID4gPiAgICAgICAgIHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Cj4gPiA+ICAgICAgICAgaW50IGVyciA9IC1F
Tk9FTlQ7Cj4gPiA+Cj4gPiA+ICsgICAgICAgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIp
Cj4gPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVPUE5PVFNVUFA7Cj4gPgo+ID4gTm90IHJl
cXVpcmVkLgo+IAo+IEkgZmlndXJlZCBzaW5jZSB3ZSBoYXZlIGEgbG90IG9mIG9sZCBsaWJkcm0g
dGhhdCBsb3ZlZCB0byBkbwo+IGdldF90aWxpbmcgdGhpcyB3b3VsZCBoZWxwIGluIGNhdGNoaW5n
IHRoZW0uIFRoYXQncyB3aHkgSSBwdXQgaXQgaW4uCj4gUGx1cyBqdXN0IHNvbWUgb2NkLCBpZiB0
aGUgc2V0IGlzIGdvbmUsIGtpbGwgdGhlIGdldCBvbmUgdG9vLiBPdG9oIHdlCj4gbWlnaHQgc3Rp
ciBzb21ldGhpbmcgdXAuCgpJZiB3ZSBhcmUgdXNpbmcgdGhlIG51bV9mZW5jZXMgYXMgdGhlIGZl
YXR1cmUgdGVzdCwgdGhleSBjYW4gcXVlcnkgdGhhdAphbHJlYWR5IHZpYSBJOTE1X0dFVFBBUkFN
LiBTbyB0aGlzIGlzIGp1c3QgbGVmdCBhcyByZXBvcnRpbmcgd2hhdCB0aGUKdGlsaW5nIG1vZGUg
aXMgc2V0IG9uIHRoZSBvYmplY3QsIHdoaWNoIGlzIHRoZW4gYWx3YXlzIG5vbmUuCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
