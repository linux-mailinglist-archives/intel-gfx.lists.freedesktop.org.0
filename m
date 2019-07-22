Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E206570571
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2019 18:28:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4782489D40;
	Mon, 22 Jul 2019 16:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 647D289D40
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 16:28:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17509609-1500050 for multiple; Mon, 22 Jul 2019 17:28:16 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190718070024.21781-1-chris@chris-wilson.co.uk>
 <20190718070024.21781-3-chris@chris-wilson.co.uk>
 <6c8ae9af-0a23-5f62-9740-6dc7e9b9ed42@linux.intel.com>
In-Reply-To: <6c8ae9af-0a23-5f62-9740-6dc7e9b9ed42@linux.intel.com>
Message-ID: <156381289355.31349.2085005736634640131@skylake-alporthouse-com>
Date: Mon, 22 Jul 2019 17:28:13 +0100
Subject: Re: [Intel-gfx] [PATCH 03/20] drm/i915/gt: Provde a local
 intel_context.vm
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0yMiAxMzozMzoxNCkKPiAKPiBPbiAxOC8w
Ny8yMDE5IDA4OjAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBAQCAtMTExMyw5ICsxMTIxLDgg
QEAgc3RhdGljIGludCBzZXRfcHBndHQoc3RydWN0IGRybV9pOTE1X2ZpbGVfcHJpdmF0ZSAqZmls
ZV9wcml2LAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2V0X3BwZ3R0X2Jh
cnJpZXIsCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvbGQpOwo+ID4gICAg
ICAgaWYgKGVycikgewo+ID4gLSAgICAgICAgICAgICBjdHgtPnZtID0gb2xkOwo+ID4gLSAgICAg
ICAgICAgICBjdHgtPmRlc2NfdGVtcGxhdGUgPSBkZWZhdWx0X2Rlc2NfdGVtcGxhdGUoY3R4LT5p
OTE1LCBvbGQpOwo+ID4gLSAgICAgICAgICAgICBpOTE1X3ZtX3B1dCh2bSk7Cj4gPiArICAgICAg
ICAgICAgIGk5MTVfdm1fcHV0KF9fc2V0X3BwZ3R0KGN0eCwgb2xkKSk7Cj4gPiArICAgICAgICAg
ICAgIGk5MTVfdm1fcHV0KG9sZCk7Cj4gCj4gU2hvdWxkbid0IHRoaXMgc3RpbGwgYmUgaTkxNV92
bV9vdXQodm0pLCBmb3IgdGhlIGV4dHJhIHZtIHJlZmVyZW5jZSB0aGUgCj4gZnVuY3Rpb24gZGlk
IGZ1cnRoZXIgdXA/CgpfX3NldF9wcGd0dCgpIHJldHVybnMgdGhlIHZtLCBzbyB0aGlzIGlzCglp
OTE1X3ZtX3B1dCh2bSk7CglpOTE1X3ZtX3B1dChvbGQpOyAvKiBzaW5jZSB3ZSBqdXN0IGFjcXVp
cmVkIGEgcmVmIHRvIG9sZCBhZ2FpbiAqLwotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
