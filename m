Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F574AF88
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 03:39:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA27F6E279;
	Wed, 19 Jun 2019 01:38:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 664956E278
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 01:38:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 18:38:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,391,1557212400"; d="scan'208";a="160227577"
Received: from jssummer-desk.ra.intel.com ([10.54.134.159])
 by fmsmga008.fm.intel.com with ESMTP; 18 Jun 2019 18:38:56 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jun 2019 18:38:56 -0700
Message-Id: <20190619013856.11872-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] mm: Use local variable for swap address space
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBhZGRyZXNzZXMgdGhlIGZvbGxvd2luZyBidWlsZCBlcnJvcjoKbW0vaHVnZV9tZW1vcnku
YzogSW4gZnVuY3Rpb24g4oCYX19zcGxpdF9odWdlX3BhZ2XigJk6Cm1tL2h1Z2VfbWVtb3J5LmM6
MjUwNjo0MTogd2FybmluZzogZGVyZWZlcmVuY2luZyDigJh2b2lkICrigJkgcG9pbnRlcgogICAg
X194YV9zdG9yZSgmc3dhcF9hZGRyZXNzX3NwYWNlKGVudHJ5KS0+aV9wYWdlcywKICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefgptbS9odWdlX21lbW9yeS5jOjI1MDY6
NDE6IGVycm9yOiByZXF1ZXN0IGZvciBtZW1iZXIg4oCYaV9wYWdlc+KAmSBpbgpzb21ldGhpbmcg
bm90IGEgc3RydWN0dXJlIG9yIHVuaW9uCgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+ClNpZ25lZC1vZmYtYnk6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVy
c0BpbnRlbC5jb20+Ci0tLQogbW0vaHVnZV9tZW1vcnkuYyB8IDQgKysrLQogMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL21tL2h1Z2Vf
bWVtb3J5LmMgYi9tbS9odWdlX21lbW9yeS5jCmluZGV4IGFmZmIyYzM2NjdmOS4uYmNlZDU0ODUx
MzdiIDEwMDY0NAotLS0gYS9tbS9odWdlX21lbW9yeS5jCisrKyBiL21tL2h1Z2VfbWVtb3J5LmMK
QEAgLTI1MDMsNyArMjUwMyw5IEBAIHN0YXRpYyB2b2lkIF9fc3BsaXRfaHVnZV9wYWdlKHN0cnVj
dCBwYWdlICpwYWdlLCBzdHJ1Y3QgbGlzdF9oZWFkICpsaXN0LAogCQkJCQloZWFkICsgaSwgMCk7
CiAJCX0gZWxzZSBpZiAoUGFnZVN3YXBDYWNoZShwYWdlKSkgewogCQkJc3dwX2VudHJ5X3QgZW50
cnkgPSB7IC52YWwgPSBwYWdlX3ByaXZhdGUoaGVhZCArIGkpIH07Ci0JCQlfX3hhX3N0b3JlKCZz
d2FwX2FkZHJlc3Nfc3BhY2UoZW50cnkpLT5pX3BhZ2VzLAorCQkJc3RydWN0IGFkZHJlc3Nfc3Bh
Y2UgKmFkZHJlc3Nfc3BhY2UgPQorCQkJCXN3YXBfYWRkcmVzc19zcGFjZShlbnRyeSk7CisJCQlf
X3hhX3N0b3JlKCZhZGRyZXNzX3NwYWNlLT5pX3BhZ2VzLAogCQkJCSAgIHN3cF9vZmZzZXQoZW50
cnkpLAogCQkJCSAgIGhlYWQgKyBpLCAwKTsKIAkJfQotLSAKMi4yMS4wLjUuZ2FlYjU4MmE5ODMK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
