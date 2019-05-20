Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0945423329
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 14:05:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFFAF892B8;
	Mon, 20 May 2019 12:05:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E4008925A;
 Mon, 20 May 2019 12:05:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 05:05:02 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by orsmga002.jf.intel.com with ESMTP; 20 May 2019 05:05:01 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 20 May 2019 13:04:55 +0100
Message-Id: <20190520120455.878-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190517112526.6738-3-tvrtko.ursulin@linux.intel.com>
References: <20190517112526.6738-3-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 02/25] trace.pl: Ignore signaling on non i915
 fences
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
aXB0cy90cmFjZS5wbCB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9zY3JpcHRzL3RyYWNlLnBsIGIvc2NyaXB0cy90cmFjZS5wbAppbmRleCBiN2Ji
YWJjNzlmNjguLjVmNzBjZDIzOTc5YiAxMDA3NTUKLS0tIGEvc2NyaXB0cy90cmFjZS5wbAorKysg
Yi9zY3JpcHRzL3RyYWNlLnBsCkBAIC00MzksNiArNDM5LDggQEAgd2hpbGUgKDw+KSB7CiAJfSBl
bHNpZiAoJHRwX25hbWUgZXEgJ2RtYV9mZW5jZTpkbWFfZmVuY2Vfc2lnbmFsZWQ6JykgewogCQlt
eSAkZ2tleTsKIAorCQluZXh0IHVubGVzcyAkdHB7J2RyaXZlcid9IGVxICdpOTE1JyBhbmQKKwkJ
CSAgICAkdHB7J3RpbWVsaW5lJ30gZXEgJ3NpZ25hbGVkJzsKIAkJZGllIHVubGVzcyBleGlzdHMg
JGN0eGVuZ2luZXN7JHRweydjb250ZXh0J319OwogCiAJCSRna2V5ID0gZGJfa2V5KCRjdHhlbmdp
bmVzeyR0cHsnY29udGV4dCd9fSwgJHRweydjb250ZXh0J30sICR0cHsnc2Vxbm8nfSk7Ci0tIAoy
LjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
