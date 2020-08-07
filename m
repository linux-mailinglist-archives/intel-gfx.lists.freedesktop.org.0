Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6530923EA16
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 11:21:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 228F96E995;
	Fri,  7 Aug 2020 09:21:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DCCF6E993;
 Fri,  7 Aug 2020 09:21:50 +0000 (UTC)
IronPort-SDR: jFKwzgAD8gIswx+roVPHB647mJHFYMHdt7sp/854JsZgFYSxcPXYG73bhKAgezKt/fRkdiOY6b
 8muT4yxecxLQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="171106837"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="171106837"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:21:41 -0700
IronPort-SDR: 3SD5FxXhwU9thSVzNNl1lEMyMz0qexejE0UWzNu4BjfAWpB5likXGLmevamUjRJePNw1Xr1VSY
 Xw7WXI01Kk2A==
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="333492064"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:21:40 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  7 Aug 2020 11:19:47 +0200
Message-Id: <20200807092002.32350-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200807092002.32350-1-janusz.krzysztofik@linux.intel.com>
References: <20200807092002.32350-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 01/16] tests/core_hotunplug: Use
 igt_assert_fd()
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlcmUgaXMgYSBuZXcgbGlicmFyeSBoZWxwZXIgdGhhdCBhc3NlcnRzIHZhbGlkaXR5IG9mIG9w
ZW4gZmlsZQpkZXNjcmlwdG9ycy4gIFVzZSBpdCBpbnN0ZWFkIG9mIG9wZW4gY29kaW5nLgoKdjI6
IFJlYmFzZSBvbiBjdXJyZW50IHVwc3RyZWFtIG1hc3Rlci4KClNpZ25lZC1vZmYtYnk6IEphbnVz
eiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3
ZWQtYnk6IE1pY2hhxYIgV2luaWFyc2tpIDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KLS0t
CiB0ZXN0cy9jb3JlX2hvdHVucGx1Zy5jIHwgMTAgKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9jb3Jl
X2hvdHVucGx1Zy5jIGIvdGVzdHMvY29yZV9ob3R1bnBsdWcuYwppbmRleCBlMDNmM2I5NDUuLjc0
MzEzNDZiMSAxMDA2NDQKLS0tIGEvdGVzdHMvY29yZV9ob3R1bnBsdWcuYworKysgYi90ZXN0cy9j
b3JlX2hvdHVucGx1Zy5jCkBAIC01Nyw3ICs1Nyw3IEBAIHN0YXRpYyB2b2lkIHByZXBhcmVfZm9y
X3VuYmluZChzdHJ1Y3QgaG90dW5wbHVnICpwcml2LCBjaGFyICpidWYsIGludCBidWZsZW4pCiAK
IAlwcml2LT5mZC5zeXNmc19kcnYgPSBvcGVuYXQocHJpdi0+ZmQuc3lzZnNfZGV2LCAiZGV2aWNl
L2RyaXZlciIsCiAJCQkJICAgIE9fRElSRUNUT1JZKTsKLQlpZ3RfYXNzZXJ0KHByaXYtPmZkLnN5
c2ZzX2RydiA+PSAwKTsKKwlpZ3RfYXNzZXJ0X2ZkKHByaXYtPmZkLnN5c2ZzX2Rydik7CiAKIAls
ZW4gPSByZWFkbGlua2F0KHByaXYtPmZkLnN5c2ZzX2RldiwgImRldmljZSIsIGJ1ZiwgYnVmbGVu
IC0gMSk7CiAJYnVmW2xlbl0gPSAnXDAnOwpAQCAtNzIsMTAgKzcyLDEwIEBAIHN0YXRpYyB2b2lk
IHByZXBhcmUoc3RydWN0IGhvdHVucGx1ZyAqcHJpdiwgY2hhciAqYnVmLCBpbnQgYnVmbGVuKQog
ewogCWlndF9kZWJ1Zygib3BlbmluZyBkZXZpY2VcbiIpOwogCXByaXYtPmZkLmRybSA9IF9fZHJt
X29wZW5fZHJpdmVyKERSSVZFUl9BTlkpOwotCWlndF9hc3NlcnQocHJpdi0+ZmQuZHJtID49IDAp
OworCWlndF9hc3NlcnRfZmQocHJpdi0+ZmQuZHJtKTsKIAogCXByaXYtPmZkLnN5c2ZzX2RldiA9
IGlndF9zeXNmc19vcGVuKHByaXYtPmZkLmRybSk7Ci0JaWd0X2Fzc2VydChwcml2LT5mZC5zeXNm
c19kZXYgPj0gMCk7CisJaWd0X2Fzc2VydF9mZChwcml2LT5mZC5zeXNmc19kZXYpOwogCiAJaWYg
KGJ1ZikgewogCQlwcmVwYXJlX2Zvcl91bmJpbmQocHJpdiwgYnVmLCBidWZsZW4pOwpAQCAtODMs
NyArODMsNyBAQCBzdGF0aWMgdm9pZCBwcmVwYXJlKHN0cnVjdCBob3R1bnBsdWcgKnByaXYsIGNo
YXIgKmJ1ZiwgaW50IGJ1ZmxlbikKIAkJLyogcHJlcGFyZSBmb3IgYnVzIHJlc2NhbiAqLwogCQlw
cml2LT5mZC5zeXNmc19idXMgPSBvcGVuYXQocHJpdi0+ZmQuc3lzZnNfZGV2LAogCQkJCQkgICAg
ImRldmljZS9zdWJzeXN0ZW0iLCBPX0RJUkVDVE9SWSk7Ci0JCWlndF9hc3NlcnQocHJpdi0+ZmQu
c3lzZnNfYnVzID49IDApOworCQlpZ3RfYXNzZXJ0X2ZkKHByaXYtPmZkLnN5c2ZzX2J1cyk7CiAJ
fQogfQogCkBAIC0yNjEsNyArMjYxLDcgQEAgaWd0X21haW4KIAkJICogYSBkZXZpY2UgZmlsZSBk
ZXNjcmlwdG9yIG9wZW4gZm9yIGV4aXQgaGFuZGxlciB1c2UuCiAJCSAqLwogCQlmZF9kcm0gPSBf
X2RybV9vcGVuX2RyaXZlcihEUklWRVJfQU5ZKTsKLQkJaWd0X2Fzc2VydChmZF9kcm0gPj0gMCk7
CisJCWlndF9hc3NlcnRfZmQoZmRfZHJtKTsKIAogCQlpZiAoaXNfaTkxNV9kZXZpY2UoZmRfZHJt
KSkKIAkJCWlndF9yZXF1aXJlX2dlbShmZF9kcm0pOwotLSAKMi4yMS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
