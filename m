Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3951A23AD2
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 16:48:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AB078929C;
	Mon, 20 May 2019 14:47:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CAFC8926E;
 Mon, 20 May 2019 14:47:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 07:47:49 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by fmsmga007.fm.intel.com with ESMTP; 20 May 2019 07:47:48 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 20 May 2019 15:47:17 +0100
Message-Id: <20190520144739.13111-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520144739.13111-1-tvrtko.ursulin@linux.intel.com>
References: <20190520144739.13111-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 05/27] trace.pl: Virtual engine preemption
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
Z25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+ClJl
dmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBz
Y3JpcHRzL3RyYWNlLnBsIHwgMTkgKysrKysrKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDEyIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2NyaXB0cy90
cmFjZS5wbCBiL3NjcmlwdHMvdHJhY2UucGwKaW5kZXggMWY0OTUzYjAyZWY2Li43NzU4N2YyNDE5
N2EgMTAwNzU1Ci0tLSBhL3NjcmlwdHMvdHJhY2UucGwKKysrIGIvc2NyaXB0cy90cmFjZS5wbApA
QCAtNDg4LDE2ICs0ODgsMjEgQEAgd2hpbGUgKDw+KSB7CiAJCSRyaW5nbWFweyRyaW5nc3skcmlu
Z319ID0gJHJpbmc7CiAJCSRkYnska2V5fSA9IFwlcmVxOwogCX0gZWxzaWYgKCR0cF9uYW1lIGVx
ICdpOTE1Omk5MTVfcmVxdWVzdF9vdXQ6JykgewotCQlteSAkbmtleTsKKwkJaWYgKCR0cHsnY29t
cGxldGVkPyd9KSB7CisJCQlteSAkbmtleTsKIAotCQlkaWUgdW5sZXNzIGV4aXN0cyAkZGJ7JGtl
eX07Ci0JCWRpZSB1bmxlc3MgZXhpc3RzICRkYnska2V5fS0+eydzdGFydCd9OwotCQlkaWUgaWYg
ZXhpc3RzICRkYnska2V5fS0+eydlbmQnfTsKKwkJCWRpZSB1bmxlc3MgZXhpc3RzICRkYnska2V5
fTsKKwkJCWRpZSB1bmxlc3MgZXhpc3RzICRkYnska2V5fS0+eydzdGFydCd9OworCQkJZGllIGlm
IGV4aXN0cyAkZGJ7JGtleX0tPnsnZW5kJ307CiAKLQkJJG5rZXkgPSBub3RpZnlfa2V5KCRjdHgs
ICRzZXFubyk7CisJCQkkbmtleSA9IG5vdGlmeV9rZXkoJGN0eCwgJHNlcW5vKTsKIAotCQkkZGJ7
JGtleX0tPnsnZW5kJ30gPSAkdGltZTsKLQkJJGRieyRrZXl9LT57J25vdGlmeSd9ID0gJG5vdGlm
eXskbmtleX0gaWYgZXhpc3RzICRub3RpZnl7JG5rZXl9OworCQkJJGRieyRrZXl9LT57J2VuZCd9
ID0gJHRpbWU7CisJCQkkZGJ7JGtleX0tPnsnbm90aWZ5J30gPSAkbm90aWZ5eyRua2V5fQorCQkJ
CQkJaWYgZXhpc3RzICRub3RpZnl7JG5rZXl9OworCQl9IGVsc2UgeworCQkJZGVsZXRlICRkYnsk
a2V5fTsKKwkJfQogCX0gZWxzaWYgKCR0cF9uYW1lIGVxICdkbWFfZmVuY2U6ZG1hX2ZlbmNlX3Np
Z25hbGVkOicpIHsKIAkJbXkgJG5rZXk7CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
