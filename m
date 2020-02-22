Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B26168BF4
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 03:07:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEF6D6F5AE;
	Sat, 22 Feb 2020 02:07:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A1256F5AA
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 02:07:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 18:07:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,470,1574150400"; d="scan'208";a="409315545"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.221])
 by orsmga005.jf.intel.com with ESMTP; 21 Feb 2020 18:07:33 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Feb 2020 18:08:15 -0800
Message-Id: <20200222020815.50599-8-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200222020815.50599-1-jose.souza@intel.com>
References: <20200222020815.50599-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/8] drm/i915/tgl: Extend Wa_1409767108 to B0
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

VGhpcyBXYSB3aWxsIGFsc28gYmUgbmVlZGVkIGJ5IEIwIHN0ZXBwaW5nLgoKQlNwZWM6IDUyODkw
ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
ci5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93
ZXIuYwppbmRleCA4YmE2OGVjNmRjMjQuLmU5YWYyMWMwOGZmNiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKQEAgLTQ5ODIsNyAr
NDk4Miw3IEBAIHN0YXRpYyB2b2lkIHRnbF9id19idWRkeV9pbml0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKIAljb25zdCBzdHJ1Y3QgYnVkZHlfcGFnZV9tYXNrICp0YWJsZTsK
IAlpbnQgaTsKIAotCWlmIChJU19UR0xfUkVWSUQoZGV2X3ByaXYsIFRHTF9SRVZJRF9BMCwgVEdM
X1JFVklEX0EwKSkKKwlpZiAoSVNfVEdMX1JFVklEKGRldl9wcml2LCBUR0xfUkVWSURfQTAsIFRH
TF9SRVZJRF9CMCkpCiAJCS8qIFdhXzE0MDk3NjcxMDg6IHRnbCAqLwogCQl0YWJsZSA9IHdhXzE0
MDk3NjcxMDhfYnVkZHlfcGFnZV9tYXNrczsKIAllbHNlCi0tIAoyLjI1LjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
