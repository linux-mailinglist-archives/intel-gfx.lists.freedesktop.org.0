Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CDB26694
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 17:04:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38F7F89B4D;
	Wed, 22 May 2019 15:04:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A45A089015;
 Wed, 22 May 2019 15:04:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 08:04:17 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by orsmga006.jf.intel.com with ESMTP; 22 May 2019 08:04:15 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 22 May 2019 16:04:13 +0100
Message-Id: <20190522150413.27697-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib/i915: Fix pointer cast build issue
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClVzZSBmcm9t
X3VzZXJfcG9pbnRlciB3aGVuIGNhc3RpbmcgX191NjQgdG8gYSBwb2ludGVyLgoKU2lnbmVkLW9m
Zi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KQ2M6IEFuZGkg
U2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgotLS0KIGxpYi9pOTE1L2dlbV9lbmdpbmVfdG9w
b2xvZ3kuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL2xpYi9pOTE1L2dlbV9lbmdpbmVfdG9wb2xvZ3kuYyBiL2xpYi9p
OTE1L2dlbV9lbmdpbmVfdG9wb2xvZ3kuYwppbmRleCBkZDI2ZmFlMDA4NTMuLjdjYTM2MTY2ODdi
OSAxMDA2NDQKLS0tIGEvbGliL2k5MTUvZ2VtX2VuZ2luZV90b3BvbG9neS5jCisrKyBiL2xpYi9p
OTE1L2dlbV9lbmdpbmVfdG9wb2xvZ3kuYwpAQCAtODEsNyArODEsNyBAQCBzdGF0aWMgdm9pZCBj
dHhfbWFwX2VuZ2luZXMoaW50IGZkLCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2RhdGEgKmVkLAogCQkJ
ICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fY29udGV4dF9wYXJhbSAqcGFyYW0pCiB7CiAJc3RydWN0
IGk5MTVfY29udGV4dF9wYXJhbV9lbmdpbmVzICplbmdpbmVzID0KLQkJCShzdHJ1Y3QgaTkxNV9j
b250ZXh0X3BhcmFtX2VuZ2luZXMgKikgcGFyYW0tPnZhbHVlOworCQkJZnJvbV91c2VyX3BvaW50
ZXIocGFyYW0tPnZhbHVlKTsKIAlpbnQgaSA9IDA7CiAKIAlmb3IgKHR5cGVvZihlbmdpbmVzLT5l
bmdpbmVzWzBdKSAqcCA9Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
