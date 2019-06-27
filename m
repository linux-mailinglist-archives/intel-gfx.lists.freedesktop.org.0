Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E502581F6
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 13:57:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 712326E0D2;
	Thu, 27 Jun 2019 11:57:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 767B26E0D2
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 11:57:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17043286-1500050 for multiple; Thu, 27 Jun 2019 12:57:50 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190627090116.10847-1-lionel.g.landwerlin@intel.com>
 <20190627090116.10847-2-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190627090116.10847-2-lionel.g.landwerlin@intel.com>
Message-ID: <156163666703.9225.1727534035884241929@skylake-alporthouse-com>
Date: Thu, 27 Jun 2019 12:57:47 +0100
Subject: Re: [Intel-gfx] [PATCH v6 1/3] drm/i915: fix whitelist selftests
 with readonly registers
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNi0yNyAxMDowMToxNCkKPiBXaGVuIGEg
cmVnaXN0ZXIgaXMgcmVhZG9ubHkgdGhlcmUgaXMgbm90IG11Y2ggd2UgY2FuIHRlbGwgYWJvdXQg
aXRzCj4gdmFsdWUgKGFwYXJ0IGZyb20gaXRzIGRlZmF1bHQgdmFsdWU/KS4gVGhpcyBjYW4gYmUg
Y292ZXJlZCBieSB0ZXN0cwo+IGV4ZXJjaXNpbmcgdGhlIHZhbHVlIG9mIHRoZSByZWdpc3RlciBm
cm9tIHVzZXJzcGFjZS4KPiAKPiBGb3IgUFNfSU5WT0NBVElPTl9DT1VOVCB3ZSd2ZSBnb3QgdGhl
IGZvbGxvd2luZyBwaWdsaXQgdGVzdHMgOgo+IAo+ICAgIEtIUi1HTDQ1LnBpcGVsaW5lX3N0YXRp
c3RpY3NfcXVlcnlfdGVzdHNfQVJCLmZ1bmN0aW9uYWxfZnJhZ21lbnRfc2hhZGVyX2ludm9jYXRp
b25zCj4gCj4gVnVsa2FuIENUUyB0ZXN0cyA6Cj4gCj4gICAgZEVRUC1WSy5xdWVyeV9wb29sLnN0
YXRpc3RpY3NfcXVlcnkuZnJhZ21lbnRfc2hhZGVyX2ludm9jYXRpb25zLioKPiAKPiBTaWduZWQt
b2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+
Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMg
fCAzICsrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jCj4gaW5kZXggZjEyY2Iy
MGZlNzg1Li5hMDZmOTZkZjFiZmQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMKPiBAQCAtOTI2LDYgKzkyNiw5IEBAIGNoZWNrX3doaXRl
bGlzdGVkX3JlZ2lzdGVycyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gIAo+ICAg
ICAgICAgZXJyID0gMDsKPiAgICAgICAgIGZvciAoaSA9IDA7IGkgPCBlbmdpbmUtPndoaXRlbGlz
dC5jb3VudDsgaSsrKSB7Cj4gKyAgICAgICAgICAgICAgIGlmIChlbmdpbmUtPndoaXRlbGlzdC5s
aXN0W2ldLnJlZy5yZWcgJiBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfUkQpCgpWaWxsZSB3b3VsZCBs
aWtlIHlvdSB0byB1c2UKaTkxNV9tbWlvX3JlZ19vZmZzZXQoZW5naW5lLT53aGl0ZWxpc3QubGlz
dFtpXS5yZWcpCgpJIHRoaW5rIHdlIG1pZ2h0IGJlbmVmaXQgZnJvbSBhIHJlZyBsb2NhbCA6KQot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
