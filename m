Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7C727F28
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 16:10:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 856F289F06;
	Thu, 23 May 2019 14:10:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 783AF89F01;
 Thu, 23 May 2019 14:10:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16656058-1500050 for multiple; Thu, 23 May 2019 15:09:56 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <155862030582.28319.3804244470704978759@skylake-alporthouse-com>
References: <20190522155720.28723-1-tvrtko.ursulin@linux.intel.com>
 <20190522155720.28723-8-tvrtko.ursulin@linux.intel.com>
 <155862030582.28319.3804244470704978759@skylake-alporthouse-com>
Message-ID: <155862059537.28319.322837164565725436@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 23 May 2019 15:09:55 +0100
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMjMgMTU6MDU6MDUpCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0wNS0yMiAxNjo1NzoxMikKPiA+IC1zdGF0aWMgdm9pZAo+ID4gK3N0
YXRpYyB1bnNpZ25lZCBpbnQKPiA+ICB0ZXJtaW5hdGVfYmIoc3RydWN0IHdfc3RlcCAqdywgdW5z
aWduZWQgaW50IGZsYWdzKQo+ID4gIHsKPiA+ICAgICAgICAgY29uc3QgdWludDMyX3QgYmJlID0g
MHhhIDw8IDIzOwo+ID4gICAgICAgICB1bnNpZ25lZCBsb25nIG1tYXBfc3RhcnQsIG1tYXBfbGVu
Owo+ID4gICAgICAgICB1bnNpZ25lZCBsb25nIGJhdGNoX3N0YXJ0ID0gdy0+YmJfc3o7Cj4gPiAr
ICAgICAgIHVuc2lnbmVkIGludCByID0gMDsKPiA+ICAgICAgICAgdWludDMyX3QgKnB0ciwgKmNz
Owo+ID4gIAo+ID4gICAgICAgICBpZ3RfYXNzZXJ0KCgoZmxhZ3MgJiBSVCkgJiYgKGZsYWdzICYg
U0VRTk8pKSB8fCAhKGZsYWdzICYgUlQpKTsKPiA+IEBAIC04MzgsNiArODU0LDkgQEAgdGVybWlu
YXRlX2JiKHN0cnVjdCB3X3N0ZXAgKncsIHVuc2lnbmVkIGludCBmbGFncykKPiA+ICAgICAgICAg
aWYgKGZsYWdzICYgUlQpCj4gPiAgICAgICAgICAgICAgICAgYmF0Y2hfc3RhcnQgLT0gMTIgKiBz
aXplb2YodWludDMyX3QpOwo+ID4gIAo+ID4gKyAgICAgICBpZiAody0+dW5ib3VuZF9kdXJhdGlv
bikKPiA+ICsgICAgICAgICAgICAgICBiYXRjaF9zdGFydCAtPSA0ICogc2l6ZW9mKHVpbnQzMl90
KTsgLyogTUlfQVJCX0NISyArIE1JX0JBVENIX0JVRkZFUl9TVEFSVCAqLwo+ID4gKwo+ID4gICAg
ICAgICBtbWFwX3N0YXJ0ID0gcm91bmRkb3duKGJhdGNoX3N0YXJ0LCBQQUdFX1NJWkUpOwo+ID4g
ICAgICAgICBtbWFwX2xlbiA9IEFMSUdOKHctPmJiX3N6IC0gbW1hcF9zdGFydCwgUEFHRV9TSVpF
KTsKPiA+ICAKPiA+IEBAIC04NDcsOCArODY2LDE5IEBAIHRlcm1pbmF0ZV9iYihzdHJ1Y3Qgd19z
dGVwICp3LCB1bnNpZ25lZCBpbnQgZmxhZ3MpCj4gPiAgICAgICAgIHB0ciA9IGdlbV9tbWFwX193
YyhmZCwgdy0+YmJfaGFuZGxlLCBtbWFwX3N0YXJ0LCBtbWFwX2xlbiwgUFJPVF9XUklURSk7Cj4g
PiAgICAgICAgIGNzID0gKHVpbnQzMl90ICopKChjaGFyICopcHRyICsgYmF0Y2hfc3RhcnQgLSBt
bWFwX3N0YXJ0KTsKPiA+ICAKPiA+ICsgICAgICAgaWYgKHctPnVuYm91bmRfZHVyYXRpb24pIHsK
PiA+ICsgICAgICAgICAgICAgICB3LT5yZWxvY1tyKytdLm9mZnNldCA9IGJhdGNoX3N0YXJ0ICsg
MiAqIHNpemVvZih1aW50MzJfdCk7Cj4gPiArICAgICAgICAgICAgICAgYmF0Y2hfc3RhcnQgKz0g
NCAqIHNpemVvZih1aW50MzJfdCk7Cj4gPiArCj4gPiArICAgICAgICAgICAgICAgKmNzKysgPSB3
LT5wcmVlbXB0X3VzID8gMHg1IDw8IDIzIC8qIE1JX0FSQl9DSEs7ICovIDogTUlfTk9PUDsKPiA+
ICsgICAgICAgICAgICAgICB3LT5yZWN1cnNpdmVfYmJfc3RhcnQgPSBjczsKPiA+ICsgICAgICAg
ICAgICAgICAqY3MrKyA9IE1JX0JBVENIX0JVRkZFUl9TVEFSVCB8IDEgPDwgOCB8IDE7Cj4gPiAr
ICAgICAgICAgICAgICAgKmNzKysgPSAwOwo+ID4gKyAgICAgICAgICAgICAgICpjcysrID0gMDsK
PiAKPiBkZWx0YSBpcyB6ZXJvLCBhbmQgbW1hcF9sZW4gaXMgY29uc2lzdGVudCwgc28geXVwIHRo
aXMgZ2l2ZXMgYSBwYWdlIG9mCj4gbm9wcyBiZWZvcmUgbG9vcGluZy4KCldhaXRhc2VjLi4uIE9u
bHkgZW1pdHRpbmcgQVJCX0NISyBpZiBwcmVlbXB0X3VzIGlzIHNldC4gWW91IHdhbnQgYW4KdW5i
b3VuZGVkIHVucHJlZW1wdGlibGUgYmF0Y2g/CgpJIHN1cHBvc2UgaXQncyBub3Qgd2l0aG91dCB1
c2UgKGFsdGhvdWdoIEkgcGxhbiBmb3IgaXQgdG8gYmUga2lsbGVkCnF1aWNrbHkgYW5kIHJlc2V0
KSwgYnV0IEkgd291bGQgbm90IGFkdmlzZSBmb3IgcHJlZW1wdF91cyB0byBiZSAwIGJ5CmRlZmF1
bHQgdGhlbi4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
