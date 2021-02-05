Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2F2310D7E
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 16:58:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4E016F47A;
	Fri,  5 Feb 2021 15:58:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FE986F47A
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 15:58:14 +0000 (UTC)
IronPort-SDR: 0HfrmwtvsieggFLe2xchJWpaOLo9YYO8EEEuHdq1RxtkfxBOsgJBnt6t/EOkd9s+FLjM4hYlU4
 gPSbd3rzlS6w==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="181514198"
X-IronPort-AV: E=Sophos;i="5.81,155,1610438400"; d="scan'208";a="181514198"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 07:58:13 -0800
IronPort-SDR: VhoeKCYA+PDKquIOudl6zK4V5p6jTLXOxFuoAx9EBSxQbhH87S1pyB7CxlProdJw21sL9mHIEZ
 6WbROA4Z13AQ==
X-IronPort-AV: E=Sophos;i="5.81,155,1610438400"; d="scan'208";a="373429949"
Received: from cabrazil-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.177.163])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 07:58:11 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Feb 2021 07:59:31 -0800
Message-Id: <20210205155931.198122-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Allow PSR2 selective fetch to
 be enabled at run-time
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

UmlnaHQgbm93IENJIGlzIGJsYWNrbGlzdGluZyBtb2R1bGUgcmVsb2FkLCBzbyB3ZSBuZWVkIHRv
IGJlIGFibGUgdG8KZW5hYmxlIFBTUjIgc2VsZWN0aXZlIGZldGNoIGluIHJ1biB0aW1lIHRvIHRl
c3QgdGhpcyBmZWF0dXJlIGJlZm9yZQplbmFibGUgaXQgYnkgZGVmYXVsdC4KQ2hhbmdlcyBpbiBJ
R1Qgd2lsbCBhbHNvIGJlIG5lZWRlZC4KCkNjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25n
Lm11bkBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV90eXBlcy5oIHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jICAgICAgICAgICB8IDYgKysrKy0tCiAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IDMwN2ZmNGI3NzFmNC4uZDc4NTMwYWJm
ZWYyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaApAQCAtMTQyNCw2ICsxNDI0LDcgQEAgc3RydWN0IGludGVsX3BzciB7CiAjZGVm
aW5lIEk5MTVfUFNSX0RFQlVHX0RJU0FCTEUJCTB4MDEKICNkZWZpbmUgSTkxNV9QU1JfREVCVUdf
RU5BQkxFCQkweDAyCiAjZGVmaW5lIEk5MTVfUFNSX0RFQlVHX0ZPUkNFX1BTUjEJMHgwMworI2Rl
ZmluZSBJOTE1X1BTUl9ERUJVR19FTkFCTEVfU0VMX0ZFVENICTB4NAogI2RlZmluZSBJOTE1X1BT
Ul9ERUJVR19JUlEJCTB4MTAKIAogCXUzMiBkZWJ1ZzsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jCmluZGV4IDI4NDIzMzU2ZDUzYi4uZWFiYjlhMGMyMTY0IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKQEAgLTY4Myw3ICs2ODMsOCBAQCBz
dGF0aWMgYm9vbCBpbnRlbF9wc3IyX3NlbF9mZXRjaF9jb25maWdfdmFsaWQoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwKIAlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lOwogCWludCBpOwogCi0J
aWYgKCFkZXZfcHJpdi0+cGFyYW1zLmVuYWJsZV9wc3IyX3NlbF9mZXRjaCkgeworCWlmICghZGV2
X3ByaXYtPnBhcmFtcy5lbmFibGVfcHNyMl9zZWxfZmV0Y2ggJiYKKwkgICAgaW50ZWxfZHAtPnBz
ci5kZWJ1ZyAhPSBJOTE1X1BTUl9ERUJVR19FTkFCTEVfU0VMX0ZFVENIKSB7CiAJCWRybV9kYmdf
a21zKCZkZXZfcHJpdi0+ZHJtLAogCQkJICAgICJQU1IyIHNlbCBmZXRjaCBub3QgZW5hYmxlZCwg
ZGlzYWJsZWQgYnkgcGFyYW1ldGVyXG4iKTsKIAkJcmV0dXJuIGZhbHNlOwpAQCAtMTQ0Nyw3ICsx
NDQ4LDggQEAgdm9pZCBpbnRlbF9wc3JfdXBkYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
CiAJZW5hYmxlID0gY3J0Y19zdGF0ZS0+aGFzX3BzcjsKIAlwc3IyX2VuYWJsZSA9IGNydGNfc3Rh
dGUtPmhhc19wc3IyOwogCi0JaWYgKGVuYWJsZSA9PSBwc3ItPmVuYWJsZWQgJiYgcHNyMl9lbmFi
bGUgPT0gcHNyLT5wc3IyX2VuYWJsZWQpIHsKKwlpZiAoZW5hYmxlID09IHBzci0+ZW5hYmxlZCAm
JiBwc3IyX2VuYWJsZSA9PSBwc3ItPnBzcjJfZW5hYmxlZCAmJgorCSAgICBjcnRjX3N0YXRlLT5l
bmFibGVfcHNyMl9zZWxfZmV0Y2ggPT0gcHNyLT5wc3IyX3NlbF9mZXRjaF9lbmFibGVkKSB7CiAJ
CS8qIEZvcmNlIGEgUFNSIGV4aXQgd2hlbiBlbmFibGluZyBDUkMgdG8gYXZvaWQgQ1JDIHRpbWVv
dXRzICovCiAJCWlmIChjcnRjX3N0YXRlLT5jcmNfZW5hYmxlZCAmJiBwc3ItPmVuYWJsZWQpCiAJ
CQlwc3JfZm9yY2VfaHdfdHJhY2tpbmdfZXhpdChpbnRlbF9kcCk7Ci0tIAoyLjMwLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
