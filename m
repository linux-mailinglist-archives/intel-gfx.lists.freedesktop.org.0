Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 908D823AC9
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 16:47:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B2E889257;
	Mon, 20 May 2019 14:47:48 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3591889229;
 Mon, 20 May 2019 14:47:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 07:47:45 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by fmsmga007.fm.intel.com with ESMTP; 20 May 2019 07:47:44 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 20 May 2019 15:47:14 +0100
Message-Id: <20190520144739.13111-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520144739.13111-1-tvrtko.ursulin@linux.intel.com>
References: <20190520144739.13111-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 02/27] trace.pl: Ignore signaling on non
 i915 fences
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCmdlbV93c2lt
IHVzZXMgdGhlIHN3X2ZlbmNlIHRpbWVsaW5lIGFuZCBjb25mdXNlcyB0aGUgc2NyaXB0LgoKdjI6
CiAqIENoZWNrIHRoZSBjb3JyZWN0IHRpbWVsaW5lIGFzIHdlbGwuIChDaHJpcykKClNpZ25lZC1v
ZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogc2Ny
aXB0cy90cmFjZS5wbCB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvc2NyaXB0cy90cmFjZS5wbCBiL3NjcmlwdHMvdHJhY2UucGwKaW5kZXggOGM4
OTZjZmRlNmIwLi5hYzE0MWE1MTQwNTUgMTAwNzU1Ci0tLSBhL3NjcmlwdHMvdHJhY2UucGwKKysr
IGIvc2NyaXB0cy90cmFjZS5wbApAQCAtNDQzLDYgKzQ0Myw5IEBAIHdoaWxlICg8PikgewogCX0g
ZWxzaWYgKCR0cF9uYW1lIGVxICdkbWFfZmVuY2U6ZG1hX2ZlbmNlX3NpZ25hbGVkOicpIHsKIAkJ
bXkgJG5rZXk7CiAKKwkJbmV4dCB1bmxlc3MgJHRweydkcml2ZXInfSBlcSAnaTkxNScgYW5kCisJ
CQkgICAgJHRweyd0aW1lbGluZSd9IGVxICdzaWduYWxlZCc7CisKIAkJJG5rZXkgPSBub3RpZnlf
a2V5KCR0cHsnY29udGV4dCd9LCAkdHB7J3NlcW5vJ30pOwogCiAJCWRpZSBpZiBleGlzdHMgJG5v
dGlmeXskbmtleX07Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
