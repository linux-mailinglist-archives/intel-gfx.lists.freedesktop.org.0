Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51817F21F
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 10:38:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3927D8916B;
	Tue, 30 Apr 2019 08:38:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16B6C8916B
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 08:38:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 01:38:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,413,1549958400"; d="scan'208";a="227994905"
Received: from vandita-desktop.iind.intel.com ([10.223.74.201])
 by orsmga001.jf.intel.com with ESMTP; 30 Apr 2019 01:38:37 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Apr 2019 13:47:53 +0530
Message-Id: <1556612275-16608-1-git-send-email-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [Intel-gfx] [v2 1/3] drm/i915: Fix the pipe state timing mismatch
 warnings
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
Cc: jani.nikula@intel.com, ville.syrjala@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRqdXN0IHRoZSBnZXQgdHJhbnNjb2RlciB0aW1pbmdzIGZvciBtaXBpIGRzaSBhcyBwZXIgdGhl
CnNldCB0aW1pbmcgY2FsY3VsYXRpb25zLgoKdjI6IFVzZSB0aGUgZXhpc3RpbmcgaW50ZWxfZ2V0
X3BpcGVfdGltaW5ncyBhbmQgZG8gdGhlIGRzaQogICAgc3BlY2lmaWMgYWRqdXN0bWVudHMgaW4g
dGhlIGVuY29kZXIgZ2V0X2NvbmZpZyBob29rLihWaWxsZSwgSmFuaSkKClNpZ25lZC1vZmYtYnk6
IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ljbF9kc2kuYyB8IDI5ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ljbF9kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ljbF9kc2ku
YwppbmRleCA5ZDk2MmVhLi5kYmIyNzEyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pY2xfZHNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaWNsX2RzaS5jCkBAIC0xMTkz
LDYgKzExOTMsMzQgQEAgc3RhdGljIHZvaWQgZ2VuMTFfZHNpX2Rpc2FibGUoc3RydWN0IGludGVs
X2VuY29kZXIgKmVuY29kZXIsCiAJZ2VuMTFfZHNpX2Rpc2FibGVfaW9fcG93ZXIoZW5jb2Rlcik7
CiB9CiAKK3N0YXRpYyB2b2lkIGdlbjExX2RzaV9nZXRfdGltaW5ncyhzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKKwkJCQkgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZp
ZykKK3sKKwlzdHJ1Y3QgaW50ZWxfZHNpICppbnRlbF9kc2kgPSBlbmNfdG9faW50ZWxfZHNpKCZl
bmNvZGVyLT5iYXNlKTsKKwlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9
CisJCQkJCSZwaXBlX2NvbmZpZy0+YmFzZS5hZGp1c3RlZF9tb2RlOworCisJaWYgKGludGVsX2Rz
aS0+ZHVhbF9saW5rKSB7CisJCWFkanVzdGVkX21vZGUtPmNydGNfaGRpc3BsYXkgKj0gMjsKKwkJ
aWYgKGludGVsX2RzaS0+ZHVhbF9saW5rID09IERTSV9EVUFMX0xJTktfRlJPTlRfQkFDSykKKwkJ
CWFkanVzdGVkX21vZGUtPmNydGNfaGRpc3BsYXkgLT0KKwkJCQkJCWludGVsX2RzaS0+cGl4ZWxf
b3ZlcmxhcDsKKwkJYWRqdXN0ZWRfbW9kZS0+Y3J0Y19odG90YWwgKj0gMjsKKwl9CisJYWRqdXN0
ZWRfbW9kZS0+Y3J0Y19oYmxhbmtfc3RhcnQgPSBhZGp1c3RlZF9tb2RlLT5jcnRjX2hkaXNwbGF5
OworCWFkanVzdGVkX21vZGUtPmNydGNfaGJsYW5rX2VuZCA9IGFkanVzdGVkX21vZGUtPmNydGNf
aHRvdGFsOworCisJaWYgKGludGVsX2RzaS0+b3BlcmF0aW9uX21vZGUgPT0gSU5URUxfRFNJX1ZJ
REVPX01PREUpIHsKKwkJaWYgKGludGVsX2RzaS0+ZHVhbF9saW5rKSB7CisJCQlhZGp1c3RlZF9t
b2RlLT5jcnRjX2hzeW5jX3N0YXJ0ICo9IDI7CisJCQlhZGp1c3RlZF9tb2RlLT5jcnRjX2hzeW5j
X2VuZCAqPSAyOworCQl9CisJfQorCWFkanVzdGVkX21vZGUtPmNydGNfdmJsYW5rX3N0YXJ0ID0g
YWRqdXN0ZWRfbW9kZS0+Y3J0Y192ZGlzcGxheTsKKwlhZGp1c3RlZF9tb2RlLT5jcnRjX3ZibGFu
a19lbmQgPSBhZGp1c3RlZF9tb2RlLT5jcnRjX3Z0b3RhbDsKKworfQorCiBzdGF0aWMgdm9pZCBn
ZW4xMV9kc2lfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJCQkg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKQogewpAQCAtMTIwMyw2ICsxMjMx
LDcgQEAgc3RhdGljIHZvaWQgZ2VuMTFfZHNpX2dldF9jb25maWcoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsCiAJcGlwZV9jb25maWctPnBvcnRfY2xvY2sgPQogCQljbmxfY2FsY193cnBs
bF9saW5rKGRldl9wcml2LCAmcGlwZV9jb25maWctPmRwbGxfaHdfc3RhdGUpOwogCXBpcGVfY29u
ZmlnLT5iYXNlLmFkanVzdGVkX21vZGUuY3J0Y19jbG9jayA9IGludGVsX2RzaS0+cGNsazsKKwln
ZW4xMV9kc2lfZ2V0X3RpbWluZ3MoZW5jb2RlciwgcGlwZV9jb25maWcpOwogCXBpcGVfY29uZmln
LT5vdXRwdXRfdHlwZXMgfD0gQklUKElOVEVMX09VVFBVVF9EU0kpOwogfQogCi0tIAoxLjkuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
