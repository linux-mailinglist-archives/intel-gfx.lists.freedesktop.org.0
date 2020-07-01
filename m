Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE6E21013F
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 03:05:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A66BD6E5BE;
	Wed,  1 Jul 2020 01:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA0986E5B6
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 01:05:25 +0000 (UTC)
IronPort-SDR: UZXdax7th3hV7mgc4KYO1Y637BfvFBmWyFuVhKDDfZ5hghrr5WPK0Y7bJNJvoat/tdymX9x2zZ
 AsDrIW2dsBuQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="147978661"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="147978661"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 18:05:24 -0700
IronPort-SDR: 5CrylG3DmYr6W0YlyuXaS8oarvMBxKl+/3tpYSLnzemv6kFGBJLgskfsoR2UB6UNpAeg5GgpIt
 y3/ZhGo/ssgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="266619693"
Received: from gkipp-mobl1.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.255.76.92])
 by fmsmga008.fm.intel.com with ESMTP; 30 Jun 2020 18:05:24 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jun 2020 18:06:54 -0700
Message-Id: <20200701010655.226379-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/tgl: Implement WA 18011464164
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

VGhpcyBmaXggc29tZSBwb3NzaWJsZSBjb3JydXB0aW9ucy4KCnYyOgpSZW5hbWVkIFNMSUNFX1VO
SVRfTEVWRUxfQ0xPQ0tfR0FUSU5HX0NUTCB0bwpTTElDRV9VTklUX0xFVkVMX0NMS0dBVEVfQ1RM
Xzk0RDgKCkJTcGVjOiA1Mjc1NQpCU3BlYzogNTI4OTAKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggfCAzICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDgg
KysrKysrKy0KIDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDlkNjUzNmFmYzk0Yi4uNzZiYzcwZDIxNGI2
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTQxNzQsNiArNDE3NCw5IEBAIGVudW0gewog
I2RlZmluZSBJTkZfVU5JVF9MRVZFTF9DTEtHQVRFCQlfTU1JTygweDk1NjApCiAjZGVmaW5lICAg
Q0dQU0ZfQ0xLR0FURV9ESVMJCSgxIDw8IDMpCiAKKyNkZWZpbmUgU0xJQ0VfVU5JVF9MRVZFTF9D
TEtHQVRFX0NUTF85NEQ4CV9NTUlPKDB4OTREOCkKKyNkZWZpbmUgICBHU19VTklUX0NMT0NLX0dB
VElOR19ESVMJCVJFR19CSVQoMjQpCisKIC8qCiAgKiBEaXNwbGF5IGVuZ2luZSByZWdzCiAgKi8K
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IDJhMzJkNjIzMDc5NS4uODAyOTNlM2U0OGFkIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTcxMTMsNyArNzExMyw3IEBAIHN0YXRpYyB2b2lk
IHRnbF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
CiAJSTkxNV9XUklURShQT1dFUkdBVEVfRU5BQkxFLAogCQkgICBJOTE1X1JFQUQoUE9XRVJHQVRF
X0VOQUJMRSkgfCB2ZF9wZ19lbmFibGUpOwogCi0JLyogV2FfMTQwOTgyNTM3Njp0Z2wgKHByZS1w
cm9kKSovCisJLyogV2FfMTQwOTgyNTM3Njp0Z2wgKHByZS1wcm9kKSAqLwogCWlmIChJU19UR0xf
UkVWSUQoZGV2X3ByaXYsIFRHTF9SRVZJRF9BMCwgVEdMX1JFVklEX0EwKSkKIAkJSTkxNV9XUklU
RShHRU45X0NMS0dBVEVfRElTXzMsIEk5MTVfUkVBRChHRU45X0NMS0dBVEVfRElTXzMpIHwKIAkJ
CSAgIFRHTF9WUkhfR0FUSU5HX0RJUyk7CkBAIC03MTIxLDYgKzcxMjEsMTIgQEAgc3RhdGljIHZv
aWQgdGdsX2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIAkvKiBXYV8xNDAxMTA1OTc4ODp0Z2wgKi8KIAlpbnRlbF91bmNvcmVfcm13KCZkZXZfcHJp
di0+dW5jb3JlLCBHRU4xMF9ERlJfUkFUSU9fRU5fQU5EX0NISUNLRU4sCiAJCQkgMCwgREZSX0RJ
U0FCTEUpOworCisJLyogV2FfMTgwMTE0NjQxNjQ6dGdsICovCisJaWYgKElTX1RHTF9SRVZJRChk
ZXZfcHJpdiwgVEdMX1JFVklEX0IwLCBUR0xfUkVWSURfQjApKQorCQlpbnRlbF91bmNvcmVfcm13
KCZkZXZfcHJpdi0+dW5jb3JlLAorCQkJCSBTTElDRV9VTklUX0xFVkVMX0NMS0dBVEVfQ1RMXzk0
RDgsIDAsCisJCQkJIEdTX1VOSVRfQ0xPQ0tfR0FUSU5HX0RJUyk7CiB9CiAKIHN0YXRpYyB2b2lk
IGNucF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
Ci0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
