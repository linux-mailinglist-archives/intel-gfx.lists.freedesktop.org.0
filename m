Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F00BC3A99
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 18:36:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF62F6E846;
	Tue,  1 Oct 2019 16:36:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92FD76E846
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 16:36:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 09:36:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="216127588"
Received: from zeliteleevi.tm.intel.com ([10.237.55.130])
 by fmsmga004.fm.intel.com with ESMTP; 01 Oct 2019 09:36:02 -0700
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Oct 2019 19:35:54 +0300
Message-Id: <20191001163555.24356-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio power up sequence for
 gen10/11
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
Cc: Jani Nikula <jani.nikula@intel.com>, tiwai@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gZ2VuMTAvMTEgcGxhdGZvcm1zLCBkcml2ZXIgbXVzdCBzZXQgdGhlIGVuYWJsZSBiaXQgb2Yg
QVVEX1BJTl9CVUZfQ1RMCmFzIHBhcnQgb2YgYXVkaW8gcG93ZXIgdXAgc2VxdWVuY2UuCgpGYWls
aW5nIHRvIGRvIHRoaXMgcmVzdWx0ZWQgaW4gZXJyb3JzIGR1cmluZyBkaXNwbGF5IGF1ZGlvIGNv
ZGVjIHByb2JlLAphbmQgZmFpbHVyZXMgZHVyaW5nIHJlc3VtZSBmcm9tIHN1c3BlbmQuCgpCdWd6
aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMjE0
ClNpZ25lZC1vZmYtYnk6IEthaSBWZWhtYW5lbiA8a2FpLnZlaG1hbmVuQGxpbnV4LmludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMgfCA1ICsr
KysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgfCAyICsrCiAy
IGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYXVkaW8uYwppbmRleCA1NDYzOGQ5OWUwMjEuLmE3MzFhZjdhZGEwOCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8uYwpAQCAtODYyLDYgKzg2
MiwxMSBAQCBzdGF0aWMgdW5zaWduZWQgbG9uZyBpOTE1X2F1ZGlvX2NvbXBvbmVudF9nZXRfcG93
ZXIoc3RydWN0IGRldmljZSAqa2RldikKIAkJLyogRm9yY2UgQ0RDTEsgdG8gMipCQ0xLIGFzIGxv
bmcgYXMgd2UgbmVlZCBhdWRpbyBwb3dlcmVkLiAqLwogCQlpZiAoSVNfQ0FOTk9OTEFLRShkZXZf
cHJpdikgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpCiAJCQlnbGtfZm9yY2VfYXVkaW9fY2Rj
bGsoZGV2X3ByaXYsIHRydWUpOworCisJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID09IDExIHx8
IElOVEVMX0dFTihkZXZfcHJpdikgPT0gMTApCisJCQlJOTE1X1dSSVRFKEFVRF9QSU5fQlVGX0NU
TCwKKwkJCQkgICAoSTkxNV9SRUFEKEFVRF9QSU5fQlVGX0NUTCkgfAorCQkJCSAgICBBVURfUElO
X0JVRl9FTkFCTEUpKTsKIAl9CiAKIAlyZXR1cm4gcmV0OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
aW5kZXggMDU4YWE1Y2E4YjczLi5kYWZmOTA1OGYwZTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aApAQCAtOTEzMyw2ICs5MTMzLDggQEAgZW51bSB7CiAjZGVmaW5lICAgU0tMX0FVRF9DT0RFQ19X
QUtFX1NJR05BTAkJKDEgPDwgMTUpCiAKICNkZWZpbmUgQVVEX0ZSRVFfQ05UUkwJCQlfTU1JTygw
eDY1OTAwKQorI2RlZmluZSBBVURfUElOX0JVRl9DVEwJCV9NTUlPKDB4NDg0MTQpCisjZGVmaW5l
ICAgQVVEX1BJTl9CVUZfRU5BQkxFCQlCSVQoMzEpCiAKIC8qCiAgKiBIU1cgLSBJQ0wgcG93ZXIg
d2VsbHMKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
