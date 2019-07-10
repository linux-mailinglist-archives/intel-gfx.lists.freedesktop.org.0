Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF3B6459E
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 13:10:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 101CC89EEB;
	Wed, 10 Jul 2019 11:10:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38D5089EEB
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 11:09:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17197835-1500050 for multiple; Wed, 10 Jul 2019 12:09:56 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190709123351.5645-1-lionel.g.landwerlin@intel.com>
 <20190709123351.5645-10-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190709123351.5645-10-lionel.g.landwerlin@intel.com>
Message-ID: <156275699448.11940.10670283460077789071@skylake-alporthouse-com>
Date: Wed, 10 Jul 2019 12:09:54 +0100
Subject: Re: [Intel-gfx] [PATCH v8 09/13] drm/i915: add a new perf
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0wOSAxMzozMzo0NykKPiArc3RhdGlj
IGludCBlYl9vYV9jb25maWcoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCj4gK3sKPiArICAg
ICAgIGludCByZXQ7Cj4gKwo+ICsgICAgICAgaWYgKCFlYi0+b2FfY29uZmlnKQo+ICsgICAgICAg
ICAgICAgICByZXR1cm4gMDsKPiArCj4gKyAgICAgICByZXQgPSBpOTE1X211dGV4X2xvY2tfaW50
ZXJydXB0aWJsZSgmZWItPmk5MTUtPmRybSk7Cj4gKyAgICAgICBpZiAocmV0KQo+ICsgICAgICAg
ICAgICAgICByZXR1cm4gcmV0Owo+ICsKPiArICAgICAgIHJldCA9IGk5MTVfYWN0aXZlX3JlcXVl
c3Rfc2V0KCZlYi0+ZW5naW5lLT5sYXN0X29hX2NvbmZpZywKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGViLT5yZXF1ZXN0KTsKCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX2NzLmMKPiBpbmRleCBkZjU5MzJmNWY1NzguLjI1ZWYwMTA3ZDdmNSAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4gQEAgLTg2
NCw2ICs4NjQsOCBAQCBpbnQgaW50ZWxfZW5naW5lX2luaXRfY29tbW9uKHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSkKPiAgCj4gICAgICAgICBlbmdpbmUtPnNldF9kZWZhdWx0X3N1Ym1p
c3Npb24oZW5naW5lKTsKPiAgCj4gKyAgICAgICBJTklUX0FDVElWRV9SRVFVRVNUKCZlbmdpbmUt
Pmxhc3Rfb2FfY29uZmlnKTsKCkZ3aXcsIEkndmUgd3JpdHRlbiB0aGUgbG9ja2RlcCB0cmFja2lu
ZyBwYXRjaGVzIHNvIHRoYXQgeW91IGFyZSBmb3JjZWQKdG8gbm9taW5hdGUgd2hpY2ggbG9jayBn
dWFyZHMgdGhlIGFjdGl2ZS1yZXF1ZXN0IGFuZCBob3BlZnVsbHkgdGhhdCB3aWxsCmhlbHAgZXhw
bGFpbiB3aHkgSSBkb24ndCBsaWtlIHRoaXMgdW5kZXIgZW5naW5lLgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
