Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3458A9AAC9
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:54:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B50476EC36;
	Fri, 23 Aug 2019 08:54:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAE056EC2C
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:54:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 01:21:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="203702019"
Received: from zzhan38-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.255.92.52])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2019 01:21:12 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 01:20:37 -0700
Message-Id: <20190823082055.5992-6-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190823082055.5992-1-lucas.demarchi@intel.com>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 05/23] drm/i915: Guard and warn if more than
 one eDP panel is present
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpOb3cg
dGhhdCBpcyBhbGxvd2VkIHRvIGhhdmUgUFNSIGVuYWJsZWQgaW4gYW55IHBvcnQgZnJvbSBCRFcr
LCBsZXRzCmd1YXJkIGludGVsX3Bzcl9pbml0X2RwY2QoKSBhZ2FpbnN0IG11bHRpcGxlIGVEUCBw
YW5lbHMgYW5kIHdhcm4gYWJvdXQKaXQuCgpGb3Igbm93IHdlIHdpbGwga2VlcCBqdXN0IG9uZSBp
bnN0YW5jZSBvZiBQU1IuCgpDYzogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5k
aXlhbkBpbnRlbC5jb20+CkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNiAr
KysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwppbmRleCAwMTcyYjgyODU4ZDku
LmNmMDdhYjNkOTI4MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
CkBAIC0yNDksNiArMjQ5LDExIEBAIHZvaWQgaW50ZWxfcHNyX2luaXRfZHBjZChzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKQogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9CiAJ
CXRvX2k5MTUoZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApLT5iYXNlLmJhc2UuZGV2KTsKIAorCWlm
IChkZXZfcHJpdi0+cHNyLmRwKSB7CisJCURSTV9XQVJOKCJNb3JlIHRoYW4gb25lIGVEUCBwYW5l
bCBmb3VuZCwgUFNSIHN1cHBvcnQgc2hvdWxkIGJlIGV4dGVuZFxuIik7CisJCXJldHVybjsKKwl9
CisKIAlkcm1fZHBfZHBjZF9yZWFkKCZpbnRlbF9kcC0+YXV4LCBEUF9QU1JfU1VQUE9SVCwgaW50
ZWxfZHAtPnBzcl9kcGNkLAogCQkJIHNpemVvZihpbnRlbF9kcC0+cHNyX2RwY2QpKTsKIApAQCAt
MjcxLDcgKzI3Niw2IEBAIHZvaWQgaW50ZWxfcHNyX2luaXRfZHBjZChzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKQogCWRldl9wcml2LT5wc3Iuc2lua19zeW5jX2xhdGVuY3kgPQogCQlpbnRlbF9k
cF9nZXRfc2lua19zeW5jX2xhdGVuY3koaW50ZWxfZHApOwogCi0JV0FSTl9PTihkZXZfcHJpdi0+
cHNyLmRwKTsKIAlkZXZfcHJpdi0+cHNyLmRwID0gaW50ZWxfZHA7CiAKIAlpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSA5ICYmCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
