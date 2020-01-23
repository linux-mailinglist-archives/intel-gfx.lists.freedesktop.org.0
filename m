Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4EDE146937
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 14:36:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED9F66FA26;
	Thu, 23 Jan 2020 13:36:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85ED76FA26
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 13:36:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 05:36:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="216259535"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga007.jf.intel.com with ESMTP; 23 Jan 2020 05:36:28 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jan 2020 18:56:54 +0530
Message-Id: <20200123132659.725-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200123132659.725-1-anshuman.gupta@intel.com>
References: <20200123132659.725-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 1/6] drm/i915: Iterate over pipe and skip the
 disabled one
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

SXQgc2hvdWxkIG5vdCBiZSBhc3N1bWVkIHRoYXQgYSBkaXNhYmxlZCBkaXNwbGF5IHBpcGUgd2ls
bCBiZQphbHdheXMgbGFzdCB0aGUgcGlwZS4KZm9yX2VhY2hfcGlwZSgpIHNob3VsZCBpdGVyYXRl
IG92ZXIgSTkxNV9NQVhfUElQRVMgYW5kIGNoZWNrCmZvciB0aGUgZGlzYWJsZWQgcGlwZSBhbmQg
c2tpcCB0aGF0IHBpcGUgc28gdGhhdCBpdCBzaG91bGQgbm90CmluaXRpYWxpemUgdGhlIGludGVs
IGNydGMgZm9yIGFueSBkaXNhYmxlZCBwaXBlcy4KCkZldyBjb21waWxhdGlvbiBlcnJvciBuZWVk
ZWQgdG8gaGFuZGxlIGFjY29yZGluZ2x5IGR1ZSB0bwpjaGFuZ2UgaW4gZm9yX2VhY2hfcGlwZSgp
IG1hY3JvLgoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+ClNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggfCA1
ICsrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jICAgICAgICAgICAgICB8IDYg
KysrKy0tCiAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCmluZGV4IDAy
OGFhYjcyODUxNC4uNDc4MTNhNTBhZGQ0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuaApAQCAtMzEyLDEwICszMTIsMTEgQEAgZW51bSBwaHlfZmlhIHsK
IH07CiAKICNkZWZpbmUgZm9yX2VhY2hfcGlwZShfX2Rldl9wcml2LCBfX3ApIFwKLQlmb3IgKChf
X3ApID0gMDsgKF9fcCkgPCBJTlRFTF9OVU1fUElQRVMoX19kZXZfcHJpdik7IChfX3ApKyspCisJ
Zm9yICgoX19wKSA9IDA7IChfX3ApIDwgSTkxNV9NQVhfUElQRVM7IChfX3ApKyspIFwKKwkJZm9y
X2VhY2hfaWYoKElOVEVMX0lORk8oX19kZXZfcHJpdiktPnBpcGVfbWFzaykgJiBCSVQoX19wKSkK
IAogI2RlZmluZSBmb3JfZWFjaF9waXBlX21hc2tlZChfX2Rldl9wcml2LCBfX3AsIF9fbWFzaykg
XAotCWZvciAoKF9fcCkgPSAwOyAoX19wKSA8IElOVEVMX05VTV9QSVBFUyhfX2Rldl9wcml2KTsg
KF9fcCkrKykgXAorCWZvcl9lYWNoX3BpcGUoX19kZXZfcHJpdiwgX19wKSBcCiAJCWZvcl9lYWNo
X2lmKChfX21hc2spICYgQklUKF9fcCkpCiAKICNkZWZpbmUgZm9yX2VhY2hfY3B1X3RyYW5zY29k
ZXJfbWFza2VkKF9fZGV2X3ByaXYsIF9fdCwgX19tYXNrKSBcCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEu
YwppbmRleCA5NGNiMjVhYzUwNGQuLjIyZWNkNWJjNDA3ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2ly
cS5jCkBAIC0xNzM1LDExICsxNzM1LDEyIEBAIHN0YXRpYyB2b2lkIGlieF9pcnFfaGFuZGxlcihz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBwY2hfaWlyKQogCWlmIChwY2hf
aWlyICYgU0RFX1BPSVNPTikKIAkJRFJNX0VSUk9SKCJQQ0ggcG9pc29uIGludGVycnVwdFxuIik7
CiAKLQlpZiAocGNoX2lpciAmIFNERV9GRElfTUFTSykKKwlpZiAocGNoX2lpciAmIFNERV9GRElf
TUFTSykgewogCQlmb3JfZWFjaF9waXBlKGRldl9wcml2LCBwaXBlKQogCQkJRFJNX0RFQlVHX0RS
SVZFUigiICBwaXBlICVjIEZESSBJSVI6IDB4JTA4eFxuIiwKIAkJCQkJIHBpcGVfbmFtZShwaXBl
KSwKIAkJCQkJIEk5MTVfUkVBRChGRElfUlhfSUlSKHBpcGUpKSk7CisJfQogCiAJaWYgKHBjaF9p
aXIgJiAoU0RFX1RSQU5TQl9DUkNfRE9ORSB8IFNERV9UUkFOU0FfQ1JDX0RPTkUpKQogCQlEUk1f
REVCVUdfRFJJVkVSKCJQQ0ggdHJhbnNjb2RlciBDUkMgZG9uZSBpbnRlcnJ1cHRcbiIpOwpAQCAt
MTgxOCwxMSArMTgxOSwxMiBAQCBzdGF0aWMgdm9pZCBjcHRfaXJxX2hhbmRsZXIoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgcGNoX2lpcikKIAlpZiAocGNoX2lpciAmIFNE
RV9BVURJT19DUF9DSEdfQ1BUKQogCQlEUk1fREVCVUdfRFJJVkVSKCJBdWRpbyBDUCBjaGFuZ2Ug
aW50ZXJydXB0XG4iKTsKIAotCWlmIChwY2hfaWlyICYgU0RFX0ZESV9NQVNLX0NQVCkKKwlpZiAo
cGNoX2lpciAmIFNERV9GRElfTUFTS19DUFQpIHsKIAkJZm9yX2VhY2hfcGlwZShkZXZfcHJpdiwg
cGlwZSkKIAkJCURSTV9ERUJVR19EUklWRVIoIiAgcGlwZSAlYyBGREkgSUlSOiAweCUwOHhcbiIs
CiAJCQkJCSBwaXBlX25hbWUocGlwZSksCiAJCQkJCSBJOTE1X1JFQUQoRkRJX1JYX0lJUihwaXBl
KSkpOworCX0KIAogCWlmIChwY2hfaWlyICYgU0RFX0VSUk9SX0NQVCkKIAkJY3B0X3NlcnJfaW50
X2hhbmRsZXIoZGV2X3ByaXYpOwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
