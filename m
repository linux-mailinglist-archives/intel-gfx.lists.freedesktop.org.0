Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B899C60D58
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2019 23:52:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14D786E55E;
	Fri,  5 Jul 2019 21:52:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E5076E55F
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2019 21:52:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17148572-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Jul 2019 22:52:04 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Jul 2019 22:52:01 +0100
Message-Id: <20190705215204.4559-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/4] drm/i915/gtt: pde entry encoding is identical
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

RnJvbTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgpGb3Ig
YWxsIHBhZ2UgZGlyZWN0b3J5IGVudHJpZXMsIHRoZSBwZGUgZW5jb2RpbmcgaXMKaWRlbnRpY2Fs
LiBEb24ndCBjb21wbGljYXRlIGNhbGwgc2l0ZXMgd2l0aCBkaWZmZXJlbnQKdmVyc2lvbnMgb2Yg
ZG9pbmcgdGhlIHNhbWUgdGhpbmcsIHNvIHdlIGFsd2F5cyBjaGVjayB0aGUKZXhpc3RlbmNlIG9m
IHBoeXNpY2FsIHBhZ2UgYmVmb3JlIHdyaXRpbmcgdGhlIGVudHJ5IGludG8KaXQuIFRoaXMgZnVy
dGhlciBnZW5lcmFsaXplcyB0aGUgcGQgc28gdGhhdCBtYW5pcHVsYXRpb24gaW4KY2FsbHNpdGVz
IHdpbGwgYmUgaWRlbnRpY2FsLCByZW1vdmluZyB0aGUgbmVlZCB0byBoYW5kbGUKcGRwcyBkaWZm
ZXJlbnRseSBmb3IgZ2VuOC4KCnYyOiBzcXVhc2gKdjM6IGluYy9kZWMgd2l0aCBzZXQvY2xlYXIg
KENocmlzKQp2NDogaW5saW5lcywgd2Fybiwgc3RyYXkgc2V0X3BkIChDaHJpcykKCkNjOiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1hdHRoZXcgQXVsZCA8bWF0
dGhldy5hdWxkQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5r
dW9wcGFsYUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9n
dHQuYyB8IDE1MiArKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9ndHQuaCB8ICAgMyAtCiAyIGZpbGVzIGNoYW5nZWQsIDYzIGluc2VydGlv
bnMoKyksIDkyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5k
ZXggNTdkYjJkNzI3MGM1Li5hZGY2ZWFkZDUwMDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2d0dC5jCkBAIC0yMTEsMTAgKzIxMSwxMCBAQCBzdGF0aWMgdTY0IGdlbjhfcHRlX2VuY29kZShk
bWFfYWRkcl90IGFkZHIsCiAJcmV0dXJuIHB0ZTsKIH0KIAotc3RhdGljIGdlbjhfcGRlX3QgZ2Vu
OF9wZGVfZW5jb2RlKGNvbnN0IGRtYV9hZGRyX3QgYWRkciwKLQkJCQkgIGNvbnN0IGVudW0gaTkx
NV9jYWNoZV9sZXZlbCBsZXZlbCkKK3N0YXRpYyB1NjQgZ2VuOF9wZGVfZW5jb2RlKGNvbnN0IGRt
YV9hZGRyX3QgYWRkciwKKwkJCSAgIGNvbnN0IGVudW0gaTkxNV9jYWNoZV9sZXZlbCBsZXZlbCkK
IHsKLQlnZW44X3BkZV90IHBkZSA9IF9QQUdFX1BSRVNFTlQgfCBfUEFHRV9SVzsKKwl1NjQgcGRl
ID0gX1BBR0VfUFJFU0VOVCB8IF9QQUdFX1JXOwogCXBkZSB8PSBhZGRyOwogCWlmIChsZXZlbCAh
PSBJOTE1X0NBQ0hFX05PTkUpCiAJCXBkZSB8PSBQUEFUX0NBQ0hFRF9QREU7CkBAIC0yMjMsOSAr
MjIzLDYgQEAgc3RhdGljIGdlbjhfcGRlX3QgZ2VuOF9wZGVfZW5jb2RlKGNvbnN0IGRtYV9hZGRy
X3QgYWRkciwKIAlyZXR1cm4gcGRlOwogfQogCi0jZGVmaW5lIGdlbjhfcGRwZV9lbmNvZGUgZ2Vu
OF9wZGVfZW5jb2RlCi0jZGVmaW5lIGdlbjhfcG1sNGVfZW5jb2RlIGdlbjhfcGRlX2VuY29kZQot
CiBzdGF0aWMgdTY0IHNuYl9wdGVfZW5jb2RlKGRtYV9hZGRyX3QgYWRkciwKIAkJCSAgZW51bSBp
OTE1X2NhY2hlX2xldmVsIGxldmVsLAogCQkJICB1MzIgZmxhZ3MpCkBAIC03NzcsMjQgKzc3NCw1
NSBAQCBzdGF0aWMgdm9pZCBmcmVlX3BkKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAog
CWtmcmVlKHBkKTsKIH0KIAotc3RhdGljIHZvaWQgaW5pdF9wZF93aXRoX3BhZ2Uoc3RydWN0IGk5
MTVfYWRkcmVzc19zcGFjZSAqdm0sCi0JCQkgICAgICBzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9y
eSAqIGNvbnN0IHBkLAotCQkJICAgICAgc3RydWN0IGk5MTVfcGFnZV90YWJsZSAqcHQpCisjZGVm
aW5lIGluaXRfcGQodm0sIHBkLCB0bykgewkJCQkJXAorCUdFTV9ERUJVR19CVUdfT04oIXBkX2hh
c19waHlzX3BhZ2UocGQpKTsJCVwKKwlmaWxsX3B4KCh2bSksIChwZCksIGdlbjhfcGRlX2VuY29k
ZShweF9kbWEodG8pLCBJOTE1X0NBQ0hFX0xMQykpOyBcCisJbWVtc2V0X3AoKHBkKS0+ZW50cnks
ICh0byksIDUxMik7CQkJCVwKK30KKworc3RhdGljIGlubGluZSB2b2lkCit3cml0ZV9kbWFfZW50
cnkoc3RydWN0IGk5MTVfcGFnZV9kbWEgKiBjb25zdCBwZG1hLAorCQljb25zdCB1bnNpZ25lZCBz
aG9ydCBwZGUsCisJCWNvbnN0IHU2NCBlbmNvZGVkX2VudHJ5KQoreworCXU2NCAqIGNvbnN0IHZh
ZGRyID0ga21hcF9hdG9taWMocGRtYS0+cGFnZSk7CisKKwl2YWRkcltwZGVdID0gZW5jb2RlZF9l
bnRyeTsKKwlrdW5tYXBfYXRvbWljKHZhZGRyKTsKK30KKworc3RhdGljIGlubGluZSB2b2lkCitf
X3NldF9wZF9lbnRyeShzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAqIGNvbnN0IHBkLAorCSAg
ICAgICBjb25zdCB1bnNpZ25lZCBzaG9ydCBwZGUsCisJICAgICAgIHN0cnVjdCBpOTE1X3BhZ2Vf
ZG1hICogY29uc3QgdG8sCisJICAgICAgIHU2NCAoKmVuY29kZSkoY29uc3QgZG1hX2FkZHJfdCwg
Y29uc3QgZW51bSBpOTE1X2NhY2hlX2xldmVsKSkKIHsKLQlmaWxsX3B4KHZtLCBwZCwgZ2VuOF9w
ZGVfZW5jb2RlKHB4X2RtYShwdCksIEk5MTVfQ0FDSEVfTExDKSk7Ci0JbWVtc2V0X3AocGQtPmVu
dHJ5LCBwdCwgNTEyKTsKKwlHRU1fQlVHX09OKGF0b21pY19yZWFkKCZwZC0+dXNlZCkgPiA1MTIp
OworCisJYXRvbWljX2luYygmcGQtPnVzZWQpOworCXBkLT5lbnRyeVtwZGVdID0gdG87CisJd3Jp
dGVfZG1hX2VudHJ5KHB4X2Jhc2UocGQpLCBwZGUsIGVuY29kZSh0by0+ZGFkZHIsIEk5MTVfQ0FD
SEVfTExDKSk7CiB9CiAKLXN0YXRpYyB2b2lkIGluaXRfcGQoc3RydWN0IGk5MTVfYWRkcmVzc19z
cGFjZSAqdm0sCi0JCSAgICBzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAqIGNvbnN0IHBkLAot
CQkgICAgc3RydWN0IGk5MTVfcGFnZV9kaXJlY3RvcnkgKiBjb25zdCB0bykKK3N0YXRpYyBpbmxp
bmUgdm9pZAorX19jbGVhcl9wZF9lbnRyeShzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAqIGNv
bnN0IHBkLAorCQkgY29uc3QgdW5zaWduZWQgc2hvcnQgcGRlLAorCQkgc3RydWN0IGk5MTVfcGFn
ZV9kbWEgKiBjb25zdCB0bywKKwkJIHU2NCAoKmVuY29kZSkoY29uc3QgZG1hX2FkZHJfdCwgY29u
c3QgZW51bSBpOTE1X2NhY2hlX2xldmVsKSkKIHsKLQlHRU1fREVCVUdfQlVHX09OKCFwZF9oYXNf
cGh5c19wYWdlKHBkKSk7CisJR0VNX0JVR19PTihhdG9taWNfcmVhZCgmcGQtPnVzZWQpID09IDAp
OwogCi0JZmlsbF9weCh2bSwgcGQsIGdlbjhfcGRwZV9lbmNvZGUocHhfZG1hKHRvKSwgSTkxNV9D
QUNIRV9MTEMpKTsKLQltZW1zZXRfcChwZC0+ZW50cnksIHRvLCA1MTIpOworCXdyaXRlX2RtYV9l
bnRyeShweF9iYXNlKHBkKSwgcGRlLCBlbmNvZGUodG8tPmRhZGRyLCBJOTE1X0NBQ0hFX0xMQykp
OworCXBkLT5lbnRyeVtwZGVdID0gdG87CisJYXRvbWljX2RlYygmcGQtPnVzZWQpOwogfQogCisj
ZGVmaW5lIHNldF9wZF9lbnRyeShwZCwgcGRlLCB0bykgXAorCV9fc2V0X3BkX2VudHJ5KChwZCks
IChwZGUpLCBweF9iYXNlKHRvKSwgZ2VuOF9wZGVfZW5jb2RlKQorCisjZGVmaW5lIGNsZWFyX3Bk
X2VudHJ5KHBkLCBwZGUsIHRvKSBcCisJX19jbGVhcl9wZF9lbnRyeSgocGQpLCAocGRlKSwgcHhf
YmFzZSh0byksIGdlbjhfcGRlX2VuY29kZSkKKwogLyoKICAqIFBERSBUTEJzIGFyZSBhIHBhaW4g
dG8gaW52YWxpZGF0ZSBvbiBHRU44Ky4gV2hlbiB3ZSBtb2RpZnkKICAqIHRoZSBwYWdlIHRhYmxl
IHN0cnVjdHVyZXMsIHdlIG1hcmsgdGhlbSBkaXJ0eSBzbyB0aGF0CkBAIC04MjQsMTggKzg1Miw2
IEBAIHN0YXRpYyBib29sIGdlbjhfcHBndHRfY2xlYXJfcHQoY29uc3Qgc3RydWN0IGk5MTVfYWRk
cmVzc19zcGFjZSAqdm0sCiAJcmV0dXJuICFhdG9taWNfc3ViX3JldHVybihudW1fZW50cmllcywg
JnB0LT51c2VkKTsKIH0KIAotc3RhdGljIHZvaWQgZ2VuOF9wcGd0dF9zZXRfcGRlKHN0cnVjdCBp
OTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAotCQkJICAgICAgIHN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0
b3J5ICpwZCwKLQkJCSAgICAgICBzdHJ1Y3QgaTkxNV9wYWdlX3RhYmxlICpwdCwKLQkJCSAgICAg
ICB1bnNpZ25lZCBpbnQgcGRlKQotewotCWdlbjhfcGRlX3QgKnZhZGRyOwotCi0JdmFkZHIgPSBr
bWFwX2F0b21pY19weChwZCk7Ci0JdmFkZHJbcGRlXSA9IGdlbjhfcGRlX2VuY29kZShweF9kbWEo
cHQpLCBJOTE1X0NBQ0hFX0xMQyk7Ci0Ja3VubWFwX2F0b21pYyh2YWRkcik7Ci19Ci0KIHN0YXRp
YyBib29sIGdlbjhfcHBndHRfY2xlYXJfcGQoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0s
CiAJCQkJc3RydWN0IGk5MTVfcGFnZV9kaXJlY3RvcnkgKnBkLAogCQkJCXU2NCBzdGFydCwgdTY0
IGxlbmd0aCkKQEAgLTg1MywxMSArODY5LDcgQEAgc3RhdGljIGJvb2wgZ2VuOF9wcGd0dF9jbGVh
cl9wZChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKIAogCQlzcGluX2xvY2soJnBkLT5s
b2NrKTsKIAkJaWYgKCFhdG9taWNfcmVhZCgmcHQtPnVzZWQpKSB7Ci0JCQlnZW44X3BwZ3R0X3Nl
dF9wZGUodm0sIHBkLCB2bS0+c2NyYXRjaF9wdCwgcGRlKTsKLQkJCXBkLT5lbnRyeVtwZGVdID0g
dm0tPnNjcmF0Y2hfcHQ7Ci0KLQkJCUdFTV9CVUdfT04oIWF0b21pY19yZWFkKCZwZC0+dXNlZCkp
OwotCQkJYXRvbWljX2RlYygmcGQtPnVzZWQpOworCQkJY2xlYXJfcGRfZW50cnkocGQsIHBkZSwg
dm0tPnNjcmF0Y2hfcHQpOwogCQkJZnJlZSA9IHRydWU7CiAJCX0KIAkJc3Bpbl91bmxvY2soJnBk
LT5sb2NrKTsKQEAgLTg2OCwyMCArODgwLDYgQEAgc3RhdGljIGJvb2wgZ2VuOF9wcGd0dF9jbGVh
cl9wZChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKIAlyZXR1cm4gIWF0b21pY19yZWFk
KCZwZC0+dXNlZCk7CiB9CiAKLXN0YXRpYyB2b2lkIGdlbjhfcHBndHRfc2V0X3BkcGUoc3RydWN0
IGk5MTVfcGFnZV9kaXJlY3RvcnkgKnBkcCwKLQkJCQlzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9y
eSAqcGQsCi0JCQkJdW5zaWduZWQgaW50IHBkcGUpCi17Ci0JZ2VuOF9wcGd0dF9wZHBlX3QgKnZh
ZGRyOwotCi0JaWYgKCFwZF9oYXNfcGh5c19wYWdlKHBkcCkpCi0JCXJldHVybjsKLQotCXZhZGRy
ID0ga21hcF9hdG9taWNfcHgocGRwKTsKLQl2YWRkcltwZHBlXSA9IGdlbjhfcGRwZV9lbmNvZGUo
cHhfZG1hKHBkKSwgSTkxNV9DQUNIRV9MTEMpOwotCWt1bm1hcF9hdG9taWModmFkZHIpOwotfQot
CiAvKiBSZW1vdmVzIGVudHJpZXMgZnJvbSBhIHNpbmdsZSBwYWdlIGRpciBwb2ludGVyLCByZWxl
YXNpbmcgaXQgaWYgaXQncyBlbXB0eS4KICAqIENhbGxlciBjYW4gdXNlIHRoZSByZXR1cm4gdmFs
dWUgdG8gdXBkYXRlIGhpZ2hlci1sZXZlbCBlbnRyaWVzCiAgKi8KQEAgLTkwMiwxMSArOTAwLDcg
QEAgc3RhdGljIGJvb2wgZ2VuOF9wcGd0dF9jbGVhcl9wZHAoc3RydWN0IGk5MTVfYWRkcmVzc19z
cGFjZSAqdm0sCiAKIAkJc3Bpbl9sb2NrKCZwZHAtPmxvY2spOwogCQlpZiAoIWF0b21pY19yZWFk
KCZwZC0+dXNlZCkpIHsKLQkJCWdlbjhfcHBndHRfc2V0X3BkcGUocGRwLCB2bS0+c2NyYXRjaF9w
ZCwgcGRwZSk7Ci0JCQlwZHAtPmVudHJ5W3BkcGVdID0gdm0tPnNjcmF0Y2hfcGQ7Ci0KLQkJCUdF
TV9CVUdfT04oIWF0b21pY19yZWFkKCZwZHAtPnVzZWQpKTsKLQkJCWF0b21pY19kZWMoJnBkcC0+
dXNlZCk7CisJCQljbGVhcl9wZF9lbnRyeShwZHAsIHBkcGUsIHZtLT5zY3JhdGNoX3BkKTsKIAkJ
CWZyZWUgPSB0cnVlOwogCQl9CiAJCXNwaW5fdW5sb2NrKCZwZHAtPmxvY2spOwpAQCAtOTIzLDE3
ICs5MTcsNiBAQCBzdGF0aWMgdm9pZCBnZW44X3BwZ3R0X2NsZWFyXzNsdmwoc3RydWN0IGk5MTVf
YWRkcmVzc19zcGFjZSAqdm0sCiAJZ2VuOF9wcGd0dF9jbGVhcl9wZHAodm0sIGk5MTVfdm1fdG9f
cHBndHQodm0pLT5wZCwgc3RhcnQsIGxlbmd0aCk7CiB9CiAKLXN0YXRpYyB2b2lkIGdlbjhfcHBn
dHRfc2V0X3BtbDRlKHN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0b3J5ICpwbWw0LAotCQkJCSBzdHJ1
Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAqcGRwLAotCQkJCSB1bnNpZ25lZCBpbnQgcG1sNGUpCi17
Ci0JZ2VuOF9wcGd0dF9wbWw0ZV90ICp2YWRkcjsKLQotCXZhZGRyID0ga21hcF9hdG9taWNfcHgo
cG1sNCk7Ci0JdmFkZHJbcG1sNGVdID0gZ2VuOF9wbWw0ZV9lbmNvZGUocHhfZG1hKHBkcCksIEk5
MTVfQ0FDSEVfTExDKTsKLQlrdW5tYXBfYXRvbWljKHZhZGRyKTsKLX0KLQogLyogUmVtb3ZlcyBl
bnRyaWVzIGZyb20gYSBzaW5nbGUgcG1sNC4KICAqIFRoaXMgaXMgdGhlIHRvcC1sZXZlbCBzdHJ1
Y3R1cmUgaW4gNC1sZXZlbCBwYWdlIHRhYmxlcyB1c2VkIG9uIGdlbjgrLgogICogRW1wdHkgZW50
cmllcyBhcmUgYWx3YXlzIHNjcmF0Y2ggcG1sNGUuCkBAIC05NTcsOCArOTQwLDcgQEAgc3RhdGlj
IHZvaWQgZ2VuOF9wcGd0dF9jbGVhcl80bHZsKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZt
LAogCiAJCXNwaW5fbG9jaygmcG1sNC0+bG9jayk7CiAJCWlmICghYXRvbWljX3JlYWQoJnBkcC0+
dXNlZCkpIHsKLQkJCWdlbjhfcHBndHRfc2V0X3BtbDRlKHBtbDQsIHZtLT5zY3JhdGNoX3BkcCwg
cG1sNGUpOwotCQkJcG1sNC0+ZW50cnlbcG1sNGVdID0gdm0tPnNjcmF0Y2hfcGRwOworCQkJY2xl
YXJfcGRfZW50cnkocG1sNCwgcG1sNGUsIHZtLT5zY3JhdGNoX3BkcCk7CiAJCQlmcmVlID0gdHJ1
ZTsKIAkJfQogCQlzcGluX3VubG9jaygmcG1sNC0+bG9jayk7CkBAIC0xMjc1LDcgKzEyNTcsNyBA
QCBzdGF0aWMgaW50IGdlbjhfaW5pdF9zY3JhdGNoKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2Ug
KnZtKQogCX0KIAogCWdlbjhfaW5pdGlhbGl6ZV9wdCh2bSwgdm0tPnNjcmF0Y2hfcHQpOwotCWlu
aXRfcGRfd2l0aF9wYWdlKHZtLCB2bS0+c2NyYXRjaF9wZCwgdm0tPnNjcmF0Y2hfcHQpOworCWlu
aXRfcGQodm0sIHZtLT5zY3JhdGNoX3BkLCB2bS0+c2NyYXRjaF9wdCk7CiAJaWYgKGk5MTVfdm1f
aXNfNGx2bCh2bSkpCiAJCWluaXRfcGQodm0sIHZtLT5zY3JhdGNoX3BkcCwgdm0tPnNjcmF0Y2hf
cGQpOwogCkBAIC0xMjk4LDYgKzEyODAsMTEgQEAgc3RhdGljIGludCBnZW44X3BwZ3R0X25vdGlm
eV92Z3Qoc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0LCBib29sIGNyZWF0ZSkKIAllbnVtIHZndF9n
MnZfdHlwZSBtc2c7CiAJaW50IGk7CiAKKwlpZiAoY3JlYXRlKQorCQlhdG9taWNfaW5jKCZwcGd0
dC0+cGQtPnVzZWQpOyAvKiBuZXZlciByZW1vdmUgKi8KKwllbHNlCisJCWF0b21pY19kZWMoJnBw
Z3R0LT5wZC0+dXNlZCk7CisKIAlpZiAoaTkxNV92bV9pc180bHZsKHZtKSkgewogCQljb25zdCB1
NjQgZGFkZHIgPSBweF9kbWEocHBndHQtPnBkKTsKIApAQCAtMTQxNCw5ICsxNDAxLDcgQEAgc3Rh
dGljIGludCBnZW44X3BwZ3R0X2FsbG9jX3BkKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZt
LAogCiAJCQlzcGluX2xvY2soJnBkLT5sb2NrKTsKIAkJCWlmIChwZC0+ZW50cnlbcGRlXSA9PSB2
bS0+c2NyYXRjaF9wdCkgewotCQkJCWdlbjhfcHBndHRfc2V0X3BkZSh2bSwgcGQsIHB0LCBwZGUp
OwotCQkJCXBkLT5lbnRyeVtwZGVdID0gcHQ7Ci0JCQkJYXRvbWljX2luYygmcGQtPnVzZWQpOwor
CQkJCXNldF9wZF9lbnRyeShwZCwgcGRlLCBwdCk7CiAJCQl9IGVsc2UgewogCQkJCWFsbG9jID0g
cHQ7CiAJCQkJcHQgPSBwZC0+ZW50cnlbcGRlXTsKQEAgLTE0NTgsMTMgKzE0NDMsMTEgQEAgc3Rh
dGljIGludCBnZW44X3BwZ3R0X2FsbG9jX3BkcChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2
bSwKIAkJCQlnb3RvIHVud2luZDsKIAkJCX0KIAotCQkJaW5pdF9wZF93aXRoX3BhZ2Uodm0sIHBk
LCB2bS0+c2NyYXRjaF9wdCk7CisJCQlpbml0X3BkKHZtLCBwZCwgdm0tPnNjcmF0Y2hfcHQpOwog
CiAJCQlzcGluX2xvY2soJnBkcC0+bG9jayk7CiAJCQlpZiAocGRwLT5lbnRyeVtwZHBlXSA9PSB2
bS0+c2NyYXRjaF9wZCkgewotCQkJCWdlbjhfcHBndHRfc2V0X3BkcGUocGRwLCBwZCwgcGRwZSk7
Ci0JCQkJcGRwLT5lbnRyeVtwZHBlXSA9IHBkOwotCQkJCWF0b21pY19pbmMoJnBkcC0+dXNlZCk7
CisJCQkJc2V0X3BkX2VudHJ5KHBkcCwgcGRwZSwgcGQpOwogCQkJfSBlbHNlIHsKIAkJCQlhbGxv
YyA9IHBkOwogCQkJCXBkID0gcGRwLT5lbnRyeVtwZHBlXTsKQEAgLTE0OTAsMTIgKzE0NzMsOSBA
QCBzdGF0aWMgaW50IGdlbjhfcHBndHRfYWxsb2NfcGRwKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3Bh
Y2UgKnZtLAogCX0KIAlzcGluX2xvY2soJnBkcC0+bG9jayk7CiAJaWYgKGF0b21pY19kZWNfYW5k
X3Rlc3QoJnBkLT51c2VkKSkgewotCQlnZW44X3BwZ3R0X3NldF9wZHBlKHBkcCwgdm0tPnNjcmF0
Y2hfcGQsIHBkcGUpOwotCQlwZHAtPmVudHJ5W3BkcGVdID0gdm0tPnNjcmF0Y2hfcGQ7Ci0JCUdF
TV9CVUdfT04oIWF0b21pY19yZWFkKCZwZHAtPnVzZWQpKTsKLQkJYXRvbWljX2RlYygmcGRwLT51
c2VkKTsKIAkJR0VNX0JVR19PTihhbGxvYyk7CiAJCWFsbG9jID0gcGQ7IC8qIGRlZmVyIHRoZSBm
cmVlIHRvIGFmdGVyIHRoZSBsb2NrICovCisJCWNsZWFyX3BkX2VudHJ5KHBkcCwgcGRwZSwgdm0t
PnNjcmF0Y2hfcGQpOwogCX0KIAlzcGluX3VubG9jaygmcGRwLT5sb2NrKTsKIHVud2luZDoKQEAg
LTE1NDAsOCArMTUyMCw3IEBAIHN0YXRpYyBpbnQgZ2VuOF9wcGd0dF9hbGxvY180bHZsKHN0cnVj
dCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAogCiAJCQlzcGluX2xvY2soJnBtbDQtPmxvY2spOwog
CQkJaWYgKHBtbDQtPmVudHJ5W3BtbDRlXSA9PSB2bS0+c2NyYXRjaF9wZHApIHsKLQkJCQlnZW44
X3BwZ3R0X3NldF9wbWw0ZShwbWw0LCBwZHAsIHBtbDRlKTsKLQkJCQlwbWw0LT5lbnRyeVtwbWw0
ZV0gPSBwZHA7CisJCQkJc2V0X3BkX2VudHJ5KHBtbDQsIHBtbDRlLCBwZHApOwogCQkJfSBlbHNl
IHsKIAkJCQlhbGxvYyA9IHBkcDsKIAkJCQlwZHAgPSBwbWw0LT5lbnRyeVtwbWw0ZV07CkBAIC0x
NTY3LDEwICsxNTQ2LDkgQEAgc3RhdGljIGludCBnZW44X3BwZ3R0X2FsbG9jXzRsdmwoc3RydWN0
IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCiAJfQogCXNwaW5fbG9jaygmcG1sNC0+bG9jayk7CiAJ
aWYgKGF0b21pY19kZWNfYW5kX3Rlc3QoJnBkcC0+dXNlZCkpIHsKLQkJZ2VuOF9wcGd0dF9zZXRf
cG1sNGUocG1sNCwgdm0tPnNjcmF0Y2hfcGRwLCBwbWw0ZSk7Ci0JCXBtbDQtPmVudHJ5W3BtbDRl
XSA9IHZtLT5zY3JhdGNoX3BkcDsKIAkJR0VNX0JVR19PTihhbGxvYyk7CiAJCWFsbG9jID0gcGRw
OyAvKiBkZWZlciB0aGUgZnJlZSB1bnRpbCBhZnRlciB0aGUgbG9jayAqLworCQljbGVhcl9wZF9l
bnRyeShwbWw0LCBwbWw0ZSwgdm0tPnNjcmF0Y2hfcGRwKTsKIAl9CiAJc3Bpbl91bmxvY2soJnBt
bDQtPmxvY2spOwogdW53aW5kOgpAQCAtMTU5NSwyMCArMTU3MywxNiBAQCBzdGF0aWMgaW50IGdl
bjhfcHJlYWxsb2NhdGVfdG9wX2xldmVsX3BkcChzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQpCiAJ
CWlmIChJU19FUlIocGQpKQogCQkJZ290byB1bndpbmQ7CiAKLQkJaW5pdF9wZF93aXRoX3BhZ2Uo
dm0sIHBkLCB2bS0+c2NyYXRjaF9wdCk7Ci0JCWdlbjhfcHBndHRfc2V0X3BkcGUocGRwLCBwZCwg
cGRwZSk7Ci0KLQkJYXRvbWljX2luYygmcGRwLT51c2VkKTsKKwkJaW5pdF9wZCh2bSwgcGQsIHZt
LT5zY3JhdGNoX3B0KTsKKwkJc2V0X3BkX2VudHJ5KHBkcCwgcGRwZSwgcGQpOwogCX0KIAotCWF0
b21pY19pbmMoJnBkcC0+dXNlZCk7IC8qIG5ldmVyIHJlbW92ZSAqLwotCiAJcmV0dXJuIDA7CiAK
IHVud2luZDoKIAlzdGFydCAtPSBmcm9tOwogCWdlbjhfZm9yX2VhY2hfcGRwZShwZCwgcGRwLCBm
cm9tLCBzdGFydCwgcGRwZSkgewotCQlnZW44X3BwZ3R0X3NldF9wZHBlKHBkcCwgdm0tPnNjcmF0
Y2hfcGQsIHBkcGUpOworCQljbGVhcl9wZF9lbnRyeShwZHAsIHBkcGUsIHZtLT5zY3JhdGNoX3Bk
KTsKIAkJZnJlZV9wZCh2bSwgcGQpOwogCX0KIAlhdG9taWNfc2V0KCZwZHAtPnVzZWQsIDApOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaAppbmRleCBkMGUwOTA1YWNiYmIuLjU3YTY4ZWY0
ZWRhNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKQEAgLTcyLDkgKzcyLDYgQEAg
c3RydWN0IGludGVsX2d0OwogCiB0eXBlZGVmIHUzMiBnZW42X3B0ZV90OwogdHlwZWRlZiB1NjQg
Z2VuOF9wdGVfdDsKLXR5cGVkZWYgdTY0IGdlbjhfcGRlX3Q7Ci10eXBlZGVmIHU2NCBnZW44X3Bw
Z3R0X3BkcGVfdDsKLXR5cGVkZWYgdTY0IGdlbjhfcHBndHRfcG1sNGVfdDsKIAogI2RlZmluZSBn
Z3R0X3RvdGFsX2VudHJpZXMoZ2d0dCkgKChnZ3R0KS0+dm0udG90YWwgPj4gUEFHRV9TSElGVCkK
IAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
