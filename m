Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 729531314BB
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 16:21:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 964896E491;
	Mon,  6 Jan 2020 15:21:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB1DD6E491
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2020 15:21:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jan 2020 07:21:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,403,1571727600"; d="scan'208";a="222275639"
Received: from gjcomber-mobl1.amr.corp.intel.com (HELO
 josouza-MOBL.amr.corp.intel.com) ([10.251.149.63])
 by orsmga006.jf.intel.com with ESMTP; 06 Jan 2020 07:21:35 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jan 2020 07:21:28 -0800
Message-Id: <20200106152128.195171-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915/display: Force the state compute
 phase once to enable PSR
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
Cc: Jani Nikula <jani.nikula@intel.com>, s.zharkoff@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVjZW50IGltcHJvdmVtZW50cyBpbiB0aGUgc3RhdGUgdHJhY2tpbmcgaW4gaTkxNSBjYXVzZWQg
UFNSIHRvIG5vdCBiZQplbmFibGVkIHdoZW4gcmV1c2luZyBmaXJtd2FyZS9CSU9TIG1vZGVzZXQs
IHRoaXMgaXMgZHVlIHRvIGFsbCBpbml0aWFsCmNvbW1pdHMgcmV0dXJuaW5nIGVhbGllciBpbiBp
bnRlbF9hdG9taWNfY2hlY2soKSBhcyBuZWVkc19tb2Rlc2V0KCkKaXMgYWx3YXlzIGZhbHNlLgoK
VG8gZml4IHRoYXQgaGVyZSBmb3JjaW5nIHRoZSBzdGF0ZSBjb21wdXRlIHBoYXNlIGluIENSVEMg
dGhhdCBpcwpkcml2aW5nIHRoZSBlRFAgdGhhdCBzdXBwb3J0cyBQU1Igb25jZS4gRW5hYmxlIG9y
IGRpc2FibGUgUFNSIGRvIG5vdApyZXF1aXJlIGEgZnVsbG1vZGVzZXQsIHNvIHVzZXIgd2lsbCBz
dGlsbCBleHBlcmllbmNlIGdsaXRjaCBmcmVlIGJvb3QKcHJvY2VzcyBwbHVzIHRoZSBwb3dlciBz
YXZpbmdzIHRoYXQgUFNSIGJyaW5ncy4KCkl0IHdhcyB0cmllZCB0byBzZXQgbW9kZV9jaGFuZ2Vk
IGluIGludGVsX2luaXRpYWxfY29tbWl0KCkgYnV0IGF0CnRoaXMgcG9pbnQgdGhlIGNvbm5lY3Rv
cnMgYXJlIG5vdCByZWdpc3RlcmVkIGNhdXNpbmcgYSBjcmFzaCB3aGVuCmNvbXB1dGluZyBlbmNv
ZGVyIHN0YXRlLgoKdjI6Ci0gcmVtb3ZlZCBmdW5jdGlvbiByZXR1cm4KLSBjaGFuZ2UgYXJndW1l
bnRzIHRvIG1hdGNoIGludGVsX2hkY3BfYXRvbWljX2NoZWNrCgp2MzoKLSByZXBsYWNlZCBkcm0g
aW5jbHVkZXMgaW4gaW50ZWxfcHNyLmggYnkgZm9yd2FyZCBkZWNsYXJhdGlvbihKYW5pKQoKQnVn
emlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjI1
MwpSZXBvcnRlZC1ieTogPHMuemhhcmtvZmZAZ21haWwuY29tPgpDYzogR3dhbi1neWVvbmcgTXVu
IDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
dG9taWMuYyB8ICAyICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
ICAgIHwgMjQgKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5oICAgIHwgIDUgKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmggICAgICAgICAgICAgfCAgMSArCiA0IGZpbGVzIGNoYW5nZWQsIDMyIGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21p
Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYwppbmRleCAw
ZWI5NzNmNjU5NzcuLmMzNjJlZWNkZDQxNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2F0b21pYy5jCkBAIC0zNyw2ICszNyw3IEBACiAjaW5jbHVkZSAiaW50ZWxfYXRv
bWljLmgiCiAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIgogI2luY2x1ZGUgImludGVs
X2hkY3AuaCIKKyNpbmNsdWRlICJpbnRlbF9wc3IuaCIKICNpbmNsdWRlICJpbnRlbF9zcHJpdGUu
aCIKIAogLyoqCkBAIC0xMjksNiArMTMwLDcgQEAgaW50IGludGVsX2RpZ2l0YWxfY29ubmVjdG9y
X2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubiwKIAlzdHJ1Y3QgZHJtX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGU7CiAKIAlpbnRlbF9oZGNwX2F0b21pY19jaGVjayhjb25uLCBv
bGRfc3RhdGUsIG5ld19zdGF0ZSk7CisJaW50ZWxfcHNyX2F0b21pY19jaGVjayhjb25uLCBvbGRf
c3RhdGUsIG5ld19zdGF0ZSk7CiAKIAlpZiAoIW5ld19zdGF0ZS0+Y3J0YykKIAkJcmV0dXJuIDA7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwppbmRleCAxNmU5ZmY0N2Q1
MTkuLmUzZmQ1ZjFlMmQyMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jCkBAIC0xNTIzLDMgKzE1MjMsMjcgQEAgYm9vbCBpbnRlbF9wc3JfZW5hYmxlZChzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwKQogCiAJcmV0dXJuIHJldDsKIH0KKwordm9pZCBpbnRlbF9wc3Jf
YXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCisJCQkgICAgc3Ry
dWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm9sZF9zdGF0ZSwKKwkJCSAgICBzdHJ1Y3QgZHJtX2Nv
bm5lY3Rvcl9zdGF0ZSAqbmV3X3N0YXRlKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoY29ubmVjdG9yLT5kZXYpOworCXN0cnVjdCBpbnRlbF9jb25uZWN0
b3IgKmludGVsX2Nvbm5lY3RvcjsKKwlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9y
dDsKKwlzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7CisKKwlpZiAoIUNBTl9QU1Io
ZGV2X3ByaXYpIHx8ICFuZXdfc3RhdGUtPmNydGMgfHwKKwkgICAgZGV2X3ByaXYtPnBzci5pbml0
aWFsbHlfcHJvYmVkKQorCQlyZXR1cm47CisKKwlpbnRlbF9jb25uZWN0b3IgPSB0b19pbnRlbF9j
b25uZWN0b3IoY29ubmVjdG9yKTsKKwlkaWdfcG9ydCA9IGVuY190b19kaWdfcG9ydCgmaW50ZWxf
Y29ubmVjdG9yLT5lbmNvZGVyLT5iYXNlKTsKKwlpZiAoZGV2X3ByaXYtPnBzci5kcCAhPSAmZGln
X3BvcnQtPmRwKQorCQlyZXR1cm47CisKKwljcnRjX3N0YXRlID0gZHJtX2F0b21pY19nZXRfbmV3
X2NydGNfc3RhdGUobmV3X3N0YXRlLT5zdGF0ZSwKKwkJCQkJCSAgIG5ld19zdGF0ZS0+Y3J0Yyk7
CisJY3J0Y19zdGF0ZS0+bW9kZV9jaGFuZ2VkID0gdHJ1ZTsKKwlkZXZfcHJpdi0+cHNyLmluaXRp
YWxseV9wcm9iZWQgPSB0cnVlOworfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmgKaW5kZXggNDZlNGRlOGI4Y2Q1Li5jNThhMWQ0Mzg4MDggMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaApAQCAtOCw2ICs4LDggQEAKIAogI2luY2x1ZGUgImlu
dGVsX2Zyb250YnVmZmVyLmgiCiAKK3N0cnVjdCBkcm1fY29ubmVjdG9yOworc3RydWN0IGRybV9j
b25uZWN0b3Jfc3RhdGU7CiBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKIHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlOwogc3RydWN0IGludGVsX2RwOwpAQCAtMzUsNSArMzcsOCBAQCB2b2lkIGludGVs
X3Bzcl9zaG9ydF9wdWxzZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsKIGludCBpbnRlbF9w
c3Jfd2FpdF9mb3JfaWRsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNf
c3RhdGUsCiAJCQkgICAgdTMyICpvdXRfdmFsdWUpOwogYm9vbCBpbnRlbF9wc3JfZW5hYmxlZChz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsKK3ZvaWQgaW50ZWxfcHNyX2F0b21pY19jaGVjayhz
dHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAorCQkJICAgIHN0cnVjdCBkcm1fY29ubmVj
dG9yX3N0YXRlICpvbGRfc3RhdGUsCisJCQkgICAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUg
Km5ld19zdGF0ZSk7CiAKICNlbmRpZiAvKiBfX0lOVEVMX1BTUl9IX18gKi8KZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oCmluZGV4IDUwMTgxMTEzZGQyYi4uMTAyNWQ3ODNmNDk0IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmgKQEAgLTUwNSw2ICs1MDUsNyBAQCBzdHJ1Y3QgaTkxNV9wc3IgewogCWJvb2wg
ZGMzY29fZW5hYmxlZDsKIAl1MzIgZGMzY29fZXhpdF9kZWxheTsKIAlzdHJ1Y3QgZGVsYXllZF93
b3JrIGlkbGVfd29yazsKKwlib29sIGluaXRpYWxseV9wcm9iZWQ7CiB9OwogCiAjZGVmaW5lIFFV
SVJLX0xWRFNfU1NDX0RJU0FCTEUgKDE8PDEpCi0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
