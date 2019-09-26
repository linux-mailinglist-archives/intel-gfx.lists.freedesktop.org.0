Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DFABEF76
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 12:21:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBD4C6ED3D;
	Thu, 26 Sep 2019 10:21:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B62766ED3D
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 10:21:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18624662-1500050 for multiple; Thu, 26 Sep 2019 11:21:01 +0100
MIME-Version: 1.0
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190926100635.9416-1-michal.winiarski@intel.com>
References: <20190926100635.9416-1-michal.winiarski@intel.com>
Message-ID: <156949325827.4979.12043969359953110233@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 26 Sep 2019 11:20:58 +0100
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Define explicit wedged on
 init reset state
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

UXVvdGluZyBNaWNoYcWCIFdpbmlhcnNraSAoMjAxOS0wOS0yNiAxMTowNjozMCkKPiBXZSdyZSBj
dXJyZW50bHkgdXNpbmcgc2NyYXRjaCBwcmVzZW5jZSBhcyBhIHdheSBvZiBpZGVudGlmeWluZyB0
aGF0IHdlCj4gZW50ZXJlZCB3ZWRnZWQgc3RhdGUgYXQgZHJpdmVyIGluaXRpYWxpemF0aW9uIHRp
bWUuCj4gTGV0J3MgdXNlIGEgc2VwYXJhdGUgZmxhZyByYXRoZXIgdGhhbiByZWx5IG9uIHNjcmF0
Y2guCj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJz
a2lAaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
LS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgICAgICAgfCAxMSAr
KysrKysrKysrLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5oICAgICAg
IHwgIDkgKysrKysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0X3R5
cGVzLmggfCAgNiArKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAg
ICAgICAgICB8ICAyICstCj4gIDQgZmlsZXMgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmVzZXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPiBpbmRl
eCBhZTY4YzM3ODZmNjMuLjBmMTUzNGFjODIzZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfcmVzZXQuYwo+IEBAIC04MTEsNyArODExLDggQEAgc3RhdGljIGJvb2wgX19pbnRlbF9n
dF91bnNldF93ZWRnZWQoc3RydWN0IGludGVsX2d0ICpndCkKPiAgICAgICAgIGlmICghdGVzdF9i
aXQoSTkxNV9XRURHRUQsICZndC0+cmVzZXQuZmxhZ3MpKQo+ICAgICAgICAgICAgICAgICByZXR1
cm4gdHJ1ZTsKPiAgCj4gLSAgICAgICBpZiAoIWd0LT5zY3JhdGNoKSAvKiBOZXZlciBmdWxsIGlu
aXRpYWxpc2VkLCByZWNvdmVyeSBpbXBvc3NpYmxlICovCj4gKyAgICAgICAvKiBOZXZlciBmdWxs
bHkgaW5pdGlhbGlzZWQsIHJlY292ZXJ5IGltcG9zc2libGUgKi8KCllvdSB3ZW50IG9uZSAnbCcg
dG9vIGZhciBpbiB0aGUgY29ycmVjdGlvbi4KCk9rLCBoYXJkIHRvIGFyZ3VlIGFnYWluc3QuClJl
dmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
