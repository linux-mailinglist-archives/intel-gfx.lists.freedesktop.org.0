Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F40692E7C43
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Dec 2020 21:23:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D4CF894E3;
	Wed, 30 Dec 2020 20:23:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADBC4894E3
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Dec 2020 20:23:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23466545-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Dec 2020 20:23:09 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Dec 2020 20:23:09 +0000
Message-Id: <20201230202309.23982-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/dp: Track pm_qos per connector
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

U2luY2UgbXVsdGlwbGUgY29ubmVjdG9ycyBtYXkgcnVuIGludGVsX2RwX2F1eF94ZmVyIGNvbm5j
dXJyZW50bHksIGEKc2luZ2xlIGdsb2JhbCBwbV9xb3MgZG9lcyBub3Qgc3VmZmljZS4gKE9uZSBj
b25uZWN0b3IgbWF5IGRpc2FibGUgdGhlCmRtYS1sYXRlbmN5IGJvb3N0IHByZW1hdHVyZWx5IHdo
aWxlIHRoZSBzZWNvbmQgaXMgc3RpbGwgZGVwZW5kaW5nIG9uCml0LikgSW5zdGVhZCBvZiBhIHNp
bmdsZSBnbG9iYWwgcG1fcW9zLCB0cmFjayB0aGUgcG1fcW9zIHJlcXVlc3QgZm9yCmVhY2ggaW50
ZWxfZHAuCgp2MjogTW92ZSB0aGUgcG1fcW9zIHNldHVwL3RlYXJkb3duIHRvIGludGVsX2RwX2F1
eF9pbml0L2ZpbmkKCkZpeGVzOiA5ZWUzMmZlYTVmZTggKCJkcm0vaTkxNTogaXJxLWRyaXZlIHRo
ZSBkcCBhdXggY29tbXVuaWNhdGlvbiIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KUmV2
aWV3ZWQtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCB8IDMgKysrCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAgICAgICB8IDggKysrKysrLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgICAgICAgICAgIHwgNSAt
LS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgICAgICAg
fCAzIC0tLQogNCBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmgKaW5kZXggYjg2YmExYmRiYWEzLi4xMDY3YmQwNzNjOTUgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCkBAIC0xNDYzLDYg
KzE0NjMsOSBAQCBzdHJ1Y3QgaW50ZWxfZHAgewogCQlib29sIHJnYl90b195Y2JjcjsKIAl9IGRm
cDsKIAorCS8qIFRvIGNvbnRyb2wgd2FrZXVwIGxhdGVuY3ksIGUuZy4gZm9yIGlycS1kcml2ZW4g
ZHAgYXV4IHRyYW5zZmVycy4gKi8KKwlzdHJ1Y3QgcG1fcW9zX3JlcXVlc3QgcG1fcW9zOworCiAJ
LyogRGlzcGxheSBzdHJlYW0gY29tcHJlc3Npb24gdGVzdGluZyAqLwogCWJvb2wgZm9yY2VfZHNj
X2VuOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggZjBlOGFh
YWM0MTNjLi44YTAwZTYwOTA4NWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMKQEAgLTE1MTIsNyArMTUxMiw3IEBAIGludGVsX2RwX2F1eF94ZmVyKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsCiAJICogbG93ZXN0IHBvc3NpYmxlIHdha2V1cCBsYXRlbmN5IGFuZCBz
byBwcmV2ZW50IHRoZSBjcHUgZnJvbSBnb2luZyBpbnRvCiAJICogZGVlcCBzbGVlcCBzdGF0ZXMu
CiAJICovCi0JY3B1X2xhdGVuY3lfcW9zX3VwZGF0ZV9yZXF1ZXN0KCZpOTE1LT5wbV9xb3MsIDAp
OworCWNwdV9sYXRlbmN5X3Fvc191cGRhdGVfcmVxdWVzdCgmaW50ZWxfZHAtPnBtX3FvcywgMCk7
CiAKIAlpbnRlbF9kcF9jaGVja19lZHAoaW50ZWxfZHApOwogCkBAIC0xNjQ1LDcgKzE2NDUsNyBA
QCBpbnRlbF9kcF9hdXhfeGZlcihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCiAJcmV0ID0g
cmVjdl9ieXRlczsKIG91dDoKLQljcHVfbGF0ZW5jeV9xb3NfdXBkYXRlX3JlcXVlc3QoJmk5MTUt
PnBtX3FvcywgUE1fUU9TX0RFRkFVTFRfVkFMVUUpOworCWNwdV9sYXRlbmN5X3Fvc191cGRhdGVf
cmVxdWVzdCgmaW50ZWxfZHAtPnBtX3FvcywgUE1fUU9TX0RFRkFVTFRfVkFMVUUpOwogCiAJaWYg
KHZkZCkKIAkJZWRwX3BhbmVsX3ZkZF9vZmYoaW50ZWxfZHAsIGZhbHNlKTsKQEAgLTE5MjEsNiAr
MTkyMSw5IEBAIHN0YXRpYyBpOTE1X3JlZ190IHRnbF9hdXhfZGF0YV9yZWcoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwgaW50IGluZGV4KQogc3RhdGljIHZvaWQKIGludGVsX2RwX2F1eF9maW5p
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiB7CisJaWYgKGNwdV9sYXRlbmN5X3Fvc19yZXF1
ZXN0X2FjdGl2ZSgmaW50ZWxfZHAtPnBtX3FvcykpCisJCWNwdV9sYXRlbmN5X3Fvc19yZW1vdmVf
cmVxdWVzdCgmaW50ZWxfZHAtPnBtX3Fvcyk7CisKIAlrZnJlZShpbnRlbF9kcC0+YXV4Lm5hbWUp
OwogfQogCkBAIC0xOTczLDYgKzE5NzYsNyBAQCBpbnRlbF9kcF9hdXhfaW5pdChzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKQogCQkJCQkgICAgICAgZW5jb2Rlci0+YmFzZS5uYW1lKTsKIAogCWlu
dGVsX2RwLT5hdXgudHJhbnNmZXIgPSBpbnRlbF9kcF9hdXhfdHJhbnNmZXI7CisJY3B1X2xhdGVu
Y3lfcW9zX2FkZF9yZXF1ZXN0KCZpbnRlbF9kcC0+cG1fcW9zLCBQTV9RT1NfREVGQVVMVF9WQUxV
RSk7CiB9CiAKIGJvb2wgaW50ZWxfZHBfc291cmNlX3N1cHBvcnRzX2hicjIoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCmluZGV4IDU3MDhlMTFkOTE3Yi4u
MjQ5Zjc2NTk5M2Y3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTU3OCw4ICs1NzgsNiBA
QCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX2h3X3Byb2JlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKIAogCXBjaV9zZXRfbWFzdGVyKHBkZXYpOwogCi0JY3B1X2xhdGVuY3lfcW9z
X2FkZF9yZXF1ZXN0KCZkZXZfcHJpdi0+cG1fcW9zLCBQTV9RT1NfREVGQVVMVF9WQUxVRSk7Ci0K
IAlpbnRlbF9ndF9pbml0X3dvcmthcm91bmRzKGRldl9wcml2KTsKIAogCS8qIE9uIHRoZSA5NDVH
L0dNLCB0aGUgY2hpcHNldCByZXBvcnRzIHRoZSBNU0kgY2FwYWJpbGl0eSBvbiB0aGUKQEAgLTYy
Niw3ICs2MjQsNiBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX2h3X3Byb2JlKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKIGVycl9tc2k6CiAJaWYgKHBkZXYtPm1zaV9lbmFibGVk
KQogCQlwY2lfZGlzYWJsZV9tc2kocGRldik7Ci0JY3B1X2xhdGVuY3lfcW9zX3JlbW92ZV9yZXF1
ZXN0KCZkZXZfcHJpdi0+cG1fcW9zKTsKIGVycl9tZW1fcmVnaW9uczoKIAlpbnRlbF9tZW1vcnlf
cmVnaW9uc19kcml2ZXJfcmVsZWFzZShkZXZfcHJpdik7CiBlcnJfZ2d0dDoKQEAgLTY0OCw4ICs2
NDUsNiBAQCBzdGF0aWMgdm9pZCBpOTE1X2RyaXZlcl9od19yZW1vdmUoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQogCiAJaWYgKHBkZXYtPm1zaV9lbmFibGVkKQogCQlwY2lfZGlz
YWJsZV9tc2kocGRldik7Ci0KLQljcHVfbGF0ZW5jeV9xb3NfcmVtb3ZlX3JlcXVlc3QoJmRldl9w
cml2LT5wbV9xb3MpOwogfQogCiAvKioKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IGUzOGEx
MGQ1YzEyOC4uNWU1YmNlZjIwZTMzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTg5MSw5
ICs4OTEsNiBAQCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSB7CiAKIAlib29sIGRpc3BsYXlfaXJx
c19lbmFibGVkOwogCi0JLyogVG8gY29udHJvbCB3YWtldXAgbGF0ZW5jeSwgZS5nLiBmb3IgaXJx
LWRyaXZlbiBkcCBhdXggdHJhbnNmZXJzLiAqLwotCXN0cnVjdCBwbV9xb3NfcmVxdWVzdCBwbV9x
b3M7Ci0KIAkvKiBTaWRlYmFuZCBtYWlsYm94IHByb3RlY3Rpb24gKi8KIAlzdHJ1Y3QgbXV0ZXgg
c2JfbG9jazsKIAlzdHJ1Y3QgcG1fcW9zX3JlcXVlc3Qgc2JfcW9zOwotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
