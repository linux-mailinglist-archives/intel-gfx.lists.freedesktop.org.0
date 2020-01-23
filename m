Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC87E14693A
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 14:36:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A9AA6FCB9;
	Thu, 23 Jan 2020 13:36:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 000DE6FCBA
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 13:36:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 05:36:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="216259565"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga007.jf.intel.com with ESMTP; 23 Jan 2020 05:36:34 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jan 2020 18:56:57 +0530
Message-Id: <20200123132659.725-5-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200123132659.725-1-anshuman.gupta@intel.com>
References: <20200123132659.725-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 4/6] drm/i915: Get right max plane stride
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

aW50ZWxfcGxhbmVfZmJfbWF4X3N0cmlkZSBzaG91bGQgcmV0dXJuIHRoZSBtYXggc3RyaWRlIG9m
CnByaW1hcnkgcGxhbmUgZm9yIGZpcnN0IGF2YWlsYWJsZSBwaXBlIGluIGludGVsIGRldmljZSBp
bmZvCnBpcGVfbWFzay4KCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jIHwgNyArKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
aW5kZXggYjI1MGIzMWY2MDAwLi5iOTIwOWI3ZTcxZDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0yNzAzLDEyICsyNzAzLDE1IEBAIHUzMiBp
bnRlbF9wbGFuZV9mYl9tYXhfc3RyaWRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwKIHsKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKIAlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBs
YW5lOworCWVudW0gcGlwZSBwaXBlOwogCiAJLyoKIAkgKiBXZSBhc3N1bWUgdGhlIHByaW1hcnkg
cGxhbmUgZm9yIHBpcGUgQSBoYXMKLQkgKiB0aGUgaGlnaGVzdCBzdHJpZGUgbGltaXRzIG9mIHRo
ZW0gYWxsLgorCSAqIHRoZSBoaWdoZXN0IHN0cmlkZSBsaW1pdHMgb2YgdGhlbSBhbGwsCisJICog
aWYgaW4gY2FzZSBwaXBlIEEgaXMgZGlzYWJsZWQsIHVzZSB0aGUgZmlyc3QgcGlwZSBmcm9tIHBp
cGVfbWFzay4KIAkgKi8KLQljcnRjID0gaW50ZWxfZ2V0X2NydGNfZm9yX3BpcGUoZGV2X3ByaXYs
IFBJUEVfQSk7CisJcGlwZSA9IGZmcyhJTlRFTF9JTkZPKGRldl9wcml2KS0+cGlwZV9tYXNrKSAt
IDE7CisJY3J0YyA9IGludGVsX2dldF9jcnRjX2Zvcl9waXBlKGRldl9wcml2LCBwaXBlKTsKIAlp
ZiAoIWNydGMpCiAJCXJldHVybiAwOwogCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
