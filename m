Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34425217A7
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 13:25:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0C61898FA;
	Fri, 17 May 2019 11:25:40 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FED889815;
 Fri, 17 May 2019 11:25:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 04:25:36 -0700
X-ExtLoop1: 1
Received: from kmarenda-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.11.159])
 by fmsmga005.fm.intel.com with ESMTP; 17 May 2019 04:25:35 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 17 May 2019 12:25:06 +0100
Message-Id: <20190517112526.6738-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190517112526.6738-1-tvrtko.ursulin@linux.intel.com>
References: <20190517112526.6738-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 05/25] trace.pl: Virtual engine preemption
 support
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClVzZSB0aGUg
J2NvbXBsZXRlZD8nIHRyYWNlcG9pbnQgZmllbGQgdG8gZGV0ZWN0IG1vcmUgcm9idXN0bHkgd2hl
biBhCnJlcXVlc3QgaGFzIGJlZW4gcHJlZW1wdGVkIGFuZCByZW1vdmUgaXQgZnJvbSB0aGUgZW5n
aW5lIGRhdGFiYXNlIGlmIHNvLgoKT3RoZXJ3aXNlIHRoZSBzY3JpcHQgY2FuIGhpdCBhIHNjZW5h
cmlvIHdoZXJlIHRoZSBzYW1lIGdsb2JhbCBzZXFubyB3aWxsCmJlIG1lbnRpb25lZCBtdWx0aXBs
ZSB0aW1lcyAob24gYW4gZW5naW5lIHNlcW5vKSB3aGljaCBhYm9ydHMgcHJvY2Vzc2luZy4KClNp
Z25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0t
LQogc2NyaXB0cy90cmFjZS5wbCB8IDIyICsrKysrKysrKysrKysrLS0tLS0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Nj
cmlwdHMvdHJhY2UucGwgYi9zY3JpcHRzL3RyYWNlLnBsCmluZGV4IDg3MzM3NmQwZTA2My4uYzRj
ZTcxNzZiM2UzIDEwMDc1NQotLS0gYS9zY3JpcHRzL3RyYWNlLnBsCisrKyBiL3NjcmlwdHMvdHJh
Y2UucGwKQEAgLTQ4MywxNyArNDgzLDIzIEBAIHdoaWxlICg8PikgewogCQkkcmluZ21hcHskcmlu
Z3N7JHJpbmd9fSA9ICRyaW5nOwogCQkkZGJ7JGtleX0gPSBcJXJlcTsKIAl9IGVsc2lmICgkdHBf
bmFtZSBlcSAnaTkxNTppOTE1X3JlcXVlc3Rfb3V0OicpIHsKLQkJbXkgJGdrZXk7Ci0KIAkJZGll
IHVubGVzcyBleGlzdHMgJGN0eGVuZ2luZXN7JGN0eH07Ci0JCWRpZSB1bmxlc3MgZXhpc3RzICRk
Ynska2V5fTsKLQkJZGllIHVubGVzcyBleGlzdHMgJGRieyRrZXl9LT57J3N0YXJ0J307Ci0JCWRp
ZSBpZiBleGlzdHMgJGRieyRrZXl9LT57J2VuZCd9OwogCi0JCSRna2V5ID0gZGJfa2V5KCRjdHhl
bmdpbmVzeyRjdHh9LCAkY3R4LCAkc2Vxbm8pOworCQlpZiAoJHRweydjb21wbGV0ZWQ/J30pIHsK
KwkJCW15ICRna2V5OworCisJCQlkaWUgdW5sZXNzIGV4aXN0cyAkZGJ7JGtleX07CisJCQlkaWUg
dW5sZXNzIGV4aXN0cyAkZGJ7JGtleX0tPnsnc3RhcnQnfTsKKwkJCWRpZSBpZiBleGlzdHMgJGRi
eyRrZXl9LT57J2VuZCd9OwogCi0JCSRkYnska2V5fS0+eydlbmQnfSA9ICR0aW1lOwotCQkkZGJ7
JGtleX0tPnsnbm90aWZ5J30gPSAkbm90aWZ5eyRna2V5fSBpZiBleGlzdHMgJG5vdGlmeXskZ2tl
eX07CisJCQkkZ2tleSA9IGRiX2tleSgkY3R4ZW5naW5lc3skY3R4fSwgJGN0eCwgJHNlcW5vKTsK
KworCQkJJGRieyRrZXl9LT57J2VuZCd9ID0gJHRpbWU7CisJCQkkZGJ7JGtleX0tPnsnbm90aWZ5
J30gPSAkbm90aWZ5eyRna2V5fQorCQkJCQkJaWYgZXhpc3RzICRub3RpZnl7JGdrZXl9OworCQl9
IGVsc2UgeworCQkJZGVsZXRlICRkYnska2V5fTsKKwkJfQogCX0gZWxzaWYgKCR0cF9uYW1lIGVx
ICdkbWFfZmVuY2U6ZG1hX2ZlbmNlX3NpZ25hbGVkOicpIHsKIAkJbXkgJGdrZXk7CiAKLS0gCjIu
MjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
