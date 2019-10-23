Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB469E25BF
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 23:49:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11CAE6E15F;
	Wed, 23 Oct 2019 21:49:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47FE66E15A
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 21:49:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 14:49:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,222,1569308400"; d="scan'208";a="398199396"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by fmsmga005.fm.intel.com with ESMTP; 23 Oct 2019 14:49:41 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Oct 2019 14:49:32 -0700
Message-Id: <20191023214932.94679-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display/psr: Print in debugfs if PSR
 is not enabled because of sink
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
Cc: Ap Kamal <kamal.ap@intel.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmlnaHQgbm93IGlmIHNpbmsgcmVwb3J0ZWQgYW55IFBTUiBlcnJvciBvciBpZiBpdCBmYWlscyB0
bwphY2tub3dsZWRnZSB0aGUgUFNSIHdha2V1cCBpdCBzZXRzIGEgZmxhZyBhbmQgZG8gbm90IGF0
dGVtcHQgdG8KZW5hYmxlIFBTUiBhbnltb3JlLiBUaGF0IGlzIHRoZSBzYWZlc3QgYXBwcm9hY2gg
dG8gYXZvaWQgcmVwZXRpdGl2ZQpnbGl0Y2hlcyBhbmQgYWxsb3dlZCB1cyB0byBoYXZlIFBTUiBl
bmFibGVkIGJ5IGRlZmF1bHQuCgpCdXQgZnJvbSB0aW1lIHRvIHRpbWUgZXZlbiBnb29kIFBTUiBw
YW5lbHMgaGF2ZSBhIFBTUiBlcnJvciwgY2F1c2luZwp0ZXN0cyB0byBmYWlsLiBBbmQgZm9yIG5v
dyB3ZSBhcmUgbm90IHlldCB0byB0aGUgcG9pbnQgd2VyZSB3ZSBjb3VsZAp0cnkgdG8gcmVjb3Zl
ciBmcm9tIFBTUiBlcnJvcnMsIHNvIGxldHMgYWRkIHRoaXMgaW5mb3JtYXRpb24gdG8gdGhlCmRl
YnVnZnMgc28gSUdUIGNhbiBjaGVjayBpZiBQU1IgaXMgZGlzYWJsZWQgYmVjYXVzZSBvZiBzaW5r
IGVycm9ycyBvcgpub3QgYW5kIGVsaW1pbmF0ZSB0aGlzIG5vaXNlIGZyb20gQ0kgcnVucy4KCkNj
OiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4KQ2M6
IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIgPG1h
dHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CkNjOiBBcCBLYW1hbCA8a2FtYWwuYXBAaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyB8IDYgKysrKyst
CiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYwppbmRleCBiYzBiZGYwNDE5ZTAuLjA3ZTM2OGVjNGZiOCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKQEAgLTIxOTQsOCArMjE5NCwxMiBAQCBz
dGF0aWMgaW50IGk5MTVfZWRwX3Bzcl9zdGF0dXMoc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpk
YXRhKQogCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwogCXNlcV9wcmludGYobSwgIlBTUiBtb2RlOiAl
c1xuIiwgc3RhdHVzKTsKIAotCWlmICghcHNyLT5lbmFibGVkKQorCWlmICghcHNyLT5lbmFibGVk
KSB7CisJCXNlcV9wcmludGYobSwgIlBTUiBzaW5rIG5vdCByZWxpYWJsZTogJXNcbiIsCisJCQkg
ICB5ZXNubyhwc3ItPnNpbmtfbm90X3JlbGlhYmxlKSk7CisKIAkJZ290byB1bmxvY2s7CisJfQog
CiAJaWYgKHBzci0+cHNyMl9lbmFibGVkKSB7CiAJCXZhbCA9IEk5MTVfUkVBRChFRFBfUFNSMl9D
VEwoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKSk7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
