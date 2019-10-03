Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02098CAF2E
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 21:25:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A08296EA64;
	Thu,  3 Oct 2019 19:25:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF4056EA61
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 19:25:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 12:25:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,253,1566889200"; d="scan'208";a="191358477"
Received: from bkokkula-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.7.77])
 by fmsmga008.fm.intel.com with ESMTP; 03 Oct 2019 12:25:14 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Oct 2019 20:24:40 +0100
Message-Id: <20191003192444.10113-19-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191003192444.10113-1-matthew.auld@intel.com>
References: <20191003192444.10113-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 18/22] drm/i915: Don't try to place HWS in
 non-existing mappable region
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

RnJvbTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CgpIV1Mg
cGxhY2VtZW50IHJlc3RyaWN0aW9ucyBjYW4ndCBqdXN0IHJlbHkgb24gSEFTX0xMQyBmbGFnLgoK
U2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5j
b20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIHwg
MiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwppbmRleCA4MGZkMDcyYWM3MTku
LmM2NGY5MWJiZGYzYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2Nz
LmMKQEAgLTUxMyw3ICs1MTMsNyBAQCBzdGF0aWMgaW50IHBpbl9nZ3R0X3N0YXR1c19wYWdlKHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIAl1bnNpZ25lZCBpbnQgZmxhZ3M7CiAKIAlm
bGFncyA9IFBJTl9HTE9CQUw7Ci0JaWYgKCFIQVNfTExDKGVuZ2luZS0+aTkxNSkpCisJaWYgKCFI
QVNfTExDKGVuZ2luZS0+aTkxNSkgJiYgSEFTX01BUFBBQkxFX0FQRVJUVVJFKGVuZ2luZS0+aTkx
NSkpCiAJCS8qCiAJCSAqIE9uIGczMywgd2UgY2Fubm90IHBsYWNlIEhXUyBhYm92ZSAyNTZNaUIs
IHNvCiAJCSAqIHJlc3RyaWN0IGl0cyBwaW5uaW5nIHRvIHRoZSBsb3cgbWFwcGFibGUgYXJlbmEu
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
