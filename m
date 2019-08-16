Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8F990AC7
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 00:13:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3A296E9B0;
	Fri, 16 Aug 2019 22:13:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8613F6E9B0
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 22:13:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18168205-1500050 for multiple; Fri, 16 Aug 2019 23:13:12 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190816175801.8215-1-chris@chris-wilson.co.uk>
 <20190816191703.31519-1-chris@chris-wilson.co.uk>
 <4c45099c-ea32-e0d3-19c5-24b03f7a53ca@intel.com>
In-Reply-To: <4c45099c-ea32-e0d3-19c5-24b03f7a53ca@intel.com>
Message-ID: <156599358976.22053.12945461371965121062@skylake-alporthouse-com>
Date: Fri, 16 Aug 2019 23:13:09 +0100
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/selftests: Check the context
 size
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTE2IDIyOjUwOjQzKQo+IAo+
IAo+IE9uIDgvMTYvMTkgMTI6MTcgUE0sIENocmlzIFdpbHNvbiB3cm90ZToKPiA+ICtzdGF0aWMg
aW50IGxpdmVfY29udGV4dF9zaXplKHZvaWQgKmFyZykKPiA+ICt7Cj4gPiArICAgICAgICAgICAg
IC8qCj4gPiArICAgICAgICAgICAgICAqIEhpZGUgdGhlIG9sZCBkZWZhdWx0IHN0YXRlIC0tIHdl
IGxpZSBhYm91dCB0aGUgY29udGV4dCBzaXplCj4gPiArICAgICAgICAgICAgICAqIGFuZCBnZXQg
Y29uZnVzZWQgd2hlbiB0aGUgZGVmYXVsdCBzdGF0ZSBpcyBzbWFsbGVyIHRoYW4KPiA+ICsgICAg
ICAgICAgICAgICogZXhwZWN0ZWQuIEZvciBvdXIgZG8gbm90aGluZyByZXF1ZXN0LCBpbmhlcml0
aW5nIHRoZQo+ID4gKyAgICAgICAgICAgICAgKiBhY3RpdmUgc3RhdGUgaXMgc3VmZmljaWVudCwg
d2UgYXJlIG9ubHkgY2hlY2tpbmcgdGhhdCB3ZQo+ID4gKyAgICAgICAgICAgICAgKiBkb24ndCB1
c2UgbW9yZSB0aGFuIHdlIHBsYW5uZWQuCj4gPiArICAgICAgICAgICAgICAqLwo+ID4gKyAgICAg
ICAgICAgICBzYXZlZC5zdGF0ZSA9IGZldGNoX2FuZF96ZXJvKCZlbmdpbmUtPmRlZmF1bHRfc3Rh
dGUpOwo+ID4gKyAgICAgICAgICAgICBzYXZlZC5waW5uZWQgPSBmZXRjaF9hbmRfemVybygmZW5n
aW5lLT5waW5uZWRfZGVmYXVsdF9zdGF0ZSk7Cj4gPiArCj4gPiArICAgICAgICAgICAgIGVuZ2lu
ZS0+Y29udGV4dF9zaXplICs9IEk5MTVfR1RUX1BBR0VfU0laRTsKPiAKPiBpZiBDT05GSUdfRFJN
X0k5MTVfREVCVUdfR0VNIGlzIHNldCB3ZSBhbHJlYWR5IGJ1bXAgdGhlIHNpemUgaW5zaWRlIHRo
ZSAKPiBjb250ZXh0X2FsbG9jKCksIGRvIHdlIG5lZWQgdG8gYnVtcCBpdCBhZ2FpbiBoZXJlPwoK
Tm8sIGl0IGNvbWVzIG91dCBpbiB0aGUgd2FzaCBhcyB3ZSBhcHBseSB0aGUgc2FtZSByZWR6b25l
IHR3aWNlLiBBdCBsZWFzdCwKYWRkaW5nIGFuZCBjaGVja2luZyBhIHNlY29uZCBwYWdlIGFmdGVy
IHdoYXQgd2UgYmVsaWV2ZSB0byBiZSB0aGUgZW5kIG9mCnRoZSBjb250ZXh0IGltYWdlIGRvZXMg
bm90IGhlbHAgc2Vuc2l0aXZpdHkgKHNvIG1ha2VzIGEgd29yc2UgdGVzdCBpbW8pLgoKVGhlIGJl
bmVmaXQgb2YgdGhpcyBzZWxmdGVzdCBpcyB0aGF0IHdlIGNoZWNrIGFsbCBzdWJtaXNzaW9uIG1v
ZGVzLCBhbmQKY2FuIHNldCB1cCBhbnkgZXhlY3V0aW9uIHBhdHRlcm4gd2UgdGhpbmsgbWlnaHQg
YmUgcmVxdWlyZWQgKHdpdGhpbgpyZWFzb24pLiBTbywgSSB0aGluayBpdCBzdGlsbCBoYXMgYSB1
c2UgZXZlbiBpZiB3ZSBuZWVkIHRvIHJlbWluZApvdXJzZWx2ZXMgb2YgdGhlIG92ZXJsYXAuCi1D
aHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
