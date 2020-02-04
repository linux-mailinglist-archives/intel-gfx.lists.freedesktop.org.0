Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DA0151A35
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 13:01:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 194576EE5B;
	Tue,  4 Feb 2020 12:01:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C59406EE57
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 12:01:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 03:39:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,401,1574150400"; d="scan'208";a="225481743"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga008.fm.intel.com with ESMTP; 04 Feb 2020 03:39:49 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Feb 2020 16:59:25 +0530
Message-Id: <20200204112927.17391-6-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200204112927.17391-1-anshuman.gupta@intel.com>
References: <20200204112927.17391-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915: Get right max plane stride
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

aW50ZWxfcGxhbmVfZmJfbWF4X3N0cmlkZSBzaG91bGQgcmV0dXJuIHRoZSBtYXggc3RyaWRlIG9m
CnByaW1hcnkgcGxhbmUgZm9yIGZpcnN0IGF2YWlsYWJsZSBwaXBlIGluIGludGVsIGRldmljZSBp
bmZvCnBpcGVfbWFzay4KCmNoYW5nZXMgc2luY2UgUkZDOgotIEludHJvZHVjZWQgYSBoZWxwZXIg
dG8gZ2V0IGZpcnN0IGludGVsX2NydGMgaW50ZWxfZ2V0X2ZpcnN0X2NydGMuIFtWaWxsZV0KCkNj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQt
b2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICAgICAgIHwgNSArKyst
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCA2
ICsrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA3
YzUxZWIzZmFlYjMuLjBkY2Y0MDBmNjk1NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTI3MDYsOSArMjcwNiwxMCBAQCB1MzIgaW50ZWxfcGxh
bmVfZmJfbWF4X3N0cmlkZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAKIAkv
KgogCSAqIFdlIGFzc3VtZSB0aGUgcHJpbWFyeSBwbGFuZSBmb3IgcGlwZSBBIGhhcwotCSAqIHRo
ZSBoaWdoZXN0IHN0cmlkZSBsaW1pdHMgb2YgdGhlbSBhbGwuCisJICogdGhlIGhpZ2hlc3Qgc3Ry
aWRlIGxpbWl0cyBvZiB0aGVtIGFsbCwKKwkgKiBpZiBpbiBjYXNlIHBpcGUgQSBpcyBkaXNhYmxl
ZCwgdXNlIHRoZSBmaXJzdCBwaXBlIGZyb20gcGlwZV9tYXNrLgogCSAqLwotCWNydGMgPSBpbnRl
bF9nZXRfY3J0Y19mb3JfcGlwZShkZXZfcHJpdiwgUElQRV9BKTsKKwljcnRjID0gaW50ZWxfZ2V0
X2ZpcnN0X2NydGMoZGV2X3ByaXYpOwogCWlmICghY3J0YykKIAkJcmV0dXJuIDA7CiAKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKaW5k
ZXggODBhNjQ2MGRhODUyLi4xZjI5NWM4OTA2MWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCkBAIC0xNDIzLDYgKzE0MjMsMTIg
QEAgdmx2X3BpcGVfdG9fY2hhbm5lbChlbnVtIHBpcGUgcGlwZSkKIAl9CiB9CiAKK3N0YXRpYyBp
bmxpbmUgc3RydWN0IGludGVsX2NydGMgKgoraW50ZWxfZ2V0X2ZpcnN0X2NydGMoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQoreworCXJldHVybiB0b19pbnRlbF9jcnRjKGRybV9j
cnRjX2Zyb21faW5kZXgoJmRldl9wcml2LT5kcm0sIDApKTsKK30KKwogc3RhdGljIGlubGluZSBz
dHJ1Y3QgaW50ZWxfY3J0YyAqCiBpbnRlbF9nZXRfY3J0Y19mb3JfcGlwZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcGlwZSBwaXBlKQogewotLSAKMi4yNC4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
