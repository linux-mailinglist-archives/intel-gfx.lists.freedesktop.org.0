Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 991F4307EB0
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 20:25:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BD756E9FF;
	Thu, 28 Jan 2021 19:24:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 426DC6E9D3
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 19:24:39 +0000 (UTC)
IronPort-SDR: T7n0r1UQA3pf+cuHOtTIAJtPUhVFJQEshEkJ+H2Xz6DSOmDPKIGBu2dvCgDzFTga/PXiTgsJvX
 4cLRfeArUyUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="244384037"
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="244384037"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 11:24:37 -0800
IronPort-SDR: 4tCo+J36N1QKWoFJfncQvqFpz7Qdyes7QmlkUgqfw3qPyhtPTDWfy9tosbIJv27nS+PR7mbSVi
 5+Y/S6srzgnA==
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="411110169"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 11:24:37 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 11:24:04 -0800
Message-Id: <20210128192413.1715802-10-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210128192413.1715802-1-matthew.d.roper@intel.com>
References: <20210128192413.1715802-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/18] drm/i915/display13: Handle new location
 of outputs D and E
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

VGhlIERESSBuYW1pbmcgdGVtcGxhdGUgZm9yIERpc3BsYXkxMiB3ZW50IEEtQywgVEMxLVRDNi4g
IFdpdGgKRGlzcGxheTEzLCB0aGF0IG5hbWluZyBzY2hlbWUgZm9yIERESSdzIGhhcyBub3cgY2hh
bmdlZCB0byBBLUUsIFRDMS1UQzQuCgpUaGUgRGlzcGxheTEzIGRlc2lnbiBrZWVwcyB0aGUgcmVn
aXN0ZXIgb2Zmc2V0cyBhbmQgYml0ZmllbGRzIHJlbGF0aW5nCnRvIHRoZSBUQyBvdXRwdXRzIGlu
IHRoZSBzYW1lIGxvY2F0aW9uIHRoZXkgd2VyZSBvbiBEaXNwbGF5MTIuICBUaGUgbmV3CiJEIiBh
bmQgIkUiIG91dHB1dHMgbm93IHRha2UgdGhlIGxvY2F0aW9ucyB0aGF0IHdlcmUgcHJldmlvdXNs
eSB1c2VkIGJ5CkRpc3BsYXkxMidzIFRDNSBhbmQgVEM2IG91dHB1dHMsIG9yIHdoYXQgd2Ugd291
bGQgaGF2ZSBjb25zaWRlcmVkIHRvIGJlCm91dHB1dHMgIkgiIGFuZCAiSSIgdW5kZXIgdGhlIGxl
Z2FjeSBsZXR0ZXJpbmcgc2NoZW1lLgoKRm9yIHRoZSBtb3N0IHBhcnQgZXZlcnl0aGluZyB3aWxs
IGp1c3Qgd29yayBhcyBsb25nIGFzIHdlIGluaXRpYWxpemUgdGhlCm91dHB1dCB3aXRoIHRoZSBw
cm9wZXIgJ2VudW0gcG9ydCcgdmFsdWUuICBIb3dldmVyIHdlIGRvIG5lZWQgdG8gdGFrZQpjYXJl
IHRvIHBpY2sgdGhlIGNvcnJlY3QgQVVYIGNoYW5uZWwgd2hlbiBwYXJzaW5nIHRoZSBWQlQgKGUu
Zy4sIGEKcmVmZXJlbmNlIHRvICdBVVggRCcgaXMgYWN0dWFsbHkgYXNraW5nIHVzIHRvIHVzZSB0
aGUgOHRoIGF1eCBjaGFubmVsLApub3QgdGhlIGZvdXJ0aCkuICBXZSBzaG91bGQgYWxzbyBtYWtl
IHN1cmUgdGhhdCBvdXIgZW5jb2RlcnMgYW5kIGF1eApjaGFubmVscyBhcmUgbmFtZWQgYXBwcm9w
cmlhdGVseSBzbyB0aGF0IGl0J3MgZWFzaWVyIHRvIGNvcnJlbGF0ZSBkcml2ZXIKZGVidWcgbWVz
c2FnZXMgd2l0aCB0aGUgYnNwZWMgaW5zdHJ1Y3Rpb25zLgoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIg
PG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmMgICAgfCAgOCArKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgfCAgOCArKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAgNiArKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIHwgIDggKysrKysrKysKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMgIHwgMTQgKysrKysrKysrLS0tLS0KIDUgZmls
ZXMgY2hhbmdlZCwgMzUgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCmluZGV4IDA0MzM3YWM2ZjhjNC4uYjllMDBm
YzM3MTVkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jp
b3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwpAQCAt
MjcxNiw3ICsyNzE2LDkgQEAgZW51bSBhdXhfY2ggaW50ZWxfYmlvc19wb3J0X2F1eF9jaChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQlhdXhfY2ggPSBBVVhfQ0hfQzsKIAkJ
YnJlYWs7CiAJY2FzZSBEUF9BVVhfRDoKLQkJaWYgKElTX0FMREVSTEFLRV9TKGRldl9wcml2KSkK
KwkJaWYgKEhBU19ESVNQTEFZMTMoZGV2X3ByaXYpKQorCQkJYXV4X2NoID0gQVVYX0NIX0RfRDEz
OworCQllbHNlIGlmIChJU19BTERFUkxBS0VfUyhkZXZfcHJpdikpCiAJCQlhdXhfY2ggPSBBVVhf
Q0hfVVNCQzM7CiAJCWVsc2UgaWYgKElTX0RHMShkZXZfcHJpdikgfHwgSVNfUk9DS0VUTEFLRShk
ZXZfcHJpdikpCiAJCQlhdXhfY2ggPSBBVVhfQ0hfVVNCQzI7CkBAIC0yNzI0LDcgKzI3MjYsOSBA
QCBlbnVtIGF1eF9jaCBpbnRlbF9iaW9zX3BvcnRfYXV4X2NoKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKIAkJCWF1eF9jaCA9IEFVWF9DSF9EOwogCQlicmVhazsKIAljYXNlIERQ
X0FVWF9FOgotCQlpZiAoSVNfQUxERVJMQUtFX1MoZGV2X3ByaXYpKQorCQlpZiAoSEFTX0RJU1BM
QVkxMyhkZXZfcHJpdikpCisJCQlhdXhfY2ggPSBBVVhfQ0hfRV9EMTM7CisJCWVsc2UgaWYgKElT
X0FMREVSTEFLRV9TKGRldl9wcml2KSkKIAkJCWF1eF9jaCA9IEFVWF9DSF9VU0JDNDsKIAkJZWxz
ZQogCQkJYXV4X2NoID0gQVVYX0NIX0U7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYwppbmRleCA5NTA2YjgwNDg1MzAuLjY4ZTU4ZTk0ZjJhNSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC01NTIwLDcgKzU1MjAsMTMgQEAgdm9pZCBp
bnRlbF9kZGlfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9y
dCBwb3J0KQogCiAJZW5jb2RlciA9ICZkaWdfcG9ydC0+YmFzZTsKIAotCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDEyKSB7CisJaWYgKEhBU19ESVNQTEFZMTMoZGV2X3ByaXYpICYmIHBvcnQg
Pj0gUE9SVF9EX0QxMykgeworCQlkcm1fZW5jb2Rlcl9pbml0KCZkZXZfcHJpdi0+ZHJtLCAmZW5j
b2Rlci0+YmFzZSwgJmludGVsX2RkaV9mdW5jcywKKwkJCQkgRFJNX01PREVfRU5DT0RFUl9UTURT
LAorCQkJCSAiRERJICVjL1BIWSAlYyIsCisJCQkJIHBvcnRfbmFtZShwb3J0IC0gUE9SVF9EX0Qx
MyArIFBPUlRfRCksCisJCQkJIHBoeV9uYW1lKHBoeSkpOworCX0gZWxzZSBpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSAxMikgewogCQllbnVtIHRjX3BvcnQgdGNfcG9ydCA9IGludGVsX3BvcnRf
dG9fdGMoZGV2X3ByaXYsIHBvcnQpOwogCiAJCWRybV9lbmNvZGVyX2luaXQoJmRldl9wcml2LT5k
cm0sICZlbmNvZGVyLT5iYXNlLCAmaW50ZWxfZGRpX2Z1bmNzLApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBmNTYyMzdhYWE3YjUuLjRkYzRiMWJl
MDgwOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
QEAgLTU2OTksNyArNTY5OSwxMSBAQCBib29sIGludGVsX3BoeV9pc190YyhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcGh5IHBoeSkKIAogZW51bSBwaHkgaW50ZWxfcG9y
dF90b19waHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGVudW0gcG9ydCBwb3J0KQog
ewotCWlmIChJU19BTERFUkxBS0VfUyhpOTE1KSAmJiBwb3J0ID49IFBPUlRfVEMxKQorCWlmIChI
QVNfRElTUExBWTEzKGk5MTUpICYmIHBvcnQgPj0gUE9SVF9EX0QxMykKKwkJcmV0dXJuIFBIWV9E
ICsgcG9ydCAtIFBPUlRfRF9EMTM7CisJZWxzZSBpZiAoSEFTX0RJU1BMQVkxMyhpOTE1KSAmJiBw
b3J0ID49IFBPUlRfVEMxKQorCQlyZXR1cm4gUEhZX0YgKyBwb3J0IC0gUE9SVF9UQzE7CisJZWxz
ZSBpZiAoSVNfQUxERVJMQUtFX1MoaTkxNSkgJiYgcG9ydCA+PSBQT1JUX1RDMSkKIAkJcmV0dXJu
IFBIWV9CICsgcG9ydCAtIFBPUlRfVEMxOwogCWVsc2UgaWYgKChJU19ERzEoaTkxNSkgfHwgSVNf
Uk9DS0VUTEFLRShpOTE1KSkgJiYgcG9ydCA+PSBQT1JUX1RDMSkKIAkJcmV0dXJuIFBIWV9DICsg
cG9ydCAtIFBPUlRfVEMxOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuaAppbmRleCA2NGZmYTM0NTQ0YTcuLmIxMDJlYzBkNTM5MCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKQEAgLTIxNiw2ICsyMTYsMTAgQEAg
ZW51bSBwb3J0IHsKIAlQT1JUX1RDNSwKIAlQT1JUX1RDNiwKIAorCS8qIERpc3BsYXkxMyByZXBv
c2l0aW9ucyBEL0Ugb2Zmc2V0cyBhbmQgYml0ZmllbGRzICovCisJUE9SVF9EX0QxMyA9IFBPUlRf
VEM1LAorCVBPUlRfRV9EMTMsCisKIAlJOTE1X01BWF9QT1JUUwogfTsKIApAQCAtMjk5LDYgKzMw
MywxMCBAQCBlbnVtIGF1eF9jaCB7CiAJQVVYX0NIX1VTQkM0LAogCUFVWF9DSF9VU0JDNSwKIAlB
VVhfQ0hfVVNCQzYsCisKKwkvKiBEaXNwbGF5MTMgcmVwb3NpdGlvbnMgRC9FIG9mZnNldHMgYW5k
IGJpdGZpZWxkcyAqLworCUFVWF9DSF9EX0QxMyA9IEFVWF9DSF9VU0JDNSwKKwlBVVhfQ0hfRV9E
MTMsCiB9OwogCiAjZGVmaW5lIGF1eF9jaF9uYW1lKGEpICgoYSkgKyAnQScpCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXguYwppbmRleCBlYWViZjEyMzMxMGEuLjM1
NTY4MGFjZTZmOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9hdXguYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1
eC5jCkBAIC02MDAsOCArNjAwLDggQEAgc3RhdGljIGk5MTVfcmVnX3QgdGdsX2F1eF9jdGxfcmVn
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJY2FzZSBBVVhfQ0hfVVNCQzI6CiAJY2FzZSBB
VVhfQ0hfVVNCQzM6CiAJY2FzZSBBVVhfQ0hfVVNCQzQ6Ci0JY2FzZSBBVVhfQ0hfVVNCQzU6Ci0J
Y2FzZSBBVVhfQ0hfVVNCQzY6CisJY2FzZSBBVVhfQ0hfVVNCQzU6ICAvKiBha2EgQVVYX0NIX0Rf
RDEzICovCisJY2FzZSBBVVhfQ0hfVVNCQzY6ICAvKiBha2EgQVVYX0NIX0VfRDEzICovCiAJCXJl
dHVybiBEUF9BVVhfQ0hfQ1RMKGF1eF9jaCk7CiAJZGVmYXVsdDoKIAkJTUlTU0lOR19DQVNFKGF1
eF9jaCk7CkBAIC02MjMsOCArNjIzLDggQEAgc3RhdGljIGk5MTVfcmVnX3QgdGdsX2F1eF9kYXRh
X3JlZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBpbnQgaW5kZXgpCiAJY2FzZSBBVVhfQ0hf
VVNCQzI6CiAJY2FzZSBBVVhfQ0hfVVNCQzM6CiAJY2FzZSBBVVhfQ0hfVVNCQzQ6Ci0JY2FzZSBB
VVhfQ0hfVVNCQzU6Ci0JY2FzZSBBVVhfQ0hfVVNCQzY6CisJY2FzZSBBVVhfQ0hfVVNCQzU6ICAv
KiBha2EgQVVYX0NIX0RfRDEzICovCisJY2FzZSBBVVhfQ0hfVVNCQzY6ICAvKiBha2EgQVVYX0NI
X0VfRDEzICovCiAJCXJldHVybiBEUF9BVVhfQ0hfREFUQShhdXhfY2gsIGluZGV4KTsKIAlkZWZh
dWx0OgogCQlNSVNTSU5HX0NBU0UoYXV4X2NoKTsKQEAgLTY3OCw3ICs2NzgsMTEgQEAgdm9pZCBp
bnRlbF9kcF9hdXhfaW5pdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCWRybV9kcF9hdXhf
aW5pdCgmaW50ZWxfZHAtPmF1eCk7CiAKIAkvKiBGYWlsdXJlIHRvIGFsbG9jYXRlIG91ciBwcmVm
ZXJyZWQgbmFtZSBpcyBub3QgY3JpdGljYWwgKi8KLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+
PSAxMiAmJiBhdXhfY2ggPj0gQVVYX0NIX1VTQkMxKQorCWlmIChIQVNfRElTUExBWTEzKGRldl9w
cml2KSAmJiBhdXhfY2ggPj0gQVVYX0NIX0RfRDEzKQorCQlpbnRlbF9kcC0+YXV4Lm5hbWUgPSBr
YXNwcmludGYoR0ZQX0tFUk5FTCwgIkFVWCAlYy8lcyIsCisJCQkJCSAgICAgICBhdXhfY2hfbmFt
ZShhdXhfY2ggLSBBVVhfQ0hfRF9EMTMgKyBBVVhfQ0hfRCksCisJCQkJCSAgICAgICBlbmNvZGVy
LT5iYXNlLm5hbWUpOworCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIgJiYgYXV4
X2NoID49IEFVWF9DSF9VU0JDMSkKIAkJaW50ZWxfZHAtPmF1eC5uYW1lID0ga2FzcHJpbnRmKEdG
UF9LRVJORUwsICJBVVggVVNCQyVjLyVzIiwKIAkJCQkJICAgICAgIGF1eF9jaCAtIEFVWF9DSF9V
U0JDMSArICcxJywKIAkJCQkJICAgICAgIGVuY29kZXItPmJhc2UubmFtZSk7Ci0tIAoyLjI1LjQK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
