Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5533CC070
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Jul 2021 03:08:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 886B86E9FD;
	Sat, 17 Jul 2021 01:08:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B97F6E9F9
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Jul 2021 01:08:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="232656455"
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="232656455"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 18:08:15 -0700
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="431385291"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 18:08:15 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jul 2021 18:12:24 -0700
Message-Id: <20210717011227.204494-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/display: Disable FBC when PSR2 is
 enabled for xelpd platforms
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

eGVscGQgcGxhdGZvcm1zIGFsc28gcmVxdWlyZXMgdGhhdCBGQkMgaXMgZGlzYWJsZWQgd2hlbiBQ
U1IyIGlzCmVuYWJsZWQgc28gZXh0ZW5kaW5nIGl0LgoKQlNwZWM6IDUwNDIyCkNjOiBHd2FuLWd5
ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmJjLmMKaW5kZXggODJlZmZiNjRhM2I5Yy4uZGRmYzE3ZTIxNjY4YSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCkBAIC05MTIsMTEgKzkxMiwxMSBA
QCBzdGF0aWMgYm9vbCBpbnRlbF9mYmNfY2FuX2FjdGl2YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjKQogCX0KIAogCS8qCi0JICogVGlnZXJsYWtlIGlzIG5vdCBzdXBwb3J0aW5nIEZCQyB3aXRo
IFBTUjIuCisJICogRGlzcGxheSAxMisgaXMgbm90IHN1cHBvcnRpbmcgRkJDIHdpdGggUFNSMi4K
IAkgKiBSZWNvbW1lbmRhdGlvbiBpcyB0byBrZWVwIHRoaXMgY29tYmluYXRpb24gZGlzYWJsZWQK
IAkgKiBCc3BlYzogNTA0MjIgSFNEOiAxNDAxMDI2MDAwMgogCSAqLwotCWlmIChmYmMtPnN0YXRl
X2NhY2hlLnBzcjJfYWN0aXZlICYmIElTX1RJR0VSTEFLRShkZXZfcHJpdikpIHsKKwlpZiAoZmJj
LT5zdGF0ZV9jYWNoZS5wc3IyX2FjdGl2ZSAmJiBESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTIp
IHsKIAkJZmJjLT5ub19mYmNfcmVhc29uID0gIm5vdCBzdXBwb3J0ZWQgd2l0aCBQU1IyIjsKIAkJ
cmV0dXJuIGZhbHNlOwogCX0KLS0gCjIuMzIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
