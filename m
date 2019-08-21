Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EB497267
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 08:40:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B767D6E913;
	Wed, 21 Aug 2019 06:40:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D67F6E910
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 06:40:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 23:40:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,411,1559545200"; d="scan'208";a="195935737"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2019 23:40:16 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 12:02:28 +0530
Message-Id: <20190821063236.19705-9-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821063236.19705-1-animesh.manna@intel.com>
References: <20190821063236.19705-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 08/15] drm/i915/dsb: Check DSB engine status.
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgcGVyIGJzcGVjIGNoZWNrIGZvciBEU0Igc3RhdHVzIGJlZm9yZSBwcm9ncmFtbWluZyBhbnkK
b2YgaXRzIHJlZ2lzdGVyLiBJbmxpbmUgZnVuY3Rpb24gYWRkZWQgdG8gY2hlY2sgdGhlIGRzYiBz
dGF0dXMuCgpDYzogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KQ2M6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNjOiBSb2RyaWdvIFZpdmkgPHJv
ZHJpZ28udml2aUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1l
c2gubWFubmFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmMgfCA5ICsrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCmluZGV4IDZmMTk5OTE0MDA4
NS4uNGEzODI3N2RjNGIxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNi
LmMKQEAgLTI0LDYgKzI0LDE1IEBACiAjZGVmaW5lIERTQl9CWVRFX0VOCQkJKDB4ZiA8PCAyMCkK
ICNkZWZpbmUgRFNCX1JFR19WQUxVRV9NQVNLCQkweGZmZmZmCiAKK3N0YXRpYyBpbmxpbmUgYm9v
bCBpc19kc2JfYnVzeShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpCit7CisJc3RydWN0IGludGVsX2Ny
dGMgKmNydGMgPSBkc2ItPmNydGM7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CisJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBl
OworCisJcmV0dXJuIERTQl9TVEFUVVMgJiBJOTE1X1JFQUQoRFNCX0NUUkwocGlwZSwgZHNiLT5p
ZCkpOworfQorCiBzdHJ1Y3QgaW50ZWxfZHNiICoKIGludGVsX2RzYl9nZXQoc3RydWN0IGludGVs
X2NydGMgKmNydGMpCiB7Ci0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
