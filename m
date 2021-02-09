Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 217423157F8
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 21:49:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5894B6E110;
	Tue,  9 Feb 2021 20:49:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90BA26E110
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 20:49:15 +0000 (UTC)
IronPort-SDR: gL8aTZluJNCP2A5PTBe4Nf3EC7kL+UXEYbqKSigxyoHltuH4NgRIuHqwAJBmapa6Q6/cGBpx8w
 T74wEh1raWZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9890"; a="266792702"
X-IronPort-AV: E=Sophos;i="5.81,166,1610438400"; d="scan'208";a="266792702"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 12:49:11 -0800
IronPort-SDR: 9G7acuEZAHRJHhtrcPcsOKjrJrbs6LLI739nr0kP5EByjT7TQSu3KrH6P6RFJcCiutzJdtOIBX
 72LfZBKHznUQ==
X-IronPort-AV: E=Sophos;i="5.81,166,1610438400"; d="scan'208";a="361944381"
Received: from rmahmood-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.254.190.123])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 12:49:08 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Feb 2021 12:50:36 -0800
Message-Id: <20210209205036.351076-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Allow PSR2 selective fetch
 to be enabled at run-time
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
R1Qgd2lsbCBhbHNvIGJlIG5lZWRlZC4KCnYyOgotIEZpeGVkIGhhbmRsaW5nIG9mIEk5MTVfUFNS
X0RFQlVHX0VOQUJMRV9TRUxfRkVUQ0ggaW4KaW50ZWxfcHNyX2RlYnVnX3NldCgpCgpDYzogR3dh
bi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCB8IDEgKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICAgICAgICAgfCA4ICsrKysrLS0t
CiAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmlu
ZGV4IGViYWE5ZDBlZDM3Ni4uNTc3ZjQ3YWE2YjNlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtMTQyNSw2ICsxNDI1LDcg
QEAgc3RydWN0IGludGVsX3BzciB7CiAjZGVmaW5lIEk5MTVfUFNSX0RFQlVHX0RJU0FCTEUJCTB4
MDEKICNkZWZpbmUgSTkxNV9QU1JfREVCVUdfRU5BQkxFCQkweDAyCiAjZGVmaW5lIEk5MTVfUFNS
X0RFQlVHX0ZPUkNFX1BTUjEJMHgwMworI2RlZmluZSBJOTE1X1BTUl9ERUJVR19FTkFCTEVfU0VM
X0ZFVENICTB4NAogI2RlZmluZSBJOTE1X1BTUl9ERUJVR19JUlEJCTB4MTAKIAogCXUzMiBkZWJ1
ZzsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCmluZGV4IGJmMjE0ZDBl
MmRlYy4uNDNlOWUzNjIzODJiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMKQEAgLTY4NCw3ICs2ODQsOCBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX3NlbF9mZXRj
aF9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAlzdHJ1Y3QgaW50ZWxf
cGxhbmUgKnBsYW5lOwogCWludCBpOwogCi0JaWYgKCFkZXZfcHJpdi0+cGFyYW1zLmVuYWJsZV9w
c3IyX3NlbF9mZXRjaCkgeworCWlmICghZGV2X3ByaXYtPnBhcmFtcy5lbmFibGVfcHNyMl9zZWxf
ZmV0Y2ggJiYKKwkgICAgaW50ZWxfZHAtPnBzci5kZWJ1ZyAhPSBJOTE1X1BTUl9ERUJVR19FTkFC
TEVfU0VMX0ZFVENIKSB7CiAJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLAogCQkJICAgICJQ
U1IyIHNlbCBmZXRjaCBub3QgZW5hYmxlZCwgZGlzYWJsZWQgYnkgcGFyYW1ldGVyXG4iKTsKIAkJ
cmV0dXJuIGZhbHNlOwpAQCAtMTQ0OCw3ICsxNDQ5LDggQEAgdm9pZCBpbnRlbF9wc3JfdXBkYXRl
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJZW5hYmxlID0gY3J0Y19zdGF0ZS0+aGFzX3Bz
cjsKIAlwc3IyX2VuYWJsZSA9IGNydGNfc3RhdGUtPmhhc19wc3IyOwogCi0JaWYgKGVuYWJsZSA9
PSBwc3ItPmVuYWJsZWQgJiYgcHNyMl9lbmFibGUgPT0gcHNyLT5wc3IyX2VuYWJsZWQpIHsKKwlp
ZiAoZW5hYmxlID09IHBzci0+ZW5hYmxlZCAmJiBwc3IyX2VuYWJsZSA9PSBwc3ItPnBzcjJfZW5h
YmxlZCAmJgorCSAgICBjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2ggPT0gcHNyLT5w
c3IyX3NlbF9mZXRjaF9lbmFibGVkKSB7CiAJCS8qIEZvcmNlIGEgUFNSIGV4aXQgd2hlbiBlbmFi
bGluZyBDUkMgdG8gYXZvaWQgQ1JDIHRpbWVvdXRzICovCiAJCWlmIChjcnRjX3N0YXRlLT5jcmNf
ZW5hYmxlZCAmJiBwc3ItPmVuYWJsZWQpCiAJCQlwc3JfZm9yY2VfaHdfdHJhY2tpbmdfZXhpdChp
bnRlbF9kcCk7CkBAIC0xNjM3LDcgKzE2MzksNyBAQCBpbnQgaW50ZWxfcHNyX2RlYnVnX3NldChz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCB1NjQgdmFsKQogCWludCByZXQ7CiAKIAlpZiAodmFs
ICYgfihJOTE1X1BTUl9ERUJVR19JUlEgfCBJOTE1X1BTUl9ERUJVR19NT0RFX01BU0spIHx8Ci0J
ICAgIG1vZGUgPiBJOTE1X1BTUl9ERUJVR19GT1JDRV9QU1IxKSB7CisJICAgIG1vZGUgPiBJOTE1
X1BTUl9ERUJVR19FTkFCTEVfU0VMX0ZFVENIKSB7CiAJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+
ZHJtLCAiSW52YWxpZCBkZWJ1ZyBtYXNrICVsbHhcbiIsIHZhbCk7CiAJCXJldHVybiAtRUlOVkFM
OwogCX0KLS0gCjIuMzAuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
