Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6DB26A62
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 21:01:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD2368999C;
	Wed, 22 May 2019 19:01:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE98C8999C
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 19:01:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 12:01:14 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga005.jf.intel.com with ESMTP; 22 May 2019 12:01:12 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4MJ18WG012878; Wed, 22 May 2019 20:01:11 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 May 2019 19:00:57 +0000
Message-Id: <20190522190057.848-4-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.10.1.windows.1
In-Reply-To: <20190522190057.848-1-michal.wajdeczko@intel.com>
References: <20190522190057.848-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/huc: Update HuC status codes
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2l0aG91dCBicmVha2luZyBleGlzdGluZyB1c2FnZSwgc2xpZ2h0bHkgdXBkYXRlIEh1QyBzdGF0
dXMgY29kZXMKdG8gcHJvdmlkZSBtb3JlIGluZm8gdG8gdGhlIGNsaWVudHM6CiAxIGlmIEh1QyBm
aXJtd2FyZSBpcyBsb2FkZWQgYW5kIHZlcmlmaWVkLAogMCBpZiBIdUMgZmlybXdhcmUgaXMgbm90
IGVuYWJsZWQsCiAtRU5PUEtHIGlmIEh1QyBmaXJtd2FyZSBpcyBub3QgbG9hZGVkLAogLUVOT0RF
ViBpZiBIdUMgaXMgbm90IHByZXNlbnQgb24gdGhpcyBwbGF0Zm9ybS4KClNpZ25lZC1vZmYtYnk6
IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpDYzogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUb255IFllIDx0b255LnllQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9odWMuYyB8IDEzICsrKysr
KysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9odWMuYwppbmRleCBhYWMxNzkxNmUxMzAuLjk4ZGViNGVlNjBh
NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjLmMKQEAgLTE1MCw5ICsxNTAsMTEgQEAgaW50IGlu
dGVsX2h1Y19hdXRoKHN0cnVjdCBpbnRlbF9odWMgKmh1YykKICAqIGludGVsX2h1Y19jaGVja19z
dGF0dXMoKSAtIGNoZWNrIEh1QyBzdGF0dXMKICAqIEBodWM6IGludGVsX2h1YyBzdHJ1Y3R1cmUK
ICAqCi0gKiBSZXR1cm5zOiAxIGlmIEh1QyBmaXJtd2FyZSBpcyBsb2FkZWQgYW5kIHZlcmlmaWVk
LAotICogMCBpZiBIdUMgZmlybXdhcmUgaXMgbm90IGxvYWRlZCBhbmQgLUVOT0RFViBpZiBIdUMK
LSAqIGlzIG5vdCBwcmVzZW50IG9uIHRoaXMgcGxhdGZvcm0uCisgKiBSZXR1cm46CisgKiAqIDEg
aWYgSHVDIGZpcm13YXJlIGlzIGxvYWRlZCBhbmQgdmVyaWZpZWQsCisgKiAqIDAgaWYgSHVDIGZp
cm13YXJlIGlzIG5vdCBlbmFibGVkLAorICogKiAtRU5PUEtHIGlmIEh1QyBmaXJtd2FyZSBpcyBu
b3QgbG9hZGVkLAorICogKiAtRU5PREVWIGlmIEh1QyBpcyBub3QgcHJlc2VudCBvbiB0aGlzIHBs
YXRmb3JtLgogICovCiBpbnQgaW50ZWxfaHVjX2NoZWNrX3N0YXR1cyhzdHJ1Y3QgaW50ZWxfaHVj
ICpodWMpCiB7CkBAIC0xNjEsNSArMTYzLDggQEAgaW50IGludGVsX2h1Y19jaGVja19zdGF0dXMo
c3RydWN0IGludGVsX2h1YyAqaHVjKQogCWlmICghSEFTX0hVQyhpOTE1KSkKIAkJcmV0dXJuIC1F
Tk9ERVY7CiAKLQlyZXR1cm4gaHVjLT52ZXJpZmllZDsKKwlpZiAoIVVTRVNfSFVDKGk5MTUpKQor
CQlyZXR1cm4gMDsKKworCXJldHVybiBodWMtPnZlcmlmaWVkID8gMSA6IC1FTk9QS0c7CiB9Ci0t
IAoyLjE5LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
