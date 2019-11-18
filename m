Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B86FD100F2E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 00:03:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A446C6E846;
	Mon, 18 Nov 2019 23:03:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DC606E7AF
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 23:03:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19248358-1500050 
 for multiple; Mon, 18 Nov 2019 23:02:55 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Nov 2019 23:02:37 +0000
Message-Id: <20191118230254.2615942-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191118230254.2615942-1-chris@chris-wilson.co.uk>
References: <20191118230254.2615942-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/19] drm/i915/gem: Manually dump the debug
 trace on GEM_BUG_ON
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

U2luY2UgaWd0IG5vdyBkZWZhdWx0cyB0byBub3QgZW5hYmxpbmcgZnRyYWNlLW9uLW9vcHMsIHdl
IG5lZWQgdG8KbWFudWFsbHkgaW52b2tlIEdFTV9UUkFDRV9EVU1QKCkgdG8gc2VlIHRoZSBkZWJ1
ZyBsb2cgcHJpb3IgdG8gYQpHRU1fQlVHX09OIHBhbmlja2luZy4KClNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtLmggfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5oCmluZGV4IGM3OTg1NzY3Mjk2YS4uMTc1M2M4NGQ2YzBk
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmgKQEAgLTMwLDYgKzMwLDggQEAKIAogI2luY2x1ZGUg
PGRybS9kcm1fZHJ2Lmg+CiAKKyNpbmNsdWRlICJpOTE1X3V0aWxzLmgiCisKIHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlOwogCiAjaWZkZWYgQ09ORklHX0RSTV9JOTE1X0RFQlVHX0dFTQpAQCAtMzks
NiArNDEsNyBAQCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKICNkZWZpbmUgR0VNX0JVR19PTihj
b25kaXRpb24pIGRvIHsgaWYgKHVubGlrZWx5KChjb25kaXRpb24pKSkgewlcCiAJCUdFTV9UUkFD
RV9FUlIoIiVzOiVkIEdFTV9CVUdfT04oJXMpXG4iLCBcCiAJCQkgICAgICBfX2Z1bmNfXywgX19M
SU5FX18sIF9fc3RyaW5naWZ5KGNvbmRpdGlvbikpOyBcCisJCUdFTV9UUkFDRV9EVU1QKCk7IFwK
IAkJQlVHKCk7IFwKIAkJfSBcCiAJfSB3aGlsZSgwKQotLSAKMi4yNC4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
