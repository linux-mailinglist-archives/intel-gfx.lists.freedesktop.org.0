Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B93BE1791D
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 14:11:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 074288989E;
	Wed,  8 May 2019 12:11:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80854898A3;
 Wed,  8 May 2019 12:11:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 05:11:08 -0700
X-ExtLoop1: 1
Received: from jzapadkx-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.0.159])
 by fmsmga008.fm.intel.com with ESMTP; 08 May 2019 05:11:07 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed,  8 May 2019 13:10:41 +0100
Message-Id: <20190508121058.27038-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
References: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 04/21] trace.pl: Virtual engine preemption
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
LQogc2NyaXB0cy90cmFjZS5wbCB8IDggKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2NyaXB0cy90cmFjZS5wbCBi
L3NjcmlwdHMvdHJhY2UucGwKaW5kZXggNmNjMzMyYmI2ZTJhLi5jYjdjYzQ2ZGYyMmUgMTAwNzU1
Ci0tLSBhL3NjcmlwdHMvdHJhY2UucGwKKysrIGIvc2NyaXB0cy90cmFjZS5wbApAQCAtNDgzLDE3
ICs0ODMsMTcgQEAgd2hpbGUgKDw+KSB7CiAJCSRyaW5nbWFweyRyaW5nc3skcmluZ319ID0gJHJp
bmc7CiAJCSRkYnska2V5fSA9IFwlcmVxOwogCX0gZWxzaWYgKCR0cF9uYW1lIGVxICdpOTE1Omk5
MTVfcmVxdWVzdF9vdXQ6JykgewotCQlteSAkZ2tleTsKLQogCQlkaWUgdW5sZXNzIGV4aXN0cyAk
Y3R4ZW5naW5lc3skY3R4fTsKIAotCQkkZ2tleSA9IGRiX2tleSgkY3R4ZW5naW5lc3skY3R4fSwg
JGN0eCwgJHNlcW5vKTsKLQogCQlpZiAoJHRweydjb21wbGV0ZWQ/J30pIHsKKwkJCW15ICRna2V5
OworCiAJCQlkaWUgdW5sZXNzIGV4aXN0cyAkZGJ7JGtleX07CiAJCQlkaWUgdW5sZXNzIGV4aXN0
cyAkZGJ7JGtleX0tPnsnc3RhcnQnfTsKIAkJCWRpZSBpZiBleGlzdHMgJGRieyRrZXl9LT57J2Vu
ZCd9OwogCisJCQkkZ2tleSA9IGRiX2tleSgkY3R4ZW5naW5lc3skY3R4fSwgJGN0eCwgJHNlcW5v
KTsKKwogCQkJJGRieyRrZXl9LT57J2VuZCd9ID0gJHRpbWU7CiAJCQkkZGJ7JGtleX0tPnsnbm90
aWZ5J30gPSAkbm90aWZ5eyRna2V5fQogCQkJCQkJaWYgZXhpc3RzICRub3RpZnl7JGdrZXl9Owot
LSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
