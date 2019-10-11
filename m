Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB9CD36B9
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 03:09:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D1FD6E3EE;
	Fri, 11 Oct 2019 01:09:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58D486E3F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 01:09:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 18:09:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,282,1566889200"; d="scan'208";a="394243458"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.11.83])
 by fmsmga005.fm.intel.com with ESMTP; 10 Oct 2019 18:09:19 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Oct 2019 18:09:06 -0700
Message-Id: <20191011010907.103309-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191011010907.103309-1-lucas.demarchi@intel.com>
References: <20191011010907.103309-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915: prettify MST debug message
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

cy8/LzovIHNvIGl0J3MgZ2V0IGNvcnJlY3RseSBjb2xvcmVkIGJ5IGRtZXNnLgoKU2lnbmVkLW9m
Zi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMiArLQogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jCmluZGV4IDM0OGEwOTg5MDYxMS4uMzNhNTVkYTg5Y2U5IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC00NDUwLDcgKzQ0NTAsNyBAQCBp
bnRlbF9kcF9jb25maWd1cmVfbXN0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJCSZkcF90
b19kaWdfcG9ydChpbnRlbF9kcCktPmJhc2U7CiAJYm9vbCBzaW5rX2Nhbl9tc3QgPSBpbnRlbF9k
cF9zaW5rX2Nhbl9tc3QoaW50ZWxfZHApOwogCi0JRFJNX0RFQlVHX0tNUygiW0VOQ09ERVI6JWQ6
JXNdIE1TVCBzdXBwb3J0PyBwb3J0OiAlcywgc2luazogJXMsIG1vZHBhcmFtOiAlc1xuIiwKKwlE
Uk1fREVCVUdfS01TKCJbRU5DT0RFUjolZDolc10gTVNUIHN1cHBvcnQ6IHBvcnQ6ICVzLCBzaW5r
OiAlcywgbW9kcGFyYW06ICVzXG4iLAogCQkgICAgICBlbmNvZGVyLT5iYXNlLmJhc2UuaWQsIGVu
Y29kZXItPmJhc2UubmFtZSwKIAkJICAgICAgeWVzbm8oaW50ZWxfZHAtPmNhbl9tc3QpLCB5ZXNu
byhzaW5rX2Nhbl9tc3QpLAogCQkgICAgICB5ZXNubyhpOTE1X21vZHBhcmFtcy5lbmFibGVfZHBf
bXN0KSk7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
