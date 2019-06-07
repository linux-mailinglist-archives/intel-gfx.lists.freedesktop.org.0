Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4B338334
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 05:50:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EF44898F1;
	Fri,  7 Jun 2019 03:50:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC8E1898F1
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 03:50:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 20:50:01 -0700
X-ExtLoop1: 1
Received: from kseeloff-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk.amr.corp.intel.com) ([10.254.23.10])
 by orsmga002.jf.intel.com with ESMTP; 06 Jun 2019 20:50:01 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jun 2019 20:49:19 -0700
Message-Id: <20190607034919.16557-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/icl: use ranges for voltage level
 lookup
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
bmN5LgoKU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsuYyB8IDIxICsrKysr
KysrKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMTIgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NkY2xrLmMKaW5kZXggNjk4OGM2Y2JjMzYy
Li5iMTc1YTI5MjZjYWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nk
Y2xrLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsuYwpAQCAtMTg2NSwy
MSArMTg2NSwxOCBAQCBzdGF0aWMgdm9pZCBpY2xfc2V0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwKIAogc3RhdGljIHU4IGljbF9jYWxjX3ZvbHRhZ2VfbGV2ZWwoaW50
IGNkY2xrKQogewotCXN3aXRjaCAoY2RjbGspIHsKLQljYXNlIDUwMDAwOgotCWNhc2UgMzA3MjAw
OgotCWNhc2UgMzEyMDAwOgorCWlmIChjZGNsayA8PSAzMTIwMDApCiAJCXJldHVybiAwOwotCWNh
c2UgNTU2ODAwOgotCWNhc2UgNTUyMDAwOgorCisJaWYgKGNkY2xrIDw9IDU1NjgwMCkKIAkJcmV0
dXJuIDE7Ci0JZGVmYXVsdDoKLQkJTUlTU0lOR19DQVNFKGNkY2xrKTsKLQkJLyogZmFsbCB0aHJv
dWdoICovCi0JY2FzZSA2NTI4MDA6Ci0JY2FzZSA2NDgwMDA6CisKKwlpZiAoY2RjbGsgPD0gNjUy
ODAwKQogCQlyZXR1cm4gMjsKLQl9CisKKwlNSVNTSU5HX0NBU0UoY2RjbGspOworCisJcmV0dXJu
IDI7CiB9CiAKIHN0YXRpYyB2b2lkIGljbF9nZXRfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
