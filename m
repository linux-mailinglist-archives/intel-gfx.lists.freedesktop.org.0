Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 118DC10A5C8
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 22:07:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00ADD8967F;
	Tue, 26 Nov 2019 21:07:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 627B48967F
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 21:07:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 13:07:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="211540645"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga006.jf.intel.com with ESMTP; 26 Nov 2019 13:07:38 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 13:07:30 -0800
Message-Id: <20191126210732.407496-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Handle SDEISR according to PCH
 rather than platform
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIFNvdXRoIERpc3BsYXkgaXMgcGFydCBvZiB0aGUgUENIIHNvIHdlIHNob3VsZCB0ZWNobmlj
YWxseSBiZSBiYXNpbmcKb3VyIHBvcnQgZGV0ZWN0aW9uIGxvZ2ljIG9mZiB0aGUgUENIIGluIHVz
ZSByYXRoZXIgdGhhbiB0aGUgcGxhdGZvcm0KZ2VuZXJhdGlvbi4KCkNjOiBMdWNhcyBEZSBNYXJj
aGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8
bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMgfCA4ICsrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
YwppbmRleCAzMTIzOTU4ZTIwODEuLmRkZjViYWQxYjk2OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYwpAQCAtNTQ4Nyw3ICs1NDg3LDcgQEAgc3RhdGljIGJvb2wgaWNs
X2NvbWJvX3BvcnRfY29ubmVjdGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwK
IAlyZXR1cm4gSTkxNV9SRUFEKFNERUlTUikgJiBTREVfRERJX0hPVFBMVUdfSUNQKHBvcnQpOwog
fQogCi1zdGF0aWMgYm9vbCBpY2xfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlcikKK3N0YXRpYyBib29sIGljcF9kaWdpdGFsX3BvcnRfY29ubmVjdGVk
KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwogCXN0cnVjdCBpbnRl
bF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gZW5jX3RvX2RpZ19wb3J0KCZlbmNvZGVyLT5iYXNl
KTsKQEAgLTU1MjUsOSArNTUyNSw5IEBAIHN0YXRpYyBib29sIF9faW50ZWxfZGlnaXRhbF9wb3J0
X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKIAkJCXJldHVybiBnNHhf
ZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChlbmNvZGVyKTsKIAl9CiAKLQlpZiAoSU5URUxfR0VOKGRl
dl9wcml2KSA+PSAxMSkKLQkJcmV0dXJuIGljbF9kaWdpdGFsX3BvcnRfY29ubmVjdGVkKGVuY29k
ZXIpOwotCWVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgMTApIHx8IElTX0dFTjlfQkMoZGV2X3By
aXYpKQorCWlmIChJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikgPj0gUENIX0lDUCkKKwkJcmV0dXJu
IGljcF9kaWdpdGFsX3BvcnRfY29ubmVjdGVkKGVuY29kZXIpOworCWVsc2UgaWYgKElOVEVMX1BD
SF9UWVBFKGRldl9wcml2KSA+PSBQQ0hfU1BUKQogCQlyZXR1cm4gc3B0X2RpZ2l0YWxfcG9ydF9j
b25uZWN0ZWQoZW5jb2Rlcik7CiAJZWxzZSBpZiAoSVNfR0VOOV9MUChkZXZfcHJpdikpCiAJCXJl
dHVybiBieHRfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChlbmNvZGVyKTsKLS0gCjIuMjMuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
