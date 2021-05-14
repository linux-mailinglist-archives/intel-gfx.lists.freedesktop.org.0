Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5F6380D5D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 17:37:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DD896F380;
	Fri, 14 May 2021 15:37:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D898A6EF2E
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 15:37:21 +0000 (UTC)
IronPort-SDR: BtQw0UXnxvaBl8EXRnZSJb8WgBNW/5cyNwCvytNItm6CuhzvkbWTWNppQDTDjf/+YnkS32L4qF
 va2+x7mOdd2A==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="200243936"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="200243936"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:37:19 -0700
IronPort-SDR: 3a9Y4n5CVM2BQVagIRz4wqJBkQ+yhXMBUOZcz0UoXuavu2NiAsMfUxuNJryWK4x62sMBylMTWj
 zDyE1nbHDToQ==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="610796594"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:37:19 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 08:37:09 -0700
Message-Id: <20210514153711.2359617-18-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210514153711.2359617-1-matthew.d.roper@intel.com>
References: <20210514153711.2359617-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 17/19] drm/i915/adl_p: Implement Wa_22011091694
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpBZGRp
bmcgYSBuZXcgaG9vayB0byBBREwtUCBqdXN0IHRvIGF2b2lkIGFub3RoZXIgcGxhdGZvcm0gY2hl
Y2sgaW4KZ2VuMTJscF9pbml0X2Nsb2NrX2dhdGluZygpIGJ1dCBhbHNvIG9wZW4gdG8gaXQuCgpC
U3BlYzogNTQzNjkKQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CkNj
OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWduZWQt
b2ZmLWJ5OiBDbGludG9uIFRheWxvciA8Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+ClJldmlld2Vk
LWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggfCAgMyArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BtLmMgfCAxMiArKysrKysrKysrKy0KIDIgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGRkNmUwYmFlOTU3
My4uMDg5YjVhNTliZWQzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTQxNzYsNiArNDE3
Niw5IEBAIGVudW0gewogI2RlZmluZSBHRU45X0NMS0dBVEVfRElTXzQJCV9NTUlPKDB4NDY1M0Mp
CiAjZGVmaW5lICAgQlhUX0dNQlVTX0dBVElOR19ESVMJCSgxIDw8IDE0KQogCisjZGVmaW5lIEdF
TjlfQ0xLR0FURV9ESVNfNQkJX01NSU8oMHg0NjU0MCkKKyNkZWZpbmUgICBEUENFX0dBVElOR19E
SVMJCVJFR19CSVQoMTcpCisKICNkZWZpbmUgX0NMS0dBVEVfRElTX1BTTF9BCQkweDQ2NTIwCiAj
ZGVmaW5lIF9DTEtHQVRFX0RJU19QU0xfQgkJMHg0NjUyNAogI2RlZmluZSBfQ0xLR0FURV9ESVNf
UFNMX0MJCTB4NDY1MjgKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IDg2YTc4Y2JiNjBmYy4u
MTVkOWE2NGU3YjRjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTcxNDEsNiArNzE0MSwx
NCBAQCBzdGF0aWMgdm9pZCBnZW4xMmxwX2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKIAkJCQkgQ0xLUkVRX1BPTElDWV9NRU1fVVBfT1ZSRCwgMCk7
CiB9CiAKK3N0YXRpYyB2b2lkIGFkbHBfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQoreworCWdlbjEybHBfaW5pdF9jbG9ja19nYXRpbmcoZGV2X3By
aXYpOworCisJLyogV2FfMjIwMTEwOTE2OTQ6YWRscCAqLworCWludGVsX2RlX3JtdyhkZXZfcHJp
diwgR0VOOV9DTEtHQVRFX0RJU181LCAwLCBEUENFX0dBVElOR19ESVMpOworfQorCiBzdGF0aWMg
dm9pZCBkZzFfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQogewogCWdlbjEybHBfaW5pdF9jbG9ja19nYXRpbmcoZGV2X3ByaXYpOwpAQCAtNzYxOCw3
ICs3NjI2LDkgQEAgc3RhdGljIHZvaWQgbm9wX2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKICAqLwogdm9pZCBpbnRlbF9pbml0X2Nsb2NrX2dhdGlu
Z19ob29rcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7Ci0JaWYgKElTX0RH
MShkZXZfcHJpdikpCisJaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSkKKwkJZGV2X3ByaXYt
PmRpc3BsYXkuaW5pdF9jbG9ja19nYXRpbmcgPSBhZGxwX2luaXRfY2xvY2tfZ2F0aW5nOworCWVs
c2UgaWYgKElTX0RHMShkZXZfcHJpdikpCiAJCWRldl9wcml2LT5kaXNwbGF5LmluaXRfY2xvY2tf
Z2F0aW5nID0gZGcxX2luaXRfY2xvY2tfZ2F0aW5nOwogCWVsc2UgaWYgKElTX0dFTihkZXZfcHJp
diwgMTIpKQogCQlkZXZfcHJpdi0+ZGlzcGxheS5pbml0X2Nsb2NrX2dhdGluZyA9IGdlbjEybHBf
aW5pdF9jbG9ja19nYXRpbmc7Ci0tIAoyLjI1LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
