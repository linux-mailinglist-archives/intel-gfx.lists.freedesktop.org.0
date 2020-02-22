Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A27F7168BEF
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 03:07:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 729A36F5AA;
	Sat, 22 Feb 2020 02:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13BCC6E393
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 02:07:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 18:07:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,470,1574150400"; d="scan'208";a="409315526"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.221])
 by orsmga005.jf.intel.com with ESMTP; 21 Feb 2020 18:07:32 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Feb 2020 18:08:08 -0800
Message-Id: <20200222020815.50599-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/8] drm/i915/tgl: Extend Wa_1409825376 stepping
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

VGhpcyB3b3JrYXJvdW5kIGlzIG9ubHkgZml4ZWQgaW4gQzAgc3RlcHBpbmcgdG8gZXh0ZW5kIGl0
IHRvIEIwIHRvby4KCkJTcGVjOiA1Mjg5MApDYzogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhh
a3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCB8IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDIgKy0K
IDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmgKaW5kZXggNDMwNWNjYzRjNjgzLi41NzI4MmI3MTllY2UgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaApAQCAtMTU3NSw2ICsxNTc1LDcgQEAgSVNfU1VCUExBVEZPUk0oY29u
c3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJKElTX0lDRUxBS0UocCkgJiYgSVNf
UkVWSUQocCwgc2luY2UsIHVudGlsKSkKIAogI2RlZmluZSBUR0xfUkVWSURfQTAJCTB4MAorI2Rl
ZmluZSBUR0xfUkVWSURfQjAJCTB4MQogCiAjZGVmaW5lIElTX1RHTF9SRVZJRChwLCBzaW5jZSwg
dW50aWwpIFwKIAkoSVNfVElHRVJMQUtFKHApICYmIElTX1JFVklEKHAsIHNpbmNlLCB1bnRpbCkp
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCBmZmFjMGI4NjJjYTUuLjMzMTQ5YmNjZDExNyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC02ODUyLDcgKzY4NTIsNyBAQCBzdGF0aWMgdm9p
ZCB0Z2xfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQogCQkgICBJOTE1X1JFQUQoUE9XRVJHQVRFX0VOQUJMRSkgfCB2ZF9wZ19lbmFibGUpOwogCiAJ
LyogV2FfMTQwOTgyNTM3Njp0Z2wgKHByZS1wcm9kKSovCi0JaWYgKElTX1RHTF9SRVZJRChkZXZf
cHJpdiwgVEdMX1JFVklEX0EwLCBUR0xfUkVWSURfQTApKQorCWlmIChJU19UR0xfUkVWSUQoZGV2
X3ByaXYsIFRHTF9SRVZJRF9BMCwgVEdMX1JFVklEX0IwKSkKIAkJSTkxNV9XUklURShHRU45X0NM
S0dBVEVfRElTXzMsIEk5MTVfUkVBRChHRU45X0NMS0dBVEVfRElTXzMpIHwKIAkJCSAgIFRHTF9W
UkhfR0FUSU5HX0RJUyk7CiB9Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
