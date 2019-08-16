Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B107A8FFBE
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 12:10:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAAE36E2CF;
	Fri, 16 Aug 2019 10:10:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C5266E2CF
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 10:10:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18160986-1500050 for multiple; Fri, 16 Aug 2019 11:09:59 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190816100326.6671-1-matthew.auld@intel.com>
In-Reply-To: <20190816100326.6671-1-matthew.auld@intel.com>
Message-ID: <156595019735.11610.14737762443319848109@skylake-alporthouse-com>
Date: Fri, 16 Aug 2019 11:09:57 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/buddy: tidy up i915_buddy_fini
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMTYgMTE6MDM6MjYpCj4gSWYgd2UgYXJlIGxl
YWtpbmcgbm9kZXMgZG9uJ3QgaGlkZSBpdC4gQWxzbyBzdG9wIHRyeWluZyB0byBiZQo+ICJkZWZl
bnNpdmUiIGFuZCBpbnN0ZWFkIGVtYnJhY2UgS2FzYW4gZXQgYWwuCgpJZiB5b3Ugd2FudCB0byBn
byBldmVuIGZ1cnRoZXIsIHJlY29yZCB0aGUgc3RhY2tzIG9mIGVhY2ggYWxsb2NhdG9yLgoKQXMg
d2UgYXJlIHVzaW5nIGttYWxsb2Mgb2YgZWFjaCBub2RlIGFuZCBvcGVyYXRlIGxpa2UgYSBjYWNo
ZSwgd2UgY2FuIGRvCnNvbWV0aGluZyBsaWtlIGttZW1sZWFrX3VwZGF0ZV90cmFjZSgpIG9uIGk5
MTVfYnVkZHlfYWxsb2MoKS4KCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2J1ZGR5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2J1ZGR5LmMKaW5kZXggYjY3OWFi
NmZkODg5Li4zYjMwZTA1ZmZlNTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfYnVkZHkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2J1ZGR5LmMKQEAgLTMs
NiArMyw3IEBACiAgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgogICovCgor
I2luY2x1ZGUgPGxpbnV4L2ttZW1sZWFrLmg+CiAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgoKICNp
bmNsdWRlICJpOTE1X2J1ZGR5LmgiCkBAIC0zMDksNiArMzEwLDcgQEAgaTkxNV9idWRkeV9hbGxv
YyhzdHJ1Y3QgaTkxNV9idWRkeV9tbSAqbW0sIHVuc2lnbmVkIGludCBvcmRlcikKICAgICAgICB9
CgogICAgICAgIG1hcmtfYWxsb2NhdGVkKGJsb2NrKTsKKyAgICAgICBrbWVtbGVha191cGRhdGVf
dHJhY2UoYmxvY2spOwogICAgICAgIHJldHVybiBibG9jazsKCnNob3VsZCBkbyB0aGUgdHJpY2sK
Cj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+
IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9idWRkeS5jIHwgNyArLS0tLS0tCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9idWRkeS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9idWRkeS5jCj4gaW5kZXggYjY3OWFiNmZkODg5Li41OTk1MjQ3ZmRmNzYgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9idWRkeS5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9idWRkeS5jCj4gQEAgLTE3MSwxNSArMTcxLDEwIEBAIGludCBpOTE1X2J1
ZGR5X2luaXQoc3RydWN0IGk5MTVfYnVkZHlfbW0gKm1tLCB1NjQgc2l6ZSwgdTY0IGNodW5rX3Np
emUpCj4gIAo+ICB2b2lkIGk5MTVfYnVkZHlfZmluaShzdHJ1Y3QgaTkxNV9idWRkeV9tbSAqbW0p
Cj4gIHsKPiAtICAgICAgIGludCBlcnIgPSAwOwo+ICAgICAgICAgaW50IGk7Cj4gIAo+ICAgICAg
ICAgZm9yIChpID0gMDsgaSA8IG1tLT5uX3Jvb3RzOyArK2kpIHsKPiAtICAgICAgICAgICAgICAg
aWYgKCFpOTE1X2J1ZGR5X2Jsb2NrX2lzX2ZyZWUobW0tPnJvb3RzW2ldKSkgewo+IC0gICAgICAg
ICAgICAgICAgICAgICAgIGVyciA9IC1FQlVTWTsKPiAtICAgICAgICAgICAgICAgICAgICAgICBj
b250aW51ZTsKPiAtICAgICAgICAgICAgICAgfQo+IC0KPiArICAgICAgICAgICAgICAgR0VNX1dB
Uk5fT04oIWk5MTVfYnVkZHlfYmxvY2tfaXNfZnJlZShtbS0+cm9vdHNbaV0pKTsKPiAgICAgICAg
ICAgICAgICAgaTkxNV9ibG9ja19mcmVlKG1tLT5yb290c1tpXSk7Cj4gICAgICAgICB9Cj4gIAo+
IC0tIAo+IDIuMjAuMQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
