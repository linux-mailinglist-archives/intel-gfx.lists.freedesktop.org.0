Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 221AB59CB1
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 15:13:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 515DA6E928;
	Fri, 28 Jun 2019 13:13:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76EE36E928
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 13:12:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 06:12:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,427,1557212400"; d="scan'208";a="314131514"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga004.jf.intel.com with ESMTP; 28 Jun 2019 06:12:55 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 18:37:53 +0530
Message-Id: <20190628130754.9527-10-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190628130754.9527-1-anshuman.gupta@intel.com>
References: <20190628130754.9527-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/10] drm/i915/tgl:Added DC3CO counter in
 i915_dmc_info.
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

VGhpcyBwYXRjaCBleHBvc2VzIERDM0NPIGNvdW50ZXIgaW4gaTkxNV9kbWNfaW5mbyBkZWJ1Z2Zz
LgpXaGljaCB3aWxsIGJlIHVzZWZ1bCBmb3IgREMzQ08gdmFsaWRhdGlvbi4KRE1DIGZpcm13YXJl
IGlzIHVzaW5nIERNQ19ERUJVRzMgcmVnaXN0ZXIgYXMgREMzQ08gY291bnRlci4KCkNjOiBqYW5p
Lm5pa3VsYUBpbnRlbC5jb20KQ2M6IGltcmUuZGVha0BpbnRlbC5jb20KQ2M6IGFuaW1lc2gubWFu
bmFAaW50ZWwuY29tClNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0
YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgfCAx
NSArKysrKysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgIHwg
IDMgKysrCiAyIGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCmluZGV4IDA3MjQ2NGExODA1MC4uNzZlNDI1
Y2MxOWMyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwpAQCAtMjcxOSw5ICsyNzE5
LDIyIEBAIHN0YXRpYyBpbnQgaTkxNV9kbWNfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQg
KnVudXNlZCkKIAlzZXFfcHJpbnRmKG0sICJ2ZXJzaW9uOiAlZC4lZFxuIiwgQ1NSX1ZFUlNJT05f
TUFKT1IoY3NyLT52ZXJzaW9uKSwKIAkJICAgQ1NSX1ZFUlNJT05fTUlOT1IoY3NyLT52ZXJzaW9u
KSk7CiAKLQlpZiAoV0FSTl9PTihJTlRFTF9HRU4oZGV2X3ByaXYpID4gMTEpKQorCWlmIChXQVJO
X09OKElOVEVMX0dFTihkZXZfcHJpdikgPiAxMikpCiAJCWdvdG8gb3V0OwogCisJLyoKKwkgKiBC
LlNwZXMgc3BlY2lmeSB0aGF0IERNQ19ERUJVRzMgaXMgZ2VuZXJhbCBkZWJ1ZyByZWdpc3Rlcgor
CSAqIERNQyBmb2xrcyB1c2VzIHRoaXMgcmVnaXN0ZXIgZm9yIERDM0NPIGNvdW50ZXIgZm9yIFRH
TAorCSAqLworCS8qCisJICogSXQgcmVxdWlyZXMgVEdMIHBsYWZvcm0gZW5hYmxpbmcgcGFjdGhl
cyB0byBiZSBtZXJnZWQgaW4gb3JkZXIgdG8gdXNlCisJICogSVNfVElHRVJMQUtFKCkgbWFjcm8u
IFVzaW5nIElOVEVMX0dFTiBpbnN0ZWFkIG9mIElTX1RJR0VSTEFLRSBpbgorCSAqIG9yZGVyIHRv
IGF2b2lkIGNvbXBpbGF0aW9uIGVycm9ycy4KKwkgKi8KKwkvL2lmIChJU19USUdFUkxBS0UoZGV2
X3ByaXYpKQorCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID09IDEyKQorCQlzZXFfcHJpbnRmKG0s
ICJEQzNDTyBjb3VudDogJWRcbiIsIEk5MTVfUkVBRChETUNfREVCVUczKSk7CisKIAlzZXFfcHJp
bnRmKG0sICJEQzMgLT4gREM1IGNvdW50OiAlZFxuIiwKIAkJICAgSTkxNV9SRUFEKElTX0JST1hU
T04oZGV2X3ByaXYpID8gQlhUX0NTUl9EQzNfREM1X0NPVU5UIDoKIAkJCQkJCSAgICBTS0xfQ1NS
X0RDM19EQzVfQ09VTlQpKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGJmNTlmZjQwNzE5
Zi4uM2ZlYmQyOWRmNWQzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTcyMjEsNiArNzIy
MSw5IEBAIGVudW0gewogI2RlZmluZSBTS0xfQ1NSX0RDNV9EQzZfQ09VTlQJX01NSU8oMHg4MDAy
QykKICNkZWZpbmUgQlhUX0NTUl9EQzNfREM1X0NPVU5UCV9NTUlPKDB4ODAwMzgpCiAKKy8qIERN
QyBERUJVRyBDT1VOVEVSUyBmb3IgVEdMKi8KKyNkZWZpbmUgRE1DX0RFQlVHMwkJX01NSU8oMHgx
MDEwOTApIC8qREMzQ08gZGVidWcgY291bnRlciovCisKIC8qIGludGVycnVwdHMgKi8KICNkZWZp
bmUgREVfTUFTVEVSX0lSUV9DT05UUk9MICAgKDEgPDwgMzEpCiAjZGVmaW5lIERFX1NQUklURUJf
RkxJUF9ET05FICAgICgxIDw8IDI5KQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
