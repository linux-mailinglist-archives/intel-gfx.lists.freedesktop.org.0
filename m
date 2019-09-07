Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E68AC3AC
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 02:22:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64756E05D;
	Sat,  7 Sep 2019 00:22:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E77B6E05D
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Sep 2019 00:22:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 17:22:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,474,1559545200"; d="scan'208";a="177796048"
Received: from mdroper-desk.fm.intel.com ([10.105.128.12])
 by orsmga008.jf.intel.com with ESMTP; 06 Sep 2019 17:22:04 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Sep 2019 17:21:39 -0700
Message-Id: <20190907002143.22591-5-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190907002143.22591-1-matthew.d.roper@intel.com>
References: <20190907002143.22591-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/8] drm/i915: Kill cnl_sanitize_cdclk()
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

VGhlIENOTCB2YXJpYW50IG9mIHRoaXMgZnVuY3Rpb24gaXMgaWRlbnRpY2FsIHRvIHRoZSBCWFQg
dmFyaWFudCBhc2lkZQpmcm9tIG5vdCBuZWVkaW5nIHRvIGhhbmRsZSBTU0EgcHJlY2hhcmdlLgoK
Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgNDYgKy0tLS0tLS0tLS0t
LS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNDQgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNs
ay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCmluZGV4IDZi
NWIxMzI4YTNmYS4uZjhjMmE3MDY5OTBiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jZGNsay5jCkBAIC0xNjQ1LDcgKzE2NDUsNyBAQCBzdGF0aWMgdm9pZCBieHRfc2Fu
aXRpemVfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCSAqIERpc2Fi
bGUgU1NBIFByZWNoYXJnZSB3aGVuIENEIGNsb2NrIGZyZXF1ZW5jeSA8IDUwMCBNSHosCiAJICog
ZW5hYmxlIG90aGVyd2lzZS4KIAkgKi8KLQlpZiAoZGV2X3ByaXYtPmNkY2xrLmh3LmNkY2xrID49
IDUwMDAwMCkKKwlpZiAoSVNfR0VOOV9MUChkZXZfcHJpdikgJiYgZGV2X3ByaXYtPmNkY2xrLmh3
LmNkY2xrID49IDUwMDAwMCkKIAkJZXhwZWN0ZWQgfD0gQlhUX0NEQ0xLX1NTQV9QUkVDSEFSR0Vf
RU5BQkxFOwogCiAJaWYgKGNkY3RsID09IGV4cGVjdGVkKQpAQCAtMTY5Nyw0OCArMTY5Nyw2IEBA
IHN0YXRpYyB2b2lkIGJ4dF91bmluaXRfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQogCWJ4dF9zZXRfY2RjbGsoZGV2X3ByaXYsICZjZGNsa19zdGF0ZSwgSU5WQUxJRF9Q
SVBFKTsKIH0KIAotc3RhdGljIHZvaWQgY25sX3Nhbml0aXplX2NkY2xrKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKLXsKLQl1MzIgY2RjdGwsIGV4cGVjdGVkOwotCi0JaW50ZWxf
dXBkYXRlX2NkY2xrKGRldl9wcml2KTsKLQlpbnRlbF9kdW1wX2NkY2xrX3N0YXRlKCZkZXZfcHJp
di0+Y2RjbGsuaHcsICJDdXJyZW50IENEQ0xLIik7Ci0KLQlpZiAoZGV2X3ByaXYtPmNkY2xrLmh3
LnZjbyA9PSAwIHx8Ci0JICAgIGRldl9wcml2LT5jZGNsay5ody5jZGNsayA9PSBkZXZfcHJpdi0+
Y2RjbGsuaHcuYnlwYXNzKQotCQlnb3RvIHNhbml0aXplOwotCi0JLyogRFBMTCBva2F5OyB2ZXJp
ZnkgdGhlIGNkY2xvY2sKLQkgKgotCSAqIFNvbWUgQklPUyB2ZXJzaW9ucyBsZWF2ZSBhbiBpbmNv
cnJlY3QgZGVjaW1hbCBmcmVxdWVuY3kgdmFsdWUgYW5kCi0JICogc2V0IHJlc2VydmVkIE1CWiBi
aXRzIGluIENEQ0xLX0NUTCBhdCBsZWFzdCBkdXJpbmcgZXhpdGluZyBmcm9tIFM0LAotCSAqIHNv
IHNhbml0aXplIHRoaXMgcmVnaXN0ZXIuCi0JICovCi0JY2RjdGwgPSBJOTE1X1JFQUQoQ0RDTEtf
Q1RMKTsKLQkvKgotCSAqIExldCdzIGlnbm9yZSB0aGUgcGlwZSBmaWVsZCwgc2luY2UgQklPUyBj
b3VsZCBoYXZlIGNvbmZpZ3VyZWQgdGhlCi0JICogZGl2aWRlcnMgYm90aCBzeW5jaGluZyB0byBh
biBhY3RpdmUgcGlwZSwgb3IgYXN5bmNocm9ub3VzbHkKLQkgKiAoUElQRV9OT05FKS4KLQkgKi8K
LQljZGN0bCAmPSB+QlhUX0NEQ0xLX0NEMlhfUElQRV9OT05FOwotCi0JZXhwZWN0ZWQgPSAoY2Rj
dGwgJiBCWFRfQ0RDTEtfQ0QyWF9ESVZfU0VMX01BU0spIHwKLQkJICAgc2tsX2NkY2xrX2RlY2lt
YWwoZGV2X3ByaXYtPmNkY2xrLmh3LmNkY2xrKTsKLQotCWlmIChjZGN0bCA9PSBleHBlY3RlZCkK
LQkJLyogQWxsIHdlbGw7IG5vdGhpbmcgdG8gc2FuaXRpemUgKi8KLQkJcmV0dXJuOwotCi1zYW5p
dGl6ZToKLQlEUk1fREVCVUdfS01TKCJTYW5pdGl6aW5nIGNkY2xrIHByb2dyYW1tZWQgYnkgcHJl
LW9zXG4iKTsKLQotCS8qIGZvcmNlIGNkY2xrIHByb2dyYW1taW5nICovCi0JZGV2X3ByaXYtPmNk
Y2xrLmh3LmNkY2xrID0gMDsKLQotCS8qIGZvcmNlIGZ1bGwgUExMIGRpc2FibGUgKyBlbmFibGUg
Ki8KLQlkZXZfcHJpdi0+Y2RjbGsuaHcudmNvID0gLTE7Ci19Ci0KIHN0YXRpYyB2b2lkIGljbF9p
bml0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAlzdHJ1Y3Qg
aW50ZWxfY2RjbGtfc3RhdGUgc2FuaXRpemVkX3N0YXRlOwpAQCAtMTgwMCw3ICsxNzU4LDcgQEAg
c3RhdGljIHZvaWQgY25sX2luaXRfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQogewogCXN0cnVjdCBpbnRlbF9jZGNsa19zdGF0ZSBjZGNsa19zdGF0ZTsKIAotCWNubF9z
YW5pdGl6ZV9jZGNsayhkZXZfcHJpdik7CisJYnh0X3Nhbml0aXplX2NkY2xrKGRldl9wcml2KTsK
IAogCWlmIChkZXZfcHJpdi0+Y2RjbGsuaHcuY2RjbGsgIT0gMCAmJgogCSAgICBkZXZfcHJpdi0+
Y2RjbGsuaHcudmNvICE9IDApCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
