Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B01C362668
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Apr 2021 19:10:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B74E06EC8B;
	Fri, 16 Apr 2021 17:10:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93D876EC8B
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Apr 2021 17:10:41 +0000 (UTC)
IronPort-SDR: D4RHsngdI+cYbz4P2R34aY/tBNB+T+Bwn6L69sOuvxlAYV5dO3ONfcEIzS3p17a+C6uM0EFbX1
 tCmV5ccT/slA==
X-IronPort-AV: E=McAfee;i="6200,9189,9956"; a="194629343"
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; d="scan'208";a="194629343"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2021 10:10:41 -0700
IronPort-SDR: t6NmdDnzkjOyimpOKcJF47QuP8HV2qCvPS2x83u2J9M1tSl1n5Epn1b6rrt/5cJnRy1v7gUpkO
 cvbOJ3g6gLFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; d="scan'208";a="422061324"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 16 Apr 2021 10:10:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Apr 2021 20:10:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Apr 2021 20:10:11 +0300
Message-Id: <20210416171011.19012-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210416171011.19012-1-ville.syrjala@linux.intel.com>
References: <20210416171011.19012-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/8] drm/i915: Say "enable foo" instead of "set
 foo to enabled"
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClVz
ZSBzaW1wbGVyIHNlbnRlbmNlcy4gSnVzdCBzYXkgImVuYWJsZSBmb28iIGluc3RlYWQKb2YgInNl
dCBmb28gdG8gZW5hYmxlZCIgZXRjLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMgfCAxMiArKysrKystLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdGMuYyB8ICA0ICsrLS0KIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRp
b25zKCspLCA4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYwppbmRleCA0NDEwOWE0YjY5YWEuLjUyZWEwOWZjNWU3MCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpAQCAtMjI5Myw4ICsyMjkzLDggQEAgdm9pZCBpbnRlbF9k
cF9jb25maWd1cmVfcHJvdG9jb2xfY29udmVydGVyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
CiAKIAlpZiAoZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LAogCQkJICAgICAgIERQ
X1BST1RPQ09MX0NPTlZFUlRFUl9DT05UUk9MXzAsIHRtcCkgIT0gMSkKLQkJZHJtX2RiZ19rbXMo
Jmk5MTUtPmRybSwgIkZhaWxlZCB0byBzZXQgcHJvdG9jb2wgY29udmVydGVyIEhETUkgbW9kZSB0
byAlc1xuIiwKLQkJCSAgICBlbmFibGVkZGlzYWJsZWQoaW50ZWxfZHAtPmhhc19oZG1pX3Npbmsp
KTsKKwkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIkZhaWxlZCB0byAlcyBwcm90b2NvbCBjb252
ZXJ0ZXIgSERNSSBtb2RlXG4iLAorCQkJICAgIGVuYWJsZWRpc2FibGUoaW50ZWxfZHAtPmhhc19o
ZG1pX3NpbmspKTsKIAogCXRtcCA9IGNydGNfc3RhdGUtPm91dHB1dF9mb3JtYXQgPT0gSU5URUxf
T1VUUFVUX0ZPUk1BVF9ZQ0JDUjQ0NCAmJgogCQlpbnRlbF9kcC0+ZGZwLnljYmNyXzQ0NF90b180
MjAgPyBEUF9DT05WRVJTSU9OX1RPX1lDQkNSNDIwX0VOQUJMRSA6IDA7CkBAIC0yMzAyLDggKzIz
MDIsOCBAQCB2b2lkIGludGVsX2RwX2NvbmZpZ3VyZV9wcm90b2NvbF9jb252ZXJ0ZXIoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwKIAlpZiAoZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+
YXV4LAogCQkJICAgICAgIERQX1BST1RPQ09MX0NPTlZFUlRFUl9DT05UUk9MXzEsIHRtcCkgIT0g
MSkKIAkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwKLQkJCSAgICAiRmFpbGVkIHRvIHNldCBwcm90
b2NvbCBjb252ZXJ0ZXIgWUNiQ3IgNDoyOjAgY29udmVyc2lvbiBtb2RlIHRvICVzXG4iLAotCQkJ
ICAgIGVuYWJsZWRkaXNhYmxlZChpbnRlbF9kcC0+ZGZwLnljYmNyXzQ0NF90b180MjApKTsKKwkJ
CSAgICAiRmFpbGVkIHRvICVzIHByb3RvY29sIGNvbnZlcnRlciBZQ2JDciA0OjI6MCBjb252ZXJz
aW9uIG1vZGVcbiIsCisJCQkgICAgZW5hYmxlZGlzYWJsZShpbnRlbF9kcC0+ZGZwLnljYmNyXzQ0
NF90b180MjApKTsKIAogCXRtcCA9IDA7CiAJaWYgKGludGVsX2RwLT5kZnAucmdiX3RvX3ljYmNy
KSB7CkBAIC0yMzQwLDggKzIzNDAsOCBAQCB2b2lkIGludGVsX2RwX2NvbmZpZ3VyZV9wcm90b2Nv
bF9jb252ZXJ0ZXIoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAogCWlmIChkcm1fZHBfcGNv
bl9jb252ZXJ0X3JnYl90b195Y2JjcigmaW50ZWxfZHAtPmF1eCwgdG1wKSA8IDApCiAJCWRybV9k
Ymdfa21zKCZpOTE1LT5kcm0sCi0JCQkgICAiRmFpbGVkIHRvIHNldCBwcm90b2NvbCBjb252ZXJ0
ZXIgUkdCLT5ZQ2JDciBjb252ZXJzaW9uIG1vZGUgdG8gJXNcbiIsCi0JCQkgICBlbmFibGVkZGlz
YWJsZWQodG1wID8gdHJ1ZSA6IGZhbHNlKSk7CisJCQkgICAiRmFpbGVkIHRvICVzIHByb3RvY29s
IGNvbnZlcnRlciBSR0ItPllDYkNyIGNvbnZlcnNpb24gbW9kZVxuIiwKKwkJCSAgIGVuYWJsZWRp
c2FibGUodG1wKSk7CiB9CiAKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF90Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5j
CmluZGV4IDg4MDg1NDg2ZWU1OS4uNTlkZTZjYTQzNmRiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF90Yy5jCkBAIC0yNjcsOCArMjY3LDggQEAgc3RhdGljIGJvb2wgaWNsX3Rj
X3BoeV9zZXRfc2FmZV9tb2RlKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LAog
CQkJCVBPUlRfVFhfREZMRVhEUENTU1MoZGlnX3BvcnQtPnRjX3BoeV9maWEpKTsKIAlpZiAodmFs
ID09IDB4ZmZmZmZmZmYpIHsKIAkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwKLQkJCSAgICAiUG9y
dCAlczogUEhZIGluIFRDQ09MRCwgY2FuJ3Qgc2V0IHNhZmUtbW9kZSB0byAlc1xuIiwKLQkJCSAg
ICBkaWdfcG9ydC0+dGNfcG9ydF9uYW1lLCBlbmFibGVkZGlzYWJsZWQoZW5hYmxlKSk7CisJCQkg
ICAgIlBvcnQgJXM6IFBIWSBpbiBUQ0NPTEQsIGNhbid0ICVzIHNhZmUtbW9kZVxuIiwKKwkJCSAg
ICBkaWdfcG9ydC0+dGNfcG9ydF9uYW1lLCBlbmFibGVkaXNhYmxlKGVuYWJsZSkpOwogCiAJCXJl
dHVybiBmYWxzZTsKIAl9Ci0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
