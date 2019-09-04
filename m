Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2D0A8690
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 18:26:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 679FB89C07;
	Wed,  4 Sep 2019 16:26:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CE2989C09
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 16:26:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 09:26:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,467,1559545200"; d="scan'208";a="187681871"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 04 Sep 2019 09:26:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Sep 2019 19:26:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 19:26:14 +0300
Message-Id: <20190904162625.15048-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
References: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/15] drm/i915: Fix skl+ non-scaled pfit modes
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkZp
eCBza2xfdXBkYXRlX3NjYWxlcl9jcnRjKCkgdG8gZGVhbCB3aXRoIGRpZmZlcmVudCBzY2FsaW5n
Cm1vZGVzIGNvcnJlY3RseS4gVGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24gYXNzdW1lcwpEUk1f
TU9ERV9TQ0FMRV9GVUxMU0NSRUVOLiBGb3J0dW5hdGVseSB3ZSBkb24ndCBleHBvc2UgYW55CmJv
cmRlciBwcm9wZXJ0aWVzIGN1cnJlbnRseSBzbyB0aGUgY29kZSBkb2VzIGFjdHVhbGx5IGVuZAp1
cCBkb2luZyB0aGUgcmlnaHQgdGhpbmcgKGFzc2lnbmluZyBhIHNjYWxlciBmb3IgcGZpdCkuClRo
ZSBjb2RlIGRvZXMgbmVlZCB0byBiZSBmaXhlZCBiZWZvcmUgYW55IGJvcmRlcnMgYXJlCmV4cG9z
ZWQuCgpBbHNvIHdlIGhhdmUgcmVkdW5kYW50IGNhbGxzIHRvIHNrbF91cGRhdGVfc2NhbGVyX2Ny
dGMoKSBpbgpkcC9oZG1pIC5jb21wdXRlX2NvbmZpZygpIHdoaWNoIGNhbiBiZSBudWtlZC4gVGhl
eSB3ZXJlIGFueXdheQpjYWxsZWQgYmVmb3JlIHdlIGhhZCBldmVuIGNvbXB1dGVkIHRoZSBwZml0
IHN0YXRlIHNvIHdlcmUKYmFzaWNhbGx5IG5vbnNlbnNlLiBUaGUgcmVhbCBjYWxsIHdlIG5lZWQg
dG8ga2VlcCBpcyBpbgppbnRlbF9jcnRjX2F0b21pY19jaGVjaygpLgoKdjI6IERlYWwgd2l0cmgg
c2tsX3VwZGF0ZV9zY2FsZXJfY3J0YygpIGluIGludGVsX2RwX3ljYmNyNDIwX2NvbmZpZygpCgpT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwg
MzggKysrKysrKysrKy0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5oIHwgIDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jICAgICAgfCAxNSAtLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9oZG1pLmMgICAgfCAgNiAtLS0tCiA0IGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyks
IDQxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKaW5kZXggODRkOGE0ZTJlYzI0Li4xNDAzZTlhYWQwNTcgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC01NDc5LDI4ICs1NDc5LDI4
IEBAIHNrbF91cGRhdGVfc2NhbGVyKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
LCBib29sIGZvcmNlX2RldGFjaCwKIAlyZXR1cm4gMDsKIH0KIAotLyoqCi0gKiBza2xfdXBkYXRl
X3NjYWxlcl9jcnRjIC0gU3RhZ2VzIHVwZGF0ZSB0byBzY2FsZXIgc3RhdGUgZm9yIGEgZ2l2ZW4g
Y3J0Yy4KLSAqCi0gKiBAc3RhdGU6IGNydGMncyBzY2FsZXIgc3RhdGUKLSAqCi0gKiBSZXR1cm4K
LSAqICAgICAwIC0gc2NhbGVyX3VzYWdlIHVwZGF0ZWQgc3VjY2Vzc2Z1bGx5Ci0gKiAgICBlcnJv
ciAtIHJlcXVlc3RlZCBzY2FsaW5nIGNhbm5vdCBiZSBzdXBwb3J0ZWQgb3Igb3RoZXIgZXJyb3Ig
Y29uZGl0aW9uCi0gKi8KLWludCBza2xfdXBkYXRlX3NjYWxlcl9jcnRjKHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpzdGF0ZSkKK3N0YXRpYyBpbnQgc2tsX3VwZGF0ZV9zY2FsZXJfY3J0YyhzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKLQljb25zdCBzdHJ1Y3QgZHJtX2Rp
c3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9ICZzdGF0ZS0+YmFzZS5hZGp1c3RlZF9tb2RlOwot
CWJvb2wgbmVlZF9zY2FsZXIgPSBmYWxzZTsKKwljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9k
ZSAqYWRqdXN0ZWRfbW9kZSA9CisJCSZjcnRjX3N0YXRlLT5iYXNlLmFkanVzdGVkX21vZGU7CisJ
aW50IHdpZHRoLCBoZWlnaHQ7CiAKLQlpZiAoc3RhdGUtPm91dHB1dF9mb3JtYXQgPT0gSU5URUxf
T1VUUFVUX0ZPUk1BVF9ZQ0JDUjQyMCkKLQkJbmVlZF9zY2FsZXIgPSB0cnVlOworCWlmIChjcnRj
X3N0YXRlLT5wY2hfcGZpdC5lbmFibGVkKSB7CisJCXUzMiBwZml0X3NpemUgPSBjcnRjX3N0YXRl
LT5wY2hfcGZpdC5zaXplOworCisJCXdpZHRoID0gcGZpdF9zaXplID4+IDE2OworCQloZWlnaHQg
PSBwZml0X3NpemUgJiAweGZmZmY7CisJfSBlbHNlIHsKKwkJd2lkdGggPSBhZGp1c3RlZF9tb2Rl
LT5jcnRjX2hkaXNwbGF5OworCQloZWlnaHQgPSBhZGp1c3RlZF9tb2RlLT5jcnRjX3ZkaXNwbGF5
OworCX0KIAotCXJldHVybiBza2xfdXBkYXRlX3NjYWxlcihzdGF0ZSwgIXN0YXRlLT5iYXNlLmFj
dGl2ZSwgU0tMX0NSVENfSU5ERVgsCi0JCQkJICZzdGF0ZS0+c2NhbGVyX3N0YXRlLnNjYWxlcl9p
ZCwKLQkJCQkgc3RhdGUtPnBpcGVfc3JjX3csIHN0YXRlLT5waXBlX3NyY19oLAotCQkJCSBhZGp1
c3RlZF9tb2RlLT5jcnRjX2hkaXNwbGF5LAotCQkJCSBhZGp1c3RlZF9tb2RlLT5jcnRjX3ZkaXNw
bGF5LCBOVUxMLCBuZWVkX3NjYWxlcik7CisJcmV0dXJuIHNrbF91cGRhdGVfc2NhbGVyKGNydGNf
c3RhdGUsICFjcnRjX3N0YXRlLT5iYXNlLmFjdGl2ZSwKKwkJCQkgU0tMX0NSVENfSU5ERVgsCisJ
CQkJICZjcnRjX3N0YXRlLT5zY2FsZXJfc3RhdGUuc2NhbGVyX2lkLAorCQkJCSBjcnRjX3N0YXRl
LT5waXBlX3NyY193LCBjcnRjX3N0YXRlLT5waXBlX3NyY19oLAorCQkJCSB3aWR0aCwgaGVpZ2h0
LCBOVUxMLAorCQkJCSBjcnRjX3N0YXRlLT5wY2hfcGZpdC5lbmFibGVkKTsKIH0KIAogLyoqCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCmluZGV4IDMzZmQ1
MjNjNDYyMi4uZWNlYmU1NjdjNjQ3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuaApAQCAtNTQ2LDcgKzU0Niw2IEBAIHZvaWQgaW50ZWxfY3J0Y19hcm1f
Zmlmb191bmRlcnJ1bihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAkJCQkgIHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKIAogdTE2IHNrbF9zY2FsZXJfY2FsY19waGFzZShp
bnQgc3ViLCBpbnQgc2NhbGUsIGJvb2wgY2hyb21hX2NlbnRlcik7Ci1pbnQgc2tsX3VwZGF0ZV9z
Y2FsZXJfY3J0YyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CiBpbnQgc2ts
X21heF9zY2FsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJ
ICB1MzIgcGl4ZWxfZm9ybWF0KTsKIHUzMiBnbGtfcGxhbmVfY29sb3JfY3RsKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jCmluZGV4IDU2NzNlZDc1ZTQyOC4uZDMzM2Y4N2Q1YjM5IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC0yMTIxLDcgKzIxMjEsNiBAQCBpbnRl
bF9kcF95Y2JjcjQyMF9jb25maWcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAljb25zdCBz
dHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9CiAJCSZjcnRjX3N0YXRlLT5i
YXNlLmFkanVzdGVkX21vZGU7CiAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9j
cnRjKGNydGNfc3RhdGUtPmJhc2UuY3J0Yyk7Ci0JaW50IHJldDsKIAogCWlmICghZHJtX21vZGVf
aXNfNDIwX29ubHkoaW5mbywgYWRqdXN0ZWRfbW9kZSkgfHwKIAkgICAgIWludGVsX2RwX2dldF9j
b2xvcmltZXRyeV9zdGF0dXMoaW50ZWxfZHApIHx8CkBAIC0yMTMwLDEzICsyMTI5LDYgQEAgaW50
ZWxfZHBfeWNiY3I0MjBfY29uZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAKIAljcnRj
X3N0YXRlLT5vdXRwdXRfZm9ybWF0ID0gSU5URUxfT1VUUFVUX0ZPUk1BVF9ZQ0JDUjQyMDsKIAot
CS8qIFlDQkNSIDQyMCBvdXRwdXQgY29udmVyc2lvbiBuZWVkcyBhIHNjYWxlciAqLwotCXJldCA9
IHNrbF91cGRhdGVfc2NhbGVyX2NydGMoY3J0Y19zdGF0ZSk7Ci0JaWYgKHJldCkgewotCQlEUk1f
REVCVUdfS01TKCJTY2FsZXIgYWxsb2NhdGlvbiBmb3Igb3V0cHV0IGZhaWxlZFxuIik7Ci0JCXJl
dHVybiByZXQ7Ci0JfQotCiAJaW50ZWxfcGNoX3BhbmVsX2ZpdHRpbmcoY3J0YywgY3J0Y19zdGF0
ZSwgRFJNX01PREVfU0NBTEVfRlVMTFNDUkVFTik7CiAKIAlyZXR1cm4gMDsKQEAgLTIxOTIsNyAr
MjE4NCw2IEBAIGludGVsX2RwX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLAogCWVsc2UKIAkJcmV0ID0gaW50ZWxfZHBfeWNiY3I0MjBfY29uZmlnKGludGVsX2Rw
LCAmaW50ZWxfY29ubmVjdG9yLT5iYXNlLAogCQkJCQkgICAgICAgcGlwZV9jb25maWcpOwotCiAJ
aWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIApAQCAtMjIwOCwxMiArMjE5OSw2IEBAIGludGVsX2Rw
X2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQlpbnRlbF9m
aXhlZF9wYW5lbF9tb2RlKGludGVsX2Nvbm5lY3Rvci0+cGFuZWwuZml4ZWRfbW9kZSwKIAkJCQkg
ICAgICAgYWRqdXN0ZWRfbW9kZSk7CiAKLQkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSkg
ewotCQkJcmV0ID0gc2tsX3VwZGF0ZV9zY2FsZXJfY3J0YyhwaXBlX2NvbmZpZyk7Ci0JCQlpZiAo
cmV0KQotCQkJCXJldHVybiByZXQ7Ci0JCX0KLQogCQlpZiAoSEFTX0dNQ0goZGV2X3ByaXYpKQog
CQkJaW50ZWxfZ21jaF9wYW5lbF9maXR0aW5nKGludGVsX2NydGMsIHBpcGVfY29uZmlnLAogCQkJ
CQkJIGNvbm5fc3RhdGUtPnNjYWxpbmdfbW9kZSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfaGRtaS5jCmluZGV4IGM1MDBmYzkxNTRjOC4uNDAzOWMyMjE2YWUwIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwpAQCAtMjI3NiwxMiArMjI3Niw2
IEBAIGludGVsX2hkbWlfeWNiY3I0MjBfY29uZmlnKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25u
ZWN0b3IsCiAKIAljb25maWctPm91dHB1dF9mb3JtYXQgPSBJTlRFTF9PVVRQVVRfRk9STUFUX1lD
QkNSNDIwOwogCi0JLyogWUNCQ1IgNDIwIG91dHB1dCBjb252ZXJzaW9uIG5lZWRzIGEgc2NhbGVy
ICovCi0JaWYgKHNrbF91cGRhdGVfc2NhbGVyX2NydGMoY29uZmlnKSkgewotCQlEUk1fREVCVUdf
S01TKCJTY2FsZXIgYWxsb2NhdGlvbiBmb3Igb3V0cHV0IGZhaWxlZFxuIik7Ci0JCXJldHVybiBm
YWxzZTsKLQl9Ci0KIAlpbnRlbF9wY2hfcGFuZWxfZml0dGluZyhpbnRlbF9jcnRjLCBjb25maWcs
CiAJCQkJRFJNX01PREVfU0NBTEVfRlVMTFNDUkVFTik7CiAKLS0gCjIuMjEuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
