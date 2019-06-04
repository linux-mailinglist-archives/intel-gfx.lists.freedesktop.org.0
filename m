Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FFE34C21
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 17:24:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8015289A44;
	Tue,  4 Jun 2019 15:24:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54C3589A44
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 15:24:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16790676-1500050 
 for multiple; Tue, 04 Jun 2019 16:24:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 16:24:08 +0100
Message-Id: <20190604152408.24468-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Skip context_barrier emission for
 unused contexts
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

VGhlIGludGVudCB3YXMgdG8gc2tpcCB1bnVzZWQgSFcgY29udGV4dHMgYnkgY2hlY2tpbmcgY2Ut
PnN0YXRlLgpIb3dldmVyLCB0aGlzIG9ubHkgd29ya3MgZm9yIGV4ZWNsaXN0cyB3aGVyZSB0aGUg
cHBHVFQgcG9pbnRlcnMgaXMKc3RvcmVkIGluc2lkZSB0aGUgSFcgY29udGV4dC4gRm9yIGdlbjcs
IHRoZSBwcEdUVCBpcyBhbG9uZ3NpZGUgdGhlCmxvZ2ljYWwgc3RhdGUgYW5kIG11c3QgYmUgdXBk
YXRlZCBvbiBhbGwgYWN0aXZlIGVuZ2luZXMgYnV0LCBjcnVjaWFsbHksCm9ubHkgb24gYWN0aXZl
IGVuZ2luZXMuIEFzIHdlIG5lZWQgZGlmZmVyZW50IGNoZWNrcywgYW5kIHRvIGtlZXAKY29udGV4
dF9iYXJyaWVyX3Rhc2soKSBhZ25vc3RpYywgcGFzcyBpbiB0aGUgcHJlZGljYXRlLgoKQnVnemls
bGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDgzNgpG
aXhlczogNjJjOGU0MjM0NTBkICgiZHJtL2k5MTU6IFNraXAgdW51c2VkIGNvbnRleHRzIGZvciBj
b250ZXh0X2JhcnJpZXJfdGFzaygpIikKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5A
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0
LmMgICB8IDE1ICsrKysrKysrKysrKysrLQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkx
NV9nZW1fY29udGV4dC5jIHwgMTkgKysrKysrKysrKysrKysrLS0tLQogMiBmaWxlcyBjaGFuZ2Vk
LCAyOSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCmluZGV4IDA4NzIxZWY2MmU0ZS4uNjgxOWI1OThkMjI2
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKQEAgLTkw
Miw2ICs5MDIsNyBAQCBzdGF0aWMgdm9pZCBjYl9yZXRpcmUoc3RydWN0IGk5MTVfYWN0aXZlICpi
YXNlKQogSTkxNV9TRUxGVEVTVF9ERUNMQVJFKHN0YXRpYyBpbnRlbF9lbmdpbmVfbWFza190IGNv
bnRleHRfYmFycmllcl9pbmplY3RfZmF1bHQpOwogc3RhdGljIGludCBjb250ZXh0X2JhcnJpZXJf
dGFzayhzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAogCQkJCWludGVsX2VuZ2luZV9tYXNr
X3QgZW5naW5lcywKKwkJCQlib29sICgqc2tpcCkoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCB2
b2lkICpkYXRhKSwKIAkJCQlpbnQgKCplbWl0KShzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwgdm9p
ZCAqZGF0YSksCiAJCQkJdm9pZCAoKnRhc2spKHZvaWQgKmRhdGEpLAogCQkJCXZvaWQgKmRhdGEp
CkBAIC05MzEsNyArOTMyLDEwIEBAIHN0YXRpYyBpbnQgY29udGV4dF9iYXJyaWVyX3Rhc2soc3Ry
dWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKIAkJCWJyZWFrOwogCQl9CiAKLQkJaWYgKCEoY2Ut
PmVuZ2luZS0+bWFzayAmIGVuZ2luZXMpIHx8ICFjZS0+c3RhdGUpCisJCWlmICghKGNlLT5lbmdp
bmUtPm1hc2sgJiBlbmdpbmVzKSkKKwkJCWNvbnRpbnVlOworCisJCWlmIChza2lwICYmIHNraXAo
Y2UsIGRhdGEpKQogCQkJY29udGludWU7CiAKIAkJcnEgPSBpbnRlbF9jb250ZXh0X2NyZWF0ZV9y
ZXF1ZXN0KGNlKTsKQEAgLTEwNTgsNiArMTA2MiwxNCBAQCBzdGF0aWMgaW50IGVtaXRfcHBndHRf
dXBkYXRlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCB2b2lkICpkYXRhKQogCXJldHVybiAwOwog
fQogCitzdGF0aWMgYm9vbCBza2lwX3BwZ3R0X3VwZGF0ZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UsIHZvaWQgKmRhdGEpCit7CisJaWYgKEhBU19MT0dJQ0FMX1JJTkdfQ09OVEVYVFMoY2UtPmVu
Z2luZS0+aTkxNSkpCisJCXJldHVybiAhY2UtPnN0YXRlOworCWVsc2UKKwkJcmV0dXJuICFhdG9t
aWNfcmVhZCgmY2UtPnBpbl9jb3VudCk7Cit9CisKIHN0YXRpYyBpbnQgc2V0X3BwZ3R0KHN0cnVj
dCBkcm1faTkxNV9maWxlX3ByaXZhdGUgKmZpbGVfcHJpdiwKIAkJICAgICBzdHJ1Y3QgaTkxNV9n
ZW1fY29udGV4dCAqY3R4LAogCQkgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fY29udGV4dF9wYXJh
bSAqYXJncykKQEAgLTExMDMsNiArMTExNSw3IEBAIHN0YXRpYyBpbnQgc2V0X3BwZ3R0KHN0cnVj
dCBkcm1faTkxNV9maWxlX3ByaXZhdGUgKmZpbGVfcHJpdiwKIAkgKiBvbmx5IGluZGlyZWN0bHkg
dGhyb3VnaCB0aGUgY29udGV4dC4KIAkgKi8KIAllcnIgPSBjb250ZXh0X2JhcnJpZXJfdGFzayhj
dHgsIEFMTF9FTkdJTkVTLAorCQkJCSAgIHNraXBfcHBndHRfdXBkYXRlLAogCQkJCSAgIGVtaXRf
cHBndHRfdXBkYXRlLAogCQkJCSAgIHNldF9wcGd0dF9iYXJyaWVyLAogCQkJCSAgIG9sZCk7CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2Nv
bnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29u
dGV4dC5jCmluZGV4IDFiYzNiODAyNjQwMC4uNDExMDVmNmVkMjA2IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwpAQCAt
MTYxOSw2ICsxNjE5LDExIEBAIF9fZW5naW5lX25hbWUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUsIGludGVsX2VuZ2luZV9tYXNrX3QgZW5naW5lcykKIAlyZXR1cm4gIm5vbmUiOwogfQog
CitzdGF0aWMgYm9vbCBza2lwX3VudXNlZF9lbmdpbmVzKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpj
ZSwgdm9pZCAqZGF0YSkKK3sKKwlyZXR1cm4gIWNlLT5zdGF0ZTsKK30KKwogc3RhdGljIHZvaWQg
bW9ja19iYXJyaWVyX3Rhc2sodm9pZCAqZGF0YSkKIHsKIAl1bnNpZ25lZCBpbnQgKmNvdW50ZXIg
PSBkYXRhOwpAQCAtMTY1MSw3ICsxNjU2LDcgQEAgc3RhdGljIGludCBtb2NrX2NvbnRleHRfYmFy
cmllcih2b2lkICphcmcpCiAKIAljb3VudGVyID0gMDsKIAllcnIgPSBjb250ZXh0X2JhcnJpZXJf
dGFzayhjdHgsIDAsCi0JCQkJICAgTlVMTCwgbW9ja19iYXJyaWVyX3Rhc2ssICZjb3VudGVyKTsK
KwkJCQkgICBOVUxMLCBOVUxMLCBtb2NrX2JhcnJpZXJfdGFzaywgJmNvdW50ZXIpOwogCWlmIChl
cnIpIHsKIAkJcHJfZXJyKCJGYWlsZWQgYXQgbGluZSAlZCwgZXJyPSVkXG4iLCBfX0xJTkVfXywg
ZXJyKTsKIAkJZ290byBvdXQ7CkBAIC0xNjY0LDcgKzE2NjksMTAgQEAgc3RhdGljIGludCBtb2Nr
X2NvbnRleHRfYmFycmllcih2b2lkICphcmcpCiAKIAljb3VudGVyID0gMDsKIAllcnIgPSBjb250
ZXh0X2JhcnJpZXJfdGFzayhjdHgsIEFMTF9FTkdJTkVTLAotCQkJCSAgIE5VTEwsIG1vY2tfYmFy
cmllcl90YXNrLCAmY291bnRlcik7CisJCQkJICAgc2tpcF91bnVzZWRfZW5naW5lcywKKwkJCQkg
ICBOVUxMLAorCQkJCSAgIG1vY2tfYmFycmllcl90YXNrLAorCQkJCSAgICZjb3VudGVyKTsKIAlp
ZiAoZXJyKSB7CiAJCXByX2VycigiRmFpbGVkIGF0IGxpbmUgJWQsIGVycj0lZFxuIiwgX19MSU5F
X18sIGVycik7CiAJCWdvdG8gb3V0OwpAQCAtMTY4NSw3ICsxNjkzLDcgQEAgc3RhdGljIGludCBt
b2NrX2NvbnRleHRfYmFycmllcih2b2lkICphcmcpCiAJY291bnRlciA9IDA7CiAJY29udGV4dF9i
YXJyaWVyX2luamVjdF9mYXVsdCA9IEJJVChSQ1MwKTsKIAllcnIgPSBjb250ZXh0X2JhcnJpZXJf
dGFzayhjdHgsIEFMTF9FTkdJTkVTLAotCQkJCSAgIE5VTEwsIG1vY2tfYmFycmllcl90YXNrLCAm
Y291bnRlcik7CisJCQkJICAgTlVMTCwgTlVMTCwgbW9ja19iYXJyaWVyX3Rhc2ssICZjb3VudGVy
KTsKIAljb250ZXh0X2JhcnJpZXJfaW5qZWN0X2ZhdWx0ID0gMDsKIAlpZiAoZXJyID09IC1FTlhJ
TykKIAkJZXJyID0gMDsKQEAgLTE3MDAsNyArMTcwOCwxMCBAQCBzdGF0aWMgaW50IG1vY2tfY29u
dGV4dF9iYXJyaWVyKHZvaWQgKmFyZykKIAogCWNvdW50ZXIgPSAwOwogCWVyciA9IGNvbnRleHRf
YmFycmllcl90YXNrKGN0eCwgQUxMX0VOR0lORVMsCi0JCQkJICAgTlVMTCwgbW9ja19iYXJyaWVy
X3Rhc2ssICZjb3VudGVyKTsKKwkJCQkgICBza2lwX3VudXNlZF9lbmdpbmVzLAorCQkJCSAgIE5V
TEwsCisJCQkJICAgbW9ja19iYXJyaWVyX3Rhc2ssCisJCQkJICAgJmNvdW50ZXIpOwogCWlmIChl
cnIpIHsKIAkJcHJfZXJyKCJGYWlsZWQgYXQgbGluZSAlZCwgZXJyPSVkXG4iLCBfX0xJTkVfXywg
ZXJyKTsKIAkJZ290byBvdXQ7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
