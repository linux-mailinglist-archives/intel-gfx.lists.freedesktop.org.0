Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1AC3B4B5F
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Jun 2021 01:52:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80C846E0B7;
	Fri, 25 Jun 2021 23:52:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D0DC6E0BA
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Jun 2021 23:52:15 +0000 (UTC)
IronPort-SDR: C/4y8SDeNtkN6U6vStskqhMI3b2y6dbCzSFUe+eEZ/pySsDXUAb5Hc9+elmjxMNaino6yMntA0
 1SaaxxtrmGKw==
X-IronPort-AV: E=McAfee;i="6200,9189,10026"; a="229357858"
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="229357858"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 16:52:15 -0700
IronPort-SDR: F2Bj85k3YQ41z8/HJv0xlbtCdcYkw05ajLX7dEkAcsg14MVf6EJdBjM1ac5HurNGdL16ce3keV
 JNixaQuD1SpQ==
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="491736194"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 16:52:14 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Jun 2021 16:56:00 -0700
Message-Id: <20210625235600.765677-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210625235600.765677-1-jose.souza@intel.com>
References: <20210625235600.765677-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: Disable FBC when PSR2 is
 enabled display 12 and newer
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

VGhpcyBpcyBub3cgYSByZXF1aXJlbWVudCBmb3IgYWxsIGRpc3BsYXkgMTIgYW5kIG5ld2VyLCBu
b3Qgb25seSBmb3IKdGlnZXJsYWtlLgoKQlNwZWM6IDUwNDIyCkNjOiBHd2FuLWd5ZW9uZyBNdW4g
PGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmJjLmMKaW5kZXggN2RjNzJlNGE0NjU2Yi4uMjcwYjFmMjY1NjZkZiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCkBAIC05MTEsMTEgKzkxMSwxMSBAQCBzdGF0aWMg
Ym9vbCBpbnRlbF9mYmNfY2FuX2FjdGl2YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogCX0K
IAogCS8qCi0JICogVGlnZXJsYWtlIGlzIG5vdCBzdXBwb3J0aW5nIEZCQyB3aXRoIFBTUjIuCisJ
ICogRGlzcGxheSAxMisgaXMgbm90IHN1cHBvcnRpbmcgRkJDIHdpdGggUFNSMi4KIAkgKiBSZWNv
bW1lbmRhdGlvbiBpcyB0byBrZWVwIHRoaXMgY29tYmluYXRpb24gZGlzYWJsZWQKIAkgKiBCc3Bl
YzogNTA0MjIgSFNEOiAxNDAxMDI2MDAwMgogCSAqLwotCWlmIChmYmMtPnN0YXRlX2NhY2hlLnBz
cjJfYWN0aXZlICYmIElTX1RJR0VSTEFLRShkZXZfcHJpdikpIHsKKwlpZiAoZmJjLT5zdGF0ZV9j
YWNoZS5wc3IyX2FjdGl2ZSAmJiBESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTIpIHsKIAkJZmJj
LT5ub19mYmNfcmVhc29uID0gIm5vdCBzdXBwb3J0ZWQgd2l0aCBQU1IyIjsKIAkJcmV0dXJuIGZh
bHNlOwogCX0KLS0gCjIuMzIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
