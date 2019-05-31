Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F90315FB
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 22:19:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EAC889958;
	Fri, 31 May 2019 20:19:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8739689958
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 20:19:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16753735-1500050 for multiple; Fri, 31 May 2019 21:18:56 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHN+Of6qFK2tuWf_KeXmHY0Ly-5ZYKyHNK19YJGHfcwuYQ@mail.gmail.com>
References: <20190530203500.26272-1-chris@chris-wilson.co.uk>
 <20190530203500.26272-2-chris@chris-wilson.co.uk>
 <CAM0jSHN+Of6qFK2tuWf_KeXmHY0Ly-5ZYKyHNK19YJGHfcwuYQ@mail.gmail.com>
Message-ID: <155933393319.22493.4335827994575596325@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 31 May 2019 21:18:53 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Report all objects with
 allocated pages to the shrinker
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDUtMzEgMjE6MDY6NDYpCj4gT24gVGh1LCAzMCBN
YXkgMjAxOSBhdCAyMTozNSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
IHdyb3RlOgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9zdG9sZW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYwo+
ID4gaW5kZXggOTA4MGE3MzY2NjNhLi44YjNhMjNiZmY3ZjYgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMKPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYwo+ID4gQEAgLTY5MCw3ICs2OTAsOCBA
QCBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbl9mb3JfcHJlYWxsb2NhdGVkKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdgo+ID4gICAgICAgICBtdXRleF91bmxvY2soJmdndHQt
PnZtLm11dGV4KTsKPiA+Cj4gPiAgICAgICAgIHNwaW5fbG9jaygmZGV2X3ByaXYtPm1tLm9ial9s
b2NrKTsKPiA+IC0gICAgICAgbGlzdF9tb3ZlX3RhaWwoJm9iai0+bW0ubGluaywgJmRldl9wcml2
LT5tbS5ib3VuZF9saXN0KTsKPiA+ICsgICAgICAgaWYgKGk5MTVfZ2VtX29iamVjdF9pc19zaHJp
bmthYmxlKG9iaikpCj4gPiArICAgICAgICAgICAgICAgbGlzdF9tb3ZlX3RhaWwoJm9iai0+bW0u
bGluaywgJmRldl9wcml2LT5tbS5ib3VuZF9saXN0KTsKPiAKPiBBbHdheXMgZmFsc2UsIG5vLCBv
ciBtYXliZSBqdXN0IGZ1dHVyZSB0aGlua2luZz8KCkFsd2F5cyBmYWxzZSwgSSB3YXMganVzdCB0
aGlua2luZyBvZiBiZWluZyBjb25zaXN0ZW50IChpLmUuIEkgZ3JlcHBlZApmb3IgYm91bmRfbGlz
dCkuIFByb2JhYmx5IGJldHRlciB0byBtYXJrIGl0IHdpdGggYSBHRU1fQlVHX09OIGluZGVlZC4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
