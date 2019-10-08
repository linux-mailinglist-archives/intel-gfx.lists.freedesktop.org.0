Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D120D00EC
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 21:00:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07BE16E884;
	Tue,  8 Oct 2019 19:00:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 725C86E884
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 19:00:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18769485-1500050 
 for multiple; Tue, 08 Oct 2019 19:59:42 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Oct 2019 19:59:41 +0100
Message-Id: <20191008185941.15228-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Give engine->kernel_context
 distinct timeline lock classes
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

QXNzaWduIGEgc2VwYXJhdGUgbG9ja2NsYXNzIHRvIHRoZSBwZXJtYS1waW5uZWQgdGltZWxpbmVz
IG9mIHRoZQprZXJuZWxfY29udGV4dCwgc3VjaCB0aGF0IHdlIGNhbiB1c2UgdGhlbSBmcm9tIHdp
dGhpbiB0aGUgdXNlciB0aW1lbGluZXMKc2hvdWxkIHdlIGV2ZXIgbmVlZCB0byBpbmplY3QgR1BV
IG9wZXJhdGlvbnMgdG8gZml4dXAgZmF1bHRzIGR1cmluZwpyZXF1ZXN0IGNvbnN0cnVjdGlvbi4K
ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpD
YzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KQ2M6IE1hdHRoZXcg
QXVsZCA8bWF0dGhldy53aWxsaWFtLmF1bGRAZ21haWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIHwgOSArKysrKysrKysKIDEgZmlsZSBjaGFuZ2Vk
LCA5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9j
cy5jCmluZGV4IDdlMmFhN2E2YmVmMC4uNWFhMTM3MWY2YTBmIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwpAQCAtNzM2LDYgKzczNiw3IEBAIGludGVsX2VuZ2lu
ZV9pbml0X2FjdGl2ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHVuc2lnbmVkIGlu
dCBzdWJjbGFzcykKIHN0YXRpYyBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqCiBjcmVhdGVfa2VybmVs
X2NvbnRleHQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogeworCXN0YXRpYyBzdHJ1
Y3QgbG9ja19jbGFzc19rZXkga2VybmVsOwogCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZTsKIAlp
bnQgZXJyOwogCkBAIC03NTEsNiArNzUyLDE0IEBAIGNyZWF0ZV9rZXJuZWxfY29udGV4dChzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJCXJldHVybiBFUlJfUFRSKGVycik7CiAJfQog
CisJLyoKKwkgKiBHaXZlIG91ciBwZXJtYS1waW5uZWQga2VybmVsIHRpbWVsaW5lcyBhIHNlcGFy
YXRlIGxvY2tkZXAgY2xhc3MsCisJICogc28gdGhhdCB3ZSBjYW4gdXNlIHRoZW0gZnJvbSB3aXRo
aW4gdGhlIG5vcm1hbCB1c2VyIHRpbWVsaW5lcworCSAqIHNob3VsZCB3ZSBuZWVkIHRvIGluamVj
dCBHUFUgb3BlcmF0aW9ucyBkdXJpbmcgdGhlaXIgcmVxdWVzdAorCSAqIGNvbnN0cnVjdGlvbi4K
KwkgKi8KKwlsb2NrZGVwX3NldF9jbGFzcygmY2UtPnRpbWVsaW5lLT5tdXRleCwgJmtlcm5lbCk7
CisKIAlyZXR1cm4gY2U7CiB9CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
