Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D03D21A1
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 09:28:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57D5C6EAB5;
	Thu, 10 Oct 2019 07:28:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B4496EAB5
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 07:28:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18785901-1500050 
 for multiple; Thu, 10 Oct 2019 08:27:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Oct 2019 08:27:52 +0100
Message-Id: <20191010072752.18495-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191010072752.18495-1-chris@chris-wilson.co.uk>
References: <20191010072752.18495-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/perf: Store shortcut to
 intel_uncore
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

Tm93IHRoYXQgd2UgaGF2ZSB0aGUgZW5naW5lIHN0b3JlZCBpbiBpOTE1X3BlcmYsIHdlIGhhdmUg
YSBtZWFucyBvZgphY2Nlc3NpbmcgaW50ZWxfZ3Qgc2hvdWxkIHdlIHJlcXVpcmUgaXQuIEhvd2V2
ZXIsIHdlIGFyZSBjdXJyZW50bHkgb25seQp1c2luZyB0aGUgaW50ZWxfZ3QgdG8gZmluZCB0aGUg
cmlnaHQgaW50ZWxfdW5jb3JlLCBzbyByZXBsYWNlIG91cgppOTE1X3BlcmYuZ3QgcG9pbnRlciB3
aXRoIHRoZSBtb3JlIHVzZWZ1bCBpOTE1X3BlcmYudW5jb3JlLgoKU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBMaW9uZWwgTGFuZHdlcmxp
biA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wZXJmLmMgICAgICAgfCA0OCArKysrKysrKysrKysrLS0tLS0tLS0tLS0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmX3R5cGVzLmggfCAgNCArLS0KIDIgZmlsZXMgY2hh
bmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwgMjYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BlcmYuYwppbmRleCAxYTVjNjU5MWI5YmIuLjc3YzNjZWY2NDU0OCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wZXJmLmMKQEAgLTQxOSwxNCArNDE5LDE0IEBAIHN0YXRpYyBpbnQgZ2V0X29hX2NvbmZp
ZyhzdHJ1Y3QgaTkxNV9wZXJmICpwZXJmLAogCiBzdGF0aWMgdTMyIGdlbjhfb2FfaHdfdGFpbF9y
ZWFkKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCiB7Ci0Jc3RydWN0IGludGVsX3Vu
Y29yZSAqdW5jb3JlID0gc3RyZWFtLT5ndC0+dW5jb3JlOworCXN0cnVjdCBpbnRlbF91bmNvcmUg
KnVuY29yZSA9IHN0cmVhbS0+dW5jb3JlOwogCiAJcmV0dXJuIGludGVsX3VuY29yZV9yZWFkKHVu
Y29yZSwgR0VOOF9PQVRBSUxQVFIpICYgR0VOOF9PQVRBSUxQVFJfTUFTSzsKIH0KIAogc3RhdGlj
IHUzMiBnZW43X29hX2h3X3RhaWxfcmVhZChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFt
KQogewotCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IHN0cmVhbS0+Z3QtPnVuY29yZTsK
KwlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBzdHJlYW0tPnVuY29yZTsKIAl1MzIgb2Fz
dGF0dXMxID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBHRU43X09BU1RBVFVTMSk7CiAKIAly
ZXR1cm4gb2FzdGF0dXMxICYgR0VON19PQVNUQVRVUzFfVEFJTF9NQVNLOwpAQCAtNjU2LDcgKzY1
Niw3IEBAIHN0YXRpYyBpbnQgZ2VuOF9hcHBlbmRfb2FfcmVwb3J0cyhzdHJ1Y3QgaTkxNV9wZXJm
X3N0cmVhbSAqc3RyZWFtLAogCQkJCSAgc2l6ZV90IGNvdW50LAogCQkJCSAgc2l6ZV90ICpvZmZz
ZXQpCiB7Ci0Jc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gc3RyZWFtLT5ndC0+dW5jb3Jl
OworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IHN0cmVhbS0+dW5jb3JlOwogCWludCBy
ZXBvcnRfc2l6ZSA9IHN0cmVhbS0+b2FfYnVmZmVyLmZvcm1hdF9zaXplOwogCXU4ICpvYV9idWZf
YmFzZSA9IHN0cmVhbS0+b2FfYnVmZmVyLnZhZGRyOwogCXUzMiBndHRfb2Zmc2V0ID0gaTkxNV9n
Z3R0X29mZnNldChzdHJlYW0tPm9hX2J1ZmZlci52bWEpOwpAQCAtODY2LDcgKzg2Niw3IEBAIHN0
YXRpYyBpbnQgZ2VuOF9vYV9yZWFkKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCiAJ
CQlzaXplX3QgY291bnQsCiAJCQlzaXplX3QgKm9mZnNldCkKIHsKLQlzdHJ1Y3QgaW50ZWxfdW5j
b3JlICp1bmNvcmUgPSBzdHJlYW0tPmd0LT51bmNvcmU7CisJc3RydWN0IGludGVsX3VuY29yZSAq
dW5jb3JlID0gc3RyZWFtLT51bmNvcmU7CiAJdTMyIG9hc3RhdHVzOwogCWludCByZXQ7CiAKQEAg
LTk0NSw3ICs5NDUsNyBAQCBzdGF0aWMgaW50IGdlbjdfYXBwZW5kX29hX3JlcG9ydHMoc3RydWN0
IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSwKIAkJCQkgIHNpemVfdCBjb3VudCwKIAkJCQkgIHNp
emVfdCAqb2Zmc2V0KQogewotCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IHN0cmVhbS0+
Z3QtPnVuY29yZTsKKwlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBzdHJlYW0tPnVuY29y
ZTsKIAlpbnQgcmVwb3J0X3NpemUgPSBzdHJlYW0tPm9hX2J1ZmZlci5mb3JtYXRfc2l6ZTsKIAl1
OCAqb2FfYnVmX2Jhc2UgPSBzdHJlYW0tPm9hX2J1ZmZlci52YWRkcjsKIAl1MzIgZ3R0X29mZnNl
dCA9IGk5MTVfZ2d0dF9vZmZzZXQoc3RyZWFtLT5vYV9idWZmZXIudm1hKTsKQEAgLTEwNzcsNyAr
MTA3Nyw3IEBAIHN0YXRpYyBpbnQgZ2VuN19vYV9yZWFkKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFt
ICpzdHJlYW0sCiAJCQlzaXplX3QgY291bnQsCiAJCQlzaXplX3QgKm9mZnNldCkKIHsKLQlzdHJ1
Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBzdHJlYW0tPmd0LT51bmNvcmU7CisJc3RydWN0IGlu
dGVsX3VuY29yZSAqdW5jb3JlID0gc3RyZWFtLT51bmNvcmU7CiAJdTMyIG9hc3RhdHVzMTsKIAlp
bnQgcmV0OwogCkBAIC0xMzUyLDggKzEzNTIsOCBAQCBzdGF0aWMgdm9pZCBpOTE1X29hX3N0cmVh
bV9kZXN0cm95KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCiAKIAlmcmVlX29hX2J1
ZmZlcihzdHJlYW0pOwogCi0JaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9wdXQoc3RyZWFtLT5ndC0+
dW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsKLQlpbnRlbF9ydW50aW1lX3BtX3B1dChzdHJlYW0tPmd0
LT51bmNvcmUtPnJwbSwgc3RyZWFtLT53YWtlcmVmKTsKKwlpbnRlbF91bmNvcmVfZm9yY2V3YWtl
X3B1dChzdHJlYW0tPnVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7CisJaW50ZWxfcnVudGltZV9wbV9w
dXQoc3RyZWFtLT51bmNvcmUtPnJwbSwgc3RyZWFtLT53YWtlcmVmKTsKIAogCWlmIChzdHJlYW0t
PmN0eCkKIAkJb2FfcHV0X3JlbmRlcl9jdHhfaWQoc3RyZWFtKTsKQEAgLTEzNjgsNyArMTM2OCw3
IEBAIHN0YXRpYyB2b2lkIGk5MTVfb2Ffc3RyZWFtX2Rlc3Ryb3koc3RydWN0IGk5MTVfcGVyZl9z
dHJlYW0gKnN0cmVhbSkKIAogc3RhdGljIHZvaWQgZ2VuN19pbml0X29hX2J1ZmZlcihzdHJ1Y3Qg
aTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQogewotCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29y
ZSA9IHN0cmVhbS0+Z3QtPnVuY29yZTsKKwlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBz
dHJlYW0tPnVuY29yZTsKIAl1MzIgZ3R0X29mZnNldCA9IGk5MTVfZ2d0dF9vZmZzZXQoc3RyZWFt
LT5vYV9idWZmZXIudm1hKTsKIAl1bnNpZ25lZCBsb25nIGZsYWdzOwogCkBAIC0xNDE2LDcgKzE0
MTYsNyBAQCBzdGF0aWMgdm9pZCBnZW43X2luaXRfb2FfYnVmZmVyKHN0cnVjdCBpOTE1X3BlcmZf
c3RyZWFtICpzdHJlYW0pCiAKIHN0YXRpYyB2b2lkIGdlbjhfaW5pdF9vYV9idWZmZXIoc3RydWN0
IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKIHsKLQlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNv
cmUgPSBzdHJlYW0tPmd0LT51bmNvcmU7CisJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0g
c3RyZWFtLT51bmNvcmU7CiAJdTMyIGd0dF9vZmZzZXQgPSBpOTE1X2dndHRfb2Zmc2V0KHN0cmVh
bS0+b2FfYnVmZmVyLnZtYSk7CiAJdW5zaWduZWQgbG9uZyBmbGFnczsKIApAQCAtMTU2NSw3ICsx
NTY1LDcgQEAgc3RhdGljIHZvaWQgZGVsYXlfYWZ0ZXJfbXV4KHZvaWQpCiAKIHN0YXRpYyBpbnQg
aHN3X2VuYWJsZV9tZXRyaWNfc2V0KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCiB7
Ci0Jc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gc3RyZWFtLT5ndC0+dW5jb3JlOworCXN0
cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IHN0cmVhbS0+dW5jb3JlOwogCWNvbnN0IHN0cnVj
dCBpOTE1X29hX2NvbmZpZyAqb2FfY29uZmlnID0gc3RyZWFtLT5vYV9jb25maWc7CiAKIAkvKgpA
QCAtMTU5NCw3ICsxNTk0LDcgQEAgc3RhdGljIGludCBoc3dfZW5hYmxlX21ldHJpY19zZXQoc3Ry
dWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKIAogc3RhdGljIHZvaWQgaHN3X2Rpc2FibGVf
bWV0cmljX3NldChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQogewotCXN0cnVjdCBp
bnRlbF91bmNvcmUgKnVuY29yZSA9IHN0cmVhbS0+Z3QtPnVuY29yZTsKKwlzdHJ1Y3QgaW50ZWxf
dW5jb3JlICp1bmNvcmUgPSBzdHJlYW0tPnVuY29yZTsKIAogCWludGVsX3VuY29yZV9ybXcodW5j
b3JlLCBHRU42X1VDR0NUTDEsCiAJCQkgR0VONl9DU1VOSVRfQ0xPQ0tfR0FURV9ESVNBQkxFLCAw
KTsKQEAgLTE5MTEsNyArMTkxMSw3IEBAIHN0YXRpYyBpbnQgZ2VuOF9jb25maWd1cmVfYWxsX2Nv
bnRleHRzKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCiAKIHN0YXRpYyBpbnQgZ2Vu
OF9lbmFibGVfbWV0cmljX3NldChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQogewot
CXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IHN0cmVhbS0+Z3QtPnVuY29yZTsKKwlzdHJ1
Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBzdHJlYW0tPnVuY29yZTsKIAljb25zdCBzdHJ1Y3Qg
aTkxNV9vYV9jb25maWcgKm9hX2NvbmZpZyA9IHN0cmVhbS0+b2FfY29uZmlnOwogCWludCByZXQ7
CiAKQEAgLTE5NjQsNyArMTk2NCw3IEBAIHN0YXRpYyBpbnQgZ2VuOF9lbmFibGVfbWV0cmljX3Nl
dChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQogCiBzdGF0aWMgdm9pZCBnZW44X2Rp
c2FibGVfbWV0cmljX3NldChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQogewotCXN0
cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IHN0cmVhbS0+Z3QtPnVuY29yZTsKKwlzdHJ1Y3Qg
aW50ZWxfdW5jb3JlICp1bmNvcmUgPSBzdHJlYW0tPnVuY29yZTsKIAogCS8qIFJlc2V0IGFsbCBj
b250ZXh0cycgc2xpY2VzL3N1YnNsaWNlcyBjb25maWd1cmF0aW9ucy4gKi8KIAlnZW44X2NvbmZp
Z3VyZV9hbGxfY29udGV4dHMoc3RyZWFtLCBOVUxMKTsKQEAgLTE5NzQsNyArMTk3NCw3IEBAIHN0
YXRpYyB2b2lkIGdlbjhfZGlzYWJsZV9tZXRyaWNfc2V0KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFt
ICpzdHJlYW0pCiAKIHN0YXRpYyB2b2lkIGdlbjEwX2Rpc2FibGVfbWV0cmljX3NldChzdHJ1Y3Qg
aTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQogewotCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29y
ZSA9IHN0cmVhbS0+Z3QtPnVuY29yZTsKKwlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBz
dHJlYW0tPnVuY29yZTsKIAogCS8qIFJlc2V0IGFsbCBjb250ZXh0cycgc2xpY2VzL3N1YnNsaWNl
cyBjb25maWd1cmF0aW9ucy4gKi8KIAlnZW44X2NvbmZpZ3VyZV9hbGxfY29udGV4dHMoc3RyZWFt
LCBOVUxMKTsKQEAgLTE5ODUsNyArMTk4NSw3IEBAIHN0YXRpYyB2b2lkIGdlbjEwX2Rpc2FibGVf
bWV0cmljX3NldChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQogCiBzdGF0aWMgdm9p
ZCBnZW43X29hX2VuYWJsZShzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQogewotCXN0
cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IHN0cmVhbS0+Z3QtPnVuY29yZTsKKwlzdHJ1Y3Qg
aW50ZWxfdW5jb3JlICp1bmNvcmUgPSBzdHJlYW0tPnVuY29yZTsKIAlzdHJ1Y3QgaTkxNV9nZW1f
Y29udGV4dCAqY3R4ID0gc3RyZWFtLT5jdHg7CiAJdTMyIGN0eF9pZCA9IHN0cmVhbS0+c3BlY2lm
aWNfY3R4X2lkOwogCWJvb2wgcGVyaW9kaWMgPSBzdHJlYW0tPnBlcmlvZGljOwpAQCAtMjAxNSw3
ICsyMDE1LDcgQEAgc3RhdGljIHZvaWQgZ2VuN19vYV9lbmFibGUoc3RydWN0IGk5MTVfcGVyZl9z
dHJlYW0gKnN0cmVhbSkKIAogc3RhdGljIHZvaWQgZ2VuOF9vYV9lbmFibGUoc3RydWN0IGk5MTVf
cGVyZl9zdHJlYW0gKnN0cmVhbSkKIHsKLQlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBz
dHJlYW0tPmd0LT51bmNvcmU7CisJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gc3RyZWFt
LT51bmNvcmU7CiAJdTMyIHJlcG9ydF9mb3JtYXQgPSBzdHJlYW0tPm9hX2J1ZmZlci5mb3JtYXQ7
CiAKIAkvKgpAQCAtMjA2MCw3ICsyMDYwLDcgQEAgc3RhdGljIHZvaWQgaTkxNV9vYV9zdHJlYW1f
ZW5hYmxlKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCiAKIHN0YXRpYyB2b2lkIGdl
bjdfb2FfZGlzYWJsZShzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQogewotCXN0cnVj
dCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IHN0cmVhbS0+Z3QtPnVuY29yZTsKKwlzdHJ1Y3QgaW50
ZWxfdW5jb3JlICp1bmNvcmUgPSBzdHJlYW0tPnVuY29yZTsKIAogCWludGVsX3VuY29yZV93cml0
ZSh1bmNvcmUsIEdFTjdfT0FDT05UUk9MLCAwKTsKIAlpZiAoaW50ZWxfd2FpdF9mb3JfcmVnaXN0
ZXIodW5jb3JlLApAQCAtMjA3MSw3ICsyMDcxLDcgQEAgc3RhdGljIHZvaWQgZ2VuN19vYV9kaXNh
YmxlKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCiAKIHN0YXRpYyB2b2lkIGdlbjhf
b2FfZGlzYWJsZShzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQogewotCXN0cnVjdCBp
bnRlbF91bmNvcmUgKnVuY29yZSA9IHN0cmVhbS0+Z3QtPnVuY29yZTsKKwlzdHJ1Y3QgaW50ZWxf
dW5jb3JlICp1bmNvcmUgPSBzdHJlYW0tPnVuY29yZTsKIAogCWludGVsX3VuY29yZV93cml0ZSh1
bmNvcmUsIEdFTjhfT0FDT05UUk9MLCAwKTsKIAlpZiAoaW50ZWxfd2FpdF9mb3JfcmVnaXN0ZXIo
dW5jb3JlLApAQCAtMjE3Miw3ICsyMTcyLDcgQEAgc3RhdGljIGludCBpOTE1X29hX3N0cmVhbV9p
bml0KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCiAJfQogCiAJc3RyZWFtLT5lbmdp
bmUgPSBwcm9wcy0+ZW5naW5lOwotCXN0cmVhbS0+Z3QgPSBzdHJlYW0tPmVuZ2luZS0+Z3Q7CisJ
c3RyZWFtLT51bmNvcmUgPSBzdHJlYW0tPmVuZ2luZS0+Z3QtPnVuY29yZTsKIAogCXN0cmVhbS0+
c2FtcGxlX3NpemUgPSBzaXplb2Yoc3RydWN0IGRybV9pOTE1X3BlcmZfcmVjb3JkX2hlYWRlcik7
CiAKQEAgLTIyMTgsOCArMjIxOCw4IEBAIHN0YXRpYyBpbnQgaTkxNV9vYV9zdHJlYW1faW5pdChz
dHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtLAogCSAqICAgSW4gb3VyIGNhc2Ugd2UgYXJl
IGV4cGVjdGluZyB0aGF0IHRha2luZyBwbSArIEZPUkNFV0FLRQogCSAqICAgcmVmZXJlbmNlcyB3
aWxsIGVmZmVjdGl2ZWx5IGRpc2FibGUgUkM2LgogCSAqLwotCXN0cmVhbS0+d2FrZXJlZiA9IGlu
dGVsX3J1bnRpbWVfcG1fZ2V0KHN0cmVhbS0+Z3QtPnVuY29yZS0+cnBtKTsKLQlpbnRlbF91bmNv
cmVfZm9yY2V3YWtlX2dldChzdHJlYW0tPmd0LT51bmNvcmUsIEZPUkNFV0FLRV9BTEwpOworCXN0
cmVhbS0+d2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KHN0cmVhbS0+dW5jb3JlLT5ycG0p
OworCWludGVsX3VuY29yZV9mb3JjZXdha2VfZ2V0KHN0cmVhbS0+dW5jb3JlLCBGT1JDRVdBS0Vf
QUxMKTsKIAogCXJldCA9IGFsbG9jX29hX2J1ZmZlcihzdHJlYW0pOwogCWlmIChyZXQpCkBAIC0y
MjUxLDggKzIyNTEsOCBAQCBzdGF0aWMgaW50IGk5MTVfb2Ffc3RyZWFtX2luaXQoc3RydWN0IGk5
MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSwKIGVycl9vYV9idWZfYWxsb2M6CiAJcHV0X29hX2NvbmZp
ZyhzdHJlYW0tPm9hX2NvbmZpZyk7CiAKLQlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX3B1dChzdHJl
YW0tPmd0LT51bmNvcmUsIEZPUkNFV0FLRV9BTEwpOwotCWludGVsX3J1bnRpbWVfcG1fcHV0KHN0
cmVhbS0+Z3QtPnVuY29yZS0+cnBtLCBzdHJlYW0tPndha2VyZWYpOworCWludGVsX3VuY29yZV9m
b3JjZXdha2VfcHV0KHN0cmVhbS0+dW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsKKwlpbnRlbF9ydW50
aW1lX3BtX3B1dChzdHJlYW0tPnVuY29yZS0+cnBtLCBzdHJlYW0tPndha2VyZWYpOwogCiBlcnJf
Y29uZmlnOgogCWlmIChzdHJlYW0tPmN0eCkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcGVyZl90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmX3R5
cGVzLmgKaW5kZXggODJjZDNiMjk1MDM3Li5hOTFhZTJkMWE1NDMgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZl90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcGVyZl90eXBlcy5oCkBAIC0xMzAsOSArMTMwLDkgQEAgc3RydWN0IGk5MTVfcGVy
Zl9zdHJlYW0gewogCXN0cnVjdCBpOTE1X3BlcmYgKnBlcmY7CiAKIAkvKioKLQkgKiBAZ3Q6IGlu
dGVsX2d0IGNvbnRhaW5lcgorCSAqIEB1bmNvcmU6IG1taW8gYWNjZXNzIHBhdGgKIAkgKi8KLQlz
dHJ1Y3QgaW50ZWxfZ3QgKmd0OworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZTsKIAogCS8q
KgogCSAqIEB3YWtlcmVmOiBBcyB3ZSBrZWVwIHRoZSBkZXZpY2UgYXdha2Ugd2hpbGUgdGhlIHBl
cmYgc3RyZWFtIGlzCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
