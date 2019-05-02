Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C92911A3A
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 15:33:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83152895E2;
	Thu,  2 May 2019 13:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D51B3895E2
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 13:33:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16429431-1500050 for multiple; Thu, 02 May 2019 14:33:03 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
 <20190501114541.10077-6-chris@chris-wilson.co.uk>
 <6055093b-e46b-92f1-d8e6-02cbbb29a653@linux.intel.com>
In-Reply-To: <6055093b-e46b-92f1-d8e6-02cbbb29a653@linux.intel.com>
Message-ID: <155680398117.9023.3976794723243757249@skylake-alporthouse-com>
Date: Thu, 02 May 2019 14:33:01 +0100
Subject: Re: [Intel-gfx] [PATCH 06/14] drm/i915: Cancel retire_worker on
 parking
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0wMiAxNDoyOTo1MCkKPiAKPiBPbiAwMS8w
NS8yMDE5IDEyOjQ1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBSZXBsYWNlIHRoZSByYWN5IGNv
bnRpbnVhdGlvbiBjaGVjayB3aXRoaW4gcmV0aXJlX3dvcmsgd2l0aCBhIGRlZmluaXRlCj4gPiBr
aWxsLXN3aXRjaCBvbiBpZGxpbmcuIFRoZSByYWNlIHdhcyBiZWluZyBleHBvc2VkIGJ5IGdlbV9j
b25jdXJyZW50X2JsaXQKPiA+IHdoZXJlIHRoZSByZXRpcmVfd29ya2VyIHdvdWxkIGJlIHRlcm1p
bmF0ZWQgdG9vIGVhcmx5IGxlYXZpbmcgdXMKPiA+IHNwaW5uaW5nIGluIGRlYnVnZnMvaTkxNV9k
cm9wX2NhY2hlcyB3aXRoIG5vdGhpbmcgZmx1c2hpbmcgdGhlCj4gPiByZXRpcmVtZW50IHF1ZXVl
Lgo+ID4gCj4gPiBBbHRob3VnaCB0aGF0IHRoZSBpZ3QgaXMgdHJ5aW5nIHRvIGlkbGUgZnJvbSBv
bmUgY2hpbGQgd2hpbGUgc3VibWl0dGluZwo+ID4gZnJvbSBhbm90aGVyIG1heSBiZSBhIGNvbnRy
aWJ1dGluZyBmYWN0b3IgYXMgdG8gd2h5ICBpdCBydW5zIHNvIHNsb3dseS4uLgo+ID4gCj4gPiBU
ZXN0Y2FzZTogaWd0L2dlbV9jb25jdXJyZW50X2JsaXQKPiA+IEZpeGVzOiA3OWZmYWM4NTk5YzQg
KCJkcm0vaTkxNTogSW52ZXJ0IHRoZSBHRU0gd2FrZXJlZiBoaWVyYXJjaHkiKQo+ID4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9wbS5jICAgICAgICAgICAgIHwgMTggKysrKysr
KysrKysrLS0tLS0tCj4gPiAgIC4uLi9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ2VtX2Rl
dmljZS5jICAgfCAgMSAtCj4gPiAgIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwg
NyBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9wbS5jCj4gPiBp
bmRleCBhZTkxYWQ3Y2IzMWUuLmIyMzliNTVmODRjZCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX3BtLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX3BtLmMKPiA+IEBAIC0zMCwxNSArMzAsMjMgQEAgc3RhdGljIHZvaWQgaWRsZV93
b3JrX2hhbmRsZXIoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+ID4gICB7Cj4gPiAgICAgICBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9Cj4gPiAgICAgICAgICAgICAgIGNvbnRhaW5l
cl9vZih3b3JrLCB0eXBlb2YoKmk5MTUpLCBnZW0uaWRsZV93b3JrKTsKPiA+ICsgICAgIGJvb2wg
cmVzdGFydCA9IHRydWU7Cj4gPiAgIAo+ID4gKyAgICAgY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5j
KCZpOTE1LT5nZW0ucmV0aXJlX3dvcmspOwo+ID4gICAgICAgbXV0ZXhfbG9jaygmaTkxNS0+ZHJt
LnN0cnVjdF9tdXRleCk7Cj4gPiAgIAo+IAo+IFlvdSBkb24ndCB3YW50IHRvIHJ1biBhbm90aGVy
IHJldGlyZSBoZXJlPyBTaW5jZSB0aGUgcmV0aXJlIHdvcmtlciBtaWdodCAKPiBoYXZlIGp1c3Qg
YmVlbiBjYW5jZWxlZCBJIHRob3VnaHQgeW91IHNob3VsZC4KCldoeSB0aG91Z2g/IElmIHRoZXJl
IGFyZSByZXRpcmVzIG91dHN0YW5kaW5nLCB3ZSB3b24ndCBzbGVlcCBhbmQgd2FudCB0bwpkZWZl
ciBwYXJraW5nIHVudGlsIGFmdGVyIHRoZSBuZXh0IGN5Y2xlLgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
