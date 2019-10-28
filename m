Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE92E7B53
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 22:25:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A14136EA95;
	Mon, 28 Oct 2019 21:25:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C98F789DC7
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 21:25:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 14:25:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,241,1569308400"; d="scan'208";a="198731946"
Received: from dhiatt-desk.jf.intel.com ([10.54.81.11])
 by fmsmga007.fm.intel.com with ESMTP; 28 Oct 2019 14:25:27 -0700
From: don.hiatt@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2019 14:25:27 -0700
Message-Id: <20191028212527.24401-1-don.hiatt@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Skip suspend/resume GuC action on
 platforms w/o GuC submission
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

RnJvbTogRG9uIEhpYXR0IDxkb24uaGlhdHRAaW50ZWwuY29tPgoKT24gc29tZSBwbGF0Zm9ybXMg
KGUuZy4gS0JMKSB0aGF0IGRvIG5vdCBzdXBwb3J0IEd1QyBzdWJtaXNzaW9uLCBidXQKdGhlIHVz
ZXIgZW5hYmxlZCB0aGUgR3VDIGNvbW11bmljYXRpb24gKGUuZyBmb3IgSHVDIGF1dGhlbnRpY2F0
aW9uKQpjYWxsaW5nIHRoZSBHdUMgRVhJVF9TX1NUQVRFIGFjdGlvbiByZXN1bHRzIGluIGxvc2Ug
b2YgYWJpbGl0eSB0bwplbnRlciBSQzYuIFdlIGNhbiByZW1vdmUgdGhlIEd1QyBzdXNwZW5kL3Jl
bW92ZSBlbnRpcmVseSBhcyB3ZSBkbwpub3QgbmVlZCB0byBzYXZlIHRoZSBHdUMgc3VibWlzc2lv
biBzdGF0dXMuCgp2MjogRG8gbm90IHN1c3BlbmQvcmVzdW1lIHRoZSBHdUMgb24gcGxhdGZvcm1z
IHRoYXQgZG8gbm90IHN1cHBvcnQKICAgIEd1YyBTdWJtaXNzaW9uLgoKU2lnbmVkLW9mZi1ieTog
RG9uIEhpYXR0IDxkb24uaGlhdHRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX3VjLmMgfCAxNyArKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQs
IDE3IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF91Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwppbmRl
eCAzZmRiYzkzNWQxNTUuLjA0MDMxNTY0ZjBiMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfdWMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Yy5jCkBAIC01NzIsMTAgKzU3MiwxOSBAQCB2b2lkIGludGVsX3VjX3J1bnRpbWVfc3Vz
cGVuZChzdHJ1Y3QgaW50ZWxfdWMgKnVjKQogCWlmICghaW50ZWxfZ3VjX2lzX3J1bm5pbmcoZ3Vj
KSkKIAkJcmV0dXJuOwogCisJLyoKKwkgKiBJZiBHdUMgY29tbXVuY2lhdGlvbiBpcyBlbmFibGVk
IGJ1dCBzdWJtaXNzaW9uIGlzIG5vdCBzdXBwb3J0ZWQsCisJICogd2UgZG8gbm90IG5lZWQgdG8g
c3VzcGVuZCB0aGUgR3VDIGJ1dCB3ZSBkbyBuZWVkIHRvIGRpc2FibGUgdGhlCisJICogR3VDIGNv
bW11bmljYXRpb24gb24gc3VzcGVuZC4KKwkgKi8KKwlpZiAoIWd1Yy0+c3VibWlzc2lvbl9zdXBw
b3J0ZWQpCisJCWdvdG8gZ3VjX2Rpc2FibGVfY29tbTsKKwogCWVyciA9IGludGVsX2d1Y19zdXNw
ZW5kKGd1Yyk7CiAJaWYgKGVycikKIAkJRFJNX0RFQlVHX0RSSVZFUigiRmFpbGVkIHRvIHN1c3Bl
bmQgR3VDLCBlcnI9JWQiLCBlcnIpOwogCitndWNfZGlzYWJsZV9jb21tOgogCWd1Y19kaXNhYmxl
X2NvbW11bmljYXRpb24oZ3VjKTsKIH0KIApAQCAtNjA1LDYgKzYxNCwxNCBAQCBzdGF0aWMgaW50
IF9fdWNfcmVzdW1lKHN0cnVjdCBpbnRlbF91YyAqdWMsIGJvb2wgZW5hYmxlX2NvbW11bmljYXRp
b24pCiAJaWYgKGVuYWJsZV9jb21tdW5pY2F0aW9uKQogCQlndWNfZW5hYmxlX2NvbW11bmljYXRp
b24oZ3VjKTsKIAorCS8qCisJICogSWYgR3VDIGNvbW11bmNpYXRpb24gaXMgZW5hYmxlZCBidXQg
c3VibWlzc2lvbiBpcyBub3Qgc3VwcG9ydGVkLAorCSAqIHdlIGRvIG5vdCBuZWVkIHRvIHJlc3Vt
ZSB0aGUgR3VDIGJ1dCB3ZSBkbyBuZWVkIHRvIGVuYWJsZSB0aGUKKwkgKiBHdUMgY29tbXVuaWNh
dGlvbiBvbiByZXN1bWUgKGFib3ZlKS4KKwkgKi8KKwlpZiAoIWd1Yy0+c3VibWlzc2lvbl9zdXBw
b3J0ZWQpCisJCXJldHVybiAwOworCiAJZXJyID0gaW50ZWxfZ3VjX3Jlc3VtZShndWMpOwogCWlm
IChlcnIpIHsKIAkJRFJNX0RFQlVHX0RSSVZFUigiRmFpbGVkIHRvIHJlc3VtZSBHdUMsIGVycj0l
ZCIsIGVycik7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
