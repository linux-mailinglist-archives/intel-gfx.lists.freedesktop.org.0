Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E877EE69FA
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Oct 2019 23:58:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87B6389E7B;
	Sun, 27 Oct 2019 22:58:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C395E89F43
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Oct 2019 22:58:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18987252-1500050 
 for multiple; Sun, 27 Oct 2019 22:58:10 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 27 Oct 2019 22:58:08 +0000
Message-Id: <20191027225808.19437-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191027225808.19437-1-chris@chris-wilson.co.uk>
References: <20191027225808.19437-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/selftests: Select a random engine
 for testing memory regions
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VXNlIGFueSBibGl0dGVyIGVuZ2luZSBhdCByYW5kb20gZm9yIHByZWZpbGxpbmcgdGhlIG1lbW9y
eSByZWdpb24uCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KLS0tCiAuLi4vZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX21lbW9yeV9yZWdpb24u
YyAgfCAyOSArKysrKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9u
cygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9z
ZWxmdGVzdHMvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2Vs
ZnRlc3RzL2ludGVsX21lbW9yeV9yZWdpb24uYwppbmRleCA4YmM2ZmFkZDE0ZmIuLjFmNWUzYWI2
ZjkxZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX21l
bW9yeV9yZWdpb24uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxf
bWVtb3J5X3JlZ2lvbi5jCkBAIC0xNyw2ICsxNyw3IEBACiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2Vt
X29iamVjdF9ibHQuaCIKICNpbmNsdWRlICJnZW0vc2VsZnRlc3RzL2lndF9nZW1fdXRpbHMuaCIK
ICNpbmNsdWRlICJnZW0vc2VsZnRlc3RzL21vY2tfY29udGV4dC5oIgorI2luY2x1ZGUgImd0L2lu
dGVsX2VuZ2luZV91c2VyLmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKICNpbmNsdWRlICJz
ZWxmdGVzdHMvaWd0X2ZsdXNoX3Rlc3QuaCIKICNpbmNsdWRlICJzZWxmdGVzdHMvaTkxNV9yYW5k
b20uaCIKQEAgLTQ0Miw2ICs0NDMsMjUgQEAgc3RhdGljIGludCBpZ3RfbG1lbV93cml0ZV9ncHUo
dm9pZCAqYXJnKQogCXJldHVybiBlcnI7CiB9CiAKK3N0YXRpYyBzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICoKK3JhbmRvbV9lbmdpbmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCisJICAg
ICAgdW5zaWduZWQgaW50IGNsYXNzLAorCSAgICAgIHN0cnVjdCBybmRfc3RhdGUgKnBybmcpCit7
CisJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOworCXVuc2lnbmVkIGludCBjb3VudDsK
KworCWNvdW50ID0gMDsKKwlmb3IgKGVuZ2luZSA9IGludGVsX2VuZ2luZV9sb29rdXBfdXNlcihp
OTE1LCBjbGFzcywgMCk7CisJICAgICBlbmdpbmUgJiYgZW5naW5lLT51YWJpX2NsYXNzID09IGNs
YXNzOworCSAgICAgZW5naW5lID0gcmJfZW50cnlfc2FmZShyYl9uZXh0KCZlbmdpbmUtPnVhYmlf
bm9kZSksCisJCQkJICAgIHR5cGVvZigqZW5naW5lKSwgdWFiaV9ub2RlKSkKKwkJY291bnQrKzsK
KworCWNvdW50ID0gaTkxNV9wcmFuZG9tX3UzMl9tYXhfc3RhdGUoY291bnQsIHBybmcpOworCXJl
dHVybiBpbnRlbF9lbmdpbmVfbG9va3VwX3VzZXIoaTkxNSwgY2xhc3MsIGNvdW50KTsKK30KKwog
c3RhdGljIGludCBpZ3RfbG1lbV93cml0ZV9jcHUodm9pZCAqYXJnKQogewogCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gYXJnOwpAQCAtNDU4LDYgKzQ3OCw3IEBAIHN0YXRpYyBpbnQg
aWd0X2xtZW1fd3JpdGVfY3B1KHZvaWQgKmFyZykKIAkJUEFHRV9TSVpFIC0gc2l6ZW9mKHU2NCks
CiAJCVBBR0VfU0laRSAtIDY0LAogCX07CisJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
OwogCXUzMiAqdmFkZHI7CiAJdTMyIHN6OwogCXUzMiBpOwpAQCAtNDY1LDkgKzQ4NiwxMiBAQCBz
dGF0aWMgaW50IGlndF9sbWVtX3dyaXRlX2NwdSh2b2lkICphcmcpCiAJaW50IGNvdW50OwogCWlu
dCBlcnI7CiAKLQlpZiAoIUhBU19FTkdJTkUoaTkxNSwgQkNTMCkpCisJZW5naW5lID0gcmFuZG9t
X2VuZ2luZShpOTE1LCBJOTE1X0VOR0lORV9DTEFTU19DT1BZLCAmcHJuZyk7CisJaWYgKCFlbmdp
bmUpCiAJCXJldHVybiAwOwogCisJcHJfaW5mbygiJXM6IHVzaW5nICVzXG4iLCBfX2Z1bmNfXywg
ZW5naW5lLT5uYW1lKTsKKwogCXN6ID0gcm91bmRfdXAocHJhbmRvbV91MzJfc3RhdGUoJnBybmcp
ICUgU1pfMzJNLCBQQUdFX1NJWkUpOwogCXN6ID0gbWF4X3QodTMyLCAyICogUEFHRV9TSVpFLCBz
eik7CiAKQEAgLTQ4Miw4ICs1MDYsNyBAQCBzdGF0aWMgaW50IGlndF9sbWVtX3dyaXRlX2NwdSh2
b2lkICphcmcpCiAJfQogCiAJLyogUHV0IHRoZSBwYWdlcyBpbnRvIGEga25vd24gc3RhdGUgLS0g
ZnJvbSB0aGUgZ3B1IGZvciBhZGRlZCBmdW4gKi8KLQllcnIgPSBpOTE1X2dlbV9vYmplY3RfZmls
bF9ibHQob2JqLCBpOTE1LT5lbmdpbmVbQkNTMF0tPmtlcm5lbF9jb250ZXh0LAotCQkJCSAgICAg
ICAweGRlYWRiZWFmKTsKKwllcnIgPSBpOTE1X2dlbV9vYmplY3RfZmlsbF9ibHQob2JqLCBlbmdp
bmUtPmtlcm5lbF9jb250ZXh0LCAweGRlYWRiZWFmKTsKIAlpZiAoZXJyKQogCQlnb3RvIG91dF91
bnBpbjsKIAotLSAKMi4yNC4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
