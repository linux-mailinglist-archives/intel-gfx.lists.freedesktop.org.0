Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 276ED26730
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 17:48:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37C4489C09;
	Wed, 22 May 2019 15:48:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4445089BFE
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 15:48:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16643220-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 16:48:51 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 May 2019 16:48:48 +0100
Message-Id: <20190522154849.7960-14-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190522154849.7960-1-chris@chris-wilson.co.uk>
References: <20190522154849.7960-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 14/15] drm/i915: Rename intel_context.active to
 .inflight
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

UmVuYW1lIHRoZSBlbmdpbmUgdGhpcyBIVyBjb250ZXh0IGlzIGN1cnJlbnRseSBhY3RpdmUgdXBv
biAodGhhdCB3ZSBhcmUKZmx5aW5nIHVwb24pIHRvIGRpc2FtYmlndWF0ZSBiZXR3ZWVuIHRoZSBt
aXh0dXJlIG9mIGRpZmZlcmVudCBhY3RpdmUKdGVybXMgKGFuZCBwcmV2ZW50IGNvbmZsaWN0IGlu
IGZ1dHVyZSBwYXRjaGVzKS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFs
YUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29u
dGV4dF90eXBlcy5oIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
ICAgICAgICAgICB8IDIyICsrKysrKysrKy0tLS0tLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgMTIg
aW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dF90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfY29udGV4dF90eXBlcy5oCmluZGV4IDk2M2EzMTI0MzBlNi4uODI1ZmNmMGFjOWM0
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0X3R5cGVz
LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dF90eXBlcy5oCkBA
IC0zNyw3ICszNyw3IEBAIHN0cnVjdCBpbnRlbF9jb250ZXh0IHsKIAogCXN0cnVjdCBpOTE1X2dl
bV9jb250ZXh0ICpnZW1fY29udGV4dDsKIAlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7
Ci0Jc3RydWN0IGludGVsX2VuZ2luZV9jcyAqYWN0aXZlOworCXN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmluZmxpZ2h0OwogCiAJc3RydWN0IGxpc3RfaGVhZCBzaWduYWxfbGluazsKIAlzdHJ1Y3Qg
bGlzdF9oZWFkIHNpZ25hbHM7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IGJm
MTZjYjUxMDc1OC4uMmVlODJlYTU2MWI0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
YwpAQCAtNDQ5LDcgKzQ0OSw3IEBAIF9fdW53aW5kX2luY29tcGxldGVfcmVxdWVzdHMoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCQlfX2k5MTVfcmVxdWVzdF91bnN1Ym1pdChycSk7
CiAJCXVud2luZF93YV90YWlsKHJxKTsKIAotCQlHRU1fQlVHX09OKHJxLT5od19jb250ZXh0LT5h
Y3RpdmUpOworCQlHRU1fQlVHX09OKHJxLT5od19jb250ZXh0LT5pbmZsaWdodCk7CiAKIAkJLyoK
IAkJICogUHVzaCB0aGUgcmVxdWVzdCBiYWNrIGludG8gdGhlIHF1ZXVlIGZvciBsYXRlciByZXN1
Ym1pc3Npb24uCkBAIC01MTgsMTEgKzUxOCwxMSBAQCBleGVjbGlzdHNfdXNlcl9lbmQoc3RydWN0
IGludGVsX2VuZ2luZV9leGVjbGlzdHMgKmV4ZWNsaXN0cykKIHN0YXRpYyBpbmxpbmUgdm9pZAog
ZXhlY2xpc3RzX2NvbnRleHRfc2NoZWR1bGVfaW4oc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiB7
Ci0JR0VNX0JVR19PTihycS0+aHdfY29udGV4dC0+YWN0aXZlKTsKKwlHRU1fQlVHX09OKHJxLT5o
d19jb250ZXh0LT5pbmZsaWdodCk7CiAKIAlleGVjbGlzdHNfY29udGV4dF9zdGF0dXNfY2hhbmdl
KHJxLCBJTlRFTF9DT05URVhUX1NDSEVEVUxFX0lOKTsKIAlpbnRlbF9lbmdpbmVfY29udGV4dF9p
bihycS0+ZW5naW5lKTsKLQlycS0+aHdfY29udGV4dC0+YWN0aXZlID0gcnEtPmVuZ2luZTsKKwly
cS0+aHdfY29udGV4dC0+aW5mbGlnaHQgPSBycS0+ZW5naW5lOwogfQogCiBzdGF0aWMgdm9pZCBr
aWNrX3NpYmxpbmdzKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQpAQCAtNTM3LDcgKzUzNyw3IEBA
IHN0YXRpYyB2b2lkIGtpY2tfc2libGluZ3Moc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiBzdGF0
aWMgaW5saW5lIHZvaWQKIGV4ZWNsaXN0c19jb250ZXh0X3NjaGVkdWxlX291dChzdHJ1Y3QgaTkx
NV9yZXF1ZXN0ICpycSwgdW5zaWduZWQgbG9uZyBzdGF0dXMpCiB7Ci0JcnEtPmh3X2NvbnRleHQt
PmFjdGl2ZSA9IE5VTEw7CisJcnEtPmh3X2NvbnRleHQtPmluZmxpZ2h0ID0gTlVMTDsKIAlpbnRl
bF9lbmdpbmVfY29udGV4dF9vdXQocnEtPmVuZ2luZSk7CiAJZXhlY2xpc3RzX2NvbnRleHRfc3Rh
dHVzX2NoYW5nZShycSwgc3RhdHVzKTsKIAl0cmFjZV9pOTE1X3JlcXVlc3Rfb3V0KHJxKTsKQEAg
LTc4MCw3ICs3ODAsNyBAQCBzdGF0aWMgYm9vbCB2aXJ0dWFsX21hdGNoZXMoY29uc3Qgc3RydWN0
IHZpcnR1YWxfZW5naW5lICp2ZSwKIAkJCSAgICBjb25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpy
cSwKIAkJCSAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7Ci0JY29u
c3Qgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqYWN0aXZlOworCWNvbnN0IHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmluZmxpZ2h0OwogCiAJaWYgKCEocnEtPmV4ZWN1dGlvbl9tYXNrICYgZW5naW5l
LT5tYXNrKSkgLyogV2UgcGVla2VkIHRvbyBzb29uISAqLwogCQlyZXR1cm4gZmFsc2U7CkBAIC03
OTQsOCArNzk0LDggQEAgc3RhdGljIGJvb2wgdmlydHVhbF9tYXRjaGVzKGNvbnN0IHN0cnVjdCB2
aXJ0dWFsX2VuZ2luZSAqdmUsCiAJICogd2UgcmV1c2UgdGhlIHJlZ2lzdGVyIG9mZnNldHMpLiBU
aGlzIGlzIGEgdmVyeSBzbWFsbAogCSAqIGh5c3RlcnNpcyBvbiB0aGUgZ3JlZWR5IHNlZWxjdGlv
biBhbGdvcml0aG0uCiAJICovCi0JYWN0aXZlID0gUkVBRF9PTkNFKHZlLT5jb250ZXh0LmFjdGl2
ZSk7Ci0JaWYgKGFjdGl2ZSAmJiBhY3RpdmUgIT0gZW5naW5lKQorCWluZmxpZ2h0ID0gUkVBRF9P
TkNFKHZlLT5jb250ZXh0LmluZmxpZ2h0KTsKKwlpZiAoaW5mbGlnaHQgJiYgaW5mbGlnaHQgIT0g
ZW5naW5lKQogCQlyZXR1cm4gZmFsc2U7CiAKIAlyZXR1cm4gdHJ1ZTsKQEAgLTk4Myw3ICs5ODMs
NyBAQCBzdGF0aWMgdm9pZCBleGVjbGlzdHNfZGVxdWV1ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUpCiAJCQkJdTMyICpyZWdzID0gdmUtPmNvbnRleHQubHJjX3JlZ19zdGF0ZTsKIAkJ
CQl1bnNpZ25lZCBpbnQgbjsKIAotCQkJCUdFTV9CVUdfT04oUkVBRF9PTkNFKHZlLT5jb250ZXh0
LmFjdGl2ZSkpOworCQkJCUdFTV9CVUdfT04oUkVBRF9PTkNFKHZlLT5jb250ZXh0LmluZmxpZ2h0
KSk7CiAJCQkJdmlydHVhbF91cGRhdGVfcmVnaXN0ZXJfb2Zmc2V0cyhyZWdzLCBlbmdpbmUpOwog
CiAJCQkJaWYgKCFsaXN0X2VtcHR5KCZ2ZS0+Y29udGV4dC5zaWduYWxzKSkKQEAgLTE0NjEsNyAr
MTQ2MSw3IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19jb250ZXh0X3VucGluKHN0cnVjdCBpbnRl
bF9jb250ZXh0ICpjZSkKIAkgKiBoYWQgdGhlIGNoYW5jZSB0byBydW4geWV0OyBsZXQgaXQgcnVu
IGJlZm9yZSB3ZSB0ZWFyZG93biB0aGUKIAkgKiByZWZlcmVuY2UgaXQgbWF5IHVzZS4KIAkgKi8K
LQllbmdpbmUgPSBSRUFEX09OQ0UoY2UtPmFjdGl2ZSk7CisJZW5naW5lID0gUkVBRF9PTkNFKGNl
LT5pbmZsaWdodCk7CiAJaWYgKHVubGlrZWx5KGVuZ2luZSkpIHsKIAkJdW5zaWduZWQgbG9uZyBm
bGFnczsKIApAQCAtMTQ2OSw3ICsxNDY5LDcgQEAgc3RhdGljIHZvaWQgZXhlY2xpc3RzX2NvbnRl
eHRfdW5waW4oc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQogCQlwcm9jZXNzX2NzYihlbmdpbmUp
OwogCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZlbmdpbmUtPnRpbWVsaW5lLmxvY2ssIGZsYWdz
KTsKIAotCQlHRU1fQlVHX09OKFJFQURfT05DRShjZS0+YWN0aXZlKSk7CisJCUdFTV9CVUdfT04o
UkVBRF9PTkNFKGNlLT5pbmZsaWdodCkpOwogCX0KIAogCWk5MTVfZ2VtX2NvbnRleHRfdW5waW5f
aHdfaWQoY2UtPmdlbV9jb250ZXh0KTsKQEAgLTMwNjQsNyArMzA2NCw3IEBAIHN0YXRpYyB2b2lk
IHZpcnR1YWxfY29udGV4dF9kZXN0cm95KHN0cnVjdCBrcmVmICprcmVmKQogCXVuc2lnbmVkIGlu
dCBuOwogCiAJR0VNX0JVR19PTih2ZS0+cmVxdWVzdCk7Ci0JR0VNX0JVR19PTih2ZS0+Y29udGV4
dC5hY3RpdmUpOworCUdFTV9CVUdfT04odmUtPmNvbnRleHQuaW5mbGlnaHQpOwogCiAJZm9yIChu
ID0gMDsgbiA8IHZlLT5udW1fc2libGluZ3M7IG4rKykgewogCQlzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICpzaWJsaW5nID0gdmUtPnNpYmxpbmdzW25dOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
