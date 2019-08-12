Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D361689C71
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 13:13:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13BB5888AE;
	Mon, 12 Aug 2019 11:13:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E84888AE
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 11:13:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17967888-1500050 
 for multiple; Mon, 12 Aug 2019 12:13:23 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Aug 2019 12:13:21 +0100
Message-Id: <20190812111321.30574-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190812091045.29587-8-chris@chris-wilson.co.uk>
References: <20190812091045.29587-8-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Lift process_csb() out of
 the irq-off spinlock
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

SWYgd2Ugb25seSBjYWxsIHByb2Nlc3NfY3NiKCkgZnJvbSB0aGUgdGFza2xldCwgdGhvdWdoIHdl
IGxvc2UgdGhlCmFiaWxpdHkgdG8gYnlwYXNzIGtzb2Z0aXJxZCBpbnRlcnJ1cHQgcHJvY2Vzc2lu
ZyBvbiBkaXJlY3Qgc3VibWlzc2lvbiBwYXRocywKd2UgY2FuIHB1c2ggaXQgb3V0IG9mIHRoZSBp
cnEtb2ZmIHNwaW5sb2NrLgoKVGhlIHBlbmFsdHkgaXMgdGhhdCB3ZSB0aGVuIGFsbG93IHNjaGVk
dWxlX291dCB0byBiZSBjYWxsZWQgY29uY3VycmVudGx5CndpdGggc2NoZWR1bGVfaW4gcmVxdWly
aW5nIHVzIHRvIGhhbmRsZSB0aGUgdXNhZ2UgY291bnQgKGJha2VkIGludG8gdGhlCnBvaW50ZXIg
aXRzZWxmKSBhdG9taWNhbGx5LgoKQXMgd2UgZG8ga2ljayB0aGUgdGFza2xldHMgKHZpYSBsb2Nh
bF9iaF9lbmFibGUoKSkgYWZ0ZXIgb3VyIHN1Ym1pc3Npb24sCnRoZXJlIGlzIGEgcG9zc2liaWxp
dHkgdGhlcmUgdG8gc2VlIGlmIHdlIGNhbiBwdWxsIHRoZSBsb2NhbCBzb2Z0aXJxCnByb2Nlc3Np
bmcgYmFjayBmcm9tIHRoZSBrc29mdGlycWQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCldlIGhhdmUgdG8gcmVzdHJpY3QgZW5hYmxl
X3RpbWVzbGljZSgpIHRvIG9ubHkgY29uc2lkZXIgdGhlIGluZm9ybWF0aW9uCnVuZGVyIGl0cyBj
b250cm9sIChpLmUuIGV4ZWNsaXN0cy0+YWN0aXZlW10pCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfY29udGV4dF90eXBlcy5oIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmVfY3MuYyAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jICAgICAgICAgICB8IDEzMCArKysrKysrKysrKy0tLS0tLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaCAgICAgICAgICAgICB8ICAyMCArKy0KIDQgZmls
ZXMgY2hhbmdlZCwgOTQgaW5zZXJ0aW9ucygrKSwgNjIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dF90eXBlcy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dF90eXBlcy5oCmluZGV4IGE2MzJiMjBlYzRk
OC4uZDhjZTI2NmMwNDlmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9jb250ZXh0X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29u
dGV4dF90eXBlcy5oCkBAIC00MSw5ICs0MSw3IEBAIHN0cnVjdCBpbnRlbF9jb250ZXh0IHsKIAlz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7CiAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
aW5mbGlnaHQ7CiAjZGVmaW5lIGludGVsX2NvbnRleHRfaW5mbGlnaHQoY2UpIHB0cl9tYXNrX2Jp
dHMoKGNlKS0+aW5mbGlnaHQsIDIpCi0jZGVmaW5lIGludGVsX2NvbnRleHRfaW5mbGlnaHRfY291
bnQoY2UpICBwdHJfdW5tYXNrX2JpdHMoKGNlKS0+aW5mbGlnaHQsIDIpCi0jZGVmaW5lIGludGVs
X2NvbnRleHRfaW5mbGlnaHRfaW5jKGNlKSBwdHJfY291bnRfaW5jKCYoY2UpLT5pbmZsaWdodCkK
LSNkZWZpbmUgaW50ZWxfY29udGV4dF9pbmZsaWdodF9kZWMoY2UpIHB0cl9jb3VudF9kZWMoJihj
ZSktPmluZmxpZ2h0KQorI2RlZmluZSBpbnRlbF9jb250ZXh0X2luZmxpZ2h0X2NvdW50KGNlKSBw
dHJfdW5tYXNrX2JpdHMoKGNlKS0+aW5mbGlnaHQsIDIpCiAKIAlzdHJ1Y3QgaTkxNV9hZGRyZXNz
X3NwYWNlICp2bTsKIAlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqZ2VtX2NvbnRleHQ7CmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCmluZGV4IGM3YjI0MTQxN2VlMS4u
MTNhNTY5OTA3YzNkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfY3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3Mu
YwpAQCAtMTQ1OSw3ICsxNDU5LDcgQEAgaW50IGludGVsX2VuYWJsZV9lbmdpbmVfc3RhdHMoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCiAJCWZvciAocG9ydCA9IGV4ZWNsaXN0cy0+
cGVuZGluZzsgKHJxID0gKnBvcnQpOyBwb3J0KyspIHsKIAkJCS8qIEV4Y2x1ZGUgYW55IGNvbnRl
eHRzIGFscmVhZHkgY291bnRlZCBpbiBhY3RpdmUgKi8KLQkJCWlmIChpbnRlbF9jb250ZXh0X2lu
ZmxpZ2h0X2NvdW50KHJxLT5od19jb250ZXh0KSA9PSAxKQorCQkJaWYgKCFpbnRlbF9jb250ZXh0
X2luZmxpZ2h0X2NvdW50KHJxLT5od19jb250ZXh0KSkKIAkJCQllbmdpbmUtPnN0YXRzLmFjdGl2
ZSsrOwogCQl9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggNWMyNmM0YWUx
MzliLi45NDVmM2FjYzJlNzUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC01
NDcsMjcgKzU0NywzOSBAQCBleGVjbGlzdHNfY29udGV4dF9zdGF0dXNfY2hhbmdlKHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJxLCB1bnNpZ25lZCBsb25nIHN0YXR1cykKIAkJCQkgICBzdGF0dXMsIHJx
KTsKIH0KIAorc3RhdGljIGlubGluZSBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICoKK19fZXhlY2xp
c3RzX3NjaGVkdWxlX2luKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQoreworCXN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKiBjb25zdCBlbmdpbmUgPSBycS0+ZW5naW5lOworCXN0cnVjdCBpbnRlbF9j
b250ZXh0ICogY29uc3QgY2UgPSBycS0+aHdfY29udGV4dDsKKworCWludGVsX2NvbnRleHRfZ2V0
KGNlKTsKKworCWludGVsX2d0X3BtX2dldChlbmdpbmUtPmd0KTsKKwlleGVjbGlzdHNfY29udGV4
dF9zdGF0dXNfY2hhbmdlKHJxLCBJTlRFTF9DT05URVhUX1NDSEVEVUxFX0lOKTsKKwlpbnRlbF9l
bmdpbmVfY29udGV4dF9pbihlbmdpbmUpOworCisJcmV0dXJuIGVuZ2luZTsKK30KKwogc3RhdGlj
IGlubGluZSBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICoKIGV4ZWNsaXN0c19zY2hlZHVsZV9pbihzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICpycSwgaW50IGlkeCkKIHsKLQlzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UgPSBycS0+aHdfY29udGV4dDsKLQlpbnQgY291bnQ7CisJc3RydWN0IGludGVsX2NvbnRleHQg
KiBjb25zdCBjZSA9IHJxLT5od19jb250ZXh0OworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKm9s
ZDsKIAorCUdFTV9CVUdfT04oIWludGVsX2VuZ2luZV9wbV9pc19hd2FrZShycS0+ZW5naW5lKSk7
CiAJdHJhY2VfaTkxNV9yZXF1ZXN0X2luKHJxLCBpZHgpOwogCi0JY291bnQgPSBpbnRlbF9jb250
ZXh0X2luZmxpZ2h0X2NvdW50KGNlKTsKLQlpZiAoIWNvdW50KSB7Ci0JCWludGVsX2NvbnRleHRf
Z2V0KGNlKTsKLQkJY2UtPmluZmxpZ2h0ID0gcnEtPmVuZ2luZTsKLQotCQlpbnRlbF9ndF9wbV9n
ZXQoY2UtPmluZmxpZ2h0LT5ndCk7Ci0JCWV4ZWNsaXN0c19jb250ZXh0X3N0YXR1c19jaGFuZ2Uo
cnEsIElOVEVMX0NPTlRFWFRfU0NIRURVTEVfSU4pOwotCQlpbnRlbF9lbmdpbmVfY29udGV4dF9p
bihjZS0+aW5mbGlnaHQpOwotCX0KKwlvbGQgPSBSRUFEX09OQ0UoY2UtPmluZmxpZ2h0KTsKKwlk
byB7CisJCWlmICghb2xkKSB7CisJCQlXUklURV9PTkNFKGNlLT5pbmZsaWdodCwgX19leGVjbGlz
dHNfc2NoZWR1bGVfaW4ocnEpKTsKKwkJCWJyZWFrOworCQl9CisJfSB3aGlsZSAoIXRyeV9jbXB4
Y2hnKCZjZS0+aW5mbGlnaHQsICZvbGQsIHB0cl9pbmMob2xkKSkpOwogCi0JaW50ZWxfY29udGV4
dF9pbmZsaWdodF9pbmMoY2UpOwogCUdFTV9CVUdfT04oaW50ZWxfY29udGV4dF9pbmZsaWdodChj
ZSkgIT0gcnEtPmVuZ2luZSk7Ci0KIAlyZXR1cm4gaTkxNV9yZXF1ZXN0X2dldChycSk7CiB9CiAK
QEAgLTU4MSwzNSArNTkzLDQ1IEBAIHN0YXRpYyB2b2lkIGtpY2tfc2libGluZ3Moc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEsIHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKIH0KIAogc3RhdGljIGlu
bGluZSB2b2lkCi1leGVjbGlzdHNfc2NoZWR1bGVfb3V0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJx
KQorX19leGVjbGlzdHNfc2NoZWR1bGVfb3V0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogewot
CXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSA9IHJxLT5od19jb250ZXh0OworCXN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKiBjb25zdCBlbmdpbmUgPSBycS0+ZW5naW5lOworCXN0cnVjdCBpbnRlbF9j
b250ZXh0ICogY29uc3QgY2UgPSBycS0+aHdfY29udGV4dDsKIAotCUdFTV9CVUdfT04oIWludGVs
X2NvbnRleHRfaW5mbGlnaHRfY291bnQoY2UpKTsKKwlpbnRlbF9lbmdpbmVfY29udGV4dF9vdXQo
ZW5naW5lKTsKKwlleGVjbGlzdHNfY29udGV4dF9zdGF0dXNfY2hhbmdlKHJxLCBJTlRFTF9DT05U
RVhUX1NDSEVEVUxFX09VVCk7CisJaW50ZWxfZ3RfcG1fcHV0KGVuZ2luZS0+Z3QpOwogCi0JdHJh
Y2VfaTkxNV9yZXF1ZXN0X291dChycSk7CisJLyoKKwkgKiBJZiB0aGlzIGlzIHBhcnQgb2YgYSB2
aXJ0dWFsIGVuZ2luZSwgaXRzIG5leHQgcmVxdWVzdCBtYXkKKwkgKiBoYXZlIGJlZW4gYmxvY2tl
ZCB3YWl0aW5nIGZvciBhY2Nlc3MgdG8gdGhlIGFjdGl2ZSBjb250ZXh0LgorCSAqIFdlIGhhdmUg
dG8ga2ljayBhbGwgdGhlIHNpYmxpbmdzIGFnYWluIGluIGNhc2Ugd2UgbmVlZCB0bworCSAqIHN3
aXRjaCAoZS5nLiB0aGUgbmV4dCByZXF1ZXN0IGlzIG5vdCBydW5uYWJsZSBvbiB0aGlzCisJICog
ZW5naW5lKS4gSG9wZWZ1bGx5LCB3ZSB3aWxsIGFscmVhZHkgaGF2ZSBzdWJtaXR0ZWQgdGhlIG5l
eHQKKwkgKiByZXF1ZXN0IGJlZm9yZSB0aGUgdGFza2xldCBydW5zIGFuZCBkbyBub3QgbmVlZCB0
byByZWJ1aWxkCisJICogZWFjaCB2aXJ0dWFsIHRyZWUgYW5kIGtpY2sgZXZlcnlvbmUgYWdhaW4u
CisJICovCisJaWYgKGNlLT5lbmdpbmUgIT0gZW5naW5lKQorCQlraWNrX3NpYmxpbmdzKHJxLCBj
ZSk7CiAKLQlpbnRlbF9jb250ZXh0X2luZmxpZ2h0X2RlYyhjZSk7Ci0JaWYgKCFpbnRlbF9jb250
ZXh0X2luZmxpZ2h0X2NvdW50KGNlKSkgewotCQlpbnRlbF9lbmdpbmVfY29udGV4dF9vdXQoY2Ut
PmluZmxpZ2h0KTsKLQkJZXhlY2xpc3RzX2NvbnRleHRfc3RhdHVzX2NoYW5nZShycSwgSU5URUxf
Q09OVEVYVF9TQ0hFRFVMRV9PVVQpOwotCQlpbnRlbF9ndF9wbV9wdXQoY2UtPmluZmxpZ2h0LT5n
dCk7CisJaW50ZWxfY29udGV4dF9wdXQoY2UpOworfQogCi0JCS8qCi0JCSAqIElmIHRoaXMgaXMg
cGFydCBvZiBhIHZpcnR1YWwgZW5naW5lLCBpdHMgbmV4dCByZXF1ZXN0IG1heQotCQkgKiBoYXZl
IGJlZW4gYmxvY2tlZCB3YWl0aW5nIGZvciBhY2Nlc3MgdG8gdGhlIGFjdGl2ZSBjb250ZXh0Lgot
CQkgKiBXZSBoYXZlIHRvIGtpY2sgYWxsIHRoZSBzaWJsaW5ncyBhZ2FpbiBpbiBjYXNlIHdlIG5l
ZWQgdG8KLQkJICogc3dpdGNoIChlLmcuIHRoZSBuZXh0IHJlcXVlc3QgaXMgbm90IHJ1bm5hYmxl
IG9uIHRoaXMKLQkJICogZW5naW5lKS4gSG9wZWZ1bGx5LCB3ZSB3aWxsIGFscmVhZHkgaGF2ZSBz
dWJtaXR0ZWQgdGhlIG5leHQKLQkJICogcmVxdWVzdCBiZWZvcmUgdGhlIHRhc2tsZXQgcnVucyBh
bmQgZG8gbm90IG5lZWQgdG8gcmVidWlsZAotCQkgKiBlYWNoIHZpcnR1YWwgdHJlZSBhbmQga2lj
ayBldmVyeW9uZSBhZ2Fpbi4KLQkJICovCi0JCWNlLT5pbmZsaWdodCA9IE5VTEw7Ci0JCWlmIChy
cS0+ZW5naW5lICE9IGNlLT5lbmdpbmUpCi0JCQlraWNrX3NpYmxpbmdzKHJxLCBjZSk7CitzdGF0
aWMgaW5saW5lIHZvaWQKK2V4ZWNsaXN0c19zY2hlZHVsZV9vdXQoc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnEpCit7CisJc3RydWN0IGludGVsX2NvbnRleHQgKiBjb25zdCBjZSA9IHJxLT5od19jb250
ZXh0OworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmN1ciwgKm9sZDsKIAotCQlpbnRlbF9jb250
ZXh0X3B1dChjZSk7Ci0JfQorCXRyYWNlX2k5MTVfcmVxdWVzdF9vdXQocnEpOworCUdFTV9CVUdf
T04oaW50ZWxfY29udGV4dF9pbmZsaWdodChjZSkgIT0gcnEtPmVuZ2luZSk7CisKKwlvbGQgPSBS
RUFEX09OQ0UoY2UtPmluZmxpZ2h0KTsKKwlkbworCQljdXIgPSBwdHJfdW5tYXNrX2JpdHMob2xk
LCAyKSA/IHB0cl9kZWMob2xkKSA6IE5VTEw7CisJd2hpbGUgKCF0cnlfY21weGNoZygmY2UtPmlu
ZmxpZ2h0LCAmb2xkLCBjdXIpKTsKKwlpZiAoIWN1cikKKwkJX19leGVjbGlzdHNfc2NoZWR1bGVf
b3V0KHJxKTsKIAogCWk5MTVfcmVxdWVzdF9wdXQocnEpOwogfQpAQCAtNjg0LDYgKzcwNiw5IEBA
IGFzc2VydF9wZW5kaW5nX3ZhbGlkKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xpc3Rz
ICpleGVjbGlzdHMsCiAKIAl0cmFjZV9wb3J0cyhleGVjbGlzdHMsIG1zZywgZXhlY2xpc3RzLT5w
ZW5kaW5nKTsKIAorCWlmICghZXhlY2xpc3RzLT5wZW5kaW5nWzBdKQorCQlyZXR1cm4gZmFsc2U7
CisKIAlpZiAoZXhlY2xpc3RzLT5wZW5kaW5nW2V4ZWNsaXN0c19udW1fcG9ydHMoZXhlY2xpc3Rz
KV0pCiAJCXJldHVybiBmYWxzZTsKIApAQCAtOTQ0LDkgKzk2OSwyMSBAQCBuZWVkX3RpbWVzbGlj
ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGNvbnN0IHN0cnVjdCBpOTE1X3JlcXVl
c3QgKnJxKQogc3RhdGljIGJvb2wKIGVuYWJsZV90aW1lc2xpY2Uoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lKQogewotCXN0cnVjdCBpOTE1X3JlcXVlc3QgKmxhc3QgPSBsYXN0X2FjdGl2
ZSgmZW5naW5lLT5leGVjbGlzdHMpOworCXN0cnVjdCBpOTE1X3JlcXVlc3QgKiBjb25zdCAqcG9y
dDsKKwlpbnQgaGludDsKKworCXBvcnQgPSBlbmdpbmUtPmV4ZWNsaXN0cy5hY3RpdmU7CisJd2hp
bGUgKHBvcnRbMF0gJiYgaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChwb3J0WzBdKSkKKwkJcG9ydCsr
OworCWlmICghcG9ydFswXSkKKwkJcmV0dXJuIGZhbHNlOwogCi0JcmV0dXJuIGxhc3QgJiYgbmVl
ZF90aW1lc2xpY2UoZW5naW5lLCBsYXN0KTsKKwloaW50ID0gZW5naW5lLT5leGVjbGlzdHMucXVl
dWVfcHJpb3JpdHlfaGludDsKKwlpZiAocG9ydFsxXSkKKwkJaGludCA9IG1heChycV9wcmlvKHBv
cnRbMV0pLCBoaW50KTsKKworCS8qIENvbXBhcmUgdGhlIHR3byBlbmQtcG9pbnRzIGFzIGFuIHVu
bG9ja2VkIGFwcHJveGltYXRpb24gKi8KKwlyZXR1cm4gaGludCA+PSBlZmZlY3RpdmVfcHJpbyhw
b3J0WzBdKTsKIH0KIAogc3RhdGljIHZvaWQgcmVjb3JkX3ByZWVtcHRpb24oc3RydWN0IGludGVs
X2VuZ2luZV9leGVjbGlzdHMgKmV4ZWNsaXN0cykKQEAgLTEzNTYsNyArMTM5Myw2IEBAIHN0YXRp
YyB2b2lkIHByb2Nlc3NfY3NiKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAljb25z
dCB1OCBudW1fZW50cmllcyA9IGV4ZWNsaXN0cy0+Y3NiX3NpemU7CiAJdTggaGVhZCwgdGFpbDsK
IAotCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmVuZ2luZS0+YWN0aXZlLmxvY2spOwogCUdFTV9CVUdf
T04oVVNFU19HVUNfU1VCTUlTU0lPTihlbmdpbmUtPmk5MTUpKTsKIAogCS8qCkBAIC0xNDI3LDE1
ICsxNDYzLDE0IEBAIHN0YXRpYyB2b2lkIHByb2Nlc3NfY3NiKHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSkKIAkJCQkgICAgICAgZXhlY2xpc3RzLT5wZW5kaW5nLAogCQkJCSAgICAgICBl
eGVjbGlzdHNfbnVtX3BvcnRzKGV4ZWNsaXN0cykgKgogCQkJCSAgICAgICBzaXplb2YoKmV4ZWNs
aXN0cy0+cGVuZGluZykpOwotCQkJZXhlY2xpc3RzLT5wZW5kaW5nWzBdID0gTlVMTDsKLQotCQkJ
dHJhY2VfcG9ydHMoZXhlY2xpc3RzLCAicHJvbW90ZWQiLCBleGVjbGlzdHMtPmFjdGl2ZSk7CiAK
IAkJCWlmIChlbmFibGVfdGltZXNsaWNlKGVuZ2luZSkpCiAJCQkJbW9kX3RpbWVyKCZleGVjbGlz
dHMtPnRpbWVyLCBqaWZmaWVzICsgMSk7CiAKIAkJCWlmICghaW5qZWN0X3ByZWVtcHRfaGFuZyhl
eGVjbGlzdHMpKQogCQkJCXJpbmdfc2V0X3BhdXNlZChlbmdpbmUsIDApOworCisJCQlXUklURV9P
TkNFKGV4ZWNsaXN0cy0+cGVuZGluZ1swXSwgTlVMTCk7CiAJCQlicmVhazsKIAogCQljYXNlIENT
Ql9DT01QTEVURTogLyogcG9ydDAgY29tcGxldGVkLCBhZHZhbmNlZCB0byBwb3J0MSAqLwpAQCAt
MTQ3OSw4ICsxNTE0LDYgQEAgc3RhdGljIHZvaWQgcHJvY2Vzc19jc2Ioc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lKQogc3RhdGljIHZvaWQgX19leGVjbGlzdHNfc3VibWlzc2lvbl90YXNr
bGV0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmNvbnN0IGVuZ2luZSkKIHsKIAlsb2NrZGVwX2Fz
c2VydF9oZWxkKCZlbmdpbmUtPmFjdGl2ZS5sb2NrKTsKLQotCXByb2Nlc3NfY3NiKGVuZ2luZSk7
CiAJaWYgKCFlbmdpbmUtPmV4ZWNsaXN0cy5wZW5kaW5nWzBdKQogCQlleGVjbGlzdHNfZGVxdWV1
ZShlbmdpbmUpOwogfQpAQCAtMTQ5NCw5ICsxNTI3LDEyIEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0
c19zdWJtaXNzaW9uX3Rhc2tsZXQodW5zaWduZWQgbG9uZyBkYXRhKQogCXN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKiBjb25zdCBlbmdpbmUgPSAoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqKWRhdGE7
CiAJdW5zaWduZWQgbG9uZyBmbGFnczsKIAotCXNwaW5fbG9ja19pcnFzYXZlKCZlbmdpbmUtPmFj
dGl2ZS5sb2NrLCBmbGFncyk7Ci0JX19leGVjbGlzdHNfc3VibWlzc2lvbl90YXNrbGV0KGVuZ2lu
ZSk7Ci0Jc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZW5naW5lLT5hY3RpdmUubG9jaywgZmxhZ3Mp
OworCXByb2Nlc3NfY3NiKGVuZ2luZSk7CisJaWYgKCFlbmdpbmUtPmV4ZWNsaXN0cy5wZW5kaW5n
WzBdKSB7CisJCXNwaW5fbG9ja19pcnFzYXZlKCZlbmdpbmUtPmFjdGl2ZS5sb2NrLCBmbGFncyk7
CisJCV9fZXhlY2xpc3RzX3N1Ym1pc3Npb25fdGFza2xldChlbmdpbmUpOworCQlzcGluX3VubG9j
a19pcnFyZXN0b3JlKCZlbmdpbmUtPmFjdGl2ZS5sb2NrLCBmbGFncyk7CisJfQogfQogCiBzdGF0
aWMgdm9pZCBleGVjbGlzdHNfc3VibWlzc2lvbl90aW1lcihzdHJ1Y3QgdGltZXJfbGlzdCAqdGlt
ZXIpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmgKaW5kZXggZDY1MmJhNWQyMzIwLi41NjJmNzU2
ZGE0MjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaAorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmgKQEAgLTE2MSwxNyArMTYxLDE1IEBA
IF9fY2hlY2tfc3RydWN0X3NpemUoc2l6ZV90IGJhc2UsIHNpemVfdCBhcnIsIHNpemVfdCBjb3Vu
dCwgc2l6ZV90ICpzaXplKQogCSgodHlwZW9mKHB0cikpKCh1bnNpZ25lZCBsb25nKShwdHIpIHwg
X19iaXRzKSk7CQkJXAogfSkKIAotI2RlZmluZSBwdHJfY291bnRfZGVjKHBfcHRyKSBkbyB7CQkJ
CQlcCi0JdHlwZW9mKHBfcHRyKSBfX3AgPSAocF9wdHIpOwkJCQkJXAotCXVuc2lnbmVkIGxvbmcg
X192ID0gKHVuc2lnbmVkIGxvbmcpKCpfX3ApOwkJCVwKLQkqX19wID0gKHR5cGVvZigqcF9wdHIp
KSgtLV9fdik7CQkJCQlcCi19IHdoaWxlICgwKQotCi0jZGVmaW5lIHB0cl9jb3VudF9pbmMocF9w
dHIpIGRvIHsJCQkJCVwKLQl0eXBlb2YocF9wdHIpIF9fcCA9IChwX3B0cik7CQkJCQlcCi0JdW5z
aWduZWQgbG9uZyBfX3YgPSAodW5zaWduZWQgbG9uZykoKl9fcCk7CQkJXAotCSpfX3AgPSAodHlw
ZW9mKCpwX3B0cikpKCsrX192KTsJCQkJCVwKLX0gd2hpbGUgKDApCisjZGVmaW5lIHB0cl9kZWMo
cHRyKSAoewkJCQkJCQlcCisJdW5zaWduZWQgbG9uZyBfX3YgPSAodW5zaWduZWQgbG9uZykocHRy
KTsJCQlcCisJKHR5cGVvZihwdHIpKShfX3YgLSAxKTsJCQkJCQlcCit9KQorCisjZGVmaW5lIHB0
cl9pbmMocHRyKSAoewkJCQkJCQlcCisJdW5zaWduZWQgbG9uZyBfX3YgPSAodW5zaWduZWQgbG9u
ZykocHRyKTsJCQlcCisJKHR5cGVvZihwdHIpKShfX3YgKyAxKTsJCQkJCQlcCit9KQogCiAjZGVm
aW5lIHBhZ2VfbWFza19iaXRzKHB0cikgcHRyX21hc2tfYml0cyhwdHIsIFBBR0VfU0hJRlQpCiAj
ZGVmaW5lIHBhZ2VfdW5tYXNrX2JpdHMocHRyKSBwdHJfdW5tYXNrX2JpdHMocHRyLCBQQUdFX1NI
SUZUKQotLSAKMi4yMy4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
