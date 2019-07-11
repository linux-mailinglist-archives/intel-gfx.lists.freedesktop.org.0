Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E41F65F28
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 19:56:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 309DF6E27A;
	Thu, 11 Jul 2019 17:56:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B971E6E28E
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 17:55:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 10:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="156894714"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga007.jf.intel.com with ESMTP; 11 Jul 2019 10:55:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 10:31:15 -0700
Message-Id: <20190711173115.28296-22-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711173115.28296-1-lucas.demarchi@intel.com>
References: <20190711173115.28296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 21/21] drm/i915/tgl: Update DPLL clock
 reference register
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpUaGlz
IHJlZ2lzdGVyIGRlZmluaXRpb24gY2hhbmdlZCBmcm9tIElDTCBhbmQgaGFzIG5vdyBhbm90aGVy
IG1lYW5pbmcuClVzZSB0aGUgcmlnaHQgYml0cyBvbiBUR0wuCgpTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8IDggKysrKysrLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8IDEgKwogMiBmaWxl
cyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCmluZGV4IDliYWE2YWRjNjNkYi4u
YWFmZTI1ZTYzMTlhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwbGxfbWdyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cGxsX21nci5jCkBAIC0yNjAyLDggKzI2MDIsMTIgQEAgc3RhdGljIGJvb2wgaWNsX2NhbGNfZHBs
bF9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAljZmdjcjEgPSBE
UExMX0NGR0NSMV9RRElWX1JBVElPKHBsbF9wYXJhbXMucWRpdl9yYXRpbykgfAogCQkgRFBMTF9D
RkdDUjFfUURJVl9NT0RFKHBsbF9wYXJhbXMucWRpdl9tb2RlKSB8CiAJCSBEUExMX0NGR0NSMV9L
RElWKHBsbF9wYXJhbXMua2RpdikgfAotCQkgRFBMTF9DRkdDUjFfUERJVihwbGxfcGFyYW1zLnBk
aXYpIHwKLQkJIERQTExfQ0ZHQ1IxX0NFTlRSQUxfRlJFUV84NDAwOworCQkgRFBMTF9DRkdDUjFf
UERJVihwbGxfcGFyYW1zLnBkaXYpOworCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIp
CisJCWNmZ2NyMSB8PSBUR0xfRFBMTF9DRkdDUjFfQ0ZTRUxPVlJEX05PUk1BTF9YVEFMOworCWVs
c2UKKwkJY2ZnY3IxIHw9IERQTExfQ0ZHQ1IxX0NFTlRSQUxfRlJFUV84NDAwOwogCiAJbWVtc2V0
KHBsbF9zdGF0ZSwgMCwgc2l6ZW9mKCpwbGxfc3RhdGUpKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKaW5kZXggYzgyNzc4NjJiYmJlLi4zZmY2NTlhMTgwZTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaApAQCAtOTk0NCw2ICs5OTQ0LDcgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAjZGVmaW5l
ICBEUExMX0NGR0NSMV9QRElWXzcJCSg4IDw8IDIpCiAjZGVmaW5lICBEUExMX0NGR0NSMV9DRU5U
UkFMX0ZSRVEJKDMgPDwgMCkKICNkZWZpbmUgIERQTExfQ0ZHQ1IxX0NFTlRSQUxfRlJFUV84NDAw
CSgzIDw8IDApCisjZGVmaW5lICBUR0xfRFBMTF9DRkdDUjFfQ0ZTRUxPVlJEX05PUk1BTF9YVEFM
CSgwIDw8IDApCiAjZGVmaW5lIENOTF9EUExMX0NGR0NSMShwbGwpCQlfTU1JT19QTEwocGxsLCBf
Q05MX0RQTEwwX0NGR0NSMSwgX0NOTF9EUExMMV9DRkdDUjEpCiAKICNkZWZpbmUgX0lDTF9EUExM
MF9DRkdDUjAJCTB4MTY0MDAwCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
