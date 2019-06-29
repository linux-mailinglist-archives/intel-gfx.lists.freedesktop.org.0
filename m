Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C63A75ABAF
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jun 2019 16:11:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F00D86E9AD;
	Sat, 29 Jun 2019 14:11:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95BC66E9A8;
 Sat, 29 Jun 2019 14:11:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17069005-1500050 for multiple; Sat, 29 Jun 2019 15:11:10 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190627102019.9019-1-tvrtko.ursulin@linux.intel.com>
References: <20190627102019.9019-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <156181746757.32289.11457530637113441582@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 29 Jun 2019 15:11:07 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_ctx_switch: Update
 with engine discovery
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0yNyAxMToyMDoxOSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEkgY29udmVydGVkIHRo
aXMgb25lIGFzIGFuIGV4YW1wbGUsIG9yIGF0IGxlYXN0IHRvIGRyaXZlIHRoZSBkaXNjdXNzaW9u
LAo+IGhvdyBtb3JlIGNvbXBsZXggdGVzdHMgY2FuIGJlIGNvbnZlcnRlZC4KPiAKPiBJIGhhdmUg
a2VwdCB0aGUgbGVnYWN5IGV4ZWNidWYgYWJpIHRlc3RpbmcgcHJlZml4ZWQgd2l0aCAibGVnYWN5
LSIuCj4gCj4gTmV3IHRlc3RzIHdlcmUgYWRkZWQgdG8gZXhlcmNpc2UgcGh5c2ljYWwgZW5naW5l
cyB2aWEgZW5naW5lIGRpc2NvdmVyeSBhbmQKPiBhbHNvICJhbGwiIHRlc3RzIGhhdmUgYmVlbiB1
cGRhdGVkIGluIHRoZSBzYW1lIHdheS4KPiAKPiBUbyBrZWVwIHRoaW5ncyBzaW1wbGVyIGFuZCBh
dm9pZCBoYXZpbmcgdG8gY3JlYXRlIHNlcGFyYXRlIGNvbnRleHRzIGxlZ2FjeQo+IHRlc3RzIGhh
dmUgdG8gYmUgZmlyc3Qgc2luY2UgdGhlIF9fZm9yX2VhY2hfcGh5c2ljYWxfZW5naW5lIGl0ZXJh
dG9yIHdvdWxkCj4gb3RoZXJ3aXNlIGNvbmZpZ3VyZSB0aGUgZGVmYXVsdCBjb250ZXh0IGFuZCBj
b25mdXNlIHRoZSB0ZXN0Lgo+IAo+IFNvIGxlZ2FjeSB0ZXN0cyBydW4gb24gdGhlIHVuY29uZmln
dXJlZCAod2l0aCBlbmdpbmUgbWFwKSBjb250ZXh0IGFuZCB1c2UKPiBhIG5ldyBoZWxwZXIgZ2Vt
X2ViX2ZsYWdzX3RvX2VuZ2luZSB0byBsb29rIHVwIHRoZSBlbmdpbmUgZnJvbSB0aGUKPiBpbnRl
bF9leGVjdXRpb25fZW5naW5lczIgc3RhdGljIGxpc3QuIFRoaXMgaXMgb25seSB0byBlbmFibGUg
dGhlIGNvcmUgdGVzdAo+IGNvZGUgdG8gYmUgc2hhcmVkLgoKTm90ZSB0aGF0IHRoaXMgbWlzc2Vz
IHRoZSBJOTE1X0VYRUNfREVGQVVMVCBzbG90LiBUaGF0IGEgcmF0aGVyCnNpZ25pZmljYW50IG92
ZXJzaWdodC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
