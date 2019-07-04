Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6A15F49E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 10:32:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 009386E2FF;
	Thu,  4 Jul 2019 08:32:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B54E6E2FF
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 08:32:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17124328-1500050 for multiple; Thu, 04 Jul 2019 09:15:41 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190703121204.30754-1-chris@chris-wilson.co.uk>
 <ee12a6b8-5916-15e7-40c7-f2833698afd8@linux.intel.com>
 <156215810772.20783.4447386209912059358@skylake-alporthouse-com>
 <a9fdc276-fdee-e1b0-ae55-7ce14f7eb035@linux.intel.com>
In-Reply-To: <a9fdc276-fdee-e1b0-ae55-7ce14f7eb035@linux.intel.com>
Message-ID: <156222814011.25091.10995416246967763804@skylake-alporthouse-com>
Date: Thu, 04 Jul 2019 09:15:40 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check caller held wakerefs in
 assert_forcewakes_active
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0wNCAwOToxMDozMikKPiAKPiBPbiAwMy8w
Ny8yMDE5IDEzOjQ4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA3LTAzIDEzOjQzOjM0KQo+ID4+Cj4gPj4gT24gMDMvMDcvMjAxOSAxMzoxMiwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfdW5jb3JlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYwo+
ID4+PiBpbmRleCA2OGQ1NGUxMjZkNzkuLmJjMjVhNmU1MTQ2MyAxMDA2NDQKPiA+Pj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMKPiA+Pj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMKPiA+Pj4gQEAgLTczOCw2ICs3MzgsMTIgQEAgdm9p
ZCBhc3NlcnRfZm9yY2V3YWtlc19pbmFjdGl2ZShzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUp
Cj4gPj4+ICAgIHZvaWQgYXNzZXJ0X2ZvcmNld2FrZXNfYWN0aXZlKHN0cnVjdCBpbnRlbF91bmNv
cmUgKnVuY29yZSwKPiA+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbnVtIGZvcmNl
d2FrZV9kb21haW5zIGZ3X2RvbWFpbnMpCj4gPj4+ICAgIHsKPiA+Pj4gKyAgICAgc3RydWN0IGlu
dGVsX3VuY29yZV9mb3JjZXdha2VfZG9tYWluICpkb21haW47Cj4gPj4+ICsgICAgIHVuc2lnbmVk
IGludCB0bXA7Cj4gPj4+ICsKPiA+Pj4gKyAgICAgaWYgKCFJU19FTkFCTEVEKENPTkZJR19EUk1f
aTkxNV9SVU5USU1FX1BNKSkKPiA+Pj4gKyAgICAgICAgICAgICByZXR1cm47Cj4gPj4+ICsKPiA+
Pgo+ID4+IElmIHVuY29yZS0+ZnVuY3MuZm9yY2Vfd2FrZV9nZXQgaXMgc2V0IHdoeSB3b3VsZG4n
dCB3ZSBzdGlsbCB3YW50IHRvIHJ1bgo+ID4+IHRoZSBhc3NlcnRzPwo+ID4gCj4gPiBJJ20ganVz
dCBiZWluZyB3b3JyaWVkIGJ5IGFkZGluZyBhIGxvb3AgdW5kZXIgaXJxLW9mZiBhbmQgZGlkbid0
IHdhbnQgdG8KPiA+IGFkZCBtb3JlIHRyb3VibGUgdG8gbm9uLWRlYnVnIGtlcm5lbHMuIChDbG9z
aW5nIHRoZSBzdGFibGUgZG9vciBtdWNoPykKPiAKPiBXaGF0IGlzIHRoZSBjb25uZWN0aW9uIGJl
dHdlZW4gZGVidWcvbm9uLWRlYnVnIGtlcm5lbHMgYW5kIAo+IENPTkZJR19EUk1faTkxNV9SVU5U
SU1FX1BNPwoKV2VsbCwgSSBjYW4ndCB0eXBlIG9idmlvdXNseS4gSXQncyBtZWFudCB0byBiZSB0
aGUgc3ltYm9sIGZvcgoJY29uZmlnIERSTV9JOTE1X0RFQlVHX1JVTlRJTUVfUE0KdG8gbWF0Y2gg
dGhlIG90aGVyIGFzc2VydCBpbiB1c2UuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
