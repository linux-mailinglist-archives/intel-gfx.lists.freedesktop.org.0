Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A81FB386CC
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 11:12:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E81989CF8;
	Fri,  7 Jun 2019 09:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88C0289CE3
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 09:12:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 02:12:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,562,1557212400"; d="scan'208";a="182609336"
Received: from kseeloff-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk.fios-router.home) ([10.254.23.10])
 by fmsmga002.fm.intel.com with ESMTP; 07 Jun 2019 02:12:47 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jun 2019 02:12:22 -0700
Message-Id: <20190607091230.1489-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190607091230.1489-1-lucas.demarchi@intel.com>
References: <20190607091230.1489-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/9] drm/i915/dmc: use kernel types
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

Q2hhbmdlIGFsbCBmaWVsZHMgaW4gaW50ZWxfcGFja2FnZV9oZWFkZXIgYW5kIGludGVsX2RtY19o
ZWFkZXIgd2hvc2UKbWVhbmluZyBhcmUgMS1ieXRlIG51bWJlcnMgdG8gdXNlIHU4LgoKU2lnbmVk
LW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClJldmll
d2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+ClJldmlld2VkLWJ5
OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMgfCAxMCArKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2Nzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3Ny
LmMKaW5kZXggYmYwZWViZDM4NWI5Li4zZDJiZWVjZDhkMGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2Nzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2Nzci5jCkBAIC0xMzAsMTIgKzEzMCwxMiBAQCBzdHJ1Y3QgaW50ZWxfZndfaW5mbyB7CiAKIHN0
cnVjdCBpbnRlbF9wYWNrYWdlX2hlYWRlciB7CiAJLyogRE1DIGNvbnRhaW5lciBoZWFkZXIgbGVu
Z3RoIGluIGR3b3JkcyAqLwotCXVuc2lnbmVkIGNoYXIgaGVhZGVyX2xlbjsKKwl1OCBoZWFkZXJf
bGVuOwogCiAJLyogYWx3YXlzIHZhbHVlIHdvdWxkIGJlIDB4MDEgKi8KLQl1bnNpZ25lZCBjaGFy
IGhlYWRlcl92ZXI7CisJdTggaGVhZGVyX3ZlcjsKIAotCXVuc2lnbmVkIGNoYXIgcmVzZXJ2ZWRb
MTBdOworCXU4IHJlc2VydmVkWzEwXTsKIAogCS8qIE51bWJlciBvZiB2YWxpZCBlbnRyaWVzIGlu
IHRoZSBGV0luZm8gYXJyYXkgYmVsb3cgKi8KIAl1MzIgbnVtX2VudHJpZXM7CkBAIC0xNDgsMTAg
KzE0OCwxMCBAQCBzdHJ1Y3QgaW50ZWxfZG1jX2hlYWRlciB7CiAJdTMyIHNpZ25hdHVyZTsKIAog
CS8qIERNQyBiaW5hcnkgaGVhZGVyIGxlbmd0aCAqLwotCXVuc2lnbmVkIGNoYXIgaGVhZGVyX2xl
bjsKKwl1OCBoZWFkZXJfbGVuOwogCiAJLyogMHgwMSAqLwotCXVuc2lnbmVkIGNoYXIgaGVhZGVy
X3ZlcjsKKwl1OCBoZWFkZXJfdmVyOwogCiAJLyogUmVzZXJ2ZWQgKi8KIAl1MTYgZG1jY192ZXI7
Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
