Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1E010CC51
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 16:59:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B27056E84F;
	Thu, 28 Nov 2019 15:59:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14E886E84F
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 15:59:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19378609-1500050 
 for multiple; Thu, 28 Nov 2019 15:59:44 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Nov 2019 15:59:42 +0000
Message-Id: <20191128155942.4137220-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191127223252.3777141-2-chris@chris-wilson.co.uk>
References: <20191127223252.3777141-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Flush fput after running
 selftests
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

VXNlIGFuIHJjdV9iYXJyaWVyKCkgdG8gZmx1c2ggYW55IG1vY2sgZmlsZXMgdXNlZCBieSB0aGUg
c2VsZnRlc3RzIGFzCnRoZSBkZWZlcnJlZCBjbGVhbnVwIG1heSBiZSBob2xkaW5nIHJlc291cmNl
cyB0aGF0IHdlIG5lZWQgdG8gY2xlYW51cC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2d0dC5jICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzL2k5MTVfc2VsZnRlc3QuYyB8IDEwICsrKysrKysrLS0KIDIgZmlsZXMgY2hhbmdlZCwgOSBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0
LmMKaW5kZXggNjIzOWE5YWRiZjE0Li42MWExNTgyYjlmOWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2d0dC5jCkBAIC0yNzUyLDcgKzI3NTIsNyBAQCBzdGF0aWMgdm9pZCBnZ3R0X2NsZWFu
dXBfaHcoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKIAlhdG9taWNfc2V0KCZnZ3R0LT52bS5vcGVu
LCAwKTsKIAogCXJjdV9iYXJyaWVyKCk7IC8qIGZsdXNoIHRoZSBSQ1UnZWRfX2k5MTVfdm1fcmVs
ZWFzZSAqLwotCWZsdXNoX3dvcmtxdWV1ZShnZ3R0LT52bS5pOTE1LT53cSk7CisJaTkxNV9nZW1f
ZHJhaW5fd29ya3F1ZXVlKGdndHQtPnZtLmk5MTUpOwogCiAJbXV0ZXhfbG9jaygmZ2d0dC0+dm0u
bXV0ZXgpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkx
NV9zZWxmdGVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfc2VsZnRl
c3QuYwppbmRleCBkM2JmOWVlZmI2ODIuLmUzYTgxMTBkNzliYSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfc2VsZnRlc3QuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9zZWxmdGVzdC5jCkBAIC0xNTIsOCArMTUyLDEwIEBA
IHN0YXRpYyBpbnQgX19ydW5fc2VsZnRlc3RzKGNvbnN0IGNoYXIgKm5hbWUsCiAJCQljb250aW51
ZTsKIAogCQljb25kX3Jlc2NoZWQoKTsKLQkJaWYgKHNpZ25hbF9wZW5kaW5nKGN1cnJlbnQpKQot
CQkJcmV0dXJuIC1FSU5UUjsKKwkJaWYgKHNpZ25hbF9wZW5kaW5nKGN1cnJlbnQpKSB7CisJCQll
cnIgPSAtRUlOVFI7CisJCQlnb3RvIG91dDsKKwkJfQogCiAJCXByX2luZm8oRFJJVkVSX05BTUUg
IjogUnVubmluZyAlc1xuIiwgc3QtPm5hbWUpOwogCQlpZiAoZGF0YSkKQEAgLTE3MSw2ICsxNzMs
MTAgQEAgc3RhdGljIGludCBfX3J1bl9zZWxmdGVzdHMoY29uc3QgY2hhciAqbmFtZSwKIAkJIHN0
LT5uYW1lLCBlcnIpKQogCQllcnIgPSAtMTsKIAorb3V0OgorCXJjdV9iYXJyaWVyKCk7IC8qIGZs
dXNoIGRlZmVycmVkIGZwdXQoKSAqLworCXlpZWxkKCk7CisJcmN1X2JhcnJpZXIoKTsgLyogYW5k
IG9uY2UgbW9yZSBmb3IgYW55dGhpbmcgZnJlZWQgZnJvbSB0aGUgZmlsZXMgKi8KIAlyZXR1cm4g
ZXJyOwogfQogCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
