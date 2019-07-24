Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D67F872C0D
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 12:07:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B83536E4E6;
	Wed, 24 Jul 2019 10:07:21 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDB146E4E6
 for <Intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 10:07:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 03:07:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,302,1559545200"; d="scan'208";a="197448624"
Received: from jsartini-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.0.141])
 by fmsmga002.fm.intel.com with ESMTP; 24 Jul 2019 03:07:20 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jul 2019 11:07:13 +0100
Message-Id: <20190724100716.10731-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724100716.10731-1-tvrtko.ursulin@linux.intel.com>
References: <20190724100716.10731-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Avoid one round-tip through
 global i915 when getting to gt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkdvIHRvIGd0
LT5hY3RpdmVfcmluZ3MgdmlhIHRpbWVsaW5lIGluc3RlYWQgb2YgZ2xvYmFsIGk5MTUgZm9yIG1v
cmUKbG9naWNhbCBvcmdhbml6YXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVxdWVzdC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwppbmRleCA4YWM3ZDE0ZWM4Yzku
LjlkNGI0ZjJkMWI1MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1
ZXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKQEAgLTExODIs
NyArMTE4Miw3IEBAIHN0cnVjdCBpOTE1X3JlcXVlc3QgKl9faTkxNV9yZXF1ZXN0X2NvbW1pdChz
dHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIAogCWxpc3RfYWRkX3RhaWwoJnJxLT5yaW5nX2xpbmss
ICZyaW5nLT5yZXF1ZXN0X2xpc3QpOwogCWlmIChsaXN0X2lzX2ZpcnN0KCZycS0+cmluZ19saW5r
LCAmcmluZy0+cmVxdWVzdF9saXN0KSkKLQkJbGlzdF9hZGQoJnJpbmctPmFjdGl2ZV9saW5rLCAm
cnEtPmk5MTUtPmd0LmFjdGl2ZV9yaW5ncyk7CisJCWxpc3RfYWRkKCZyaW5nLT5hY3RpdmVfbGlu
aywgJnJpbmctPnRpbWVsaW5lLT5ndC0+YWN0aXZlX3JpbmdzKTsKIAlycS0+ZW1pdHRlZF9qaWZm
aWVzID0gamlmZmllczsKIAogCS8qCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
