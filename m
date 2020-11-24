Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFB12C2451
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 12:38:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAAF46E20B;
	Tue, 24 Nov 2020 11:38:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D25E6E226;
 Tue, 24 Nov 2020 11:38:28 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 1CCACAC2E;
 Tue, 24 Nov 2020 11:38:27 +0000 (UTC)
From: Thomas Zimmermann <tzimmermann@suse.de>
To: airlied@linux.ie,
	daniel@ffwll.ch
Date: Tue, 24 Nov 2020 12:38:10 +0100
Message-Id: <20201124113824.19994-2-tzimmermann@suse.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201124113824.19994-1-tzimmermann@suse.de>
References: <20201124113824.19994-1-tzimmermann@suse.de>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/15] drm/amdgpu: Remove references to struct
 drm_device.pdev
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
Cc: nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 amd-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>, spice-devel@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VXNpbmcgc3RydWN0IGRybV9kZXZpY2UucGRldiBpcyBkZXByZWNhdGVkLiBDb252ZXJ0IGFtZGdw
dSB0byBzdHJ1Y3QKZHJtX2RldmljZS5kZXYuIE5vIGZ1bmN0aW9uYWwgY2hhbmdlcy4KClNpZ25l
ZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgpDYzogQWxl
eCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPgpDYzogQ2hyaXN0aWFuIEvDtm5p
ZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9kZXZpY2UuYyAgfCAyMyArKysrKysrKysrLS0tLS0tLS0tLS0KIGRyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kaXNwbGF5LmMgfCAgMyArKy0KIGRyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kcnYuYyAgICAgfCAgMSAtCiBkcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfZmIuYyAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9nZW0uYyAgICAgfCAxMCArKysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9pMmMuYyAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X2ttcy5jICAgICB8IDEwICsrKystLS0tLQogNyBmaWxlcyBjaGFuZ2VkLCAy
NSBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfZGV2aWNlLmMKaW5kZXggNzU2MGIwNWU0YWMxLi5kNjE3MTUxMzM4MjUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmMKQEAgLTE0MDQsOSAr
MTQwNCw5IEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9zd2l0Y2hlcm9vX3NldF9zdGF0ZShzdHJ1Y3Qg
cGNpX2RldiAqcGRldiwKIAkJLyogZG9uJ3Qgc3VzcGVuZCBvciByZXN1bWUgY2FyZCBub3JtYWxs
eSAqLwogCQlkZXYtPnN3aXRjaF9wb3dlcl9zdGF0ZSA9IERSTV9TV0lUQ0hfUE9XRVJfQ0hBTkdJ
Tkc7CiAKLQkJcGNpX3NldF9wb3dlcl9zdGF0ZShkZXYtPnBkZXYsIFBDSV9EMCk7Ci0JCWFtZGdw
dV9kZXZpY2VfbG9hZF9wY2lfc3RhdGUoZGV2LT5wZGV2KTsKLQkJciA9IHBjaV9lbmFibGVfZGV2
aWNlKGRldi0+cGRldik7CisJCXBjaV9zZXRfcG93ZXJfc3RhdGUocGRldiwgUENJX0QwKTsKKwkJ
YW1kZ3B1X2RldmljZV9sb2FkX3BjaV9zdGF0ZShwZGV2KTsKKwkJciA9IHBjaV9lbmFibGVfZGV2
aWNlKHBkZXYpOwogCQlpZiAocikKIAkJCURSTV9XQVJOKCJwY2lfZW5hYmxlX2RldmljZSBmYWls
ZWQgKCVkKVxuIiwgcik7CiAJCWFtZGdwdV9kZXZpY2VfcmVzdW1lKGRldiwgdHJ1ZSk7CkBAIC0x
NDE4LDEwICsxNDE4LDEwIEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9zd2l0Y2hlcm9vX3NldF9zdGF0
ZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwKIAkJZHJtX2ttc19oZWxwZXJfcG9sbF9kaXNhYmxlKGRl
dik7CiAJCWRldi0+c3dpdGNoX3Bvd2VyX3N0YXRlID0gRFJNX1NXSVRDSF9QT1dFUl9DSEFOR0lO
RzsKIAkJYW1kZ3B1X2RldmljZV9zdXNwZW5kKGRldiwgdHJ1ZSk7Ci0JCWFtZGdwdV9kZXZpY2Vf
Y2FjaGVfcGNpX3N0YXRlKGRldi0+cGRldik7CisJCWFtZGdwdV9kZXZpY2VfY2FjaGVfcGNpX3N0
YXRlKHBkZXYpOwogCQkvKiBTaHV0IGRvd24gdGhlIGRldmljZSAqLwotCQlwY2lfZGlzYWJsZV9k
ZXZpY2UoZGV2LT5wZGV2KTsKLQkJcGNpX3NldF9wb3dlcl9zdGF0ZShkZXYtPnBkZXYsIFBDSV9E
M2NvbGQpOworCQlwY2lfZGlzYWJsZV9kZXZpY2UocGRldik7CisJCXBjaV9zZXRfcG93ZXJfc3Rh
dGUocGRldiwgUENJX0QzY29sZCk7CiAJCWRldi0+c3dpdGNoX3Bvd2VyX3N0YXRlID0gRFJNX1NX
SVRDSF9QT1dFUl9PRkY7CiAJfQogfQpAQCAtMTY4NCw4ICsxNjg0LDcgQEAgc3RhdGljIHZvaWQg
YW1kZ3B1X2RldmljZV9lbmFibGVfdmlydHVhbF9kaXNwbGF5KHN0cnVjdCBhbWRncHVfZGV2aWNl
ICphZGV2KQogCWFkZXYtPmVuYWJsZV92aXJ0dWFsX2Rpc3BsYXkgPSBmYWxzZTsKIAogCWlmIChh
bWRncHVfdmlydHVhbF9kaXNwbGF5KSB7Ci0JCXN0cnVjdCBkcm1fZGV2aWNlICpkZGV2ID0gYWRl
dl90b19kcm0oYWRldik7Ci0JCWNvbnN0IGNoYXIgKnBjaV9hZGRyZXNzX25hbWUgPSBwY2lfbmFt
ZShkZGV2LT5wZGV2KTsKKwkJY29uc3QgY2hhciAqcGNpX2FkZHJlc3NfbmFtZSA9IHBjaV9uYW1l
KGFkZXYtPnBkZXYpOwogCQljaGFyICpwY2lhZGRzdHIsICpwY2lhZGRzdHJfdG1wLCAqcGNpYWRk
bmFtZV90bXAsICpwY2lhZGRuYW1lOwogCiAJCXBjaWFkZHN0ciA9IGtzdHJkdXAoYW1kZ3B1X3Zp
cnR1YWxfZGlzcGxheSwgR0ZQX0tFUk5FTCk7CkBAIC0zMzc1LDcgKzMzNzQsNyBAQCBpbnQgYW1k
Z3B1X2RldmljZV9pbml0KHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LAogCQl9CiAJfQogCi0J
cGNpX2VuYWJsZV9wY2llX2Vycm9yX3JlcG9ydGluZyhhZGV2LT5kZGV2LnBkZXYpOworCXBjaV9l
bmFibGVfcGNpZV9lcnJvcl9yZXBvcnRpbmcoYWRldi0+cGRldik7CiAKIAkvKiBQb3N0IGNhcmQg
aWYgbmVjZXNzYXJ5ICovCiAJaWYgKGFtZGdwdV9kZXZpY2VfbmVlZF9wb3N0KGFkZXYpKSB7CkBA
IC00OTIyLDggKzQ5MjEsOCBAQCBwY2lfZXJzX3Jlc3VsdF90IGFtZGdwdV9wY2lfZXJyb3JfZGV0
ZWN0ZWQoc3RydWN0IHBjaV9kZXYgKnBkZXYsIHBjaV9jaGFubmVsX3N0YQogCWNhc2UgcGNpX2No
YW5uZWxfaW9fbm9ybWFsOgogCQlyZXR1cm4gUENJX0VSU19SRVNVTFRfQ0FOX1JFQ09WRVI7CiAJ
LyogRmF0YWwgZXJyb3IsIHByZXBhcmUgZm9yIHNsb3QgcmVzZXQgKi8KLQljYXNlIHBjaV9jaGFu
bmVsX2lvX2Zyb3plbjoJCQotCQkvKgkJCisJY2FzZSBwY2lfY2hhbm5lbF9pb19mcm96ZW46CisJ
CS8qCiAJCSAqIENhbmNlbCBhbmQgd2FpdCBmb3IgYWxsIFREUnMgaW4gcHJvZ3Jlc3MgaWYgZmFp
bGluZyB0bwogCQkgKiBzZXQgIGFkZXYtPmluX2dwdV9yZXNldCBpbiBhbWRncHVfZGV2aWNlX2xv
Y2tfYWRldgogCQkgKgpAQCAtNTAxNCw3ICs1MDEzLDcgQEAgcGNpX2Vyc19yZXN1bHRfdCBhbWRn
cHVfcGNpX3Nsb3RfcmVzZXQoc3RydWN0IHBjaV9kZXYgKnBkZXYpCiAJCWdvdG8gb3V0OwogCX0K
IAotCWFkZXYtPmluX3BjaV9lcnJfcmVjb3ZlcnkgPSB0cnVlOwkKKwlhZGV2LT5pbl9wY2lfZXJy
X3JlY292ZXJ5ID0gdHJ1ZTsKIAlyID0gYW1kZ3B1X2RldmljZV9wcmVfYXNpY19yZXNldChhZGV2
LCBOVUxMLCAmbmVlZF9mdWxsX3Jlc2V0KTsKIAlhZGV2LT5pbl9wY2lfZXJyX3JlY292ZXJ5ID0g
ZmFsc2U7CiAJaWYgKHIpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rpc3Bs
YXkuYwppbmRleCAyZThhOGI1NzYzOWYuLjc3OTc0YzM5ODFmYSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfZGlzcGxheS5jCkBAIC03MjEsMTMgKzcyMSwxNCBAQCBhbWRn
cHVfZGlzcGxheV91c2VyX2ZyYW1lYnVmZmVyX2NyZWF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LAogCQkJCSAgICAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdiwKIAkJCQkgICAgICAgY29u
c3Qgc3RydWN0IGRybV9tb2RlX2ZiX2NtZDIgKm1vZGVfY21kKQogeworCXN0cnVjdCBhbWRncHVf
ZGV2aWNlICphZGV2ID0gZHJtX3RvX2FkZXYoZGV2KTsKIAlzdHJ1Y3QgZHJtX2dlbV9vYmplY3Qg
Km9iajsKIAlzdHJ1Y3QgYW1kZ3B1X2ZyYW1lYnVmZmVyICphbWRncHVfZmI7CiAJaW50IHJldDsK
IAogCW9iaiA9IGRybV9nZW1fb2JqZWN0X2xvb2t1cChmaWxlX3ByaXYsIG1vZGVfY21kLT5oYW5k
bGVzWzBdKTsKIAlpZiAob2JqID09ICBOVUxMKSB7Ci0JCWRldl9lcnIoJmRldi0+cGRldi0+ZGV2
LCAiTm8gR0VNIG9iamVjdCBhc3NvY2lhdGVkIHRvIGhhbmRsZSAweCUwOFgsICIKKwkJZGV2X2Vy
cigmYWRldi0+cGRldi0+ZGV2LCAiTm8gR0VNIG9iamVjdCBhc3NvY2lhdGVkIHRvIGhhbmRsZSAw
eCUwOFgsICIKIAkJCSJjYW4ndCBjcmVhdGUgZnJhbWVidWZmZXJcbiIsIG1vZGVfY21kLT5oYW5k
bGVzWzBdKTsKIAkJcmV0dXJuIEVSUl9QVFIoLUVOT0VOVCk7CiAJfQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X2Rydi5jCmluZGV4IDYyNDI5NGUwYjlmMy4uYmRjMzVjM2Y4NTIzIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZHJ2LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rydi5jCkBAIC0xMTkyLDcgKzExOTIs
NiBAQCBzdGF0aWMgaW50IGFtZGdwdV9wY2lfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCiAJ
aWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIAotCWRkZXYtPnBkZXYgPSBwZGV2OwogCXBjaV9zZXRf
ZHJ2ZGF0YShwZGV2LCBkZGV2KTsKIAogCXJldCA9IGFtZGdwdV9kcml2ZXJfbG9hZF9rbXMoYWRl
diwgZW50LT5kcml2ZXJfZGF0YSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfZmIuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9mYi5j
CmluZGV4IDBiZjdkMzZjNjY4Ni4uNTFjZDQ5YzZmMzhmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZmIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfZmIuYwpAQCAtMjcxLDcgKzI3MSw3IEBAIHN0YXRpYyBpbnQgYW1kZ3B1ZmJf
Y3JlYXRlKHN0cnVjdCBkcm1fZmJfaGVscGVyICpoZWxwZXIsCiAJRFJNX0lORk8oImZiIGRlcHRo
IGlzICVkXG4iLCBmYi0+Zm9ybWF0LT5kZXB0aCk7CiAJRFJNX0lORk8oIiAgIHBpdGNoIGlzICVk
XG4iLCBmYi0+cGl0Y2hlc1swXSk7CiAKLQl2Z2Ffc3dpdGNoZXJvb19jbGllbnRfZmJfc2V0KGFk
ZXZfdG9fZHJtKGFkZXYpLT5wZGV2LCBpbmZvKTsKKwl2Z2Ffc3dpdGNoZXJvb19jbGllbnRfZmJf
c2V0KGFkZXYtPnBkZXYsIGluZm8pOwogCXJldHVybiAwOwogCiBvdXQ6CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfZ2VtLmMKaW5kZXggYzlmOTRmYmViMDE4Li4xOGI4Zjg5NmI3YTMg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9nZW0uYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZ2VtLmMKQEAgLTYxNCw3ICs2MTQs
NyBAQCBpbnQgYW1kZ3B1X2dlbV92YV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lk
ICpkYXRhLAogCWludCByID0gMDsKIAogCWlmIChhcmdzLT52YV9hZGRyZXNzIDwgQU1ER1BVX1ZB
X1JFU0VSVkVEX1NJWkUpIHsKLQkJZGV2X2RiZygmZGV2LT5wZGV2LT5kZXYsCisJCWRldl9kYmco
ZGV2LT5kZXYsCiAJCQkidmFfYWRkcmVzcyAweCVMWCBpcyBpbiByZXNlcnZlZCBhcmVhIDB4JUxY
XG4iLAogCQkJYXJncy0+dmFfYWRkcmVzcywgQU1ER1BVX1ZBX1JFU0VSVkVEX1NJWkUpOwogCQly
ZXR1cm4gLUVJTlZBTDsKQEAgLTYyMiw3ICs2MjIsNyBAQCBpbnQgYW1kZ3B1X2dlbV92YV9pb2N0
bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAogCiAJaWYgKGFyZ3MtPnZhX2Fk
ZHJlc3MgPj0gQU1ER1BVX0dNQ19IT0xFX1NUQVJUICYmCiAJICAgIGFyZ3MtPnZhX2FkZHJlc3Mg
PCBBTURHUFVfR01DX0hPTEVfRU5EKSB7Ci0JCWRldl9kYmcoJmRldi0+cGRldi0+ZGV2LAorCQlk
ZXZfZGJnKGRldi0+ZGV2LAogCQkJInZhX2FkZHJlc3MgMHglTFggaXMgaW4gVkEgaG9sZSAweCVM
WC0weCVMWFxuIiwKIAkJCWFyZ3MtPnZhX2FkZHJlc3MsIEFNREdQVV9HTUNfSE9MRV9TVEFSVCwK
IAkJCUFNREdQVV9HTUNfSE9MRV9FTkQpOwpAQCAtNjM0LDE0ICs2MzQsMTQgQEAgaW50IGFtZGdw
dV9nZW1fdmFfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAl2bV9z
aXplID0gYWRldi0+dm1fbWFuYWdlci5tYXhfcGZuICogQU1ER1BVX0dQVV9QQUdFX1NJWkU7CiAJ
dm1fc2l6ZSAtPSBBTURHUFVfVkFfUkVTRVJWRURfU0laRTsKIAlpZiAoYXJncy0+dmFfYWRkcmVz
cyArIGFyZ3MtPm1hcF9zaXplID4gdm1fc2l6ZSkgewotCQlkZXZfZGJnKCZkZXYtPnBkZXYtPmRl
diwKKwkJZGV2X2RiZyhkZXYtPmRldiwKIAkJCSJ2YV9hZGRyZXNzIDB4JWxseCBpcyBpbiB0b3Ag
cmVzZXJ2ZWQgYXJlYSAweCVsbHhcbiIsCiAJCQlhcmdzLT52YV9hZGRyZXNzICsgYXJncy0+bWFw
X3NpemUsIHZtX3NpemUpOwogCQlyZXR1cm4gLUVJTlZBTDsKIAl9CiAKIAlpZiAoKGFyZ3MtPmZs
YWdzICYgfnZhbGlkX2ZsYWdzKSAmJiAoYXJncy0+ZmxhZ3MgJiB+cHJ0X2ZsYWdzKSkgewotCQlk
ZXZfZGJnKCZkZXYtPnBkZXYtPmRldiwgImludmFsaWQgZmxhZ3MgY29tYmluYXRpb24gMHglMDhY
XG4iLAorCQlkZXZfZGJnKGRldi0+ZGV2LCAiaW52YWxpZCBmbGFncyBjb21iaW5hdGlvbiAweCUw
OFhcbiIsCiAJCQlhcmdzLT5mbGFncyk7CiAJCXJldHVybiAtRUlOVkFMOwogCX0KQEAgLTY1Myw3
ICs2NTMsNyBAQCBpbnQgYW1kZ3B1X2dlbV92YV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LCB2b2lkICpkYXRhLAogCWNhc2UgQU1ER1BVX1ZBX09QX1JFUExBQ0U6CiAJCWJyZWFrOwogCWRl
ZmF1bHQ6Ci0JCWRldl9kYmcoJmRldi0+cGRldi0+ZGV2LCAidW5zdXBwb3J0ZWQgb3BlcmF0aW9u
ICVkXG4iLAorCQlkZXZfZGJnKGRldi0+ZGV2LCAidW5zdXBwb3J0ZWQgb3BlcmF0aW9uICVkXG4i
LAogCQkJYXJncy0+b3BlcmF0aW9uKTsKIAkJcmV0dXJuIC1FSU5WQUw7CiAJfQpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2kyYy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2kyYy5jCmluZGV4IDQ3Y2FkMjNhNmI5ZS4uYmNhNGRkZGQ1
YTE1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfaTJjLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2kyYy5jCkBAIC0xNzYsNyAr
MTc2LDcgQEAgc3RydWN0IGFtZGdwdV9pMmNfY2hhbiAqYW1kZ3B1X2kyY19jcmVhdGUoc3RydWN0
IGRybV9kZXZpY2UgKmRldiwKIAlpMmMtPnJlYyA9ICpyZWM7CiAJaTJjLT5hZGFwdGVyLm93bmVy
ID0gVEhJU19NT0RVTEU7CiAJaTJjLT5hZGFwdGVyLmNsYXNzID0gSTJDX0NMQVNTX0REQzsKLQlp
MmMtPmFkYXB0ZXIuZGV2LnBhcmVudCA9ICZkZXYtPnBkZXYtPmRldjsKKwlpMmMtPmFkYXB0ZXIu
ZGV2LnBhcmVudCA9IGRldi0+ZGV2OwogCWkyYy0+ZGV2ID0gZGV2OwogCWkyY19zZXRfYWRhcGRh
dGEoJmkyYy0+YWRhcHRlciwgaTJjKTsKIAltdXRleF9pbml0KCZpMmMtPm11dGV4KTsKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9rbXMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9rbXMuYwppbmRleCA0YWQ2ZDgwMWJjMjUuLjNmYTQ0
YzMxODA4MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2tt
cy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9rbXMuYwpAQCAtMTQx
LDcgKzE0MSw3IEBAIGludCBhbWRncHVfZHJpdmVyX2xvYWRfa21zKHN0cnVjdCBhbWRncHVfZGV2
aWNlICphZGV2LCB1bnNpZ25lZCBsb25nIGZsYWdzKQogCSAgICAoYW1kZ3B1X2lzX2F0cHhfaHli
cmlkKCkgfHwKIAkgICAgIGFtZGdwdV9oYXNfYXRweF9kZ3B1X3Bvd2VyX2NudGwoKSkgJiYKIAkg
ICAgKChmbGFncyAmIEFNRF9JU19BUFUpID09IDApICYmCi0JICAgICFwY2lfaXNfdGh1bmRlcmJv
bHRfYXR0YWNoZWQoZGV2LT5wZGV2KSkKKwkgICAgIXBjaV9pc190aHVuZGVyYm9sdF9hdHRhY2hl
ZCh0b19wY2lfZGV2KGRldi0+ZGV2KSkpCiAJCWZsYWdzIHw9IEFNRF9JU19QWDsKIAogCS8qIGFt
ZGdwdV9kZXZpY2VfaW5pdCBzaG91bGQgcmVwb3J0IG9ubHkgZmF0YWwgZXJyb3IKQEAgLTE1Miw3
ICsxNTIsNyBAQCBpbnQgYW1kZ3B1X2RyaXZlcl9sb2FkX2ttcyhzdHJ1Y3QgYW1kZ3B1X2Rldmlj
ZSAqYWRldiwgdW5zaWduZWQgbG9uZyBmbGFncykKIAkgKi8KIAlyID0gYW1kZ3B1X2RldmljZV9p
bml0KGFkZXYsIGZsYWdzKTsKIAlpZiAocikgewotCQlkZXZfZXJyKCZkZXYtPnBkZXYtPmRldiwg
IkZhdGFsIGVycm9yIGR1cmluZyBHUFUgaW5pdFxuIik7CisJCWRldl9lcnIoZGV2LT5kZXYsICJG
YXRhbCBlcnJvciBkdXJpbmcgR1BVIGluaXRcbiIpOwogCQlnb3RvIG91dDsKIAl9CiAKQEAgLTE5
Miw3ICsxOTIsNyBAQCBpbnQgYW1kZ3B1X2RyaXZlcl9sb2FkX2ttcyhzdHJ1Y3QgYW1kZ3B1X2Rl
dmljZSAqYWRldiwgdW5zaWduZWQgbG9uZyBmbGFncykKIAogCWFjcGlfc3RhdHVzID0gYW1kZ3B1
X2FjcGlfaW5pdChhZGV2KTsKIAlpZiAoYWNwaV9zdGF0dXMpCi0JCWRldl9kYmcoJmRldi0+cGRl
di0+ZGV2LCAiRXJyb3IgZHVyaW5nIEFDUEkgbWV0aG9kcyBjYWxsXG4iKTsKKwkJZGV2X2RiZyhk
ZXYtPmRldiwgIkVycm9yIGR1cmluZyBBQ1BJIG1ldGhvZHMgY2FsbFxuIik7CiAKIAlpZiAoYWRl
di0+cnVucG0pIHsKIAkJLyogb25seSBuZWVkIHRvIHNraXAgb24gQVRQWCAqLwpAQCAtNzI0LDEw
ICs3MjQsMTAgQEAgaW50IGFtZGdwdV9pbmZvX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
IHZvaWQgKmRhdGEsIHN0cnVjdCBkcm1fZmlsZSAqZmlscCkKIAkJdWludDY0X3Qgdm1fc2l6ZTsK
IAogCQltZW1zZXQoJmRldl9pbmZvLCAwLCBzaXplb2YoZGV2X2luZm8pKTsKLQkJZGV2X2luZm8u
ZGV2aWNlX2lkID0gZGV2LT5wZGV2LT5kZXZpY2U7CisJCWRldl9pbmZvLmRldmljZV9pZCA9IGFk
ZXYtPnBkZXYtPmRldmljZTsKIAkJZGV2X2luZm8uY2hpcF9yZXYgPSBhZGV2LT5yZXZfaWQ7CiAJ
CWRldl9pbmZvLmV4dGVybmFsX3JldiA9IGFkZXYtPmV4dGVybmFsX3Jldl9pZDsKLQkJZGV2X2lu
Zm8ucGNpX3JldiA9IGRldi0+cGRldi0+cmV2aXNpb247CisJCWRldl9pbmZvLnBjaV9yZXYgPSBh
ZGV2LT5wZGV2LT5yZXZpc2lvbjsKIAkJZGV2X2luZm8uZmFtaWx5ID0gYWRldi0+ZmFtaWx5Owog
CQlkZXZfaW5mby5udW1fc2hhZGVyX2VuZ2luZXMgPSBhZGV2LT5nZnguY29uZmlnLm1heF9zaGFk
ZXJfZW5naW5lczsKIAkJZGV2X2luZm8ubnVtX3NoYWRlcl9hcnJheXNfcGVyX2VuZ2luZSA9IGFk
ZXYtPmdmeC5jb25maWcubWF4X3NoX3Blcl9zZTsKLS0gCjIuMjkuMgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
