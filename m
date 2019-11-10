Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5F2F6B02
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Nov 2019 19:58:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4C146E7D2;
	Sun, 10 Nov 2019 18:58:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E5476E7AB
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Nov 2019 18:58:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19151888-1500050 
 for multiple; Sun, 10 Nov 2019 18:58:11 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 10 Nov 2019 18:57:49 +0000
Message-Id: <20191110185806.17413-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191110185806.17413-1-chris@chris-wilson.co.uk>
References: <20191110185806.17413-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/25] drm/i915: Show guilty context name on GPU
 reset
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

V2UgbWVudGlvbiB0aGF0IHdlIGFyZSByZXNldHRpbmcgdGhlIEdQVSwgYW5kIGR1bXAgdGhlIGRl
dmljZSBzdGF0ZSBmb3IKcG9zdCBtb3J0ZW0gZGVidWdnaW5nLiBIb3dldmVyLCB3aGlsZSB0aGF0
IGR1bXAgY29udGFpbnMgdGhlIGFjdGl2ZQpwcm9jZXNzZXMgYW5kIHRoZSBvbmUgZmxhZ2dlZCBh
cyBjYXVzaW5nIHRoZSBlcnJvciwgd2UgZG8gbm90IGFsd2F5cwppbmNsdWRlIHRoYXQgaW5mb3Jt
YXRpb24gaW4gZG1lc2cuIEluY2x1ZGUgdGhlIG5hbWUgb2YgdGhlIGd1aWx0eQpwcm9jZXNzIGlu
IGRtZXNnIGZvciByZWZlcmVuY2UuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGlu
dXguaW50ZWwuY29tPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jIHwgNCArKysrCiAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3Jlc2V0LmMKaW5kZXggYTZiMGQwMGMzYTUxLi5iNzAwN2NkNzhjNmYgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwpAQCAtOTIsNiArOTIsMTAgQEAgc3RhdGljIGJvb2wgY29u
dGV4dF9tYXJrX2d1aWx0eShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4KQogCWlmICghaTkx
NV9nZW1fY29udGV4dF9pc19iYW5uYWJsZShjdHgpKQogCQlyZXR1cm4gZmFsc2U7CiAKKwlkZXZf
bm90aWNlKGN0eC0+aTkxNS0+ZHJtLmRldiwKKwkJICAgIiVzIGNvbnRleHQgcmVzZXQgZHVlIHRv
IEdQVSBoYW5nXG4iLAorCQkgICBjdHgtPm5hbWUpOworCiAJLyogUmVjb3JkIHRoZSB0aW1lc3Rh
bXAgZm9yIHRoZSBsYXN0IE4gaGFuZ3MgKi8KIAlwcmV2X2hhbmcgPSBjdHgtPmhhbmdfdGltZXN0
YW1wWzBdOwogCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGN0eC0+aGFuZ190aW1lc3RhbXAp
IC0gMTsgaSsrKQotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
