Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A6AF78E0
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 17:35:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC4F66E247;
	Mon, 11 Nov 2019 16:35:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D27636E247
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 16:35:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19162378-1500050 for multiple; Mon, 11 Nov 2019 16:34:52 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <3261ff60-d953-d13b-bb42-5bf0972c6d2e@linux.intel.com>
References: <20191111133205.11590-1-chris@chris-wilson.co.uk>
 <20191111133205.11590-3-chris@chris-wilson.co.uk>
 <3261ff60-d953-d13b-bb42-5bf0972c6d2e@linux.intel.com>
Message-ID: <157349008931.28106.11195353074831220418@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 11 Nov 2019 16:34:49 +0000
Subject: Re: [Intel-gfx] [FIXES 3/3] drm/i915/execlists: Move reset_active()
 from schedule-out to schedule-in
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0xMSAxNjozMTowOSkKPiAKPiBPbiAxMS8x
MS8yMDE5IDEzOjMyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBUaGUgZ2VtX2N0eF9wZXJzaXN0
ZW5jZS9zbW9rZXRlc3Qgd2FzIGRldGVjdGluZyBhbiBvZGQgY29oZXJlbmN5IGlzc3VlCj4gPiBp
bnNpZGUgdGhlIExSQyBjb250ZXh0IGltYWdlOyB0aGF0IHRoZSBhZGRyZXNzIG9mIHRoZSByaW5n
IGJ1ZmZlciBkaWQKPiA+IG5vdCBtYXRjaCBvdXIgYXNzb2NpYXRlZCBzdHJ1Y3QgaW50ZWxfcmlu
Zy4gQXMgd2Ugc2V0IHRoZSBhZGRyZXNzIGludG8KPiA+IHRoZSBjb250ZXh0IGltYWdlIHdoZW4g
d2UgcGluIHRoZSByaW5nIGJ1ZmZlciBpbnRvIHBsYWNlIGJlZm9yZSB0aGUKPiA+IGNvbnRleHQg
aXMgYWN0aXZlLCB0aGF0IGxlYXZlcyB0aGUgcXVlc3Rpb24gb2Ygd2hlcmUgZGlkIGl0IGdldAo+
ID4gb3ZlcndyaXR0ZW4uIEVpdGhlciB0aGUgSFcgY29udGV4dCBzYXZlIG9jY3VycmVkIGFmdGVy
IG91ciBwaW4gd2hpY2gKPiA+IHdvdWxkIGltcGx5IHRoYXQgb3VyIGlkbGUgYmFycmllcnMgYXJl
IGJyb2tlbiwgb3Igd2Ugb3Zlcndyb3RlIHRoZQo+ID4gY29udGV4dCBpbWFnZSBvdXJzZWx2ZXMu
IEl0IGlzIG9ubHkgaW4gcmVzZXRfYWN0aXZlKCkgd2hlcmUgd2UgZGFiYmxlCj4gPiBpbnNpZGUg
dGhlIGNvbnRleHQgaW1hZ2Ugb3V0c2lkZSBvZiBhIHNlcmlhbGlzZWQgcGF0aCBmcm9tIHNjaGVk
dWxlLW91dDsKPiA+IGJ1dCB3ZSBjb3VsZCBlcXVhbGx5IHBlcmZvcm0gdGhlIG9wZXJhdGlvbiBp
bnNpZGUgc2NoZWR1bGUtaW4gd2hpY2ggaXMKPiA+IHRoZW4gZnVsbHkgc2VyaWFsaXNlZCB3aXRo
IHRoZSBjb250ZXh0IHBpbiAtLSBhbmQgcmVtYWlucyBzZXJpYWxpc2VkIGJ5Cj4gPiB0aGUgZW5n
aW5lIHB1bHNlIHdpdGgga2lsbF9jb250ZXh0KCkuIChUaGUgb25seSBkb3duc2lkZSwgYXNpZGUg
ZnJvbQo+ID4gZG9pbmcgbW9yZSB3b3JrIGluc2lkZSB0aGUgZW5naW5lLT5hY3RpdmUubG9jaywg
d2FzIHRoZSBwbGFuIHRvIG1lcmdlCj4gPiBhbGwgdGhlIHJlc2V0IHBhdGhzIGludG8gZG9pbmcg
dGhlaXIgY29udGV4dCBzY3J1YmJpbmcgb24gc2NoZWR1bGUtb3V0Cj4gPiBuZWVkcyBtb3JlIHRo
b3VnaHQuKQo+IAo+IFNvIHByb2Nlc3NfY3NiIGlzIG5vdCB1bmRlciB0aGUgZW5naW5lIGxvY2sg
YW5kIGhlbmNlIHNjaGVkdWxlX291dCBjYW4gCj4gcmFjZSB3aXRoIHNjaGVkdWxlX2luIG1lYW5p
bmcgc2NoZWR1bGVfb3V0IHNob3VsZCByZWZyYWluIGZyb20gZG9pbmcgCj4gbm9uLXRyaXZpYWwg
d29yay4KCkknbSBzdGVhbGluZyB0aGF0IGZvciBhIGNvbW1lbnQgaW4gc2NoZWR1bGVfb3V0ISBU
aGFua3MsCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
