Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E32565D3
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 11:44:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E7116E346;
	Wed, 26 Jun 2019 09:44:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0F456E343;
 Wed, 26 Jun 2019 09:44:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17028295-1500050 
 for multiple; Wed, 26 Jun 2019 10:43:34 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: dri-devel@lists.freedesktop.org
Date: Wed, 26 Jun 2019 10:43:30 +0100
Message-Id: <20190626094330.3556-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm: Allow range of 0 for
 drm_mm_insert_node_in_range()
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgZ3JhY2VmdWxseSBoYW5kbGUgdGhlIGNhbGxlciBzcGVjaWZ5aW5nIGEgemVybyByYW5nZSwg
c28gZG9uJ3QgZm9yY2UKdGhlbSB0byBzcGVjaWFsIGNhc2UgdGhhdCBjb25kaXRpb24gaWYgaXQg
bmF0dXJhbGx5IGZhbGxzIG91dCBvZiB0aGVpcgpzZXR1cC4gV2hhdCB3ZSBkb24ndCBjaGVjayBp
cyBpZiB0aGUgZW5kIDwgc3RhcnQsIHNvIGtlZXAgdGhhdCBhcyBhbgphc3NlcnQgZm9yIGFuIGls
bGVnYWwgY2FsbC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgpDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50
ZWwuY29tPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlv
QGludGVsLmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2RybV9tbS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Ry
bV9tbS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9tbS5jCmluZGV4IDlhNTk4NjVjZTU3NC4uNDU4
MWM1Mzg3MzcyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX21tLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2RybV9tbS5jCkBAIC00NzIsNyArNDcyLDcgQEAgaW50IGRybV9tbV9pbnNl
cnRfbm9kZV9pbl9yYW5nZShzdHJ1Y3QgZHJtX21tICogY29uc3QgbW0sCiAJdTY0IHJlbWFpbmRl
cl9tYXNrOwogCWJvb2wgb25jZTsKIAotCURSTV9NTV9CVUdfT04ocmFuZ2Vfc3RhcnQgPj0gcmFu
Z2VfZW5kKTsKKwlEUk1fTU1fQlVHX09OKHJhbmdlX3N0YXJ0ID4gcmFuZ2VfZW5kKTsKIAogCWlm
ICh1bmxpa2VseShzaXplID09IDAgfHwgcmFuZ2VfZW5kIC0gcmFuZ2Vfc3RhcnQgPCBzaXplKSkK
IAkJcmV0dXJuIC1FTk9TUEM7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
