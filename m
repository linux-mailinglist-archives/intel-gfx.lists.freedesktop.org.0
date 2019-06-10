Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2153BEE5
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 23:48:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A82F089137;
	Mon, 10 Jun 2019 21:48:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E548389137
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 21:48:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 14:48:29 -0700
X-ExtLoop1: 1
Received: from ldmartin-desk.jf.intel.com ([10.24.10.152])
 by orsmga007.jf.intel.com with ESMTP; 10 Jun 2019 14:48:29 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 14:48:19 -0700
Message-Id: <20190610214819.9703-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190610214449.9447-1-lucas.demarchi@intel.com>
References: <20190610214449.9447-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915/icl: use ranges for voltage
 level lookup
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3BlYyBzaG93cyB2b2x0YWdlIGxldmVsIDAgYXMgMzA3LjIsIDMxMiwgb3IgbG93ZXIgYW5kIHN1
Z2dlc3RzIHRvIHVzZQpyYW5nZSBjaGVja3MuIFByZXBhcmUgZm9yIGhhdmluZyBvdGhlciBmcmVx
dWVuY2llcyBpbiB0aGVzZSByYW5nZXMgYnkKbm90IGNvbXBhcmluZyB0aGUgZXhhY3QgZnJlcXVl
bmN5LgoKdjI6IGludmVydCBjaGVja3MgYnkgY29tcGFyaW5nIGJpZ2dlc3QgY2RjbGsgZmlyc3Qg
KHN1Z2dlc3RlZCBieSBWaWxsZSkKClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVj
YXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nk
Y2xrLmMgfCAxOSArKysrKy0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspLCAxNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsuYwppbmRl
eCA2OTg4YzZjYmMzNjIuLjQ2NWE3MmQxODVhZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfY2RjbGsuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jZGNs
ay5jCkBAIC0xODY1LDIxICsxODY1LDEyIEBAIHN0YXRpYyB2b2lkIGljbF9zZXRfY2RjbGsoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCiBzdGF0aWMgdTggaWNsX2NhbGNfdm9s
dGFnZV9sZXZlbChpbnQgY2RjbGspCiB7Ci0Jc3dpdGNoIChjZGNsaykgewotCWNhc2UgNTAwMDA6
Ci0JY2FzZSAzMDcyMDA6Ci0JY2FzZSAzMTIwMDA6Ci0JCXJldHVybiAwOwotCWNhc2UgNTU2ODAw
OgotCWNhc2UgNTUyMDAwOgotCQlyZXR1cm4gMTsKLQlkZWZhdWx0OgotCQlNSVNTSU5HX0NBU0Uo
Y2RjbGspOwotCQkvKiBmYWxsIHRocm91Z2ggKi8KLQljYXNlIDY1MjgwMDoKLQljYXNlIDY0ODAw
MDoKKwlpZiAoY2RjbGsgPiA1NTY4MDApCiAJCXJldHVybiAyOwotCX0KKwllbHNlIGlmIChjZGNs
ayA+IDMxMjAwMCkKKwkJcmV0dXJuIDE7CisJZWxzZQorCQlyZXR1cm4gMDsKIH0KIAogc3RhdGlj
IHZvaWQgaWNsX2dldF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCi0t
IAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
