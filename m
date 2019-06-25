Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 512F654FA0
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 15:03:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 817D36E10E;
	Tue, 25 Jun 2019 13:03:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B0016E10C
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 13:03:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17018168-1500050 
 for multiple; Tue, 25 Jun 2019 14:01:33 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 14:01:13 +0100
Message-Id: <20190625130128.11009-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190625130128.11009-1-chris@chris-wilson.co.uk>
References: <20190625130128.11009-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/20] drm/i915/selftests: Fixup atomic reset
 checking
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

V2UgcmVxdWlyZSB0aGF0IHRoZSBpbnRlbF9ncHVfcmVzZXQoKSB3YXMgYXRvbWljLCBub3QgdGhl
IHdob2xlIG9mCmk5MTVfcmVzZXQoKSB3aGljaCBpcyBndWFyZGVkIGJ5IGEgbXV0ZXguIEhvd2V2
ZXIsIHdlIGRvIHJlcXVpcmUgdGhhdAppOTE1X3Jlc2V0X2VuZ2luZSgpIGlzIGF0b21pYyBmb3Ig
dXNlIGZyb20gd2l0aGluIHRoZSBzdWJtaXNzaW9uIHRhc2tsZXQuCgpTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9zZWxmdGVzdF9yZXNldC5jIHwgNjUgKysrKysrKysrKysrKysrKysrKysrKyst
CiAxIGZpbGUgY2hhbmdlZCwgNjMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yZXNldC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmVzZXQuYwppbmRleCA2NGMyYzhhYjY0ZWMuLjY0
MWNmM2FlZThkNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rf
cmVzZXQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yZXNldC5jCkBA
IC03MywxMSArNzMsMTMgQEAgc3RhdGljIGludCBpZ3RfYXRvbWljX3Jlc2V0KHZvaWQgKmFyZykK
IAlmb3IgKHAgPSBpZ3RfYXRvbWljX3BoYXNlczsgcC0+bmFtZTsgcCsrKSB7CiAJCUdFTV9UUkFD
RSgiaW50ZWxfZ3B1X3Jlc2V0IHVuZGVyICVzXG4iLCBwLT5uYW1lKTsKIAotCQlwLT5jcml0aWNh
bF9zZWN0aW9uX2JlZ2luKCk7CiAJCXJlc2V0X3ByZXBhcmUoaTkxNSk7CisJCXAtPmNyaXRpY2Fs
X3NlY3Rpb25fYmVnaW4oKTsKKwogCQllcnIgPSBpbnRlbF9ncHVfcmVzZXQoaTkxNSwgQUxMX0VO
R0lORVMpOwotCQlyZXNldF9maW5pc2goaTkxNSk7CisKIAkJcC0+Y3JpdGljYWxfc2VjdGlvbl9l
bmQoKTsKKwkJcmVzZXRfZmluaXNoKGk5MTUpOwogCiAJCWlmIChlcnIpIHsKIAkJCXByX2Vycigi
aW50ZWxfZ3B1X3Jlc2V0IGZhaWxlZCB1bmRlciAlc1xuIiwgcC0+bmFtZSk7CkBAIC05NSwxMiAr
OTcsNzEgQEAgc3RhdGljIGludCBpZ3RfYXRvbWljX3Jlc2V0KHZvaWQgKmFyZykKIAlyZXR1cm4g
ZXJyOwogfQogCitzdGF0aWMgaW50IGlndF9hdG9taWNfZW5naW5lX3Jlc2V0KHZvaWQgKmFyZykK
K3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGFyZzsKKwljb25zdCB0eXBlb2Yo
KmlndF9hdG9taWNfcGhhc2VzKSAqcDsKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7
CisJZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7CisJaW50IGVyciA9IDA7CisKKwkvKiBDaGVjayB0
aGF0IHRoZSByZXNldHMgYXJlIHVzYWJsZSBmcm9tIGF0b21pYyBjb250ZXh0ICovCisKKwlpZiAo
IWludGVsX2hhc19yZXNldF9lbmdpbmUoaTkxNSkpCisJCXJldHVybiAwOworCisJaWYgKFVTRVNf
R1VDX1NVQk1JU1NJT04oaTkxNSkpCisJCXJldHVybiAwOworCisJaW50ZWxfZ3RfcG1fZ2V0KCZp
OTE1LT5ndCk7CisJaWd0X2dsb2JhbF9yZXNldF9sb2NrKGk5MTUpOworCisJLyogRmx1c2ggYW55
IHJlcXVlc3RzIGJlZm9yZSB3ZSBnZXQgc3RhcnRlZCBhbmQgY2hlY2sgYmFzaWNzICovCisJaWYg
KCFpZ3RfZm9yY2VfcmVzZXQoaTkxNSkpCisJCWdvdG8gb3V0X3VubG9jazsKKworCWZvcl9lYWNo
X2VuZ2luZShlbmdpbmUsIGk5MTUsIGlkKSB7CisJCXRhc2tsZXRfZGlzYWJsZV9ub3N5bmMoJmVu
Z2luZS0+ZXhlY2xpc3RzLnRhc2tsZXQpOworCQlpbnRlbF9lbmdpbmVfcG1fZ2V0KGVuZ2luZSk7
CisKKwkJZm9yIChwID0gaWd0X2F0b21pY19waGFzZXM7IHAtPm5hbWU7IHArKykgeworCQkJR0VN
X1RSQUNFKCJpOTE1X3Jlc2V0X2VuZ2luZSglcykgdW5kZXIgJXNcbiIsCisJCQkJICBlbmdpbmUt
Pm5hbWUsIHAtPm5hbWUpOworCisJCQlwLT5jcml0aWNhbF9zZWN0aW9uX2JlZ2luKCk7CisJCQll
cnIgPSBpOTE1X3Jlc2V0X2VuZ2luZShlbmdpbmUsIE5VTEwpOworCQkJcC0+Y3JpdGljYWxfc2Vj
dGlvbl9lbmQoKTsKKworCQkJaWYgKGVycikgeworCQkJCXByX2VycigiaTkxNV9yZXNldF9lbmdp
bmUoJXMpIGZhaWxlZCB1bmRlciAlc1xuIiwKKwkJCQkgICAgICAgZW5naW5lLT5uYW1lLCBwLT5u
YW1lKTsKKwkJCQlicmVhazsKKwkJCX0KKwkJfQorCisJCWludGVsX2VuZ2luZV9wbV9wdXQoZW5n
aW5lKTsKKwkJdGFza2xldF9lbmFibGUoJmVuZ2luZS0+ZXhlY2xpc3RzLnRhc2tsZXQpOworCQlp
ZiAoZXJyKQorCQkJYnJlYWs7CisJfQorCisJLyogQXMgd2UgcG9rZSBhcm91bmQgdGhlIGd1dHMs
IGRvIGEgZnVsbCByZXNldCBiZWZvcmUgY29udGludWluZy4gKi8KKwlpZ3RfZm9yY2VfcmVzZXQo
aTkxNSk7CisKK291dF91bmxvY2s6CisJaWd0X2dsb2JhbF9yZXNldF91bmxvY2soaTkxNSk7CisJ
aW50ZWxfZ3RfcG1fcHV0KCZpOTE1LT5ndCk7CisKKwlyZXR1cm4gZXJyOworfQorCiBpbnQgaW50
ZWxfcmVzZXRfbGl2ZV9zZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7
CiAJc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3N1YnRlc3QgdGVzdHNbXSA9IHsKIAkJU1VCVEVT
VChpZ3RfZ2xvYmFsX3Jlc2V0KSwgLyogYXR0ZW1wdCB0byByZWNvdmVyIEdQVSBmaXJzdCAqLwog
CQlTVUJURVNUKGlndF93ZWRnZWRfcmVzZXQpLAogCQlTVUJURVNUKGlndF9hdG9taWNfcmVzZXQp
LAorCQlTVUJURVNUKGlndF9hdG9taWNfZW5naW5lX3Jlc2V0KSwKIAl9OwogCWludGVsX3dha2Vy
ZWZfdCB3YWtlcmVmOwogCWludCBlcnIgPSAwOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
