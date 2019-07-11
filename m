Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 017BB65F27
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 19:56:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC3EA6E27F;
	Thu, 11 Jul 2019 17:56:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BF336E282
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 17:55:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 10:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="156894694"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga007.jf.intel.com with ESMTP; 11 Jul 2019 10:55:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 10:31:08 -0700
Message-Id: <20190711173115.28296-15-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711173115.28296-1-lucas.demarchi@intel.com>
References: <20190711173115.28296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 14/21] drm/i915/tgl: init ddi port A-C for
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
bmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClJl
dmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDkgKysr
KysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggYmE0
OGZlZGQ2ODViLi5jOWIxOGFhYjQzN2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNTMxMCwxMyArMTUzMTAsMTggQEAgc3RhdGljIHZvaWQg
aW50ZWxfc2V0dXBfb3V0cHV0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJ
aWYgKCFIQVNfRElTUExBWShkZXZfcHJpdikpCiAJCXJldHVybjsKIAotCWlmIChJU19FTEtIQVJU
TEFLRShkZXZfcHJpdikpIHsKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgeworCQkv
KiBUT0RPOiBpbml0aWFsaXplIFRDIHBvcnRzIGFzIHdlbGwgKi8KKwkJaW50ZWxfZGRpX2luaXQo
ZGV2X3ByaXYsIFBPUlRfQSk7CisJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0IpOwor
CQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9DKTsKKwl9IGVsc2UgaWYgKElTX0VMS0hB
UlRMQUtFKGRldl9wcml2KSkgewogCQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9BKTsK
IAkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfQik7CiAJCWludGVsX2RkaV9pbml0KGRl
dl9wcml2LCBQT1JUX0MpOwogCQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9EKTsKIAkJ
aWNsX2RzaV9pbml0KGRldl9wcml2KTsKLQl9IGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gMTEpIHsKKwl9IGVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgMTEpKSB7CiAJCWludGVsX2Rk
aV9pbml0KGRldl9wcml2LCBQT1JUX0EpOwogCQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9S
VF9CKTsKIAkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfQyk7Ci0tIAoyLjIxLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
