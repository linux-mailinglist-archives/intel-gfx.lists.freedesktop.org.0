Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 281C63B8A1
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 17:54:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B209189180;
	Mon, 10 Jun 2019 15:54:31 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6131789177
 for <Intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 15:54:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 08:54:30 -0700
X-ExtLoop1: 1
Received: from jwwillia-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.8.43])
 by fmsmga001.fm.intel.com with ESMTP; 10 Jun 2019 08:54:29 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 16:54:09 +0100
Message-Id: <20190610155419.23723-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610155419.23723-1-tvrtko.ursulin@linux.intel.com>
References: <20190610155419.23723-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 04/14] drm/i915: Add a couple intel_gt helpers
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClR3byB0cml2
aWFsIGhlbHBlcnMgdG8gY29udmVydCBmcm9tIGludGVsX2d0IHRvIGk5MTUgYW5kIHVuY29yZSB3
aGljaCB3aWxsCmJlIG5lZWRlZCBieSB0aGUgZm9sbG93aW5nIHBhdGNoZXMuCgpTaWduZWQtb2Zm
LWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmggfCAyNiArKysrKysrKysrKysrKysrKysrKysr
KysrKwogMSBmaWxlIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0LmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5iNjcyZjhi
MDNiZmQKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
dC5oCkBAIC0wLDAgKzEsMjYgQEAKKy8qCisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlU
CisgKgorICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisjaWZu
ZGVmIF9fSU5URUxfR1RfXworI2RlZmluZSBfX0lOVEVMX0dUX18KKworI2luY2x1ZGUgImd0L2lu
dGVsX2d0X3R5cGVzLmgiCisKKyNpbmNsdWRlICJpbnRlbF91bmNvcmUuaCIKKworI2luY2x1ZGUg
Imk5MTVfZHJ2LmgiCisKK3N0YXRpYyBpbmxpbmUgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmd0
X3RvX2k5MTUoc3RydWN0IGludGVsX2d0ICpndCkKK3sKKwlyZXR1cm4gY29udGFpbmVyX29mKGd0
LCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSwgZ3QpOworfQorCitzdGF0aWMgaW5saW5lIHN0cnVj
dCBpbnRlbF91bmNvcmUgKmd0X3RvX3VuY29yZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQoreworCXJl
dHVybiAmZ3RfdG9faTkxNShndCktPnVuY29yZTsKK30KKworI2VuZGlmIC8qIF9fSU5URUxfR1Rf
SF9fICovClwgTm8gbmV3bGluZSBhdCBlbmQgb2YgZmlsZQotLSAKMi4yMC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
