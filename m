Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FCA5FB9A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 18:16:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12F6A6E391;
	Thu,  4 Jul 2019 16:16:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF6726E37C;
 Thu,  4 Jul 2019 16:15:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17131821-1500050 
 for multiple; Thu, 04 Jul 2019 17:15:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jul 2019 17:15:50 +0100
Message-Id: <20190704161550.15109-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190704161550.15109-1-chris@chris-wilson.co.uk>
References: <20190704161550.15109-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 3/3] perf_pmu: Refine requirement testing
 for engine-busy-stats
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tm93IHRoYXQgd2UgcmVwb3J0IHdoZXRoZXIgdGhlIGFjY3VyYXRlIHBlci1lbmdpbmUgdXRpbGlz
YXRpb24Kc3RhdGlzdGljcyBhcmUgYXZhaWxhYmxlIChhbGJlaXQgdmlhIHRoZSBzY2hlZHVsZXIg
Y2FwcykgcHV0IGl0IHRvIHRvCnVzZSB0byBzZWxlY3RpdmVseSBlbmFibGUgdGhlIGhpZ2ggYWNj
dXJhY3kgdGVzdHMgd2hlcmUgd2UgZXhwZWN0IGl0IHRvCndvcmsuCgpTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogdGVzdHMvcGVyZl9wbXUuYyB8IDQgKyst
LQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS90ZXN0cy9wZXJmX3BtdS5jIGIvdGVzdHMvcGVyZl9wbXUuYwppbmRleCA3MmI5MTY2
YWYuLmMzNTczYjdhMSAxMDA2NDQKLS0tIGEvdGVzdHMvcGVyZl9wbXUuYworKysgYi90ZXN0cy9w
ZXJmX3BtdS5jCkBAIC0xNDY4LDcgKzE0NjgsNyBAQCB0ZXN0X2VuYWJsZV9yYWNlKGludCBnZW1f
ZmQsIGNvbnN0IHN0cnVjdCBpbnRlbF9leGVjdXRpb25fZW5naW5lMiAqZSkKIAlzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX2V4ZWNidWZmZXIyIGViID0geyB9OwogCWludCBmZDsKIAotCWlndF9yZXF1aXJl
KGdlbV9oYXNfZXhlY2xpc3RzKGdlbV9mZCkpOworCWlndF9yZXF1aXJlKGdlbV9zY2hlZHVsZXJf
aGFzX2VuZ2luZV9idXN5X3N0YXRzKGdlbV9mZCkpOwogCWlndF9yZXF1aXJlKGdlbV9jb250ZXh0
X2hhc19lbmdpbmUoZ2VtX2ZkLCAwLCBlLT5mbGFncykpOwogCiAJb2JqLmhhbmRsZSA9IGdlbV9j
cmVhdGUoZ2VtX2ZkLCA0MDk2KTsKQEAgLTE1MzgsNyArMTUzOCw3IEBAIGFjY3VyYWN5KGludCBn
ZW1fZmQsIGNvbnN0IHN0cnVjdCBpbnRlbF9leGVjdXRpb25fZW5naW5lMiAqZSwKIAlpbnQgZmQ7
CiAKIAkvKiBTYW1wbGluZyBwbGF0Zm9ybXMgY2Fubm90IHJlYWNoIHRoZSBoaWdoIGFjY3VyYWN5
IGNyaXRlcmlhLiAqLwotCWlndF9yZXF1aXJlKGdlbV9oYXNfZXhlY2xpc3RzKGdlbV9mZCkpOwor
CWlndF9yZXF1aXJlKGdlbV9zY2hlZHVsZXJfaGFzX2VuZ2luZV9idXN5X3N0YXRzKGdlbV9mZCkp
OwogCiAJLyogQWltIGZvciBhcHByb3hpbWF0ZWx5IDEwMCBpdGVyYXRpb25zIGZvciBjYWxpYnJh
dGlvbiAqLwogCWN5Y2xlX3VzID0gbWluX3Rlc3RfdXMgLyB0YXJnZXRfaXRlcnM7Ci0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
