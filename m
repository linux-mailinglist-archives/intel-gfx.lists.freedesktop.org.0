Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5611B825F
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Apr 2020 01:14:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DB4F6E119;
	Fri, 24 Apr 2020 23:14:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 797BD6E119
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 23:14:27 +0000 (UTC)
IronPort-SDR: KQe/byv+oeiFEyXESrPP66leXAK+xRffj+/5faI12lwUsSS9uNOEO50mRMMb45WImryBBOibur
 RF0dT46fAyNQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 16:14:27 -0700
IronPort-SDR: XjRq0omjcFCYTzYqAmYCNTwkJjByj4bHFHfEA6sXiNXwI+8zUY2BxMaXCf4eIII9PVi1fDb2Mp
 Pjo9iS227mVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="291738987"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga002.fm.intel.com with ESMTP; 24 Apr 2020 16:14:27 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Apr 2020 16:14:23 -0700
Message-Id: <20200424231423.4065231-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Use proper fault mask in interrupt
 postinstall too
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

VGhlIElSUSBwb3N0aW5zdGFsbCBoYW5kbGluZyBoYWQgb3Blbi1jb2RlZCBwaXBlIGZhdWx0IG1h
c2sgc2VsZWN0aW9uCnRoYXQgbmV2ZXIgZ290IHVwZGF0ZWQgZm9yIGdlbjExLiAgU3dpdGNoIGl0
IHRvIHVzZQpnZW44X2RlX3BpcGVfZmF1bHRfbWFzaygpIHRvIGVuc3VyZSB3ZSBkb24ndCBtaXNz
IHVwZGF0ZXMgZm9yIG5ldwpwbGF0Zm9ybXMuCgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+CkZpeGVzOiBkNTA2YTY1ZDU2ZmQgKCJkcm0vaTkxNTogQ2F0
Y2ggR1RUIGZhdWx0IGVycm9ycyBmb3IgZ2VuMTErIHBsYW5lcyIpClNpZ25lZC1vZmYtYnk6IE1h
dHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9pcnEuYyB8IDYgKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCmluZGV4IDE1MDJhYjQ0
ZjFhNS4uYmQ3MjJkMDY1MGM4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKQEAgLTMzNTgsNyAr
MzM1OCw4IEBAIHN0YXRpYyB2b2lkIGdlbjhfZGVfaXJxX3Bvc3RpbnN0YWxsKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUg
PSAmZGV2X3ByaXYtPnVuY29yZTsKIAotCXUzMiBkZV9waXBlX21hc2tlZCA9IEdFTjhfUElQRV9D
RENMS19DUkNfRE9ORTsKKwl1MzIgZGVfcGlwZV9tYXNrZWQgPSBnZW44X2RlX3BpcGVfZmF1bHRf
bWFzayhkZXZfcHJpdikgfAorCQlHRU44X1BJUEVfQ0RDTEtfQ1JDX0RPTkU7CiAJdTMyIGRlX3Bp
cGVfZW5hYmxlczsKIAl1MzIgZGVfcG9ydF9tYXNrZWQgPSBHRU44X0FVWF9DSEFOTkVMX0E7CiAJ
dTMyIGRlX3BvcnRfZW5hYmxlczsKQEAgLTMzNjksMTMgKzMzNzAsMTAgQEAgc3RhdGljIHZvaWQg
Z2VuOF9kZV9pcnFfcG9zdGluc3RhbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQogCQlkZV9taXNjX21hc2tlZCB8PSBHRU44X0RFX01JU0NfR1NFOwogCiAJaWYgKElOVEVMX0dF
TihkZXZfcHJpdikgPj0gOSkgewotCQlkZV9waXBlX21hc2tlZCB8PSBHRU45X0RFX1BJUEVfSVJR
X0ZBVUxUX0VSUk9SUzsKIAkJZGVfcG9ydF9tYXNrZWQgfD0gR0VOOV9BVVhfQ0hBTk5FTF9CIHwg
R0VOOV9BVVhfQ0hBTk5FTF9DIHwKIAkJCQkgIEdFTjlfQVVYX0NIQU5ORUxfRDsKIAkJaWYgKElT
X0dFTjlfTFAoZGV2X3ByaXYpKQogCQkJZGVfcG9ydF9tYXNrZWQgfD0gQlhUX0RFX1BPUlRfR01C
VVM7Ci0JfSBlbHNlIHsKLQkJZGVfcGlwZV9tYXNrZWQgfD0gR0VOOF9ERV9QSVBFX0lSUV9GQVVM
VF9FUlJPUlM7CiAJfQogCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCi0tIAoyLjI0
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
