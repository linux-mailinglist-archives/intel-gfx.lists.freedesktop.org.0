Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE3AC25DA
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 19:48:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1A2B6E4C9;
	Mon, 30 Sep 2019 17:48:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AA796E4C5
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 17:48:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 10:48:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,568,1559545200"; d="scan'208";a="195395315"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga006.jf.intel.com with ESMTP; 30 Sep 2019 10:48:06 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Sep 2019 23:11:37 +0530
Message-Id: <20190930174137.15233-7-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190930174137.15233-1-anshuman.gupta@intel.com>
References: <20190930174137.15233-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 6/6] drm/i915/tgl: Add DC3CO counter in
 i915_dmc_info
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkaW5nIERDM0NPIGNvdW50ZXIgaW4gaTkxNV9kbWNfaW5mbyBkZWJ1Z2ZzIHdpbGwgYmUKdXNl
ZnVsIGZvciBEQzNDTyB2YWxpZGF0aW9uLgpETUMgZmlybXdhcmUgdXNlcyBETUNfREVCVUczIHJl
Z2lzdGVyIGFzIERDM0NPIGNvdW50ZXIKcmVnaXN0ZXIgb24gVEdMLCBhcyBwZXIgQi5TcGVjcyBE
TUNfREVCVUczIGlzIGdlbmVyYWwKcHVycG9zZSByZWdpc3Rlci4KCnYxOiBjb21tZW50IG1vZGlm
aWNhdGlvbiBmb3IgRE1DX0RCVUczLgogICAgdXNpbmcgR0VOID49IDEyIGNoZWNrIGluc3RlYWQg
b2YgSVNfVElHRVJMQUtFKCkKICAgIHRvIHByaW50IERNQ19ERUJVRzMgY291bnRlciB2YWx1ZS4K
CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogSW1yZSBEZWFrIDxp
bXJlLmRlYWtAaW50ZWwuY29tPgpDYzogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRl
bC5jb20+ClNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgfCA3ICsrKysr
KysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgIHwgMiArKwogMiBmaWxlcyBj
aGFuZ2VkLCA5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCmlu
ZGV4IGI1YjQ0OWE4OGNmMS4uZmNjY2ZkNDUwN2JkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rl
YnVnZnMuYwpAQCAtMjQxMCw2ICsyNDEwLDEzIEBAIHN0YXRpYyBpbnQgaTkxNV9kbWNfaW5mbyhz
dHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKnVudXNlZCkKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMikgewogCQlkYzVfcmVnID0gVEdMX0RNQ19ERUJVR19EQzVfQ09VTlQ7CiAJCWRjNl9y
ZWcgPSBUR0xfRE1DX0RFQlVHX0RDNl9DT1VOVDsKKwkJLyoKKwkJICogTk9URTogRE1DX0RFQlVH
MyBpcyBhIGdlbmVyYWwgcHVycG9zZSByZWcuCisJCSAqIEFjY29yZGluZyB0byBCLlNwZWNzOjQ5
MTk2IERNQyBmL3cgcmV1c2VzIERDNS82IGNvdW50ZXIKKwkJICogcmVnIGZvciBEQzNDTyBkZWJ1
Z2dpbmcgYW5kIHZhbGlkYXRpb24sCisJCSAqIGJ1dCBUR0wgRE1DIGYvdyBpcyB1c2luZyBETUNf
REVCVUczIHJlZyBmb3IgREMzQ08gY291bnRlci4KKwkJICovCisJCXNlcV9wcmludGYobSwgIkRD
M0NPIGNvdW50OiAlZFxuIiwgSTkxNV9SRUFEKERNQ19ERUJVRzMpKTsKIAl9IGVsc2UgewogCQlk
YzVfcmVnID0gSVNfQlJPWFRPTihkZXZfcHJpdikgPyBCWFRfQ1NSX0RDM19EQzVfQ09VTlQgOgog
CQkJCQkJIFNLTF9DU1JfREMzX0RDNV9DT1VOVDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4
IDNlZTk3MjBhZjIwNy4uYWY4MTBmNmVkNjUyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAg
LTcyNjMsNiArNzI2Myw4IEBAIGVudW0gewogI2RlZmluZSBUR0xfRE1DX0RFQlVHX0RDNV9DT1VO
VAlfTU1JTygweDEwMTA4NCkKICNkZWZpbmUgVEdMX0RNQ19ERUJVR19EQzZfQ09VTlQJX01NSU8o
MHgxMDEwODgpCiAKKyNkZWZpbmUgRE1DX0RFQlVHMwkJX01NSU8oMHgxMDEwOTApCisKIC8qIGlu
dGVycnVwdHMgKi8KICNkZWZpbmUgREVfTUFTVEVSX0lSUV9DT05UUk9MICAgKDEgPDwgMzEpCiAj
ZGVmaW5lIERFX1NQUklURUJfRkxJUF9ET05FICAgICgxIDw8IDI5KQotLSAKMi4yMS4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
