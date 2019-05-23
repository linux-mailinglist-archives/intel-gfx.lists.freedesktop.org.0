Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E30327F5D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 16:17:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B53EA89EA3;
	Thu, 23 May 2019 14:17:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85EBF89E7C;
 Thu, 23 May 2019 14:17:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 07:17:51 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO [10.252.20.122])
 ([10.252.20.122])
 by orsmga005.jf.intel.com with ESMTP; 23 May 2019 07:17:49 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20190522155720.28723-1-tvrtko.ursulin@linux.intel.com>
 <20190522155720.28723-8-tvrtko.ursulin@linux.intel.com>
 <155862030582.28319.3804244470704978759@skylake-alporthouse-com>
 <155862059537.28319.322837164565725436@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e635cb74-7640-21b2-ec98-bec365a15955@linux.intel.com>
Date: Thu, 23 May 2019 15:17:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155862059537.28319.322837164565725436@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t 07/15] gem_wsim: Infinite batch support
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIzLzA1LzIwMTkgMTU6MDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIENocmlz
IFdpbHNvbiAoMjAxOS0wNS0yMyAxNTowNTowNSkKPj4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAo
MjAxOS0wNS0yMiAxNjo1NzoxMikKPj4+IC1zdGF0aWMgdm9pZAo+Pj4gK3N0YXRpYyB1bnNpZ25l
ZCBpbnQKPj4+ICAgdGVybWluYXRlX2JiKHN0cnVjdCB3X3N0ZXAgKncsIHVuc2lnbmVkIGludCBm
bGFncykKPj4+ICAgewo+Pj4gICAgICAgICAgY29uc3QgdWludDMyX3QgYmJlID0gMHhhIDw8IDIz
Owo+Pj4gICAgICAgICAgdW5zaWduZWQgbG9uZyBtbWFwX3N0YXJ0LCBtbWFwX2xlbjsKPj4+ICAg
ICAgICAgIHVuc2lnbmVkIGxvbmcgYmF0Y2hfc3RhcnQgPSB3LT5iYl9zejsKPj4+ICsgICAgICAg
dW5zaWduZWQgaW50IHIgPSAwOwo+Pj4gICAgICAgICAgdWludDMyX3QgKnB0ciwgKmNzOwo+Pj4g
ICAKPj4+ICAgICAgICAgIGlndF9hc3NlcnQoKChmbGFncyAmIFJUKSAmJiAoZmxhZ3MgJiBTRVFO
TykpIHx8ICEoZmxhZ3MgJiBSVCkpOwo+Pj4gQEAgLTgzOCw2ICs4NTQsOSBAQCB0ZXJtaW5hdGVf
YmIoc3RydWN0IHdfc3RlcCAqdywgdW5zaWduZWQgaW50IGZsYWdzKQo+Pj4gICAgICAgICAgaWYg
KGZsYWdzICYgUlQpCj4+PiAgICAgICAgICAgICAgICAgIGJhdGNoX3N0YXJ0IC09IDEyICogc2l6
ZW9mKHVpbnQzMl90KTsKPj4+ICAgCj4+PiArICAgICAgIGlmICh3LT51bmJvdW5kX2R1cmF0aW9u
KQo+Pj4gKyAgICAgICAgICAgICAgIGJhdGNoX3N0YXJ0IC09IDQgKiBzaXplb2YodWludDMyX3Qp
OyAvKiBNSV9BUkJfQ0hLICsgTUlfQkFUQ0hfQlVGRkVSX1NUQVJUICovCj4+PiArCj4+PiAgICAg
ICAgICBtbWFwX3N0YXJ0ID0gcm91bmRkb3duKGJhdGNoX3N0YXJ0LCBQQUdFX1NJWkUpOwo+Pj4g
ICAgICAgICAgbW1hcF9sZW4gPSBBTElHTih3LT5iYl9zeiAtIG1tYXBfc3RhcnQsIFBBR0VfU0la
RSk7Cj4+PiAgIAo+Pj4gQEAgLTg0Nyw4ICs4NjYsMTkgQEAgdGVybWluYXRlX2JiKHN0cnVjdCB3
X3N0ZXAgKncsIHVuc2lnbmVkIGludCBmbGFncykKPj4+ICAgICAgICAgIHB0ciA9IGdlbV9tbWFw
X193YyhmZCwgdy0+YmJfaGFuZGxlLCBtbWFwX3N0YXJ0LCBtbWFwX2xlbiwgUFJPVF9XUklURSk7
Cj4+PiAgICAgICAgICBjcyA9ICh1aW50MzJfdCAqKSgoY2hhciAqKXB0ciArIGJhdGNoX3N0YXJ0
IC0gbW1hcF9zdGFydCk7Cj4+PiAgIAo+Pj4gKyAgICAgICBpZiAody0+dW5ib3VuZF9kdXJhdGlv
bikgewo+Pj4gKyAgICAgICAgICAgICAgIHctPnJlbG9jW3IrK10ub2Zmc2V0ID0gYmF0Y2hfc3Rh
cnQgKyAyICogc2l6ZW9mKHVpbnQzMl90KTsKPj4+ICsgICAgICAgICAgICAgICBiYXRjaF9zdGFy
dCArPSA0ICogc2l6ZW9mKHVpbnQzMl90KTsKPj4+ICsKPj4+ICsgICAgICAgICAgICAgICAqY3Mr
KyA9IHctPnByZWVtcHRfdXMgPyAweDUgPDwgMjMgLyogTUlfQVJCX0NISzsgKi8gOiBNSV9OT09Q
Owo+Pj4gKyAgICAgICAgICAgICAgIHctPnJlY3Vyc2l2ZV9iYl9zdGFydCA9IGNzOwo+Pj4gKyAg
ICAgICAgICAgICAgICpjcysrID0gTUlfQkFUQ0hfQlVGRkVSX1NUQVJUIHwgMSA8PCA4IHwgMTsK
Pj4+ICsgICAgICAgICAgICAgICAqY3MrKyA9IDA7Cj4+PiArICAgICAgICAgICAgICAgKmNzKysg
PSAwOwo+Pgo+PiBkZWx0YSBpcyB6ZXJvLCBhbmQgbW1hcF9sZW4gaXMgY29uc2lzdGVudCwgc28g
eXVwIHRoaXMgZ2l2ZXMgYSBwYWdlIG9mCj4+IG5vcHMgYmVmb3JlIGxvb3BpbmcuCj4gCj4gV2Fp
dGFzZWMuLi4gT25seSBlbWl0dGluZyBBUkJfQ0hLIGlmIHByZWVtcHRfdXMgaXMgc2V0LiBZb3Ug
d2FudCBhbgo+IHVuYm91bmRlZCB1bnByZWVtcHRpYmxlIGJhdGNoPwo+IAo+IEkgc3VwcG9zZSBp
dCdzIG5vdCB3aXRob3V0IHVzZSAoYWx0aG91Z2ggSSBwbGFuIGZvciBpdCB0byBiZSBraWxsZWQK
PiBxdWlja2x5IGFuZCByZXNldCksIGJ1dCBJIHdvdWxkIG5vdCBhZHZpc2UgZm9yIHByZWVtcHRf
dXMgdG8gYmUgMCBieQo+IGRlZmF1bHQgdGhlbi4KCkRlZmF1bHQgaXMgMTAwdXMgKHNlYXJjaCBm
b3IgInctPnByZWVtcHRfdXMgPSAxMDA7IikgYW5kIHRoZW4gZm9yIAppbnN0YW5jZSBmcmFtZS1z
cGxpdC02MGZwcy53c2ltIGRpc2FibGVzIGl0IHRvIHNpbXVsYXRlIG1lZGlhIGJldHRlciAKKCJY
LjEuMCIsICJYLjIuMCIpLiBBRkFJUiB5b3UgYWN0dWFsbHkgYXNrZWQgZm9yIHByZWVtcHRhYmxl
IGJ5IGRlZmF1bHQuCgpOb3cgdGhhdCBJIHRoaW5rIG9mIGl0Li4gSSByZWFsbHkgbmVlZCBhIGNv
bW1hbmQgbGluZSBzd2l0Y2ggdG8gY29udHJvbCAKaXQgZ2xvYmFsbHkuIE9yIGJldHRlciBwZXIg
ZW5naW5lIGNsYXNzIHRvIHNpbXVsYXRlIG1lZGlhIGJldHRlci4gCkJsYXN0Li4gZmVhdHVyZSBj
cmVlcCBuZXZlciBlbmRzLgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
