Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D6CBB28F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 13:01:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F2856E874;
	Mon, 23 Sep 2019 11:01:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87C846E870
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 11:01:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18585097-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 12:01:00 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 12:00:55 +0100
Message-Id: <20190923110056.15176-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190923110056.15176-1-chris@chris-wilson.co.uk>
References: <20190923110056.15176-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/4] drm/i915: Only enqueue already completed
 requests
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

SWYgd2UgYXJlIGFza2VkIHRvIHN1Ym1pdCBhIGNvbXBsZXRlZCByZXF1ZXN0LCBqdXN0IG1vdmUg
aXQgb250byB0aGUKYWN0aXZlLWxpc3Qgd2l0aG91dCBtb2RpZnlpbmcgaXQncyBwYXlsb2FkLiBJ
ZiB3ZSB0cnkgdG8gZW1pdCB0aGUKbW9kaWZpZWQgcGF5bG9hZCBvZiBhIGNvbXBsZXRlZCByZXF1
ZXN0LCB3ZSByaXNrIHJhY2luZyB3aXRoIHRoZQpyaW5nLT5oZWFkIHVwZGF0ZSBkdXJpbmcgcmV0
aXJlbWVudCB3aGljaCBtYXkgYWR2YW5jZSB0aGUgaGVhZCBwYXN0IG91cgpicmVhZGNydW1iIGFu
ZCBzbyB3ZSBnZW5lcmF0ZSBhIHdhcm5pbmcgZm9yIHRoZSBlbWlzc2lvbiBiZWluZyBiZWhpbmQK
dGhlIFJJTkdfSEVBRC4KCnYyOiBDb21tZW50YXJ5IGZvciB0aGUgc25lYWt5LCBzaGFyZWQgcmVz
cG9uc2liaWxpdHkgYmV0d2VlbiBmdW5jdGlvbnMuCnYzOiBTcGVsbGluZyBtaXN0YWtlcyBhbmQg
Ym9udXMgYXNzZXJ0aW9uCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+ClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgNjYgKysrKysrKysr
KysrKysrKysrLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5j
IHwgNDQgKysrKysrKysrKysrKy0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1
ZXN0LmggfCAgMiArLQogMyBmaWxlcyBjaGFuZ2VkLCA3NCBpbnNlcnRpb25zKCspLCAzOCBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IDBhNDgxMmViZDE4
NC4uYmM5YmFkZDljMDQ2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtNzk5
LDYgKzc5OSwxNyBAQCBzdGF0aWMgYm9vbCBjYW5fbWVyZ2VfcnEoY29uc3Qgc3RydWN0IGk5MTVf
cmVxdWVzdCAqcHJldiwKIAlHRU1fQlVHX09OKHByZXYgPT0gbmV4dCk7CiAJR0VNX0JVR19PTigh
YXNzZXJ0X3ByaW9yaXR5X3F1ZXVlKHByZXYsIG5leHQpKTsKIAorCS8qCisJICogV2UgZG8gbm90
IHN1Ym1pdCBrbm93biBjb21wbGV0ZWQgcmVxdWVzdHMuIFRoZXJlZm9yZSBpZiB0aGUgbmV4dAor
CSAqIHJlcXVlc3QgaXMgYWxyZWFkeSBjb21wbGV0ZWQsIHdlIGNhbiBwcmV0ZW5kIHRvIG1lcmdl
IGl0IGluCisJICogd2l0aCB0aGUgcHJldmlvdXMgY29udGV4dCAoYW5kIHdlIHdpbGwgc2tpcCB1
cGRhdGluZyB0aGUgRUxTUAorCSAqIGFuZCB0cmFja2luZykuIFRodXMgaG9wZWZ1bGx5IGtlZXBp
bmcgdGhlIEVMU1AgZnVsbCB3aXRoIGFjdGl2ZQorCSAqIGNvbnRleHRzLCBkZXNwaXRlIHRoZSBi
ZXN0IGVmZm9ydHMgb2YgcHJlZW1wdC10by1idXN5IHRvIGNvbmZ1c2UKKwkgKiB1cy4KKwkgKi8K
KwlpZiAoaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChuZXh0KSkKKwkJcmV0dXJuIHRydWU7CisKIAlp
ZiAoIWNhbl9tZXJnZV9jdHgocHJldi0+aHdfY29udGV4dCwgbmV4dC0+aHdfY29udGV4dCkpCiAJ
CXJldHVybiBmYWxzZTsKIApAQCAtMTE4MSwyMSArMTE5Miw2IEBAIHN0YXRpYyB2b2lkIGV4ZWNs
aXN0c19kZXF1ZXVlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAkJCQljb250aW51
ZTsKIAkJCX0KIAotCQkJaWYgKGk5MTVfcmVxdWVzdF9jb21wbGV0ZWQocnEpKSB7Ci0JCQkJdmUt
PnJlcXVlc3QgPSBOVUxMOwotCQkJCXZlLT5iYXNlLmV4ZWNsaXN0cy5xdWV1ZV9wcmlvcml0eV9o
aW50ID0gSU5UX01JTjsKLQkJCQlyYl9lcmFzZV9jYWNoZWQocmIsICZleGVjbGlzdHMtPnZpcnR1
YWwpOwotCQkJCVJCX0NMRUFSX05PREUocmIpOwotCi0JCQkJcnEtPmVuZ2luZSA9IGVuZ2luZTsK
LQkJCQlfX2k5MTVfcmVxdWVzdF9zdWJtaXQocnEpOwotCi0JCQkJc3Bpbl91bmxvY2soJnZlLT5i
YXNlLmFjdGl2ZS5sb2NrKTsKLQotCQkJCXJiID0gcmJfZmlyc3RfY2FjaGVkKCZleGVjbGlzdHMt
PnZpcnR1YWwpOwotCQkJCWNvbnRpbnVlOwotCQkJfQotCiAJCQlpZiAobGFzdCAmJiAhY2FuX21l
cmdlX3JxKGxhc3QsIHJxKSkgewogCQkJCXNwaW5fdW5sb2NrKCZ2ZS0+YmFzZS5hY3RpdmUubG9j
ayk7CiAJCQkJcmV0dXJuOyAvKiBsZWF2ZSB0aGlzIGZvciBhbm90aGVyICovCkBAIC0xMjQ5LDEx
ICsxMjQ1LDIzIEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19kZXF1ZXVlKHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSkKIAkJCQlHRU1fQlVHX09OKHZlLT5zaWJsaW5nc1swXSAhPSBlbmdp
bmUpOwogCQkJfQogCi0JCQlfX2k5MTVfcmVxdWVzdF9zdWJtaXQocnEpOwotCQkJaWYgKCFpOTE1
X3JlcXVlc3RfY29tcGxldGVkKHJxKSkgeworCQkJaWYgKF9faTkxNV9yZXF1ZXN0X3N1Ym1pdChy
cSkpIHsKIAkJCQlzdWJtaXQgPSB0cnVlOwogCQkJCWxhc3QgPSBycTsKIAkJCX0KKworCQkJLyoK
KwkJCSAqIEhtbSwgd2UgaGF2ZSBhIGJ1bmNoIG9mIHZpcnR1YWwgZW5naW5lIHJlcXVlc3RzLAor
CQkJICogYnV0IHRoZSBmaXJzdCBvbmUgd2FzIGFscmVhZHkgY29tcGxldGVkICh0aGFua3MKKwkJ
CSAqIHByZWVtcHQtdG8tYnVzeSEpLiBLZWVwIGxvb2tpbmcgYXQgdGhlIHZlbmcgcXVldWUKKwkJ
CSAqIHVudGlsIHdlIGhhdmUgbm8gbW9yZSByZWxldmFudCByZXF1ZXN0cyAoaS5lLgorCQkJICog
dGhlIG5vcm1hbCBzdWJtaXQgcXVldWUgaGFzIGhpZ2hlciBwcmlvcml0eSkuCisJCQkgKi8KKwkJ
CWlmICghc3VibWl0KSB7CisJCQkJc3Bpbl91bmxvY2soJnZlLT5iYXNlLmFjdGl2ZS5sb2NrKTsK
KwkJCQlyYiA9IHJiX2ZpcnN0X2NhY2hlZCgmZXhlY2xpc3RzLT52aXJ0dWFsKTsKKwkJCQljb250
aW51ZTsKKwkJCX0KIAkJfQogCiAJCXNwaW5fdW5sb2NrKCZ2ZS0+YmFzZS5hY3RpdmUubG9jayk7
CkBAIC0xMjY2LDggKzEyNzQsNyBAQCBzdGF0aWMgdm9pZCBleGVjbGlzdHNfZGVxdWV1ZShzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJCWludCBpOwogCiAJCXByaW9saXN0X2Zvcl9l
YWNoX3JlcXVlc3RfY29uc3VtZShycSwgcm4sIHAsIGkpIHsKLQkJCWlmIChpOTE1X3JlcXVlc3Rf
Y29tcGxldGVkKHJxKSkKLQkJCQlnb3RvIHNraXA7CisJCQlib29sIG1lcmdlID0gdHJ1ZTsKIAog
CQkJLyoKIAkJCSAqIENhbiB3ZSBjb21iaW5lIHRoaXMgcmVxdWVzdCB3aXRoIHRoZSBjdXJyZW50
IHBvcnQ/CkBAIC0xMzA4LDE0ICsxMzE1LDIzIEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19kZXF1
ZXVlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAkJCQkgICAgY3R4X3NpbmdsZV9w
b3J0X3N1Ym1pc3Npb24ocnEtPmh3X2NvbnRleHQpKQogCQkJCQlnb3RvIGRvbmU7CiAKLQkJCQkq
cG9ydCA9IGV4ZWNsaXN0c19zY2hlZHVsZV9pbihsYXN0LCBwb3J0IC0gZXhlY2xpc3RzLT5wZW5k
aW5nKTsKLQkJCQlwb3J0Kys7CisJCQkJbWVyZ2UgPSBmYWxzZTsKIAkJCX0KIAotCQkJbGFzdCA9
IHJxOwotCQkJc3VibWl0ID0gdHJ1ZTsKLXNraXA6Ci0JCQlfX2k5MTVfcmVxdWVzdF9zdWJtaXQo
cnEpOworCQkJaWYgKF9faTkxNV9yZXF1ZXN0X3N1Ym1pdChycSkpIHsKKwkJCQlpZiAoIW1lcmdl
KSB7CisJCQkJCSpwb3J0ID0gZXhlY2xpc3RzX3NjaGVkdWxlX2luKGxhc3QsIHBvcnQgLSBleGVj
bGlzdHMtPnBlbmRpbmcpOworCQkJCQlwb3J0Kys7CisJCQkJCWxhc3QgPSBOVUxMOworCQkJCX0K
KworCQkJCUdFTV9CVUdfT04obGFzdCAmJgorCQkJCQkgICAhY2FuX21lcmdlX2N0eChsYXN0LT5o
d19jb250ZXh0LAorCQkJCQkJCSAgcnEtPmh3X2NvbnRleHQpKTsKKworCQkJCXN1Ym1pdCA9IHRy
dWU7CisJCQkJbGFzdCA9IHJxOworCQkJfQogCQl9CiAKIAkJcmJfZXJhc2VfY2FjaGVkKCZwLT5u
b2RlLCAmZXhlY2xpc3RzLT5xdWV1ZSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCmlu
ZGV4IDliZDg1MzhiMTkwNy4uYTg5MTY0MTI3NTliIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlcXVlc3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
cXVlc3QuYwpAQCAtMzc3LDkgKzM3NywxMCBAQCBfX2k5MTVfcmVxdWVzdF9hd2FpdF9leGVjdXRp
b24oc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCiAJcmV0dXJuIDA7CiB9CiAKLXZvaWQgX19pOTE1
X3JlcXVlc3Rfc3VibWl0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QpCitib29sIF9faTkx
NV9yZXF1ZXN0X3N1Ym1pdChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0KQogewogCXN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IHJlcXVlc3QtPmVuZ2luZTsKKwlib29sIHJlc3Vs
dCA9IGZhbHNlOwogCiAJR0VNX1RSQUNFKCIlcyBmZW5jZSAlbGx4OiVsbGQsIGN1cnJlbnQgJWRc
biIsCiAJCSAgZW5naW5lLT5uYW1lLApAQCAtMzg5LDYgKzM5MCwyNSBAQCB2b2lkIF9faTkxNV9y
ZXF1ZXN0X3N1Ym1pdChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0KQogCUdFTV9CVUdfT04o
IWlycXNfZGlzYWJsZWQoKSk7CiAJbG9ja2RlcF9hc3NlcnRfaGVsZCgmZW5naW5lLT5hY3RpdmUu
bG9jayk7CiAKKwkvKgorCSAqIFdpdGggdGhlIGFkdmVudCBvZiBwcmVlbXB0LXRvLWJ1c3ksIHdl
IGZyZXF1ZW50bHkgZW5jb3VudGVyCisJICogcmVxdWVzdHMgdGhhdCB3ZSBoYXZlIHVuc3VibWl0
dGVkIGZyb20gSFcsIGJ1dCBsZWZ0IHJ1bm5pbmcKKwkgKiB1bnRpbCB0aGUgbmV4dCBhY2sgYW5k
IHNvIGhhdmUgY29tcGxldGVkIGluIHRoZSBtZWFudGltZS4gT24KKwkgKiByZXN1Ym1pc3Npb24g
b2YgdGhhdCBjb21wbGV0ZWQgcmVxdWVzdCwgd2UgY2FuIHNraXAKKwkgKiB1cGRhdGluZyB0aGUg
cGF5bG9hZCwgYW5kIGV4ZWNsaXN0cyBjYW4gZXZlbiBza2lwIHN1Ym1pdHRpbmcKKwkgKiB0aGUg
cmVxdWVzdC4KKwkgKgorCSAqIFdlIG11c3QgcmVtb3ZlIHRoZSByZXF1ZXN0IGZyb20gdGhlIGNh
bGxlcidzIHByaW9yaXR5IHF1ZXVlLAorCSAqIGFuZCB0aGUgY2FsbGVyIG11c3Qgb25seSBjYWxs
IHVzIHdoZW4gdGhlIHJlcXVlc3QgaXMgaW4gdGhlaXIKKwkgKiBwcmlvcml0eSBxdWV1ZSwgdW5k
ZXIgdGhlIGFjdGl2ZS5sb2NrLiBUaGlzIGVuc3VyZXMgdGhhdCB0aGUKKwkgKiByZXF1ZXN0IGhh
cyAqbm90KiB5ZXQgYmVlbiByZXRpcmVkIGFuZCB3ZSBjYW4gc2FmZWx5IG1vdmUKKwkgKiB0aGUg
cmVxdWVzdCBpbnRvIHRoZSBlbmdpbmUtPmFjdGl2ZS5saXN0IHdoZXJlIGl0IHdpbGwgYmUKKwkg
KiBkcm9wcGVkIHVwb24gcmV0aXJpbmcuIChPdGhlcndpc2UgaWYgcmVzdWJtaXQgYSAqcmV0aXJl
ZCoKKwkgKiByZXF1ZXN0LCB0aGlzIHdvdWxkIGJlIGEgaG9ycmlibGUgdXNlLWFmdGVyLWZyZWUu
KQorCSAqLworCWlmIChpOTE1X3JlcXVlc3RfY29tcGxldGVkKHJlcXVlc3QpKQorCQlnb3RvIHhm
ZXI7CisKIAlpZiAoaTkxNV9nZW1fY29udGV4dF9pc19iYW5uZWQocmVxdWVzdC0+Z2VtX2NvbnRl
eHQpKQogCQlpOTE1X3JlcXVlc3Rfc2tpcChyZXF1ZXN0LCAtRUlPKTsKIApAQCAtNDEyLDEzICs0
MzIsMTggQEAgdm9pZCBfX2k5MTVfcmVxdWVzdF9zdWJtaXQoc3RydWN0IGk5MTVfcmVxdWVzdCAq
cmVxdWVzdCkKIAkgICAgaTkxNV9zd19mZW5jZV9zaWduYWxlZCgmcmVxdWVzdC0+c2VtYXBob3Jl
KSkKIAkJZW5naW5lLT5zYXR1cmF0ZWQgfD0gcmVxdWVzdC0+c2NoZWQuc2VtYXBob3JlczsKIAot
CS8qIFdlIG1heSBiZSByZWN1cnNpbmcgZnJvbSB0aGUgc2lnbmFsIGNhbGxiYWNrIG9mIGFub3Ro
ZXIgaTkxNSBmZW5jZSAqLwotCXNwaW5fbG9ja19uZXN0ZWQoJnJlcXVlc3QtPmxvY2ssIFNJTkdM
RV9ERVBUSF9ORVNUSU5HKTsKKwllbmdpbmUtPmVtaXRfZmluaV9icmVhZGNydW1iKHJlcXVlc3Qs
CisJCQkJICAgICByZXF1ZXN0LT5yaW5nLT52YWRkciArIHJlcXVlc3QtPnBvc3RmaXgpOworCisJ
dHJhY2VfaTkxNV9yZXF1ZXN0X2V4ZWN1dGUocmVxdWVzdCk7CisJZW5naW5lLT5zZXJpYWwrKzsK
KwlyZXN1bHQgPSB0cnVlOwogCi0JbGlzdF9tb3ZlX3RhaWwoJnJlcXVlc3QtPnNjaGVkLmxpbmss
ICZlbmdpbmUtPmFjdGl2ZS5yZXF1ZXN0cyk7Cit4ZmVyOgkvKiBXZSBtYXkgYmUgcmVjdXJzaW5n
IGZyb20gdGhlIHNpZ25hbCBjYWxsYmFjayBvZiBhbm90aGVyIGk5MTUgZmVuY2UgKi8KKwlzcGlu
X2xvY2tfbmVzdGVkKCZyZXF1ZXN0LT5sb2NrLCBTSU5HTEVfREVQVEhfTkVTVElORyk7CiAKLQlH
RU1fQlVHX09OKHRlc3RfYml0KEk5MTVfRkVOQ0VfRkxBR19BQ1RJVkUsICZyZXF1ZXN0LT5mZW5j
ZS5mbGFncykpOwotCXNldF9iaXQoSTkxNV9GRU5DRV9GTEFHX0FDVElWRSwgJnJlcXVlc3QtPmZl
bmNlLmZsYWdzKTsKKwlpZiAoIXRlc3RfYW5kX3NldF9iaXQoSTkxNV9GRU5DRV9GTEFHX0FDVElW
RSwgJnJlcXVlc3QtPmZlbmNlLmZsYWdzKSkKKwkJbGlzdF9tb3ZlX3RhaWwoJnJlcXVlc3QtPnNj
aGVkLmxpbmssICZlbmdpbmUtPmFjdGl2ZS5yZXF1ZXN0cyk7CiAKIAlpZiAodGVzdF9iaXQoRE1B
X0ZFTkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQsICZyZXF1ZXN0LT5mZW5jZS5mbGFncykgJiYK
IAkgICAgIXRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwgJnJlcXVlc3QtPmZl
bmNlLmZsYWdzKSAmJgpAQCAtNDI5LDEyICs0NTQsNyBAQCB2b2lkIF9faTkxNV9yZXF1ZXN0X3N1
Ym1pdChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0KQogCiAJc3Bpbl91bmxvY2soJnJlcXVl
c3QtPmxvY2spOwogCi0JZW5naW5lLT5lbWl0X2ZpbmlfYnJlYWRjcnVtYihyZXF1ZXN0LAotCQkJ
CSAgICAgcmVxdWVzdC0+cmluZy0+dmFkZHIgKyByZXF1ZXN0LT5wb3N0Zml4KTsKLQotCWVuZ2lu
ZS0+c2VyaWFsKys7Ci0KLQl0cmFjZV9pOTE1X3JlcXVlc3RfZXhlY3V0ZShyZXF1ZXN0KTsKKwly
ZXR1cm4gcmVzdWx0OwogfQogCiB2b2lkIGk5MTVfcmVxdWVzdF9zdWJtaXQoc3RydWN0IGk5MTVf
cmVxdWVzdCAqcmVxdWVzdCkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVxdWVzdC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmgKaW5kZXggYjE4
ZjQ5NTI4ZGVkLi5lYzViYjRjMmU1YWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVxdWVzdC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5o
CkBAIC0yOTIsNyArMjkyLDcgQEAgaW50IGk5MTVfcmVxdWVzdF9hd2FpdF9leGVjdXRpb24oc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnEsCiAKIHZvaWQgaTkxNV9yZXF1ZXN0X2FkZChzdHJ1Y3QgaTkx
NV9yZXF1ZXN0ICpycSk7CiAKLXZvaWQgX19pOTE1X3JlcXVlc3Rfc3VibWl0KHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJlcXVlc3QpOworYm9vbCBfX2k5MTVfcmVxdWVzdF9zdWJtaXQoc3RydWN0IGk5
MTVfcmVxdWVzdCAqcmVxdWVzdCk7CiB2b2lkIGk5MTVfcmVxdWVzdF9zdWJtaXQoc3RydWN0IGk5
MTVfcmVxdWVzdCAqcmVxdWVzdCk7CiAKIHZvaWQgaTkxNV9yZXF1ZXN0X3NraXAoc3RydWN0IGk5
MTVfcmVxdWVzdCAqcmVxdWVzdCwgaW50IGVycm9yKTsKLS0gCjIuMjMuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
