Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5393B350A9
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 22:09:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B602D89C28;
	Tue,  4 Jun 2019 20:09:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09E0089C28
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 20:09:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 13:09:49 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 04 Jun 2019 13:09:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Jun 2019 23:09:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 23:09:33 +0300
Message-Id: <20190604200933.29417-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190604200933.29417-1-ville.syrjala@linux.intel.com>
References: <20190604200933.29417-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: Improve WRPLL reference clock
 readout on HSW/BDW
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk9u
IG5vbi1VTFQgSFNXIHRoZSAic3BlY2lhbCIgV1JQTEwgcmVmZXJlbmNlIGNsb2NrIHNlbGVjdAph
Y3R1YWxseSBtZWFucyBub24tU1NDLiBUYWtlIHRoYXQgaW50byBhY2NvdW50IHdoZW4gcmVhZGlu
ZwpvdXQgdGhlIFdSUExMIHN0YXRlLgoKQWxzbyB0aGUgbm9uLVNTQyByZWZlcmVuY2UgbWF5IGJl
IGVpdGhlciAyNE1IeiBvciAxMzVNSHosCndoaWNoIHdlIGNhbiByZWFkIG91dCBmcm9tIEZVU0Vf
U1RSQVAzLiBUaGUgQkRXIGRvY3MgYWN0dWFsbHkKc2F5OiAiYWxzbyBpbmRpY2F0ZXMgd2hldGhl
ciB0aGUgQ1BVIGFuZCBQQ0ggYXJlIGluIGEgc2luZ2xlCnBhY2thZ2Ugb3Igc2VwYXJhdGUgcGFj
a2FnZXMiLCBzbyBpdCBtYXkgYmUgdGhhdCB0aGlzIGlzIG5vdAphY3R1YWxseSByZXF1aXJlZCBh
bmQgd2UgY291bGQganVzdCBhc3N1bWUgMTM1IE1IeiAoanVzdCBsaWtlCnRoZSBjb2RlIGFscmVh
ZHkgZGlkKS4gQnV0IGl0IGRvZXNuJ3QgcmVhbGx5IGh1cnQgdG8gcmVhZCB0aGlzCm91dCBhcyB0
aGUgSFNXIGRvY3MgYXJlbid0IHF1aXRlIHNvIGNsZWFyLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oICB8ICAzICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZGRpLmMgfCAxNSArKysrKysrKysrKysrKy0KIDIgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGI3ZGQ0
MmJmZmZhYS4uNTMzYjFkOGQyM2NiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTc1MTMs
NiArNzUxMyw5IEBAIGVudW0gewogI2RlZmluZSAgSUxLX0RFU0tUT1AJCQkoMSA8PCAyMykKICNk
ZWZpbmUgIEhTV19DUFVfU1NDX0VOQUJMRQkJKDEgPDwgMjEpCiAKKyNkZWZpbmUgRlVTRV9TVFJB
UDMJCQlfTU1JTygweDQyMDIwKQorI2RlZmluZSAgSFNXX1JFRl9DTEtfU0VMRUNUCQkoMSA8PCAx
KQorCiAjZGVmaW5lIElMS19EU1BDTEtfR0FURV9ECQkJX01NSU8oMHg0MjAyMCkKICNkZWZpbmUg
ICBJTEtfVlJIVU5JVF9DTE9DS19HQVRFX0RJU0FCTEUJKDEgPDwgMjgpCiAjZGVmaW5lICAgSUxL
X0RQRkNVTklUX0NMT0NLX0dBVEVfRElTQUJMRQkoMSA8PCA5KQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
ZGkuYwppbmRleCBmYzliY2JkNzVjM2EuLjQ5ZGFiM2U3MjAxOSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZGRpLmMKQEAgLTEyMzEsNiArMTIzMSwxOSBAQCBzdGF0aWMgaW50IGhzd19kZGlfY2FsY193
cnBsbF9saW5rKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAl3cnBsbCA9IEk5
MTVfUkVBRChyZWcpOwogCXN3aXRjaCAod3JwbGwgJiBXUlBMTF9SRUZfTUFTSykgewogCWNhc2Ug
V1JQTExfUkVGX1NQRUNJQUxfSFNXOgorCQkvKgorCQkgKiBtdXhlZC1TU0MgZm9yIEJEVy4KKwkJ
ICogbm9uLVNTQyBmb3Igbm9uLVVMVCBIU1cuIENoZWNrIEZVU0VfU1RSQVAzCisJCSAqIGZvciB0
aGUgbm9uLVNTQyByZWZlcmVuY2UgZnJlcXVlbmN5LgorCQkgKi8KKwkJaWYgKElTX0hBU1dFTEwo
ZGV2X3ByaXYpICYmICFJU19IU1dfVUxUKGRldl9wcml2KSkgeworCQkJaWYgKEk5MTVfUkVBRChG
VVNFX1NUUkFQMykgJiBIU1dfUkVGX0NMS19TRUxFQ1QpCisJCQkJcmVmY2xrID0gMjQ7CisJCQll
bHNlCisJCQkJcmVmY2xrID0gMTM1OworCQkJYnJlYWs7CisJCX0KKwkJLyogZmFsbCB0aHJvdWdo
ICovCiAJY2FzZSBXUlBMTF9SRUZfUENIX1NTQzoKIAkJLyoKIAkJICogV2UgY291bGQgY2FsY3Vs
YXRlIHNwcmVhZCBoZXJlLCBidXQgb3VyIGNoZWNraW5nCkBAIC0xMjQzLDcgKzEyNTYsNyBAQCBz
dGF0aWMgaW50IGhzd19kZGlfY2FsY193cnBsbF9saW5rKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKIAkJcmVmY2xrID0gMjcwMDsKIAkJYnJlYWs7CiAJZGVmYXVsdDoKLQkJV0FS
TigxLCAiYmFkIHdycGxsIHJlZmNsa1xuIik7CisJCU1JU1NJTkdfQ0FTRSh3cnBsbCk7CiAJCXJl
dHVybiAwOwogCX0KIAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
