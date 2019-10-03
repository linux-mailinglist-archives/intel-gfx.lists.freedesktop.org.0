Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A80C9A48
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 10:55:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D65376E0E0;
	Thu,  3 Oct 2019 08:55:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15A2F6E0E0
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 08:55:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 01:55:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,251,1566889200"; d="scan'208";a="198470211"
Received: from zeliteleevi.tm.intel.com ([10.237.55.130])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Oct 2019 01:55:42 -0700
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Oct 2019 11:55:31 +0300
Message-Id: <20191003085531.30990-2-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191003085531.30990-1-kai.vehmanen@linux.intel.com>
References: <20191003085531.30990-1-kai.vehmanen@linux.intel.com>
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915: extend audio CDCLK>=2*BCLK
 constraint to more platforms
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

VGhlIENEQ0xLPj0yKkJDTEsgY29uc3RyYWludCBhcHBsaWVzIHRvIGFsbCBnZW5lcmF0aW9ucyBz
aW5jZSBnZW4xMC4KRXh0ZW5kIHRoZSBjb25zdHJhaW50IGxvZ2ljIGluIGF1ZGlvIGdldC9wdXRf
cG93ZXIoKS4KClNpZ25lZC1vZmYtYnk6IEthaSBWZWhtYW5lbiA8a2FpLnZlaG1hbmVuQGxpbnV4
LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlv
LmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRp
by5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5jCmluZGV4IGU5
Mzc3NjcxMGFiYy4uZWQxODUxMWJlZmEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hdWRpby5jCkBAIC04NjAsNyArODYwLDcgQEAgc3RhdGljIHVuc2lnbmVkIGxvbmcg
aTkxNV9hdWRpb19jb21wb25lbnRfZ2V0X3Bvd2VyKHN0cnVjdCBkZXZpY2UgKmtkZXYpCiAJCX0K
IAogCQkvKiBGb3JjZSBDRENMSyB0byAyKkJDTEsgYXMgbG9uZyBhcyB3ZSBuZWVkIGF1ZGlvIHBv
d2VyZWQuICovCi0JCWlmIChJU19DQU5OT05MQUtFKGRldl9wcml2KSB8fCBJU19HRU1JTklMQUtF
KGRldl9wcml2KSkKKwkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTAgfHwgSVNfR0VNSU5J
TEFLRShkZXZfcHJpdikpCiAJCQlnbGtfZm9yY2VfYXVkaW9fY2RjbGsoZGV2X3ByaXYsIHRydWUp
OwogCiAJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTUlOSUxBS0UoZGV2
X3ByaXYpKQpAQCAtODc5LDcgKzg3OSw3IEBAIHN0YXRpYyB2b2lkIGk5MTVfYXVkaW9fY29tcG9u
ZW50X3B1dF9wb3dlcihzdHJ1Y3QgZGV2aWNlICprZGV2LAogCiAJLyogU3RvcCBmb3JjaW5nIENE
Q0xLIHRvIDIqQkNMSyBpZiBubyBuZWVkIGZvciBhdWRpbyB0byBiZSBwb3dlcmVkLiAqLwogCWlm
ICgtLWRldl9wcml2LT5hdWRpb19wb3dlcl9yZWZjb3VudCA9PSAwKQotCQlpZiAoSVNfQ0FOTk9O
TEFLRShkZXZfcHJpdikgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpCisJCWlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKQogCQkJZ2xrX2Zv
cmNlX2F1ZGlvX2NkY2xrKGRldl9wcml2LCBmYWxzZSk7CiAKIAlpbnRlbF9kaXNwbGF5X3Bvd2Vy
X3B1dChkZXZfcHJpdiwgUE9XRVJfRE9NQUlOX0FVRElPLCBjb29raWUpOwotLSAKMi4xNy4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
