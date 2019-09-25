Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3C6BDBA7
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 12:01:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0865F6EB71;
	Wed, 25 Sep 2019 10:01:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 223196EB66
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 10:01:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18609384-1500050 
 for multiple; Wed, 25 Sep 2019 11:01:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Sep 2019 11:01:33 +0100
Message-Id: <20190925100137.17956-24-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190925100137.17956-1-chris@chris-wilson.co.uk>
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 23/27] drm/i915: Drop struct_mutex guard from
 debugfs/framebuffer_info
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

SXQgcHJvdGVjdHMgbm90aGluZyBiZWluZyBhY2Nlc3NlZCBmb3IgdGhlIGludGVsX2ZyYW1lYnVm
ZmVyLCBzbyBpdCdzCm93biBsb2NraW5nIGhhZCBiZXR0ZXIgYmUgc3VmZmljaWVudC4KClNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIHwgNiAtLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKaW5kZXgg
ZDRhN2NkYTYwNjc5Li41ZTk4NGJhMjdiZWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdm
cy5jCkBAIC0xNDQ1LDExICsxNDQ1LDYgQEAgc3RhdGljIGludCBpOTE1X2dlbV9mcmFtZWJ1ZmZl
cl9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKIAlzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2ID0gJmRldl9wcml2LT5kcm07CiAJc3RydWN0IGludGVsX2ZyYW1lYnVmZmVyICpmYmRl
dl9mYiA9IE5VTEw7CiAJc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZHJtX2ZiOwotCWludCByZXQ7
Ci0KLQlyZXQgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJmRldi0+c3RydWN0X211dGV4KTsK
LQlpZiAocmV0KQotCQlyZXR1cm4gcmV0OwogCiAjaWZkZWYgQ09ORklHX0RSTV9GQkRFVl9FTVVM
QVRJT04KIAlpZiAoZGV2X3ByaXYtPmZiZGV2ICYmIGRldl9wcml2LT5mYmRldi0+aGVscGVyLmZi
KSB7CkBAIC0xNDg0LDcgKzE0NzksNiBAQCBzdGF0aWMgaW50IGk5MTVfZ2VtX2ZyYW1lYnVmZmVy
X2luZm8oc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQogCQlzZXFfcHV0YyhtLCAnXG4n
KTsKIAl9CiAJbXV0ZXhfdW5sb2NrKCZkZXYtPm1vZGVfY29uZmlnLmZiX2xvY2spOwotCW11dGV4
X3VubG9jaygmZGV2LT5zdHJ1Y3RfbXV0ZXgpOwogCiAJcmV0dXJuIDA7CiB9Ci0tIAoyLjIzLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
