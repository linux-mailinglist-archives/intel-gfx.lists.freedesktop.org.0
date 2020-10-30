Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D14D2A0BBD
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 17:51:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 955A76E9DC;
	Fri, 30 Oct 2020 16:51:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 507E96E9D9
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 16:51:09 +0000 (UTC)
IronPort-SDR: HNrl29Lo/m3hGWrX2mwI8MXZxMJzIlQDeN4bo1h1wEDPZ9NMDcllUFuO8cJlTq8GTSitPteOqi
 b0+5GCnJoZzg==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="168764476"
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="168764476"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 09:51:08 -0700
IronPort-SDR: A7vvVOj1XfZrVbl1n+Gh/ayeK5QTRUA4gAGJLNuDE8CME4s3kSDPRpmxUkBA+H7QF7f8TepP5O
 20m2mXvh1d3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="425390838"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 30 Oct 2020 09:51:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Oct 2020 18:51:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Oct 2020 18:50:42 +0200
Message-Id: <20201030165045.5000-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201030165045.5000-1-ville.syrjala@linux.intel.com>
References: <20201030165045.5000-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/10] drm/i915: Remove gen6_check_mch_setup()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCnNu
Yl93bV9sYXRlbmN5X3F1aXJrKCkgYWxyZWFkeSBib29zdHMgdXAgdGhlIGxhdGVuY3kgdmFsdWVz
CnNvIHRoZSBleHRyYSB3YXJuaW5nIGFib3V0IHRoZSBTU0tQRCB2YWx1ZSBiZWluZyBpbnN1ZmZp
Y2llbnQKaXMgbm93IHJlZHVuZGFudC4gRHJvcCBpdC4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaCB8ICAyIC0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5jIHwgMTUgLS0tLS0tLS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDE3IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGJiMDY1Njg3NTY5Ny4uODlmNTIwNDUwOGZi
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTM3OTEsOCArMzc5MSw2IEBAIHN0YXRpYyBp
bmxpbmUgYm9vbCBpOTE1X21taW9fcmVnX3ZhbGlkKGk5MTVfcmVnX3QgcmVnKQogCiAvKiBzbmIg
TUNIIHJlZ2lzdGVycyBmb3IgcHJpb3JpdHkgdHVuaW5nICovCiAjZGVmaW5lIE1DSF9TU0tQRAkJ
CV9NTUlPKE1DSEJBUl9NSVJST1JfQkFTRV9TTkIgKyAweDVkMTApCi0jZGVmaW5lICAgTUNIX1NT
S1BEX1dNMF9NQVNLCQkweDNmCi0jZGVmaW5lICAgTUNIX1NTS1BEX1dNMF9WQUwJCTB4YwogCiAv
KiBDbG9ja2luZyBjb25maWd1cmF0aW9uIHJlZ2lzdGVyICovCiAjZGVmaW5lIENMS0NGRwkJCV9N
TUlPKE1DSEJBUl9NSVJST1JfQkFTRSArIDB4YzAwKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5k
ZXggNWRiMjBiZjM2MzAyLi5kNGNiYzE2NDQxZDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpA
QCAtNjk4MiwxNyArNjk4Miw2IEBAIHN0YXRpYyB2b2lkIGNwdF9pbml0X2Nsb2NrX2dhdGluZyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJfQogfQogCi1zdGF0aWMgdm9pZCBn
ZW42X2NoZWNrX21jaF9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCi17
Ci0JdTMyIHRtcDsKLQotCXRtcCA9IEk5MTVfUkVBRChNQ0hfU1NLUEQpOwotCWlmICgodG1wICYg
TUNIX1NTS1BEX1dNMF9NQVNLKSAhPSBNQ0hfU1NLUERfV00wX1ZBTCkKLQkJZHJtX2RiZ19rbXMo
JmRldl9wcml2LT5kcm0sCi0JCQkgICAgIldyb25nIE1DSF9TU0tQRCB2YWx1ZTogMHglMDh4IFRo
aXMgY2FuIGNhdXNlIHVuZGVycnVucy5cbiIsCi0JCQkgICAgdG1wKTsKLX0KLQogc3RhdGljIHZv
aWQgZ2VuNl9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCiB7CiAJdTMyIGRzcGNsa19nYXRlID0gSUxLX1ZSSFVOSVRfQ0xPQ0tfR0FURV9ESVNBQkxF
OwpAQCAtNzA1MCw4ICs3MDM5LDYgQEAgc3RhdGljIHZvaWQgZ2VuNl9pbml0X2Nsb2NrX2dhdGlu
ZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJZzR4X2Rpc2FibGVfdHJpY2ts
ZV9mZWVkKGRldl9wcml2KTsKIAogCWNwdF9pbml0X2Nsb2NrX2dhdGluZyhkZXZfcHJpdik7Ci0K
LQlnZW42X2NoZWNrX21jaF9zZXR1cChkZXZfcHJpdik7CiB9CiAKIHN0YXRpYyB2b2lkIGxwdF9p
bml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCkBAIC03
NDIwLDggKzc0MDcsNiBAQCBzdGF0aWMgdm9pZCBpdmJfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiAJaWYgKCFIQVNfUENIX05PUChkZXZfcHJp
dikpCiAJCWNwdF9pbml0X2Nsb2NrX2dhdGluZyhkZXZfcHJpdik7Ci0KLQlnZW42X2NoZWNrX21j
aF9zZXR1cChkZXZfcHJpdik7CiB9CiAKIHN0YXRpYyB2b2lkIHZsdl9pbml0X2Nsb2NrX2dhdGlu
ZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCi0tIAoyLjI2LjIKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
