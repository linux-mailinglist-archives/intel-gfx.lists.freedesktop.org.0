Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3745562AA
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 08:53:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6272B6E29A;
	Wed, 26 Jun 2019 06:53:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB6A16E299
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 06:53:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17026089-1500050 
 for multiple; Wed, 26 Jun 2019 07:53:08 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jun 2019 07:52:59 +0100
Message-Id: <20190626065303.31624-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626065303.31624-1-chris@chris-wilson.co.uk>
References: <20190626065303.31624-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/selftests: Drop manual request
 wakerefs around hangcheck
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

V2Ugbm8gbG9uZ2VyIG5lZWQgdG8gbWFudWFsbHkgYWNxdWlyZSBhIHdha2VyZWYgZm9yIHJlcXVl
c3QgZW1pc3Npb24sIHNvCmRyb3AgdGhlIHJlZHVuZGFudCB3YWtlcmVmcywgbGV0dGluZyB1cyB0
ZXN0IG91ciB3YWtlcmVmIGhhbmRsaW5nIG1vcmUKcHJlY2lzZWx5LgoKU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMgfCA3IC0tLS0tLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3Jlc2V0LmMgICAgIHwgNCArKy0tCiAyIGZpbGVzIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9oYW5nY2hlY2suYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3NlbGZ0ZXN0X2hhbmdjaGVjay5jCmluZGV4IDBlMGI2YzU3MmFlOS4uY2Y1OTJhMDQ5
YTcxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9oYW5nY2hl
Y2suYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9oYW5nY2hlY2suYwpA
QCAtMzczLDcgKzM3Myw2IEBAIHN0YXRpYyBpbnQgaWd0X3Jlc2V0X25vcCh2b2lkICphcmcpCiAJ
c3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eDsKIAl1bnNpZ25lZCBpbnQgcmVzZXRfY291bnQs
IGNvdW50OwogCWVudW0gaW50ZWxfZW5naW5lX2lkIGlkOwotCWludGVsX3dha2VyZWZfdCB3YWtl
cmVmOwogCXN0cnVjdCBkcm1fZmlsZSAqZmlsZTsKIAlJR1RfVElNRU9VVChlbmRfdGltZSk7CiAJ
aW50IGVyciA9IDA7CkBAIC0zOTMsNyArMzkyLDYgQEAgc3RhdGljIGludCBpZ3RfcmVzZXRfbm9w
KHZvaWQgKmFyZykKIAl9CiAKIAlpOTE1X2dlbV9jb250ZXh0X2NsZWFyX2Jhbm5hYmxlKGN0eCk7
Ci0Jd2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KCZpOTE1LT5ydW50aW1lX3BtKTsKIAly
ZXNldF9jb3VudCA9IGk5MTVfcmVzZXRfY291bnQoJmk5MTUtPmdwdV9lcnJvcik7CiAJY291bnQg
PSAwOwogCWRvIHsKQEAgLTQ0Miw4ICs0NDAsNiBAQCBzdGF0aWMgaW50IGlndF9yZXNldF9ub3Ao
dm9pZCAqYXJnKQogCWVyciA9IGlndF9mbHVzaF90ZXN0KGk5MTUsIEk5MTVfV0FJVF9MT0NLRUQp
OwogCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CiAKLQlpbnRlbF9ydW50
aW1lX3BtX3B1dCgmaTkxNS0+cnVudGltZV9wbSwgd2FrZXJlZik7Ci0KIG91dDoKIAltb2NrX2Zp
bGVfZnJlZShpOTE1LCBmaWxlKTsKIAlpZiAoaTkxNV9yZXNldF9mYWlsZWQoaTkxNSkpCkBAIC00
NTcsNyArNDUzLDYgQEAgc3RhdGljIGludCBpZ3RfcmVzZXRfbm9wX2VuZ2luZSh2b2lkICphcmcp
CiAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwogCXN0cnVjdCBpOTE1X2dlbV9jb250
ZXh0ICpjdHg7CiAJZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7Ci0JaW50ZWxfd2FrZXJlZl90IHdh
a2VyZWY7CiAJc3RydWN0IGRybV9maWxlICpmaWxlOwogCWludCBlcnIgPSAwOwogCkBAIC00Nzks
NyArNDc0LDYgQEAgc3RhdGljIGludCBpZ3RfcmVzZXRfbm9wX2VuZ2luZSh2b2lkICphcmcpCiAJ
fQogCiAJaTkxNV9nZW1fY29udGV4dF9jbGVhcl9iYW5uYWJsZShjdHgpOwotCXdha2VyZWYgPSBp
bnRlbF9ydW50aW1lX3BtX2dldCgmaTkxNS0+cnVudGltZV9wbSk7CiAJZm9yX2VhY2hfZW5naW5l
KGVuZ2luZSwgaTkxNSwgaWQpIHsKIAkJdW5zaWduZWQgaW50IHJlc2V0X2NvdW50LCByZXNldF9l
bmdpbmVfY291bnQ7CiAJCXVuc2lnbmVkIGludCBjb3VudDsKQEAgLTU0OSw3ICs1NDMsNiBAQCBz
dGF0aWMgaW50IGlndF9yZXNldF9ub3BfZW5naW5lKHZvaWQgKmFyZykKIAllcnIgPSBpZ3RfZmx1
c2hfdGVzdChpOTE1LCBJOTE1X1dBSVRfTE9DS0VEKTsKIAltdXRleF91bmxvY2soJmk5MTUtPmRy
bS5zdHJ1Y3RfbXV0ZXgpOwogCi0JaW50ZWxfcnVudGltZV9wbV9wdXQoJmk5MTUtPnJ1bnRpbWVf
cG0sIHdha2VyZWYpOwogb3V0OgogCW1vY2tfZmlsZV9mcmVlKGk5MTUsIGZpbGUpOwogCWlmIChp
OTE1X3Jlc2V0X2ZhaWxlZChpOTE1KSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3NlbGZ0ZXN0X3Jlc2V0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9y
ZXNldC5jCmluZGV4IDg5ZGE5ZTdjYzFiYS4uNjRjMmM4YWI2NGVjIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yZXNldC5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3NlbGZ0ZXN0X3Jlc2V0LmMKQEAgLTYzLDggKzYzLDggQEAgc3RhdGljIGludCBp
Z3RfYXRvbWljX3Jlc2V0KHZvaWQgKmFyZykKIAogCS8qIENoZWNrIHRoYXQgdGhlIHJlc2V0cyBh
cmUgdXNhYmxlIGZyb20gYXRvbWljIGNvbnRleHQgKi8KIAorCWludGVsX2d0X3BtX2dldCgmaTkx
NS0+Z3QpOwogCWlndF9nbG9iYWxfcmVzZXRfbG9jayhpOTE1KTsKLQltdXRleF9sb2NrKCZpOTE1
LT5kcm0uc3RydWN0X211dGV4KTsKIAogCS8qIEZsdXNoIGFueSByZXF1ZXN0cyBiZWZvcmUgd2Ug
Z2V0IHN0YXJ0ZWQgYW5kIGNoZWNrIGJhc2ljcyAqLwogCWlmICghaWd0X2ZvcmNlX3Jlc2V0KGk5
MTUpKQpAQCAtODksOCArODksOCBAQCBzdGF0aWMgaW50IGlndF9hdG9taWNfcmVzZXQodm9pZCAq
YXJnKQogCWlndF9mb3JjZV9yZXNldChpOTE1KTsKIAogdW5sb2NrOgotCW11dGV4X3VubG9jaygm
aTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CiAJaWd0X2dsb2JhbF9yZXNldF91bmxvY2soaTkxNSk7
CisJaW50ZWxfZ3RfcG1fcHV0KCZpOTE1LT5ndCk7CiAKIAlyZXR1cm4gZXJyOwogfQotLSAKMi4y
MC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
