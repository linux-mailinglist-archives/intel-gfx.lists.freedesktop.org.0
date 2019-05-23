Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52ECF277DF
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 10:24:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E643289C96;
	Thu, 23 May 2019 08:24:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0482B89B9F
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 08:24:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 01:24:26 -0700
X-ExtLoop1: 1
Received: from igivoni-mobl.amr.corp.intel.com (HELO
 ldmartin-desk.amr.corp.intel.com) ([10.255.88.102])
 by orsmga001.jf.intel.com with ESMTP; 23 May 2019 01:24:26 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 May 2019 01:24:11 -0700
Message-Id: <20190523082420.10352-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/10] drm/i915/dmc: use kernel types
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
LW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMgfCAxMCArKysrKy0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfY3NyLmMKaW5kZXggNDUyN2I5NjYyMzMwLi5iMDVlN2E2YWViYzcgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2Nzci5jCkBAIC0xMzAsMTIgKzEzMCwxMiBAQCBzdHJ1Y3QgaW50ZWxfZndfaW5mbyB7
CiAKIHN0cnVjdCBpbnRlbF9wYWNrYWdlX2hlYWRlciB7CiAJLyogRE1DIGNvbnRhaW5lciBoZWFk
ZXIgbGVuZ3RoIGluIGR3b3JkcyAqLwotCXVuc2lnbmVkIGNoYXIgaGVhZGVyX2xlbjsKKwl1OCBo
ZWFkZXJfbGVuOwogCiAJLyogYWx3YXlzIHZhbHVlIHdvdWxkIGJlIDB4MDEgKi8KLQl1bnNpZ25l
ZCBjaGFyIGhlYWRlcl92ZXI7CisJdTggaGVhZGVyX3ZlcjsKIAotCXVuc2lnbmVkIGNoYXIgcmVz
ZXJ2ZWRbMTBdOworCXU4IHJlc2VydmVkWzEwXTsKIAogCS8qIE51bWJlciBvZiB2YWxpZCBlbnRy
aWVzIGluIHRoZSBGV0luZm8gYXJyYXkgYmVsb3cgKi8KIAl1MzIgbnVtX2VudHJpZXM7CkBAIC0x
NDgsMTAgKzE0OCwxMCBAQCBzdHJ1Y3QgaW50ZWxfZG1jX2hlYWRlciB7CiAJdTMyIHNpZ25hdHVy
ZTsKIAogCS8qIERNQyBiaW5hcnkgaGVhZGVyIGxlbmd0aCAqLwotCXVuc2lnbmVkIGNoYXIgaGVh
ZGVyX2xlbjsKKwl1OCBoZWFkZXJfbGVuOwogCiAJLyogMHgwMSAqLwotCXVuc2lnbmVkIGNoYXIg
aGVhZGVyX3ZlcjsKKwl1OCBoZWFkZXJfdmVyOwogCiAJLyogUmVzZXJ2ZWQgKi8KIAl1MTYgZG1j
Y192ZXI7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
