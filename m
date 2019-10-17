Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DE7DB797
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 21:36:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC34C6EA35;
	Thu, 17 Oct 2019 19:36:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF0CE6EA35
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 19:36:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 12:36:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,308,1566889200"; d="scan'208";a="208749553"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by fmsmga001.fm.intel.com with ESMTP; 17 Oct 2019 12:36:21 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Oct 2019 12:37:19 -0700
Message-Id: <20191017193719.137439-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Do not end i915 batch buffers
 prematurely
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

RHVyaW5nIGVuZ2luZSBpbml0aWFsaXphdGlvbiBpbiBpOTE1IGxvYWQsIHRoZSBiYXRjaCBidWZm
ZXJzCmJlaW5nIHVzZWQgdG8gc2V0IHVwIHRoZSBpbml0aWFsIGNvbnRleHQgYXJlIGJlaW5nIHBy
ZW1hdHVyZWx5CmVuZGVkLiBJbiBtb3N0IHNjZW5hcmlvcywgdGhpcyBkb2VzIG5vdCBjYXVzZSBh
IHByb2JsZW0sIGJ1dAppbiB0aGUgcmFyZSBldmVudCB0aGUgZW5naW5lIGV4cGVjdHMgdGhlIGNv
bnRleHQgdG8gYmUgYWRkZWQKd2l0aG91dCBhbiBleHBsaWNpdCBNSV9CQVRDSF9CVUZGRVJfRU5E
IGluc3RydWN0aW9uLCBkbyBub3QKaW5zZXJ0IHRoaXMgaW5zdHJ1Y3Rpb24gcHJlbWF0dXJlbHku
CgpTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgMiArLQogMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYwppbmRleCBlOWZlOWY3OWNlZGQuLmVjMDY3YzI5YWM2NSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTM4MDUsNyArMzgwNSw3IEBAIHBvcHVsYXRlX2xy
X2NvbnRleHQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAogCS8qIFRoZSBzZWNvbmQgcGFnZSBv
ZiB0aGUgY29udGV4dCBvYmplY3QgY29udGFpbnMgc29tZSBmaWVsZHMgd2hpY2ggbXVzdAogCSAq
IGJlIHNldCB1cCBwcmlvciB0byB0aGUgZmlyc3QgZXhlY3V0aW9uLiAqLwogCXJlZ3MgPSB2YWRk
ciArIExSQ19TVEFURV9QTiAqIFBBR0VfU0laRTsKLQlleGVjbGlzdHNfaW5pdF9yZWdfc3RhdGUo
cmVncywgY2UsIGVuZ2luZSwgcmluZywgaW5oaWJpdCk7CisJZXhlY2xpc3RzX2luaXRfcmVnX3N0
YXRlKHJlZ3MsIGNlLCBlbmdpbmUsIHJpbmcsIGZhbHNlKTsKIAlpZiAoaW5oaWJpdCkKIAkJcmVn
c1tDVFhfQ09OVEVYVF9DT05UUk9MXSB8PQogCQkJX01BU0tFRF9CSVRfRU5BQkxFKENUWF9DVFJM
X0VOR0lORV9DVFhfUkVTVE9SRV9JTkhJQklUKTsKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
