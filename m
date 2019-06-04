Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8857634918
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 15:40:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 724178916C;
	Tue,  4 Jun 2019 13:40:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A60E8916C
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 13:40:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16789120-1500050 for multiple; Tue, 04 Jun 2019 14:40:35 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190604131140.12647-1-lionel.g.landwerlin@intel.com>
 <20190604131140.12647-6-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190604131140.12647-6-lionel.g.landwerlin@intel.com>
Message-ID: <155965563149.21578.6954397047180158057@skylake-alporthouse-com>
Date: Tue, 04 Jun 2019 14:40:31 +0100
Subject: Re: [Intel-gfx] [PATCH v3 5/7] drm/i915: add a new perf
 configuration execbuf parameter
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNi0wNCAxNDoxMTozOCkKPiAgICAgICAg
IGxpc3RfYWRkX3RhaWwoJnJxLT5jbGllbnRfbGluaywgJnJxLT5maWxlX3ByaXYtPm1tLnJlcXVl
c3RfbGlzdCk7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQgZWJfb2FfY29uZmlnKHN0cnVjdCBpOTE1
X2V4ZWNidWZmZXIgKmViKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKm9hX3ZtYTsK
PiArICAgICAgIGludCBlcnI7Cj4gKwo+ICsgICAgICAgaWYgKCFlYi0+b2FfY29uZmlnKQo+ICsg
ICAgICAgICAgICAgICByZXR1cm4gMDsKPiArCj4gKyAgICAgICAvKgo+ICsgICAgICAgICogSWYg
dGhlIGNvbmZpZyBoYXNuJ3QgY2hhbmdlZCwgc2tpcCByZWNvbmZpZ3VyaW5nIHRoZSBIVyAodGhp
cyBpcwo+ICsgICAgICAgICogc3ViamVjdCB0byBhIGRlbGF5IHdlIHdhbnQgdG8gYXZvaWQgaGFz
IG11Y2ggYXMgcG9zc2libGUpLgo+ICsgICAgICAgICovCj4gKyAgICAgICBpZiAoZWItPm9hX2Nv
bmZpZyA9PSBlYi0+aTkxNS0+cGVyZi5vYS5leGNsdXNpdmVfc3RyZWFtLT5vYV9jb25maWcpCj4g
KyAgICAgICAgICAgICAgIHJldHVybiAwOwoKQnV0IHlvdSBkb24ndCBvcmRlciB0aGUgZXhlY3V0
aW9uIHNvIGl0IG1heSBub3QgYmUgdGhlIHJpZ2h0IG9hX2NvbmZpZy4KSnVzdCBhZGQgdGhlIGJh
cnJpZXIuIEl0IGlzIHZpcnR1YWxseSBubyBjb3N0IGZvciB0aGUgZXhjbHVzaXZlIG9hCnVzZXJz
cGFjZS4KCkhvdyBkb2VzIHRoaXMgaW50ZXJhY3Qgd2l0aCB0aGUgZ2xvYmFsIG9hX2NvbmZpZyBi
ZWluZyBjaGFuZ2VkIHZpYSB0aGUKaW9jdGw/IFdoYXQgc2lnbmlmaWNhbmNlIGlzIHRoZXJlIGZv
ciB0aGlzIHBlci1leGVjYnVmIG9hX2NvbmZpZyBiZWluZwphcHBsaWVkIHRvIG90aGVyIHVzZXJz
PwotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
