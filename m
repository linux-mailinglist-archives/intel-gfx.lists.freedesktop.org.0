Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8A39CA1C
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 09:22:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 907B06E1CE;
	Mon, 26 Aug 2019 07:22:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 292BC6E1C4
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 07:22:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18262691-1500050 
 for multiple; Mon, 26 Aug 2019 08:21:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 08:21:37 +0100
Message-Id: <20190826072149.9447-16-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190826072149.9447-1-chris@chris-wilson.co.uk>
References: <20190826072149.9447-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/28] drm/i915: Push the i915_active.retire
 into a worker
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgd2UgbmVlZCB0byB1c2UgYSBtdXRleCB0byBzZXJpYWxpc2UgaTkxNV9hY3RpdmUgYWN0aXZh
dGlvbgooYmVjYXVzZSB3ZSB3YW50IHRvIGFsbG93IHRoZSBjYWxsYmFjayB0byBzbGVlcCksIHdl
IG5lZWQgdG8gcHVzaCB0aGUKaTkxNV9hY3RpdmUucmV0aXJlIGludG8gYSB3b3JrZXIgY2FsbGJh
Y2sgaW4gY2FzZSB3ZSBnZXQgbmVlZCB0byByZXRpcmUKZnJvbSBhbiBhdG9taWMgY29udGV4dC4K
ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpS
ZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIC4u
Li9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jICB8ICA0ICsrLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyAgIHwgIDEgKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jICAgICAgIHwgIDIgKysKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sLmMgICB8ICAxICsKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMgICAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfYWN0aXZlLmMgICAgICAgICAgICB8IDM0ICsrKysrKysrKysrKysrKystLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlX3R5cGVzLmggICAgICB8IDEzICsrKysr
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMgICAgICAgICAgICAgICB8ICAyICsr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9hY3RpdmUuYyAgfCAgNiArKy0t
CiA5IGZpbGVzIGNoYW5nZWQsIDU1IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jCmluZGV4
IGZjNDBkYzFmZGJjYy4uNjQyOGI4ZGQ3MGQzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jCkBAIC0yMDYsNiArMjA2LDcgQEAgc3RhdGlj
IGludCBmcm9udGJ1ZmZlcl9hY3RpdmUoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpCiAJcmV0dXJu
IDA7CiB9CiAKK19faTkxNV9hY3RpdmVfY2FsbAogc3RhdGljIHZvaWQgZnJvbnRidWZmZXJfcmV0
aXJlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogewogCXN0cnVjdCBpbnRlbF9mcm9udGJ1ZmZl
ciAqZnJvbnQgPQpAQCAtMjU3LDcgKzI1OCw4IEBAIGludGVsX2Zyb250YnVmZmVyX2dldChzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogCWtyZWZfaW5pdCgmZnJvbnQtPnJlZik7CiAJ
YXRvbWljX3NldCgmZnJvbnQtPmJpdHMsIDApOwogCWk5MTVfYWN0aXZlX2luaXQoaTkxNSwgJmZy
b250LT53cml0ZSwKLQkJCSBmcm9udGJ1ZmZlcl9hY3RpdmUsIGZyb250YnVmZmVyX3JldGlyZSk7
CisJCQkgZnJvbnRidWZmZXJfYWN0aXZlLAorCQkJIGk5MTVfYWN0aXZlX21heV9zbGVlcChmcm9u
dGJ1ZmZlcl9yZXRpcmUpKTsKIAogCXNwaW5fbG9jaygmaTkxNS0+ZmJfdHJhY2tpbmcubG9jayk7
CiAJaWYgKG9iai0+ZnJvbnRidWZmZXIpIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fY29udGV4dC5jCmluZGV4IDIwZWU4OWUxMjBiMy4uZTkwM2YwZDk5M2ZkIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKQEAgLTg0OSw2ICs4NDks
NyBAQCBzdHJ1Y3QgY29udGV4dF9iYXJyaWVyX3Rhc2sgewogCXZvaWQgKmRhdGE7CiB9OwogCitf
X2k5MTVfYWN0aXZlX2NhbGwKIHN0YXRpYyB2b2lkIGNiX3JldGlyZShzdHJ1Y3QgaTkxNV9hY3Rp
dmUgKmJhc2UpCiB7CiAJc3RydWN0IGNvbnRleHRfYmFycmllcl90YXNrICpjYiA9IGNvbnRhaW5l
cl9vZihiYXNlLCB0eXBlb2YoKmNiKSwgYmFzZSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9jb250ZXh0LmMKaW5kZXggYzA0OTU4MTFmNDkzLi5hZTdjMjY4OWVmMzAgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMKQEAgLTEzOCw2ICsxMzgsNyBAQCBzdGF0aWMg
dm9pZCBfX2NvbnRleHRfdW5waW5fc3RhdGUoc3RydWN0IGk5MTVfdm1hICp2bWEpCiAJX19pOTE1
X3ZtYV91bnBpbih2bWEpOwogfQogCitfX2k5MTVfYWN0aXZlX2NhbGwKIHN0YXRpYyB2b2lkIF9f
aW50ZWxfY29udGV4dF9yZXRpcmUoc3RydWN0IGk5MTVfYWN0aXZlICphY3RpdmUpCiB7CiAJc3Ry
dWN0IGludGVsX2NvbnRleHQgKmNlID0gY29udGFpbmVyX29mKGFjdGl2ZSwgdHlwZW9mKCpjZSks
IGFjdGl2ZSk7CkBAIC0xNTAsNiArMTUxLDcgQEAgc3RhdGljIHZvaWQgX19pbnRlbF9jb250ZXh0
X3JldGlyZShzdHJ1Y3QgaTkxNV9hY3RpdmUgKmFjdGl2ZSkKIAogCWludGVsX3RpbWVsaW5lX3Vu
cGluKGNlLT50aW1lbGluZSk7CiAJaW50ZWxfcmluZ191bnBpbihjZS0+cmluZyk7CisKIAlpbnRl
bF9jb250ZXh0X3B1dChjZSk7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZV9wb29sLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfcG9vbC5jCmluZGV4IDRjZDU0YzU2OTkxMS4uMzZmYThiN2U1MjRkIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbC5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sLmMKQEAgLTYxLDYgKzYxLDcgQEAg
c3RhdGljIGludCBwb29sX2FjdGl2ZShzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKIAlyZXR1cm4g
MDsKIH0KIAorX19pOTE1X2FjdGl2ZV9jYWxsCiBzdGF0aWMgdm9pZCBwb29sX3JldGlyZShzdHJ1
Y3QgaTkxNV9hY3RpdmUgKnJlZikKIHsKIAlzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2xfbm9kZSAq
bm9kZSA9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGlu
ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYwppbmRleCA5Y2Iw
MWQ5ODI4ZjEuLmQ4MjRiY2E0M2Q1NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfdGltZWxpbmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90
aW1lbGluZS5jCkBAIC0xMzYsNiArMTM2LDcgQEAgc3RhdGljIHZvaWQgX19pZGxlX2NhY2hlbGlu
ZV9mcmVlKHN0cnVjdCBpbnRlbF90aW1lbGluZV9jYWNoZWxpbmUgKmNsKQogCWtmcmVlKGNsKTsK
IH0KIAorX19pOTE1X2FjdGl2ZV9jYWxsCiBzdGF0aWMgdm9pZCBfX2NhY2hlbGluZV9yZXRpcmUo
c3RydWN0IGk5MTVfYWN0aXZlICphY3RpdmUpCiB7CiAJc3RydWN0IGludGVsX3RpbWVsaW5lX2Nh
Y2hlbGluZSAqY2wgPQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3Rp
dmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKaW5kZXggNWU5ZjgyNmZm
MTMyLi5mYmE3N2QyODRmYmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
YWN0aXZlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYwpAQCAtMTI4
LDYgKzEyOCw3IEBAIF9fYWN0aXZlX3JldGlyZShzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKIAli
b29sIHJldGlyZSA9IGZhbHNlOwogCiAJbG9ja2RlcF9hc3NlcnRfaGVsZCgmcmVmLT5tdXRleCk7
CisJR0VNX0JVR19PTihpOTE1X2FjdGl2ZV9pc19pZGxlKHJlZikpOwogCiAJLyogcmV0dXJuIHRo
ZSB1bnVzZWQgbm9kZXMgdG8gb3VyIHNsYWJjYWNoZSAtLSBmbHVzaGluZyB0aGUgYWxsb2NhdG9y
ICovCiAJaWYgKGF0b21pY19kZWNfYW5kX3Rlc3QoJnJlZi0+Y291bnQpKSB7CkBAIC0xNTMsNiAr
MTU0LDE5IEBAIF9fYWN0aXZlX3JldGlyZShzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKIAkJcmVm
LT5yZXRpcmUocmVmKTsKIH0KIAorc3RhdGljIHZvaWQKK2FjdGl2ZV93b3JrKHN0cnVjdCB3b3Jr
X3N0cnVjdCAqd3JrKQoreworCXN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmID0gY29udGFpbmVyX29m
KHdyaywgdHlwZW9mKCpyZWYpLCB3b3JrKTsKKworCUdFTV9CVUdfT04oIWF0b21pY19yZWFkKCZy
ZWYtPmNvdW50KSk7CisJaWYgKGF0b21pY19hZGRfdW5sZXNzKCZyZWYtPmNvdW50LCAtMSwgMSkp
CisJCXJldHVybjsKKworCW11dGV4X2xvY2soJnJlZi0+bXV0ZXgpOworCV9fYWN0aXZlX3JldGly
ZShyZWYpOworfQorCiBzdGF0aWMgdm9pZAogYWN0aXZlX3JldGlyZShzdHJ1Y3QgaTkxNV9hY3Rp
dmUgKnJlZikKIHsKQEAgLTE2MCw4ICsxNzQsMTMgQEAgYWN0aXZlX3JldGlyZShzdHJ1Y3QgaTkx
NV9hY3RpdmUgKnJlZikKIAlpZiAoYXRvbWljX2FkZF91bmxlc3MoJnJlZi0+Y291bnQsIC0xLCAx
KSkKIAkJcmV0dXJuOwogCi0JLyogT25lIGFjdGl2ZSBtYXkgYmUgZmx1c2hlZCBmcm9tIGluc2lk
ZSB0aGUgYWNxdWlyZSBvZiBhbm90aGVyICovCi0JbXV0ZXhfbG9ja19uZXN0ZWQoJnJlZi0+bXV0
ZXgsIFNJTkdMRV9ERVBUSF9ORVNUSU5HKTsKKwkvKiBJZiB3ZSBhcmUgaW5zaWRlIGludGVycnVw
dCBjb250ZXh0IChmZW5jZSBzaWduYWxpbmcpLCBkZWZlciAqLworCWlmIChyZWYtPmZsYWdzICYg
STkxNV9BQ1RJVkVfUkVUSVJFX1NMRUVQUyB8fAorCSAgICAhbXV0ZXhfdHJ5bG9jaygmcmVmLT5t
dXRleCkpIHsKKwkJcXVldWVfd29yayhzeXN0ZW1fdW5ib3VuZF93cSwgJnJlZi0+d29yayk7CisJ
CXJldHVybjsKKwl9CisKIAlfX2FjdGl2ZV9yZXRpcmUocmVmKTsKIH0KIApAQCAtMjM2LDEyICsy
NTUsMTYgQEAgdm9pZCBfX2k5MTVfYWN0aXZlX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUsCiAJCQl2b2lkICgqcmV0aXJlKShzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZiksCiAJCQlz
dHJ1Y3QgbG9ja19jbGFzc19rZXkgKmtleSkKIHsKKwl1bnNpZ25lZCBsb25nIGJpdHM7CisKIAlk
ZWJ1Z19hY3RpdmVfaW5pdChyZWYpOwogCiAJcmVmLT5pOTE1ID0gaTkxNTsKIAlyZWYtPmZsYWdz
ID0gMDsKIAlyZWYtPmFjdGl2ZSA9IGFjdGl2ZTsKLQlyZWYtPnJldGlyZSA9IHJldGlyZTsKKwly
ZWYtPnJldGlyZSA9IHB0cl91bnBhY2tfYml0cyhyZXRpcmUsICZiaXRzLCAyKTsKKwlpZiAoYml0
cyAmIEk5MTVfQUNUSVZFX01BWV9TTEVFUCkKKwkJcmVmLT5mbGFncyB8PSBJOTE1X0FDVElWRV9S
RVRJUkVfU0xFRVBTOwogCiAJcmVmLT5leGNsID0gTlVMTDsKIAlyZWYtPnRyZWUgPSBSQl9ST09U
OwpAQCAtMjQ5LDYgKzI3Miw3IEBAIHZvaWQgX19pOTE1X2FjdGl2ZV9pbml0KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1LAogCWluaXRfbGxpc3RfaGVhZCgmcmVmLT5wcmVhbGxvY2F0ZWRf
YmFycmllcnMpOwogCWF0b21pY19zZXQoJnJlZi0+Y291bnQsIDApOwogCV9fbXV0ZXhfaW5pdCgm
cmVmLT5tdXRleCwgImk5MTVfYWN0aXZlIiwga2V5KTsKKwlJTklUX1dPUksoJnJlZi0+d29yaywg
YWN0aXZlX3dvcmspOwogfQogCiBzdGF0aWMgYm9vbCBfX19fYWN0aXZlX2RlbF9iYXJyaWVyKHN0
cnVjdCBpOTE1X2FjdGl2ZSAqcmVmLApAQCAtNDk5LDYgKzUyMyw3IEBAIGludCBpOTE1X2FjdGl2
ZV93YWl0KHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogCWlmICh3YWl0X29uX2JpdCgmcmVmLT5m
bGFncywgSTkxNV9BQ1RJVkVfR1JBQl9CSVQsIFRBU0tfS0lMTEFCTEUpKQogCQlyZXR1cm4gLUVJ
TlRSOwogCisJZmx1c2hfd29yaygmcmVmLT53b3JrKTsKIAlpZiAoIWk5MTVfYWN0aXZlX2lzX2lk
bGUocmVmKSkKIAkJcmV0dXJuIC1FQlVTWTsKIApAQCAtNTQzLDggKzU2OCw5IEBAIGludCBpOTE1
X3JlcXVlc3RfYXdhaXRfYWN0aXZlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCBzdHJ1Y3QgaTkx
NV9hY3RpdmUgKnJlZikKIHZvaWQgaTkxNV9hY3RpdmVfZmluaShzdHJ1Y3QgaTkxNV9hY3RpdmUg
KnJlZikKIHsKIAlkZWJ1Z19hY3RpdmVfZmluaShyZWYpOwotCUdFTV9CVUdfT04oIVJCX0VNUFRZ
X1JPT1QoJnJlZi0+dHJlZSkpOwogCUdFTV9CVUdfT04oYXRvbWljX3JlYWQoJnJlZi0+Y291bnQp
KTsKKwlHRU1fQlVHX09OKHdvcmtfcGVuZGluZygmcmVmLT53b3JrKSk7CisJR0VNX0JVR19PTigh
UkJfRU1QVFlfUk9PVCgmcmVmLT50cmVlKSk7CiAJbXV0ZXhfZGVzdHJveSgmcmVmLT5tdXRleCk7
CiB9CiAjZW5kaWYKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZl
X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZV90eXBlcy5oCmluZGV4
IDg2ZTdhMjMyZWEzYy4uMDIxMTY3ZjAwMDRkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2FjdGl2ZV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
YWN0aXZlX3R5cGVzLmgKQEAgLTEzLDYgKzEzLDkgQEAKICNpbmNsdWRlIDxsaW51eC9tdXRleC5o
PgogI2luY2x1ZGUgPGxpbnV4L3JidHJlZS5oPgogI2luY2x1ZGUgPGxpbnV4L3JjdXBkYXRlLmg+
CisjaW5jbHVkZSA8bGludXgvd29ya3F1ZXVlLmg+CisKKyNpbmNsdWRlICJpOTE1X3V0aWxzLmgi
CiAKIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlOwogc3RydWN0IGk5MTVfYWN0aXZlX3JlcXVlc3Q7
CkBAIC00NCw2ICs0NywxMSBAQCBzdHJ1Y3QgaTkxNV9hY3RpdmVfcmVxdWVzdCB7CiAKIHN0cnVj
dCBhY3RpdmVfbm9kZTsKIAorI2RlZmluZSBJOTE1X0FDVElWRV9NQVlfU0xFRVAgQklUKDApCisK
KyNkZWZpbmUgX19pOTE1X2FjdGl2ZV9jYWxsIF9fYWxpZ25lZCg0KQorI2RlZmluZSBpOTE1X2Fj
dGl2ZV9tYXlfc2xlZXAoZm4pIHB0cl9wYWNrX2JpdHMoJihmbiksIEk5MTVfQUNUSVZFX01BWV9T
TEVFUCwgMikKKwogc3RydWN0IGk5MTVfYWN0aXZlIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNTsKIApAQCAtNTcsMTEgKzY1LDE0IEBAIHN0cnVjdCBpOTE1X2FjdGl2ZSB7CiAJc3Ry
dWN0IGRtYV9mZW5jZV9jYiBleGNsX2NiOwogCiAJdW5zaWduZWQgbG9uZyBmbGFnczsKLSNkZWZp
bmUgSTkxNV9BQ1RJVkVfR1JBQl9CSVQgMAorI2RlZmluZSBJOTE1X0FDVElWRV9SRVRJUkVfU0xF
RVBTIEJJVCgwKQorI2RlZmluZSBJOTE1X0FDVElWRV9HUkFCX0JJVCAxCiAKIAlpbnQgKCphY3Rp
dmUpKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKTsKIAl2b2lkICgqcmV0aXJlKShzdHJ1Y3QgaTkx
NV9hY3RpdmUgKnJlZik7CiAKKwlzdHJ1Y3Qgd29ya19zdHJ1Y3Qgd29yazsKKwogCXN0cnVjdCBs
bGlzdF9oZWFkIHByZWFsbG9jYXRlZF9iYXJyaWVyczsKIH07CiAKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Zt
YS5jCmluZGV4IGFmZDlkN2EzNmIyYS4uNzMwYzAxY2ZhMzZmIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
dm1hLmMKQEAgLTkxLDYgKzkxLDcgQEAgc3RhdGljIGludCBfX2k5MTVfdm1hX2FjdGl2ZShzdHJ1
Y3QgaTkxNV9hY3RpdmUgKnJlZikKIAlyZXR1cm4gaTkxNV92bWFfdHJ5Z2V0KGFjdGl2ZV90b192
bWEocmVmKSkgPyAwIDogLUVOT0VOVDsKIH0KIAorX19pOTE1X2FjdGl2ZV9jYWxsCiBzdGF0aWMg
dm9pZCBfX2k5MTVfdm1hX3JldGlyZShzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKIHsKIAlpOTE1
X3ZtYV9wdXQoYWN0aXZlX3RvX3ZtYShyZWYpKTsKQEAgLTEwNDgsNiArMTA0OSw3IEBAIGludCBp
OTE1X3ZtYV91bmJpbmQoc3RydWN0IGk5MTVfdm1hICp2bWEpCiAJCXJldHVybiAtRUJVU1k7CiAJ
fQogCisJR0VNX0JVR19PTihpOTE1X3ZtYV9pc19hY3RpdmUodm1hKSk7CiAJaWYgKCFkcm1fbW1f
bm9kZV9hbGxvY2F0ZWQoJnZtYS0+bm9kZSkpCiAJCXJldHVybiAwOwogCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9hY3RpdmUuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2FjdGl2ZS5jCmluZGV4IDc3ZDg0NGFjOGI3MS4uZDVh
Yzk5NDRkMDkzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkx
NV9hY3RpdmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9hY3Rp
dmUuYwpAQCAtMTIxLDcgKzEyMSw3IEBAIF9fbGl2ZV9hY3RpdmVfc2V0dXAoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCiAJfQogCiAJaTkxNV9hY3RpdmVfcmVsZWFzZSgmYWN0aXZlLT5i
YXNlKTsKLQlpZiAoYWN0aXZlLT5yZXRpcmVkICYmIGNvdW50KSB7CisJaWYgKFJFQURfT05DRShh
Y3RpdmUtPnJldGlyZWQpICYmIGNvdW50KSB7CiAJCXByX2VycigiaTkxNV9hY3RpdmUgcmV0aXJl
ZCBiZWZvcmUgc3VibWlzc2lvbiFcbiIpOwogCQllcnIgPSAtRUlOVkFMOwogCX0KQEAgLTE2MSw3
ICsxNjEsNyBAQCBzdGF0aWMgaW50IGxpdmVfYWN0aXZlX3dhaXQodm9pZCAqYXJnKQogCX0KIAog
CWk5MTVfYWN0aXZlX3dhaXQoJmFjdGl2ZS0+YmFzZSk7Ci0JaWYgKCFhY3RpdmUtPnJldGlyZWQp
IHsKKwlpZiAoIVJFQURfT05DRShhY3RpdmUtPnJldGlyZWQpKSB7CiAJCXByX2VycigiaTkxNV9h
Y3RpdmUgbm90IHJldGlyZWQgYWZ0ZXIgd2FpdGluZyFcbiIpOwogCQllcnIgPSAtRUlOVkFMOwog
CX0KQEAgLTIwMCw3ICsyMDAsNyBAQCBzdGF0aWMgaW50IGxpdmVfYWN0aXZlX3JldGlyZSh2b2lk
ICphcmcpCiAJaWYgKGlndF9mbHVzaF90ZXN0KGk5MTUsIEk5MTVfV0FJVF9MT0NLRUQpKQogCQll
cnIgPSAtRUlPOwogCi0JaWYgKCFhY3RpdmUtPnJldGlyZWQpIHsKKwlpZiAoIVJFQURfT05DRShh
Y3RpdmUtPnJldGlyZWQpKSB7CiAJCXByX2VycigiaTkxNV9hY3RpdmUgbm90IHJldGlyZWQgYWZ0
ZXIgZmx1c2hpbmchXG4iKTsKIAkJZXJyID0gLUVJTlZBTDsKIAl9Ci0tIAoyLjIzLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
