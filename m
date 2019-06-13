Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A420343A16
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 17:19:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 022EF89B3C;
	Thu, 13 Jun 2019 15:19:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8F1689B3C
 for <Intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 15:19:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 08:19:12 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by orsmga006.jf.intel.com with ESMTP; 13 Jun 2019 08:19:10 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jun 2019 16:19:02 +0100
Message-Id: <20190613151904.16256-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613151904.16256-1-tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613151904.16256-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 26/28] drm/i915: Store ggtt pointer in intel_gt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClRoaXMgd2ls
bCBiZWNvbWUgdXNlZnVsIGluIHRoZSBmb2xsb3dpbmcgcGF0Y2guCgpTaWduZWQtb2ZmLWJ5OiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmggfCAyICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuYyAgICAgIHwgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVz
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oCmluZGV4IDk5ZTMw
ZjhjZmJlMC4uYzkwOWFhZTZlNGIzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ndF90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0
X3R5cGVzLmgKQEAgLTE4LDExICsxOCwxMyBAQAogI2luY2x1ZGUgImludGVsX3dha2VyZWYuaCIK
IAogc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7CitzdHJ1Y3QgaTkxNV9nZ3R0Owogc3RydWN0IGlu
dGVsX3VuY29yZTsKIAogc3RydWN0IGludGVsX2d0IHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNTsKIAlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmU7CisJc3RydWN0IGk5MTVfZ2d0
dCAqZ2d0dDsKIAogCXN0cnVjdCBpOTE1X2d0X3RpbWVsaW5lcyB7CiAJCXN0cnVjdCBtdXRleCBt
dXRleDsgLyogcHJvdGVjdHMgbGlzdCwgdGFpbnRlZCBieSBHUFUgKi8KZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmMKaW5kZXggZWEyNzZlZDkwMjFhLi45YWEyNTc3MDA4MWMgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC0zNjE4LDYgKzM2MTgsNyBAQCBzdGF0aWMgaW50
IGdndHRfaW5pdF9odyhzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogCWk5MTVfYWRkcmVzc19zcGFj
ZV9pbml0KHZtLCBWTV9DTEFTU19HR1RUKTsKIAogCXZtLT5pc19nZ3R0ID0gdHJ1ZTsKKwl2bS0+
Z3QtPmdndHQgPSBnZ3R0OwogCiAJLyogT25seSBWTFYgc3VwcG9ydHMgcmVhZC1vbmx5IEdHVFQg
bWFwcGluZ3MgKi8KIAl2bS0+aGFzX3JlYWRfb25seSA9IElTX1ZBTExFWVZJRVcoaTkxNSk7Ci0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
