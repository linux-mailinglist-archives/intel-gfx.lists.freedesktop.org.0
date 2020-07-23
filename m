Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC8F22B92B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 00:08:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AF008941E;
	Thu, 23 Jul 2020 22:08:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CE928941E
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jul 2020 22:08:22 +0000 (UTC)
IronPort-SDR: T1LQ7yBuC8TSSeoR1UhtyNJqVf4LuOTeJh5AwspxEa4p/QE5m12AnqlFwi4Q2a6gPtzV0o23JV
 5k0vhjR5xYNw==
X-IronPort-AV: E=McAfee;i="6000,8403,9691"; a="235506956"
X-IronPort-AV: E=Sophos;i="5.75,388,1589266800"; d="scan'208";a="235506956"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2020 15:08:21 -0700
IronPort-SDR: hPYFpQ8GCz6LTa/3o669XUfHnSmGIhypHvMEX7S7nHW/YkFAlCL/zGgnE8c2m0q8aYRQe3bI7m
 6nBXcp1gHjjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,388,1589266800"; d="scan'208";a="302461398"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.51])
 by orsmga002.jf.intel.com with ESMTP; 23 Jul 2020 15:08:20 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jul 2020 15:10:21 -0700
Message-Id: <20200723221021.40456-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Implement WA 14011294188
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

QWx0aG91Z2ggdGhlIFdBIGRlc2NyaXB0aW9uIHRhcmdldHMgdGhlIHBsYXRmb3JtcyBpdCBpcyBh
IHdvcmthcm91bmQKZm9yIHRoZSBhZmZlY3RlZCBQQ0hzLCB0aGF0IGlzIHdoeSBpdCBpcyBiZWlu
ZyBjaGVja2VkLgoKQlNwZWM6IDUyODkwCkJTcGVjOiA1MzI3MwpCU3BlYzogNTI4ODgKU2lnbmVk
LW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCA1
ICsrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgICAg
ICB8IDEgKwogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCmluZGV4IDBjNzEz
ZTgzMjc0ZC4uM2VmYjNkNmU0NDc0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwpAQCAtNTMwMiw2ICs1MzAyLDExIEBAIHN0YXRp
YyB2b2lkIGljbF9kaXNwbGF5X2NvcmVfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCiAKIAlnZW45X3NldF9kY19zdGF0ZShkZXZfcHJpdiwgRENfU1RBVEVfRElTQUJMRSk7
CiAKKwkvKiBXYV8xNDAxMTI5NDE4ODplaGwsanNsLHRnbCxya2wgKi8KKwlpZiAoSU5URUxfUENI
X1RZUEUoZGV2X3ByaXYpID49IFBDSF9KU1ApCisJCWludGVsX2RlX3JtdyhkZXZfcHJpdiwgU09V
VEhfRFNQQ0xLX0dBVEVfRCwgMCwKKwkJCSAgICAgUENIX0RQTUdVTklUX0NMT0NLX0dBVEVfRElT
QUJMRSk7CisKIAkvKiAxLiBFbmFibGUgUENIIHJlc2V0IGhhbmRzaGFrZS4gKi8KIAlpbnRlbF9w
Y2hfcmVzZXRfaGFuZHNoYWtlKGRldl9wcml2LCAhSEFTX1BDSF9OT1AoZGV2X3ByaXYpKTsKIApk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggYTBkMzFmM2JmNjM0Li41ZWFlNTkzZWU3ODQgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtODczMCw2ICs4NzMwLDcgQEAgZW51bSB7CiAjZGVm
aW5lICBQQ0hfR01CVVNVTklUX0NMT0NLX0dBVEVfRElTQUJMRSAoMSA8PCAzMSkKICNkZWZpbmUg
IFBDSF9EUExVTklUX0NMT0NLX0dBVEVfRElTQUJMRSAoMSA8PCAzMCkKICNkZWZpbmUgIFBDSF9E
UExTVU5JVF9DTE9DS19HQVRFX0RJU0FCTEUgKDEgPDwgMjkpCisjZGVmaW5lICBQQ0hfRFBNR1VO
SVRfQ0xPQ0tfR0FURV9ESVNBQkxFICgxIDw8IDE1KQogI2RlZmluZSAgUENIX0NQVU5JVF9DTE9D
S19HQVRFX0RJU0FCTEUgKDEgPDwgMTQpCiAjZGVmaW5lICBDTlBfUFdNX0NHRV9HQVRJTkdfRElT
QUJMRSAoMSA8PCAxMykKICNkZWZpbmUgIFBDSF9MUF9QQVJUSVRJT05fTEVWRUxfRElTQUJMRSAg
KDEgPDwgMTIpCi0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
