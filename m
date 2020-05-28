Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39BA61E6BD1
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 22:02:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1B6A6E20A;
	Thu, 28 May 2020 20:02:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C39626E20A
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 20:02:47 +0000 (UTC)
IronPort-SDR: z6zDK5zTwXd/xleUHtTsP2OILCPimAtC8AerVa6FFjGJRRqK7vXYNiEy9DzzxXS93GlUZeggCb
 HhwLrhdpLdaA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 13:02:47 -0700
IronPort-SDR: zPH6d3f5op0PMTs4SJMJGfSinxRCLfBDfFZmKJ3O9KouOHWzUU+RAXHp4FDj96oWTnsxCnHypZ
 bXTBLnJEfqLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="469258883"
Received: from jmcenteg-mobl.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.255.69.53])
 by fmsmga006.fm.intel.com with ESMTP; 28 May 2020 13:02:46 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 May 2020 13:03:53 -0700
Message-Id: <20200528200356.36756-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/display/hsw+: Do not program the
 same vswing entry twice
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

SXQgd2lsbCBiZSBwcm9ncmFtZWQgcmlnaHQgYmVmb3JlIHRoZSBsaW5rIHRyYWluaW5nLCBzbyBu
byBuZWVkIHRvIGRvCml0IHR3aWNlLgpJdCB3aWxsIG5vdCBzdHJpY3RseSBmb2xsb3cgQlNwZWMg
c2VxdWVuY2VzIGJ1dCBtb3N0IG9mIHRoaXMgc2VxdWVuY2VzCmFyZSBub3QgbWF0Y2hpbmcgYW55
d2F5cy4KClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMg
fCAxOSArKysrLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCAxNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YwppbmRleCBhYTIyNDY1YmI1NmUuLmMxMDBlZmM2YTJjNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0zMTE1LDcgKzMxMTUsNiBAQCBzdGF0aWMgdm9pZCB0
Z2xfZGRpX3ByZV9lbmFibGVfZHAoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJ
ZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIGVuY29kZXItPnBvcnQp
OwogCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gZW5jX3RvX2RpZ19wb3J0
KGVuY29kZXIpOwogCWJvb2wgaXNfbXN0ID0gaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRl
LCBJTlRFTF9PVVRQVVRfRFBfTVNUKTsKLQlpbnQgbGV2ZWwgPSBpbnRlbF9kZGlfZHBfbGV2ZWwo
aW50ZWxfZHApOwogCWVudW0gdHJhbnNjb2RlciB0cmFuc2NvZGVyID0gY3J0Y19zdGF0ZS0+Y3B1
X3RyYW5zY29kZXI7CiAKIAlpbnRlbF9kcF9zZXRfbGlua19wYXJhbXMoaW50ZWxfZHAsIGNydGNf
c3RhdGUtPnBvcnRfY2xvY2ssCkBAIC0zMTkwLDkgKzMxODksMTAgQEAgc3RhdGljIHZvaWQgdGds
X2RkaV9wcmVfZW5hYmxlX2RwKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCSAq
IGRvd24gdGhpcyBmdW5jdGlvbi4KIAkgKi8KIAotCS8qIDcuZSBDb25maWd1cmUgdm9sdGFnZSBz
d2luZyBhbmQgcmVsYXRlZCBJTyBzZXR0aW5ncyAqLwotCXRnbF9kZGlfdnN3aW5nX3NlcXVlbmNl
KGVuY29kZXIsIGNydGNfc3RhdGUtPnBvcnRfY2xvY2ssIGxldmVsLAotCQkJCWVuY29kZXItPnR5
cGUpOworCS8qCisJICogNy5lIENvbmZpZ3VyZSB2b2x0YWdlIHN3aW5nIGFuZCByZWxhdGVkIElP
IHNldHRpbmdzCisJICogSXQgd2lsbCBiZSBkb25lIGluIGludGVsX2RwX3N0YXJ0X2xpbmtfdHJh
aW4oKSwgbm8gbmVlZCB0byBkbyB0d2ljZQorCSAqLwogCiAJLyoKIAkgKiA3LmYgQ29tYm8gUEhZ
OiBDb25maWd1cmUgUE9SVF9DTF9EVzEwIFN0YXRpYyBQb3dlciBEb3duIHRvIHBvd2VyIHVwCkBA
IC0zMjU3LDcgKzMyNTcsNiBAQCBzdGF0aWMgdm9pZCBoc3dfZGRpX3ByZV9lbmFibGVfZHAoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9y
dF90b19waHkoZGV2X3ByaXYsIHBvcnQpOwogCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRp
Z19wb3J0ID0gZW5jX3RvX2RpZ19wb3J0KGVuY29kZXIpOwogCWJvb2wgaXNfbXN0ID0gaW50ZWxf
Y3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfRFBfTVNUKTsKLQlpbnQgbGV2
ZWwgPSBpbnRlbF9kZGlfZHBfbGV2ZWwoaW50ZWxfZHApOwogCiAJaWYgKElOVEVMX0dFTihkZXZf
cHJpdikgPCAxMSkKIAkJZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sCkBAIC0zMjc5LDE2ICsz
Mjc4LDYgQEAgc3RhdGljIHZvaWQgaHN3X2RkaV9wcmVfZW5hYmxlX2RwKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLAogCiAJaWNsX3Byb2dyYW1fbWdfZHBfbW9kZShkaWdfcG9ydCwg
Y3J0Y19zdGF0ZSk7CiAKLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKLQkJaWNsX2Rk
aV92c3dpbmdfc2VxdWVuY2UoZW5jb2RlciwgY3J0Y19zdGF0ZS0+cG9ydF9jbG9jaywKLQkJCQkJ
bGV2ZWwsIGVuY29kZXItPnR5cGUpOwotCWVsc2UgaWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYp
KQotCQljbmxfZGRpX3Zzd2luZ19zZXF1ZW5jZShlbmNvZGVyLCBsZXZlbCwgZW5jb2Rlci0+dHlw
ZSk7Ci0JZWxzZSBpZiAoSVNfR0VOOV9MUChkZXZfcHJpdikpCi0JCWJ4dF9kZGlfdnN3aW5nX3Nl
cXVlbmNlKGVuY29kZXIsIGxldmVsLCBlbmNvZGVyLT50eXBlKTsKLQllbHNlCi0JCWludGVsX3By
ZXBhcmVfZHBfZGRpX2J1ZmZlcnMoZW5jb2RlciwgY3J0Y19zdGF0ZSk7Ci0KIAlpZiAoaW50ZWxf
cGh5X2lzX2NvbWJvKGRldl9wcml2LCBwaHkpKSB7CiAJCWJvb2wgbGFuZV9yZXZlcnNhbCA9CiAJ
CQlkaWdfcG9ydC0+c2F2ZWRfcG9ydF9iaXRzICYgRERJX0JVRl9QT1JUX1JFVkVSU0FMOwotLSAK
Mi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
