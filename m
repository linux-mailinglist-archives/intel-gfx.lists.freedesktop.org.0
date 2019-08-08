Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 081D085D0C
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 10:41:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED3006E6BF;
	Thu,  8 Aug 2019 08:41:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B616D6E6BF
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 08:41:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17926905-1500050 for multiple; Thu, 08 Aug 2019 09:41:03 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190808071937.16435-1-chris@chris-wilson.co.uk>
 <20190808072159.22608-1-chris@chris-wilson.co.uk>
 <87v9v8gix5.fsf@gaia.fi.intel.com>
In-Reply-To: <87v9v8gix5.fsf@gaia.fi.intel.com>
Message-ID: <156525366053.20411.11610772007647328976@skylake-alporthouse-com>
Date: Thu, 08 Aug 2019 09:41:00 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix up the inverse mapping for
 default ctx->engines[]
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTA4IDA5OjI4OjM4KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBUaGUgb3JkZXIgaW4g
d2hpY2ggd2Ugc3RvcmUgdGhlIGVuZ2luZXMgaW5zaWRlIGRlZmF1bHRfZW5naW5lcygpIGZvciB0
aGUKPiA+IGxlZ2FjeSBjdHgtPmVuZ2luZXNbXSBoYXMgdG8gbWF0Y2ggdGhlIGxlZ2FjeSBJOTE1
X0VYRUNfUklORyBzZWxlY3Rvcgo+ID4gbWFwcGluZyBpbiBleGVjYnVmOjp1c2VyX21hcC4gSWYg
d2UgcHJlc2VudCBWQ1MyIGFzIGJlaW5nIHRoZSBzZWNvbmQKPiA+IGluc3RhbmNlIG9mIHRoZSB2
aWRlbyBlbmdpbmUsIGxlZ2FjeSB1c2Vyc3BhY2UgY2FsbHMgdGhhdCBJOTE1X0VYRUNfQlNEMgo+
ID4gYW5kIHNvIHdlIG5lZWQgdG8gaW5zZXJ0IGl0IGludG8gdGhlIHNlY29uZCB2aWRlbyBzbG90
Lgo+ID4KPiA+IEZpeGVzOiAyZWRkYTgwZGIzZDAgKCJkcm0vaTkxNTogUmVuYW1lIGVuZ2luZXMg
dG8gbWF0Y2ggdGhlaXIgdXNlciBpbnRlcmZhY2UiKQo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzogTWlrYSBLdW9wcGFsYSA8
bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiAtLS0KPiA+IENvbnRyYWN0IHRoZSBz
dGF0aWMgbWFwcGluZyB0YWJsZS4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9jb250ZXh0LmMgfCAgNSArKy0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9lbmdpbmVfdXNlci5jIHwgNDkgKysrKysrKysrKysrKysrKysrKysrCj4gPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCAgICB8ICAxICsKPiA+ICAzIGZp
bGVzIGNoYW5nZWQsIDUzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4gPiBpbmRleCAxYzVi
YzIxYTgwZmYuLmZhZThjYTcyZTI0MCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPiA+IEBAIC0yNzksNiArMjc5LDcgQEAgc3RhdGljIHZv
aWQgZnJlZV9lbmdpbmVzX3JjdShzdHJ1Y3QgcmN1X2hlYWQgKnJjdSkKPiA+ICAKPiA+ICBzdGF0
aWMgc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXMgKmRlZmF1bHRfZW5naW5lcyhzdHJ1Y3QgaTkxNV9n
ZW1fY29udGV4dCAqY3R4KQo+ID4gIHsKPiA+ICsgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9ndCAq
Z3QgPSAmY3R4LT5pOTE1LT5ndDsKPiA+ICAgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZTsKPiA+ICAgICAgIHN0cnVjdCBpOTE1X2dlbV9lbmdpbmVzICplOwo+ID4gICAgICAgZW51
bSBpbnRlbF9lbmdpbmVfaWQgaWQ7Cj4gPiBAQCAtMjg4LDcgKzI4OSw3IEBAIHN0YXRpYyBzdHJ1
Y3QgaTkxNV9nZW1fZW5naW5lcyAqZGVmYXVsdF9lbmdpbmVzKHN0cnVjdCBpOTE1X2dlbV9jb250
ZXh0ICpjdHgpCj4gPiAgICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwo+ID4g
IAo+ID4gICAgICAgaW5pdF9yY3VfaGVhZCgmZS0+cmN1KTsKPiA+IC0gICAgIGZvcl9lYWNoX2Vu
Z2luZShlbmdpbmUsIGN0eC0+aTkxNSwgaWQpIHsKPiA+ICsgICAgIGZvcl9lYWNoX2VuZ2luZShl
bmdpbmUsIGd0LCBpZCkgewo+IAo+IERvbid0IGtub3cgeWV0IGlmIEkgbG92ZSBpdCBvciBoYXRl
IGl0LgoKT2gsIGk5MTUtPmVuZ2luZVtdIGlzIGJlaW5nIHBoYXNlZCBvdXQuIFRoZSBwbGFuIHdh
c24ndCB0byBkbyB0aGlzIHVudGlsCmxhdGVyIQoKPiBBcyBJIGdvdCBicnVpc2VkIEkgc3RhcnRl
ZCB5ZWFybmluZyBmb3IgaW50ZWxfbGVnYWN5X2VuZ2luZV9pZAo+IHdpdGggYSBzdHJvbmcgdHlw
ZS4KClllcywgYmVlbiBicnVpc2VkIGJ5IHRoZSBsYWNrIG9mIGxlZ2FjeV9pZCBhcyB3ZWxsLgot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
