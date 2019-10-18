Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0ED1DC5C3
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 15:07:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0939F6EB3B;
	Fri, 18 Oct 2019 13:07:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AE9B6EB3B
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 13:07:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18882596-1500050 
 for multiple; Fri, 18 Oct 2019 14:07:05 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Oct 2019 14:07:03 +0100
Message-Id: <20191018130703.31125-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Add the mock engine to the
 gt->engine[]
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

UmVtZW1iZXIgdG8gaW5jbHVkZSB0aGUgbmV3bHkgY3JlYXRlZCBtb2NrIGVuZ2luZSBpbiB0aGUg
bGlzdCBvZgphdmFpbGFibGUgZW5naW5lcyBpbnNpZGUgdGhlIGd0LgoKRml4ZXM6IGE1MDEzNGIx
OTgzYiAoImRybS9pOTE1OiBNYWtlIGZvcl9lYWNoX2VuZ2luZV9tYXNrZWQgd29yayBvbiBpbnRl
bF9ndCIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUuYyB8IDQgKysrKwogMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L21vY2tfZW5naW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jCmlu
ZGV4IDc0N2Y3Yzc3OTBlYi4uMTIzZGIyYzNmOTU2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L21v
Y2tfZW5naW5lLmMKQEAgLTI1Myw2ICsyNTMsNyBAQCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpt
b2NrX2VuZ2luZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAlzbnByaW50Zihlbmdp
bmUtPmJhc2UubmFtZSwgc2l6ZW9mKGVuZ2luZS0+YmFzZS5uYW1lKSwgIiVzIiwgbmFtZSk7CiAJ
ZW5naW5lLT5iYXNlLmlkID0gaWQ7CiAJZW5naW5lLT5iYXNlLm1hc2sgPSBCSVQoaWQpOworCWVu
Z2luZS0+YmFzZS5sZWdhY3lfaWR4ID0gSU5WQUxJRF9FTkdJTkU7CiAJZW5naW5lLT5iYXNlLmlu
c3RhbmNlID0gaWQ7CiAJZW5naW5lLT5iYXNlLnN0YXR1c19wYWdlLmFkZHIgPSAodm9pZCAqKShl
bmdpbmUgKyAxKTsKIApAQCAtMjY3LDYgKzI2OCw5IEBAIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
Km1vY2tfZW5naW5lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCWVuZ2luZS0+YmFz
ZS5yZXNldC5maW5pc2ggPSBtb2NrX3Jlc2V0X2ZpbmlzaDsKIAllbmdpbmUtPmJhc2UuY2FuY2Vs
X3JlcXVlc3RzID0gbW9ja19jYW5jZWxfcmVxdWVzdHM7CiAKKwlpOTE1LT5ndC5lbmdpbmVbaWRd
ID0gJmVuZ2luZS0+YmFzZTsKKwlpOTE1LT5ndC5lbmdpbmVfY2xhc3NbMF1baWRdID0gJmVuZ2lu
ZS0+YmFzZTsKKwogCS8qIGZha2UgaHcgcXVldWUgKi8KIAlzcGluX2xvY2tfaW5pdCgmZW5naW5l
LT5od19sb2NrKTsKIAl0aW1lcl9zZXR1cCgmZW5naW5lLT5od19kZWxheSwgaHdfZGVsYXlfY29t
cGxldGUsIDApOwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
