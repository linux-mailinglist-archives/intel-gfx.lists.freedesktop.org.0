Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 744B0D804F
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 21:30:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E30AC6E88B;
	Tue, 15 Oct 2019 19:30:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3581F6E88C
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 19:30:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 12:30:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="225533496"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 15 Oct 2019 12:30:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Oct 2019 22:30:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 22:30:27 +0300
Message-Id: <20191015193035.25982-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191015193035.25982-1-ville.syrjala@linux.intel.com>
References: <20191015193035.25982-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 05/13] drm/i915: Eliminate
 skl_check_pipe_max_pixel_rate()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBub3JtYWwgY2RjbGsgaGFuZGxpbmcgbm93IHRha2VzIGNhcmUgb2YgbWFraW5nIHN1cmUgdGhl
CnBsYW5lJ3MgcGl4ZWwgcmF0ZSBkb2Vzbid0IGV4Y2VlZCB0aGUgc3BlYyBhcHBvaW50ZWQgcGVy
Y2VudGFnZQpvZiB0aGUgY2RjbGsgZnJlcXVlbmN5LiBUaHVzIHdlIGNhbiBudWtlCnNrbF9jaGVj
a19waXBlX21heF9waXhlbF9yYXRlKCkuCgpSZXZpZXdlZC1ieTogSnVoYS1QZWtrYSBIZWlra2ls
YSA8anVoYXBla2thLmhlaWtraWxhQGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8ICAyIC0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmMgICAgICAgICAgICAgIHwgODcgLS0tLS0tLS0tLS0tLS0tLS0tLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmggICAgICAgICAgICAgIHwgIDIgLQogMyBmaWxl
cyBjaGFuZ2VkLCA5MSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDY3YmI1ZmEwM2IyYi4uY2JjODA3ZWEwOGM1IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTE4ODcs
OCArMTE4ODcsNiBAQCBzdGF0aWMgaW50IGludGVsX2NydGNfYXRvbWljX2NoZWNrKHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkp
IHsKIAkJaWYgKG1vZGVfY2hhbmdlZCB8fCBjcnRjX3N0YXRlLT51cGRhdGVfcGlwZSkKIAkJCXJl
dCA9IHNrbF91cGRhdGVfc2NhbGVyX2NydGMoY3J0Y19zdGF0ZSk7Ci0JCWlmICghcmV0KQotCQkJ
cmV0ID0gc2tsX2NoZWNrX3BpcGVfbWF4X3BpeGVsX3JhdGUoY3J0YywgY3J0Y19zdGF0ZSk7CiAJ
CWlmICghcmV0KQogCQkJcmV0ID0gaW50ZWxfYXRvbWljX3NldHVwX3NjYWxlcnMoZGV2X3ByaXYs
IGNydGMsCiAJCQkJCQkJIGNydGNfc3RhdGUpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXgg
YjMwNmUyMzM4ZjVhLi42NDNiNmI2NWZiYTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAt
NDA5Niw5MyArNDA5Niw2IEBAIHNrbF9wbGFuZV9kb3duc2NhbGVfYW1vdW50KGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCXJldHVybiBtdWxfZml4ZWQxNihkb3du
c2NhbGVfdywgZG93bnNjYWxlX2gpOwogfQogCi1zdGF0aWMgdWludF9maXhlZF8xNl8xNl90Ci1z
a2xfcGlwZV9kb3duc2NhbGVfYW1vdW50KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKQotewotCXVpbnRfZml4ZWRfMTZfMTZfdCBwaXBlX2Rvd25zY2FsZSA9IHUzMl90
b19maXhlZDE2KDEpOwotCi0JaWYgKCFjcnRjX3N0YXRlLT5iYXNlLmVuYWJsZSkKLQkJcmV0dXJu
IHBpcGVfZG93bnNjYWxlOwotCi0JaWYgKGNydGNfc3RhdGUtPnBjaF9wZml0LmVuYWJsZWQpIHsK
LQkJdTMyIHNyY193LCBzcmNfaCwgZHN0X3csIGRzdF9oOwotCQl1MzIgcGZpdF9zaXplID0gY3J0
Y19zdGF0ZS0+cGNoX3BmaXQuc2l6ZTsKLQkJdWludF9maXhlZF8xNl8xNl90IGZwX3dfcmF0aW8s
IGZwX2hfcmF0aW87Ci0JCXVpbnRfZml4ZWRfMTZfMTZfdCBkb3duc2NhbGVfaCwgZG93bnNjYWxl
X3c7Ci0KLQkJc3JjX3cgPSBjcnRjX3N0YXRlLT5waXBlX3NyY193OwotCQlzcmNfaCA9IGNydGNf
c3RhdGUtPnBpcGVfc3JjX2g7Ci0JCWRzdF93ID0gcGZpdF9zaXplID4+IDE2OwotCQlkc3RfaCA9
IHBmaXRfc2l6ZSAmIDB4ZmZmZjsKLQotCQlpZiAoIWRzdF93IHx8ICFkc3RfaCkKLQkJCXJldHVy
biBwaXBlX2Rvd25zY2FsZTsKLQotCQlmcF93X3JhdGlvID0gZGl2X2ZpeGVkMTYoc3JjX3csIGRz
dF93KTsKLQkJZnBfaF9yYXRpbyA9IGRpdl9maXhlZDE2KHNyY19oLCBkc3RfaCk7Ci0JCWRvd25z
Y2FsZV93ID0gbWF4X2ZpeGVkMTYoZnBfd19yYXRpbywgdTMyX3RvX2ZpeGVkMTYoMSkpOwotCQlk
b3duc2NhbGVfaCA9IG1heF9maXhlZDE2KGZwX2hfcmF0aW8sIHUzMl90b19maXhlZDE2KDEpKTsK
LQotCQlwaXBlX2Rvd25zY2FsZSA9IG11bF9maXhlZDE2KGRvd25zY2FsZV93LCBkb3duc2NhbGVf
aCk7Ci0JfQotCi0JcmV0dXJuIHBpcGVfZG93bnNjYWxlOwotfQotCi1pbnQgc2tsX2NoZWNrX3Bp
cGVfbWF4X3BpeGVsX3JhdGUoc3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGMsCi0JCQkJICBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKLXsKLQlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGludGVsX2NydGMtPmJhc2UuZGV2KTsKLQlzdHJ1
Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUgPSBjcnRjX3N0YXRlLT5iYXNlLnN0YXRlOwotCWNv
bnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGU7Ci0Jc3RydWN0IGludGVs
X3BsYW5lICpwbGFuZTsKLQlpbnQgY3J0Y19jbG9jaywgZG90Y2xrOwotCXUzMiBwaXBlX21heF9w
aXhlbF9yYXRlOwotCXVpbnRfZml4ZWRfMTZfMTZfdCBwaXBlX2Rvd25zY2FsZTsKLQl1aW50X2Zp
eGVkXzE2XzE2X3QgbWF4X2Rvd25zY2FsZSA9IHUzMl90b19maXhlZDE2KDEpOwotCi0JaWYgKCFj
cnRjX3N0YXRlLT5iYXNlLmVuYWJsZSkKLQkJcmV0dXJuIDA7Ci0KLQlpbnRlbF9hdG9taWNfY3J0
Y19zdGF0ZV9mb3JfZWFjaF9wbGFuZV9zdGF0ZShwbGFuZSwgcGxhbmVfc3RhdGUsIGNydGNfc3Rh
dGUpIHsKLQkJdWludF9maXhlZF8xNl8xNl90IHBsYW5lX2Rvd25zY2FsZTsKLQkJdWludF9maXhl
ZF8xNl8xNl90IGZwXzlfZGl2XzggPSBkaXZfZml4ZWQxNig5LCA4KTsKLQkJaW50IGJwcDsKLQot
CQlpZiAoIWludGVsX3dtX3BsYW5lX3Zpc2libGUoY3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUpKQot
CQkJY29udGludWU7Ci0KLQkJaWYgKFdBUk5fT04oIXBsYW5lX3N0YXRlLT5iYXNlLmZiKSkKLQkJ
CXJldHVybiAtRUlOVkFMOwotCi0JCXBsYW5lX2Rvd25zY2FsZSA9IHNrbF9wbGFuZV9kb3duc2Nh
bGVfYW1vdW50KGNydGNfc3RhdGUsIHBsYW5lX3N0YXRlKTsKLQkJYnBwID0gcGxhbmVfc3RhdGUt
PmJhc2UuZmItPmZvcm1hdC0+Y3BwWzBdICogODsKLQkJaWYgKGJwcCA9PSA2NCkKLQkJCXBsYW5l
X2Rvd25zY2FsZSA9IG11bF9maXhlZDE2KHBsYW5lX2Rvd25zY2FsZSwKLQkJCQkJCSAgICAgIGZw
XzlfZGl2XzgpOwotCi0JCW1heF9kb3duc2NhbGUgPSBtYXhfZml4ZWQxNihwbGFuZV9kb3duc2Nh
bGUsIG1heF9kb3duc2NhbGUpOwotCX0KLQlwaXBlX2Rvd25zY2FsZSA9IHNrbF9waXBlX2Rvd25z
Y2FsZV9hbW91bnQoY3J0Y19zdGF0ZSk7Ci0KLQlwaXBlX2Rvd25zY2FsZSA9IG11bF9maXhlZDE2
KHBpcGVfZG93bnNjYWxlLCBtYXhfZG93bnNjYWxlKTsKLQotCWNydGNfY2xvY2sgPSBjcnRjX3N0
YXRlLT5iYXNlLmFkanVzdGVkX21vZGUuY3J0Y19jbG9jazsKLQlkb3RjbGsgPSB0b19pbnRlbF9h
dG9taWNfc3RhdGUoc3RhdGUpLT5jZGNsay5sb2dpY2FsLmNkY2xrOwotCi0JaWYgKElTX0dFTUlO
SUxBS0UoZGV2X3ByaXYpIHx8IElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTApCi0JCWRvdGNsayAq
PSAyOwotCi0JcGlwZV9tYXhfcGl4ZWxfcmF0ZSA9IGRpdl9yb3VuZF91cF91MzJfZml4ZWQxNihk
b3RjbGssIHBpcGVfZG93bnNjYWxlKTsKLQotCWlmIChwaXBlX21heF9waXhlbF9yYXRlIDwgY3J0
Y19jbG9jaykgewotCQlEUk1fREVCVUdfS01TKCJNYXggc3VwcG9ydGVkIHBpeGVsIGNsb2NrIHdp
dGggc2NhbGluZyBleGNlZWRlZFxuIik7Ci0JCXJldHVybiAtRUlOVkFMOwotCX0KLQotCXJldHVy
biAwOwotfQotCiBzdGF0aWMgdTY0CiBza2xfcGxhbmVfcmVsYXRpdmVfZGF0YV9yYXRlKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkJICAgICBjb25zdCBzdHJ1
Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcG0uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmgK
aW5kZXggOTNkMTkyZDA2MTBhLi4wMGE1ODAxZGZjMDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
aApAQCAtNjQsOCArNjQsNiBAQCB2b2lkIHNrbF93cml0ZV9wbGFuZV93bShzdHJ1Y3QgaW50ZWxf
cGxhbmUgKnBsYW5lLAogdm9pZCBza2xfd3JpdGVfY3Vyc29yX3dtKHN0cnVjdCBpbnRlbF9wbGFu
ZSAqcGxhbmUsCiAJCQkgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
OwogYm9vbCBpbGtfZGlzYWJsZV9scF93bShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsKLWludCBz
a2xfY2hlY2tfcGlwZV9tYXhfcGl4ZWxfcmF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0
YywKLQkJCQkgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjc3RhdGUpOwogdm9pZCBpbnRlbF9p
bml0X2lwYyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogdm9pZCBpbnRlbF9l
bmFibGVfaXBjKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7CiAKLS0gCjIuMjEu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
