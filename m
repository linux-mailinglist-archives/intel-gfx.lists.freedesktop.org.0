Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8469136D582
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 12:14:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77AB06EB0A;
	Wed, 28 Apr 2021 10:14:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 982F06EB0D
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 10:14:41 +0000 (UTC)
IronPort-SDR: O8cX700f31e6pJDfAplILZ9FdyzMi469gzAvlEo5rz/oc9ZwHy6RTrwelIRGpY76Ney0cEyqT7
 NWzCUSyCJ7ug==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="196260440"
X-IronPort-AV: E=Sophos;i="5.82,257,1613462400"; d="scan'208";a="196260440"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2021 03:14:41 -0700
IronPort-SDR: kt2gfGNMVRiBSalbyWN+M6A0jKGFvwrC4aBBdvOB7btLdBdUg41mcwPJZ5Rk8bP2yV3jladnQY
 Tp/mzxBk00TA==
X-IronPort-AV: E=Sophos;i="5.82,257,1613462400"; d="scan'208";a="430229392"
Received: from ajalsove-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.39.247])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2021 03:14:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Apr 2021 13:14:28 +0300
Message-Id: <271206461d9c0f42755792236330b588df3b532e.1619604743.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1619604743.git.jani.nikula@intel.com>
References: <cover.1619604743.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/backlight: clean up backlight
 device register
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIGNvbm5lY3RvciBhbmQgYmFja2xpZ2h0IGRldmljZSBuYW1lIHRvIGxvZ2dpbmcsIGFuZCBw
cm9wYWdhdGUgZXJyb3IKY29kZSBmcm9tIGJhY2tsaWdodF9kZXZpY2VfcmVnaXN0ZXIoKSBpbnN0
ZWFkIG9mIGZsYXR0ZW5pbmcgdG8KLUVOT0RFVi4gU3RvcmluZyB0aGUgbmFtZSBpbiBhbiBhbGxv
Y2F0ZWQgYnVmZmVyIGlzIHVubmVjZXNzYXJ5IGhlcmUsCmJ1dCBtYWtlcyBmb2xsb3ctdXAgd29y
ayBvbiBuYW1lcyBtdWNoIGNsZWFuZXIuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bh
bmVsLmMgfCAzNyArKysrKysrKysrKysrKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjMgaW5z
ZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wYW5lbC5jCmluZGV4IDU1MWZjYWE3N2MyYy4uMzA4ODY3N2FiOGE3IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BhbmVsLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jCkBAIC0xMzcyLDYgKzEzNzIs
OSBAQCBpbnQgaW50ZWxfYmFja2xpZ2h0X2RldmljZV9yZWdpc3RlcihzdHJ1Y3QgaW50ZWxfY29u
bmVjdG9yICpjb25uZWN0b3IpCiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19p
OTE1KGNvbm5lY3Rvci0+YmFzZS5kZXYpOwogCXN0cnVjdCBpbnRlbF9wYW5lbCAqcGFuZWwgPSAm
Y29ubmVjdG9yLT5wYW5lbDsKIAlzdHJ1Y3QgYmFja2xpZ2h0X3Byb3BlcnRpZXMgcHJvcHM7CisJ
c3RydWN0IGJhY2tsaWdodF9kZXZpY2UgKmJkOworCWNvbnN0IGNoYXIgKm5hbWU7CisJaW50IHJl
dCA9IDA7CiAKIAlpZiAoV0FSTl9PTihwYW5lbC0+YmFja2xpZ2h0LmRldmljZSkpCiAJCXJldHVy
biAtRU5PREVWOwpAQCAtMTQwMiwyNCArMTQwNSwzMCBAQCBpbnQgaW50ZWxfYmFja2xpZ2h0X2Rl
dmljZV9yZWdpc3RlcihzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCiAJICogTm90
ZTogdXNpbmcgdGhlIHNhbWUgbmFtZSBpbmRlcGVuZGVudCBvZiB0aGUgY29ubmVjdG9yIHByZXZl
bnRzCiAJICogcmVnaXN0cmF0aW9uIG9mIG11bHRpcGxlIGJhY2tsaWdodCBkZXZpY2VzIGluIHRo
ZSBkcml2ZXIuCiAJICovCi0JcGFuZWwtPmJhY2tsaWdodC5kZXZpY2UgPQotCQliYWNrbGlnaHRf
ZGV2aWNlX3JlZ2lzdGVyKCJpbnRlbF9iYWNrbGlnaHQiLAotCQkJCQkgIGNvbm5lY3Rvci0+YmFz
ZS5rZGV2LAotCQkJCQkgIGNvbm5lY3RvciwKLQkJCQkJICAmaW50ZWxfYmFja2xpZ2h0X2Rldmlj
ZV9vcHMsICZwcm9wcyk7Ci0KLQlpZiAoSVNfRVJSKHBhbmVsLT5iYWNrbGlnaHQuZGV2aWNlKSkg
ewotCQlkcm1fZXJyKCZpOTE1LT5kcm0sICJGYWlsZWQgdG8gcmVnaXN0ZXIgYmFja2xpZ2h0OiAl
bGRcbiIsCi0JCQlQVFJfRVJSKHBhbmVsLT5iYWNrbGlnaHQuZGV2aWNlKSk7Ci0JCXBhbmVsLT5i
YWNrbGlnaHQuZGV2aWNlID0gTlVMTDsKLQkJcmV0dXJuIC1FTk9ERVY7CisJbmFtZSA9IGtzdHJk
dXAoImludGVsX2JhY2tsaWdodCIsIEdGUF9LRVJORUwpOworCWlmICghbmFtZSkKKwkJcmV0dXJu
IC1FTk9NRU07CisKKwliZCA9IGJhY2tsaWdodF9kZXZpY2VfcmVnaXN0ZXIobmFtZSwgY29ubmVj
dG9yLT5iYXNlLmtkZXYsIGNvbm5lY3RvciwKKwkJCQkgICAgICAgJmludGVsX2JhY2tsaWdodF9k
ZXZpY2Vfb3BzLCAmcHJvcHMpOworCWlmIChJU19FUlIoYmQpKSB7CisJCWRybV9lcnIoJmk5MTUt
PmRybSwKKwkJCSJbQ09OTkVDVE9SOiVkOiVzXSBiYWNrbGlnaHQgZGV2aWNlICVzIHJlZ2lzdGVy
IGZhaWxlZDogJWxkXG4iLAorCQkJY29ubmVjdG9yLT5iYXNlLmJhc2UuaWQsIGNvbm5lY3Rvci0+
YmFzZS5uYW1lLCBuYW1lLCBQVFJfRVJSKGJkKSk7CisJCXJldCA9IFBUUl9FUlIoYmQpOworCQln
b3RvIG91dDsKIAl9CiAKKwlwYW5lbC0+YmFja2xpZ2h0LmRldmljZSA9IGJkOworCiAJZHJtX2Ri
Z19rbXMoJmk5MTUtPmRybSwKLQkJICAgICJDb25uZWN0b3IgJXMgYmFja2xpZ2h0IHN5c2ZzIGlu
dGVyZmFjZSByZWdpc3RlcmVkXG4iLAotCQkgICAgY29ubmVjdG9yLT5iYXNlLm5hbWUpOworCQkg
ICAgIltDT05ORUNUT1I6JWQ6JXNdIGJhY2tsaWdodCBkZXZpY2UgJXMgcmVnaXN0ZXJlZFxuIiwK
KwkJICAgIGNvbm5lY3Rvci0+YmFzZS5iYXNlLmlkLCBjb25uZWN0b3ItPmJhc2UubmFtZSwgbmFt
ZSk7CiAKLQlyZXR1cm4gMDsKK291dDoKKwlrZnJlZShuYW1lKTsKKworCXJldHVybiByZXQ7CiB9
CiAKIHZvaWQgaW50ZWxfYmFja2xpZ2h0X2RldmljZV91bnJlZ2lzdGVyKHN0cnVjdCBpbnRlbF9j
b25uZWN0b3IgKmNvbm5lY3RvcikKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
