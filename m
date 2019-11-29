Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D5710D4CC
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 12:28:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 232AF6E8D1;
	Fri, 29 Nov 2019 11:28:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A2296E8D1
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 11:28:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19391257-1500050 for multiple; Fri, 29 Nov 2019 11:28:06 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191129093908.631527-1-chris@chris-wilson.co.uk>
 <375aef03-4aa6-cbbd-3bcd-0eb7a44cc2f4@linux.intel.com>
In-Reply-To: <375aef03-4aa6-cbbd-3bcd-0eb7a44cc2f4@linux.intel.com>
Message-ID: <157502688469.11312.886721160006481649@skylake-alporthouse-com>
Date: Fri, 29 Nov 2019 11:28:04 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Serialise i915_active_wait() with
 its retirement
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yOSAxMToxNTo0NikKPiAKPiBPbiAyOS8x
MS8yMDE5IDA5OjM5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBBcyB0aGUgaTkxNV9hY3RpdmUu
cmV0aXJlKCkgbWF5IGJlIHJ1bm5pbmcgb24gYW5vdGhlciBDUFUgYXMgd2UgZGV0ZWN0Cj4gPiB0
aGF0IHRoZSBpOTE1X2FjdGl2ZSBpcyBpZGxlLCB3ZSBtYXkgbm90IHdhaXQgZm9yIHRoZSByZXRp
cmVtZW50IGl0c2VsZi4KPiA+IFdhaXQgZm9yIHRoZSByZW1vdGUgY2FsbGJhY2sgYnkgd2FpdGlu
ZyBmb3IgdGhlIHJldGlyZW1lbnQgd29ya2VyLgo+ID4gCj4gPiBCdWd6aWxsYTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyNDI0Cj4gPiBTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IC0tLQo+ID4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jIHwgMSArCj4gPiAgIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9hY3RpdmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZl
LmMKPiA+IGluZGV4IDQ3OTE5NWVjYmM2Yy4uZTg2MzBlZTMzMzM2IDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9hY3RpdmUuYwo+ID4gQEAgLTQ2OSw2ICs0NjksNyBAQCBpbnQgaTkxNV9h
Y3RpdmVfd2FpdChzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKPiA+ICAgICAgIGlmICh3YWl0X3Zh
cl9ldmVudF9pbnRlcnJ1cHRpYmxlKHJlZiwgaTkxNV9hY3RpdmVfaXNfaWRsZShyZWYpKSkKPiA+
ICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5UUjsKPiA+ICAgCj4gPiArICAgICBmbHVzaF93b3Jr
KCZyZWYtPndvcmspOwo+ID4gICAgICAgcmV0dXJuIDA7Cj4gPiAgIH0KPiA+ICAgCj4gPiAKPiAK
PiBIbSwgYnV0IHdha2VfdXBfd2FyIGlzIGluIHRoZSB3b3JrZXIgc28gaG93IGRvZXMgd2FpdF92
YXJfZXZlbnQgd2FrZSB0aGUgCj4gd2FpdGVyIHVwIGJlZm9yZSBpdCBoYXMgYmVlbiByZXRpcmVk
PwoKUmVtZW1iZXIgdGhlIHdhaXRfZXZlbnQgcGF0dGVybiBpcyB0byBza2lwIHRoZSB3YWl0IGlm
IENPTkQgaXMgYWxyZWFkeQptZXQuIFNvIHNpbmNlIHRoZSBmaXJzdCB0aGluZyB0aGUgcmV0aXJl
bWVudCBkb2VzIGlzIHRoZQphdG9taWNfZGVjX2FuZF90ZXN0KCksIHdlIGNhbiBzZWUgcmVmLT5j
b3VudCA9PSAwIHZlcnkgZWFybHksIGxvbmcKYmVmb3JlIHJlZi0+cmV0aXJlKCkgaXMgY2FsbGVk
LiBPdXIgc2VsZnRlc3QgaXMgY2hlY2tpbmcgdGhhdCBpZgppOTE1X2FjdGl2ZV93YWl0KCkgcmVw
b3J0cyBjb21wbGV0aW9uLCB0aGUgY2FsbGJhY2sgaGFzIGFsc28gcnVuIGFuZAp0aGF0IHRoZSBp
OTE1X2FjdGl2ZSBjYW4gdGhlbiBiZSBkZXN0cm95ZWQuCi1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
