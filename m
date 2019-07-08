Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE2F62C8D
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 01:17:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BB866E060;
	Mon,  8 Jul 2019 23:17:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A90989FBC
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 23:16:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 16:16:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="316859609"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga004.jf.intel.com with ESMTP; 08 Jul 2019 16:16:56 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 16:16:11 -0700
Message-Id: <20190708231629.9296-8-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190708231629.9296-1-lucas.demarchi@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 07/25] drm/i915/tgl: Check if pipe D is fused
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpPbiBU
aWdlciBMYWtlIHRoZXJlIGlzIG9uZSBtb3JlIHBpcGUgLSBjaGVjayBpZiBpdCdzIGZ1c2VkLgoK
U2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgfCAxICsK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgfCAzICsrKwogMiBmaWxl
cyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCAz
MWM2YzE2OGRkZTIuLjA4ZGM3MWU0YjgxOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC03
NjMzLDYgKzc2MzMsNyBAQCBlbnVtIHsKICNkZWZpbmUgU0tMX0RGU01fUElQRV9BX0RJU0FCTEUJ
CSgxIDw8IDMwKQogI2RlZmluZSBTS0xfREZTTV9QSVBFX0JfRElTQUJMRQkJKDEgPDwgMjEpCiAj
ZGVmaW5lIFNLTF9ERlNNX1BJUEVfQ19ESVNBQkxFCQkoMSA8PCAyOCkKKyNkZWZpbmUgVEdMX0RG
U01fUElQRV9EX0RJU0FCTEUJCSgxIDw8IDIyKQogCiAjZGVmaW5lIFNLTF9EU1NNCQkJCV9NTUlP
KDB4NTEwMDQpCiAjZGVmaW5lIENOTF9EU1NNX0NEQ0xLX1BMTF9SRUZDTEtfMjRNSHoJCSgxIDw8
IDMxKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8u
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKaW5kZXggZTBkOWE3
YTM3OTk0Li5mOTljOWZkNDk3YjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RldmljZV9pbmZvLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNl
X2luZm8uYwpAQCAtOTM4LDYgKzkzOCw5IEBAIHZvaWQgaW50ZWxfZGV2aWNlX2luZm9fcnVudGlt
ZV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJCWVuYWJsZWRfbWFz
ayAmPSB+QklUKFBJUEVfQik7CiAJCWlmIChkZnNtICYgU0tMX0RGU01fUElQRV9DX0RJU0FCTEUp
CiAJCQllbmFibGVkX21hc2sgJj0gfkJJVChQSVBFX0MpOworCQlpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMiAmJgorCQkgICAgKGRmc20gJiBUR0xfREZTTV9QSVBFX0RfRElTQUJMRSkpCisJ
CQllbmFibGVkX21hc2sgJj0gfkJJVChQSVBFX0QpOwogCiAJCS8qCiAJCSAqIEF0IGxlYXN0IG9u
ZSBwaXBlIHNob3VsZCBiZSBlbmFibGVkIGFuZCBpZiB0aGVyZSBhcmUKLS0gCjIuMjEuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
