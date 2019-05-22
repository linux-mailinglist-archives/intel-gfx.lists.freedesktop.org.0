Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2C226461
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 15:14:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCAD8899B7;
	Wed, 22 May 2019 13:14:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD15989708;
 Wed, 22 May 2019 13:14:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 06:14:26 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by fmsmga006.fm.intel.com with ESMTP; 22 May 2019 06:14:25 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 22 May 2019 14:14:17 +0100
Message-Id: <20190522131417.23788-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib/i915: Add Icelake vcs2 engine to the
 static list
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClRoaXMgZW5h
YmxlcyBzdGF0aWMgdGVzdCBlbnVtZXJhdGlvbiB0byBzZWUgdGhlIGVuZ2luZS4KClNpZ25lZC1v
ZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogbGli
L2lndF9ndC5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1n
aXQgYS9saWIvaWd0X2d0LmMgYi9saWIvaWd0X2d0LmMKaW5kZXggNWU1YjliZWYwM2RjLi42Yjdj
MDM3ZTZkMTAgMTAwNjQ0Ci0tLSBhL2xpYi9pZ3RfZ3QuYworKysgYi9saWIvaWd0X2d0LmMKQEAg
LTU4OSw2ICs1ODksNyBAQCBjb25zdCBzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZTIgaW50
ZWxfZXhlY3V0aW9uX2VuZ2luZXMyW10gPSB7CiAJeyAiYmNzMCIsIEk5MTVfRU5HSU5FX0NMQVNT
X0NPUFksIDAgfSwKIAl7ICJ2Y3MwIiwgSTkxNV9FTkdJTkVfQ0xBU1NfVklERU8sIDAgfSwKIAl7
ICJ2Y3MxIiwgSTkxNV9FTkdJTkVfQ0xBU1NfVklERU8sIDEgfSwKKwl7ICJ2Y3MyIiwgSTkxNV9F
TkdJTkVfQ0xBU1NfVklERU8sIDIgfSwKIAl7ICJ2ZWNzMCIsIEk5MTVfRU5HSU5FX0NMQVNTX1ZJ
REVPX0VOSEFOQ0UsIDAgfSwKIAl7IH0KIH07Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
