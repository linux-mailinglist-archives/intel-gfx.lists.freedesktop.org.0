Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30234261247
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 16:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7939E6E82E;
	Tue,  8 Sep 2020 14:02:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DEC26E82E
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 14:02:16 +0000 (UTC)
IronPort-SDR: 82i5CC9Yrei7QuXrgnK31BghGnSJb1po7p67g6kHjgJBSIjBIIGscLoZP8BrpcDtTHzdMEnrjF
 sj7yoVy3/Fow==
X-IronPort-AV: E=McAfee;i="6000,8403,9737"; a="176185798"
X-IronPort-AV: E=Sophos;i="5.76,405,1592895600"; d="scan'208";a="176185798"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2020 07:02:15 -0700
IronPort-SDR: BBJ084Ka1PTer9FOirP+9fJA73dIm9sOMoOD5gCV7GfwGzC/aBFOdsSIBc2QaTMRaenBegQKRw
 bdU1I8PaiB0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,405,1592895600"; d="scan'208";a="317195389"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 08 Sep 2020 07:02:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Sep 2020 17:02:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Sep 2020 17:02:08 +0300
Message-Id: <20200908140210.31048-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200908140210.31048-1-ville.syrjala@linux.intel.com>
References: <20200908140210.31048-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Nuke the magic FBC_CONTROL
 save/restore
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBGQkNfQ09OVFJPTCBzYXZlIHJlc3RvcmUgaXMgdGhlcmUganVzdCB0byBwcmVzZXJ2ZSB0aGUK
Y29tcHJlc3Npb24gaW50ZXJ2YWwgc2V0dGluZy4gU2luY2UgY29tbWl0IGE2OGNlMjFiYTBjNAoo
ImRybS9pOTE1L2ZiYzogU3RvcmUgdGhlIGZiYzEgY29tcHJlc3Npb24gaW50ZXJ2YWwgaW4gdGhl
IHBhcmFtcyIpCndlJ3ZlIGJlZW4gZXhwbGljaXRseSBzZXR0aW5nIHRoZSBpbnRlcnZhbCB0byBh
IHNwZWNpZmljCnZhbHVlLCBzbyB0aGUgc2FjZS9yZXN0b3JlIGlzIG5vdyBlbnRpcmVseSBwb2lu
dGxlc3MuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgIHwg
MSAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N1c3BlbmQuYyB8IDggLS0tLS0tLS0KIDIg
ZmlsZXMgY2hhbmdlZCwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRl
eCAyZTQ0MzhlOGUzZWIuLjM5MTdiYjFhNjE1NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBA
IC01MzcsNyArNTM3LDYgQEAgc3RydWN0IGludGVsX2dtYnVzIHsKIAogc3RydWN0IGk5MTVfc3Vz
cGVuZF9zYXZlZF9yZWdpc3RlcnMgewogCXUzMiBzYXZlRFNQQVJCOwotCXUzMiBzYXZlRkJDX0NP
TlRST0w7CiAJdTMyIHNhdmVDQUNIRV9NT0RFXzA7CiAJdTMyIHNhdmVNSV9BUkJfU1RBVEU7CiAJ
dTMyIHNhdmVTV0YwWzE2XTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
c3VzcGVuZC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zdXNwZW5kLmMKaW5kZXggZWQy
YmUzNDg5ZjhlLi41OTJjMjMwZTY5MTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfc3VzcGVuZC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5j
CkBAIC0zNywxMCArMzcsNiBAQCBzdGF0aWMgdm9pZCBpOTE1X3NhdmVfZGlzcGxheShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJLyogRGlzcGxheSBhcmJpdHJhdGlvbiBjb250
cm9sICovCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPD0gNCkKIAkJZGV2X3ByaXYtPnJlZ2Zp
bGUuc2F2ZURTUEFSQiA9IEk5MTVfUkVBRChEU1BBUkIpOwotCi0JLyogc2F2ZSBGQkMgaW50ZXJ2
YWwgKi8KLQlpZiAoSEFTX0ZCQyhkZXZfcHJpdikgJiYgSU5URUxfR0VOKGRldl9wcml2KSA8PSA0
ICYmICFJU19HNFgoZGV2X3ByaXYpKQotCQlkZXZfcHJpdi0+cmVnZmlsZS5zYXZlRkJDX0NPTlRS
T0wgPSBJOTE1X1JFQUQoRkJDX0NPTlRST0wpOwogfQogCiBzdGF0aWMgdm9pZCBpOTE1X3Jlc3Rv
cmVfZGlzcGxheShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCkBAIC01MiwxMCAr
NDgsNiBAQCBzdGF0aWMgdm9pZCBpOTE1X3Jlc3RvcmVfZGlzcGxheShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCiAJLyogb25seSByZXN0b3JlIEZCQyBpbmZvIG9uIHRoZSBwbGF0
Zm9ybSB0aGF0IHN1cHBvcnRzIEZCQyovCiAJaW50ZWxfZmJjX2dsb2JhbF9kaXNhYmxlKGRldl9w
cml2KTsKIAotCS8qIHJlc3RvcmUgRkJDIGludGVydmFsICovCi0JaWYgKEhBU19GQkMoZGV2X3By
aXYpICYmIElOVEVMX0dFTihkZXZfcHJpdikgPD0gNCAmJiAhSVNfRzRYKGRldl9wcml2KSkKLQkJ
STkxNV9XUklURShGQkNfQ09OVFJPTCwgZGV2X3ByaXYtPnJlZ2ZpbGUuc2F2ZUZCQ19DT05UUk9M
KTsKLQogCWludGVsX3ZnYV9yZWRpc2FibGUoZGV2X3ByaXYpOwogfQogCi0tIAoyLjI2LjIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
