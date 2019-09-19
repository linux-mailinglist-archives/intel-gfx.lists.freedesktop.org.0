Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 077FAB7F2B
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 18:32:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BEF46F809;
	Thu, 19 Sep 2019 16:32:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA5B46F809
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 16:32:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 09:32:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="199451952"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 19 Sep 2019 09:32:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2019 19:32:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 19:31:08 +0300
Message-Id: <20190919163113.17402-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
References: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel 16/21] sna/fb: Initialize
 xoff/yoff
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBjb21waWxlciBzZWVtcyB0byB0aGluayBzcmMvbWFzayB4b2ZmL3lvZmYgY2FuIGJlIHVzZWQK
dW5pbml0aWFsaXplZC4gWmVybyB0aGVtIHRvIG1ha2Ugc3VyZS4KClNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogc3JjL3Nu
YS9mYi9mYnBpY3QuYyB8IDYgKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3NuYS9mYi9mYnBpY3QuYyBiL3NyYy9z
bmEvZmIvZmJwaWN0LmMKaW5kZXggYWJlMjIzZjMxYzg4Li44ZTY1ZGViMjZmZTkgMTAwNjQ0Ci0t
LSBhL3NyYy9zbmEvZmIvZmJwaWN0LmMKKysrIGIvc3JjL3NuYS9mYi9mYnBpY3QuYwpAQCAtMzEz
LDggKzMxMywxMCBAQCBpbWFnZV9mcm9tX3BpY3RfaW50ZXJuYWwoUGljdHVyZVB0ciBwaWN0LCBC
b29sIGhhc19jbGlwLCBpbnQgKnhvZmYsIGludCAqeW9mZiwKIHsKIAlwaXhtYW5faW1hZ2VfdCAq
aW1hZ2UgPSBOVUxMOwogCi0JaWYgKCFwaWN0KQorCWlmICghcGljdCkgeworCQkqeG9mZiA9ICp5
b2ZmID0gMDsKIAkJcmV0dXJuIE5VTEw7CisJfQogCiAJaWYgKHBpY3QtPnBEcmF3YWJsZSkgewog
CQlpbWFnZSA9IGNyZWF0ZV9iaXRzX3BpY3R1cmUocGljdCwgaGFzX2NsaXAsIHhvZmYsIHlvZmYp
OwpAQCAtMzM2LDYgKzMzOCw4IEBAIGltYWdlX2Zyb21fcGljdF9pbnRlcm5hbChQaWN0dXJlUHRy
IHBpY3QsIEJvb2wgaGFzX2NsaXAsIGludCAqeG9mZiwgaW50ICp5b2ZmLAogCQkJCWltYWdlID0g
Y3JlYXRlX2NvbmljYWxfZ3JhZGllbnRfaW1hZ2UoZ3JhZGllbnQpOwogCQl9CiAJCSp4b2ZmID0g
KnlvZmYgPSAwOworCX0gZWxzZSB7CisJCSp4b2ZmID0gKnlvZmYgPSAwOwogCX0KIAogCWlmIChp
bWFnZSkKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
