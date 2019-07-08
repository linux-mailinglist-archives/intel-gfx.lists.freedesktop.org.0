Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F3262C8C
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 01:17:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E4CF6E05C;
	Mon,  8 Jul 2019 23:17:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF4756E030
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 23:16:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 16:16:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="316859648"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga004.jf.intel.com with ESMTP; 08 Jul 2019 16:16:57 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 16:16:23 -0700
Message-Id: <20190708231629.9296-20-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190708231629.9296-1-lucas.demarchi@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 19/25] drm/i915/tgl: init ddi port A-C for
 Tiger Lake
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

RnJvbTogTWFoZXNoIEt1bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4KClRoaXMgcGF0Y2gg
aW5pdGlhbGl6ZXMgRERJIFBPUlQgQSwgQiAmIEMgZm9yIFRpZ2VyIGxha2UuIE90aGVyClRDIHBv
cnRzIG5lZWQgdG8gYmUgaW5pdGlhbGl6ZWQgbGF0ZXIgb25jZSBjb3JyZXNwb25kaW5nIGNvZGUg
aXMgdGhlcmUuCgpDYzogTWFkaGF2IENoYXVoYW4gPG1hZGhhdi5jaGF1aGFuQGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogTWFoZXNoIEt1bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA5ICsrKysr
KystLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGUyMjRk
Y2Y2MGUzMS4uOWNjZjU4ZmY0ZGJhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTUzMDIsMTIgKzE1MzAyLDE3IEBAIHN0YXRpYyB2b2lkIGlu
dGVsX3NldHVwX291dHB1dHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWlm
ICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpKQogCQlyZXR1cm47CiAKLQlpZiAoSVNfRUxLSEFSVExB
S0UoZGV2X3ByaXYpKSB7CisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKKwkJLyog
VE9ETzogaW5pdGlhbGl6ZSBUQyBwb3J0cyBhcyB3ZWxsICovCisJCWludGVsX2RkaV9pbml0KGRl
dl9wcml2LCBQT1JUX0EpOworCQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9CKTsKKwkJ
aW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfQyk7CisJfSBlbHNlIGlmIChJU19FTEtIQVJU
TEFLRShkZXZfcHJpdikpIHsKIAkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfQSk7CiAJ
CWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0IpOwogCQlpbnRlbF9kZGlfaW5pdChkZXZf
cHJpdiwgUE9SVF9DKTsKIAkJaWNsX2RzaV9pbml0KGRldl9wcml2KTsKLQl9IGVsc2UgaWYgKElO
VEVMX0dFTihkZXZfcHJpdikgPj0gMTEpIHsKKwl9IGVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwg
MTEpKSB7CiAJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0EpOwogCQlpbnRlbF9kZGlf
aW5pdChkZXZfcHJpdiwgUE9SVF9CKTsKIAkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRf
Qyk7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
