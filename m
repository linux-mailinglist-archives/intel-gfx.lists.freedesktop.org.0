Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE1F216E2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 12:22:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEA9D898D9;
	Fri, 17 May 2019 10:22:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC761898D9
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 10:22:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16586746-1500050 
 for multiple; Fri, 17 May 2019 11:22:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 11:22:24 +0100
Message-Id: <20190517102225.3069-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190517102225.3069-1-chris@chris-wilson.co.uk>
References: <20190517102225.3069-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/dp: Initialise locals for static
 analysis
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

SnVzdCB0byBzcXVlbGNoIGFuIHNtYXRjaCB3YXJuaW5nIHRoYXQgZG9lc24ndCBzZWUgdGhlIHdp
dGhfKCkgYmVpbmcKdGFrZW4gdW5jb25kaXRpb25hbGx5Ogpkcml2ZXJzL2dwdS9kcm0vaTkxNS8v
aW50ZWxfZHAuYzoyMzAgaW50ZWxfZHBfZ2V0X2ZpYV9zdXBwb3J0ZWRfbGFuZV9jb3VudCgpIGVy
cm9yOiB1bmluaXRpYWxpemVkIHN5bWJvbCAnbGFuZV9pbmZvJy4KZHJpdmVycy9ncHUvZHJtL2k5
MTUvL2ludGVsX2RwLmM6NTMzOCBpbnRlbF9kaWdpdGFsX3BvcnRfY29ubmVjdGVkKCkgZXJyb3I6
IHVuaW5pdGlhbGl6ZWQgc3ltYm9sICdpc19jb25uZWN0ZWQnLgoKU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYyB8IDMg
KystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RwLmMKaW5kZXggZTNlNzE5YzA0NDQwLi43N2JhNGRhNmI5ODEgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZHAuYwpAQCAtMjIyLDYgKzIyMiw3IEBAIHN0YXRpYyBpbnQgaW50ZWxf
ZHBfZ2V0X2ZpYV9zdXBwb3J0ZWRfbGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
KQogCWlmICh0Y19wb3J0ID09IFBPUlRfVENfTk9ORSB8fCBkaWdfcG9ydC0+dGNfdHlwZSAhPSBU
Q19QT1JUX1RZUEVDKQogCQlyZXR1cm4gNDsKIAorCWxhbmVfaW5mbyA9IDA7CiAJd2l0aF9pbnRl
bF9kaXNwbGF5X3Bvd2VyKGRldl9wcml2LCBQT1dFUl9ET01BSU5fRElTUExBWV9DT1JFLCB3YWtl
cmVmKQogCQlsYW5lX2luZm8gPSAoSTkxNV9SRUFEKFBPUlRfVFhfREZMRVhEUFNQKSAmCiAJCQkg
ICAgIERQX0xBTkVfQVNTSUdOTUVOVF9NQVNLKHRjX3BvcnQpKSA+PgpAQCAtNTMyOSw4ICs1MzMw
LDggQEAgc3RhdGljIGJvb2wgX19pbnRlbF9kaWdpdGFsX3BvcnRfY29ubmVjdGVkKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyKQogYm9vbCBpbnRlbF9kaWdpdGFsX3BvcnRfY29ubmVjdGVk
KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOworCWJvb2wgaXNfY29u
bmVjdGVkID0gZmFsc2U7CiAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7Ci0JYm9vbCBpc19jb25u
ZWN0ZWQ7CiAKIAl3aXRoX2ludGVsX2Rpc3BsYXlfcG93ZXIoZGV2X3ByaXYsIFBPV0VSX0RPTUFJ
Tl9ESVNQTEFZX0NPUkUsIHdha2VyZWYpCiAJCWlzX2Nvbm5lY3RlZCA9IF9faW50ZWxfZGlnaXRh
bF9wb3J0X2Nvbm5lY3RlZChlbmNvZGVyKTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
