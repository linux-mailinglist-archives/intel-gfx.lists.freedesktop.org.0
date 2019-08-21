Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D074997269
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 08:40:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 147F86E916;
	Wed, 21 Aug 2019 06:40:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABB446E914
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 06:40:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 23:40:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,411,1559545200"; d="scan'208";a="195935824"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2019 23:40:29 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 12:02:33 +0530
Message-Id: <20190821063236.19705-14-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821063236.19705-1-animesh.manna@intel.com>
References: <20190821063236.19705-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 13/15] drm/i915/dsb: Cleanup of DSB context.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RFNCIGNvbnRleHQgZGVzdHJveWVkIHVzaW5nIGludGVsX2RzYl9wdXQoKSBpbiBjbGVhbnVwIGZ1
bmN0aW9uLgoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogUm9kcmlnbyBW
aXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5h
IDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE2ICsrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2Vk
LCAxNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwppbmRleCBjNmE1ZjM4YmRjODcuLjc0MTVjNGNiOGVlZSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTEzODQzLDYgKzEzODQz
LDIwIEBAIHN0YXRpYyB2b2lkIGludGVsX3ByZXBhcmVfZHNiKHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlKQogCQljb25maWctPmRzYiA9IGludGVsX2RzYl9nZXQoY3J0Yyk7CiB9CiAK
K3N0YXRpYyB2b2lkIGludGVsX2NsZWFudXBfZHNiKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlKQoreworCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjb25maWc7CisJc3RydWN0IGlu
dGVsX2NydGMgKmNydGM7CisJaW50IGk7CisKKwlmb3JfZWFjaF9uZXdfaW50ZWxfY3J0Y19pbl9z
dGF0ZShzdGF0ZSwgY3J0YywgY29uZmlnLCBpKSB7CisJCWlmIChjb25maWctPmRzYikgeworCQkJ
aW50ZWxfZHNiX3B1dChjb25maWctPmRzYik7CisJCQljb25maWctPmRzYiA9IE5VTEw7CisJCX0K
Kwl9Cit9CisKIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19oZWxwZXJfZnJlZV9zdGF0ZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUsICpuZXh0OwpAQCAtMTQwNjEsNiArMTQwNzUsOCBAQCBzdGF0aWMgdm9pZCBp
bnRlbF9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUp
CiAKIAlkcm1fYXRvbWljX2hlbHBlcl9jb21taXRfaHdfZG9uZSgmc3RhdGUtPmJhc2UpOwogCisJ
aW50ZWxfY2xlYW51cF9kc2Ioc3RhdGUpOworCiAJaWYgKHN0YXRlLT5tb2Rlc2V0KSB7CiAJCS8q
IEFzIG9uZSBvZiB0aGUgcHJpbWFyeSBtbWlvIGFjY2Vzc29ycywgS01TIGhhcyBhIGhpZ2gKIAkJ
ICogbGlrZWxpaG9vZCBvZiB0cmlnZ2VyaW5nIGJ1Z3MgaW4gdW5jbGFpbWVkIGFjY2Vzcy4gQWZ0
ZXIgd2UKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
