Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAA53C677D
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 02:34:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48AF789F2D;
	Tue, 13 Jul 2021 00:34:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB99789F07
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 00:34:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10043"; a="273907685"
X-IronPort-AV: E=Sophos;i="5.84,235,1620716400"; d="scan'208";a="273907685"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 17:34:47 -0700
X-IronPort-AV: E=Sophos;i="5.84,235,1620716400"; d="scan'208";a="451584094"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 17:34:47 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Jul 2021 17:38:50 -0700
Message-Id: <20210713003854.143197-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210713003854.143197-1-jose.souza@intel.com>
References: <20210713003854.143197-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 2/6] drm/i915: Settle on "adl-x" in WA
 comments
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW9zdCBvZiB0aGUgcGxhY2VzIGFyZSB1c2luZyB0aGlzIGZvcm1hdCBzbyBsZXRzIGNvbnNvbGlk
YXRlIGl0LgoKdjI6Ci0gc3BsaXQgcGF0Y2ggaW4gdHdvOiBkaXNwbGF5IGFuZCBub24tZGlzcGxh
eSBiZWNhdXNlIG9mIGNvbmZsaWN0cwpiZXR3ZWVuIGRybS1pbnRlbC1ndC1uZXh0IHggZHJtLWlu
dGVsLW5leHQKClJldmlld2VkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
YyB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgICAgICAgICAgICAgfCA0
ICsrLS0KIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IGQ5YTVh
NDQ1Y2VlY2QuLmU1ZTNmODIwMDc0YTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYwpAQCAtMTA3OCw3ICsxMDc4LDcgQEAgZ2VuMTJfZ3Rfd29ya2Fyb3Vu
ZHNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIHsKIAlpY2xfd2FfaW5pdF9t
Y3IoaTkxNSwgd2FsKTsKIAotCS8qIFdhXzE0MDExMDYwNjQ5OnRnbCxya2wsZGcxLGFkbHMsYWRs
LXAgKi8KKwkvKiBXYV8xNDAxMTA2MDY0OTp0Z2wscmtsLGRnMSxhZGwtcyxhZGwtcCAqLwogCXdh
XzE0MDExMDYwNjQ5KGk5MTUsIHdhbCk7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4
IDVmZGI5NmU3ZDI2NjguLjBjYmI3OTQ1MmZjZjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpA
QCAtNzM1Niw3ICs3MzU2LDcgQEAgc3RhdGljIHZvaWQgaWNsX2luaXRfY2xvY2tfZ2F0aW5nKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogc3RhdGljIHZvaWQgZ2VuMTJscF9p
bml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7Ci0J
LyogV2FfMTQwOTEyMDAxMzp0Z2wscmtsLGFkbF9zLGRnMSAqLworCS8qIFdhXzE0MDkxMjAwMTM6
dGdsLHJrbCxhZGwtcyxkZzEgKi8KIAlpZiAoSVNfVElHRVJMQUtFKGRldl9wcml2KSB8fCBJU19S
T0NLRVRMQUtFKGRldl9wcml2KSB8fAogCSAgICBJU19BTERFUkxBS0VfUyhkZXZfcHJpdikgfHwg
SVNfREcxKGRldl9wcml2KSkKIAkJaW50ZWxfdW5jb3JlX3dyaXRlKCZkZXZfcHJpdi0+dW5jb3Jl
LCBJTEtfRFBGQ19DSElDS0VOLApAQCAtNzM2Nyw3ICs3MzY3LDcgQEAgc3RhdGljIHZvaWQgZ2Vu
MTJscF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
CiAJCWludGVsX3VuY29yZV93cml0ZSgmZGV2X3ByaXYtPnVuY29yZSwgR0VOOV9DTEtHQVRFX0RJ
U18zLCBpbnRlbF91bmNvcmVfcmVhZCgmZGV2X3ByaXYtPnVuY29yZSwgR0VOOV9DTEtHQVRFX0RJ
U18zKSB8CiAJCQkgICBUR0xfVlJIX0dBVElOR19ESVMpOwogCi0JLyogV2FfMTQwMTEwNTk3ODg6
dGdsLHJrbCxhZGxfcyxkZzEsYWRsLXAgKi8KKwkvKiBXYV8xNDAxMTA1OTc4ODp0Z2wscmtsLGFk
bC1zLGRnMSxhZGwtcCAqLwogCWludGVsX3VuY29yZV9ybXcoJmRldl9wcml2LT51bmNvcmUsIEdF
TjEwX0RGUl9SQVRJT19FTl9BTkRfQ0hJQ0tFTiwKIAkJCSAwLCBERlJfRElTQUJMRSk7CiAKLS0g
CjIuMzIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
