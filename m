Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD6C4619B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 16:51:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC460899B3;
	Fri, 14 Jun 2019 14:51:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A494C899B3
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 14:51:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16903733-1500050 for multiple; Fri, 14 Jun 2019 15:51:19 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
 <20190614071023.17929-4-chris@chris-wilson.co.uk>
 <87h88s8bql.fsf@gaia.fi.intel.com>
In-Reply-To: <87h88s8bql.fsf@gaia.fi.intel.com>
Message-ID: <156052387681.7796.10156459805416680827@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 15:51:16 +0100
Subject: Re: [Intel-gfx] [PATCH 03/39] drm/i915: Avoid tainting
 i915_gem_park() with wakeref.lock
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTE0IDE1OjQ3OjQ2KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBXaGlsZSB3ZSBuZWVk
IHRvIGZsdXNoIHRoZSB3YWtlcmVmIGJlZm9yZSBwYXJraW5nLCB3ZSBkbyBub3QgbmVlZCB0bwo+
ID4gcGVyZm9ybSB0aGUgaTkxNV9nZW1fcGFyaygpIGl0c2VsZiB1bmRlcm5lYXRoIHRoZSB3YWtl
cmVmIGxvY2ssIG1lcmVseQo+ID4gdGhlIHN0cnVjdF9tdXRleC4gSWYgd2UgcmVhcnJhbmdlIHRo
ZSBsb2Nrcywgd2UgY2FuIGF2b2lkIHRoZSB1bm5lY2Vzc2FyeQo+ID4gdGFpbnRpbmcuCj4gPgo+
ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYyB8IDE3
ICsrKysrKysrLS0tLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwg
OSBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0u
Ywo+ID4gaW5kZXggNmU3NTcwMmM1NjcxLi5hMzNmNjk2MTBkNmYgMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYwo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKPiA+IEBAIC0zMCwyMyArMzAsMjIgQEAgc3Rh
dGljIHZvaWQgaWRsZV93b3JrX2hhbmRsZXIoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+ID4g
IHsKPiA+ICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0KPiA+ICAgICAgICAg
ICAgICAgY29udGFpbmVyX29mKHdvcmssIHR5cGVvZigqaTkxNSksIGdlbS5pZGxlX3dvcmspOwo+
ID4gLSAgICAgYm9vbCByZXN0YXJ0ID0gdHJ1ZTsKPiA+ICsgICAgIGJvb2wgcGFyazsKPiA+Cj4g
Cj4gY2FuX3BhcmsuLi5tZWguCj4gCj4gPiAtICAgICBjYW5jZWxfZGVsYXllZF93b3JrKCZpOTE1
LT5nZW0ucmV0aXJlX3dvcmspOwo+ID4gKyAgICAgY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZp
OTE1LT5nZW0ucmV0aXJlX3dvcmspOwo+ID4gICAgICAgbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0
cnVjdF9tdXRleCk7Cj4gPiAgCj4gPiAgICAgICBpbnRlbF93YWtlcmVmX2xvY2soJmk5MTUtPmd0
Lndha2VyZWYpOwo+ID4gLSAgICAgaWYgKCFpbnRlbF93YWtlcmVmX2FjdGl2ZSgmaTkxNS0+Z3Qu
d2FrZXJlZikgJiYgIXdvcmtfcGVuZGluZyh3b3JrKSkgewo+ID4gLSAgICAgICAgICAgICBpOTE1
X2dlbV9wYXJrKGk5MTUpOwo+ID4gLSAgICAgICAgICAgICByZXN0YXJ0ID0gZmFsc2U7Cj4gPiAt
ICAgICB9Cj4gPiArICAgICBwYXJrID0gIWludGVsX3dha2VyZWZfYWN0aXZlKCZpOTE1LT5ndC53
YWtlcmVmKSAmJiAhd29ya19wZW5kaW5nKHdvcmspOwo+ID4gICAgICAgaW50ZWxfd2FrZXJlZl91
bmxvY2soJmk5MTUtPmd0Lndha2VyZWYpOwo+ID4gLQo+ID4gLSAgICAgbXV0ZXhfdW5sb2NrKCZp
OTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiA+IC0gICAgIGlmIChyZXN0YXJ0KQo+ID4gKyAgICAg
aWYgKHBhcmspCj4gPiArICAgICAgICAgICAgIGk5MTVfZ2VtX3BhcmsoaTkxNSk7Cj4gCj4gRGlk
IG5vdCBmaW5kIGFueXRoaW5nIGJlbmVhdGggZ2VtIHBhcmsgdGhhdCB3b3VsZCBuZWVkIHdha2Vy
ZWYuCgpJbiBmYWN0LCBtb3N0bHkgcGxhbm5pbmcgdG8gbW92ZSB0aGlzIHRvIGEgdGltZXIgYW5k
IG5vdCB1c2UgdGhlIGdsb2JhbAppZGxlLiBDZXJ0YWlubHkgZm9yIGk5MTVfdm1hX3BhcmtlZCgp
IHdoaWNoIGlzIGp1c3Qgc3VwcG9zZWQgdG8gYmUgY2FjaGUKb2YgdXNlcnNwYWNlIHZtYSBhbmQg
aXMgY2F1c2luZyBtZSBzb21lIHBhaW4gd2l0aCBpOTE1X3ZtYS5rcmVmIDopCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
