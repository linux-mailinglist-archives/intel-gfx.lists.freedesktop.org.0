Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CE6C3712
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 16:22:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 137776E7DC;
	Tue,  1 Oct 2019 14:22:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7C5C6E7DB
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 14:22:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 07:22:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="197867733"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Oct 2019 07:22:51 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Oct 2019 19:46:25 +0530
Message-Id: <20191001141625.24017-7-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191001141625.24017-1-anshuman.gupta@intel.com>
References: <20191001141625.24017-1-anshuman.gupta@intel.com>
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
bC5jb20+ClJldmlld2VkLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgfCA3ICsrKysrKysKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgIHwgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCA5IGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVn
ZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCmluZGV4IGZlYzlmYjdj
YzM4NC4uYTM4ODJlNmFiZjY4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwpAQCAt
MjQxMyw2ICsyNDEzLDEzIEBAIHN0YXRpYyBpbnQgaTkxNV9kbWNfaW5mbyhzdHJ1Y3Qgc2VxX2Zp
bGUgKm0sIHZvaWQgKnVudXNlZCkKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgewog
CQlkYzVfcmVnID0gVEdMX0RNQ19ERUJVR19EQzVfQ09VTlQ7CiAJCWRjNl9yZWcgPSBUR0xfRE1D
X0RFQlVHX0RDNl9DT1VOVDsKKwkJLyoKKwkJICogTk9URTogRE1DX0RFQlVHMyBpcyBhIGdlbmVy
YWwgcHVycG9zZSByZWcuCisJCSAqIEFjY29yZGluZyB0byBCLlNwZWNzOjQ5MTk2IERNQyBmL3cg
cmV1c2VzIERDNS82IGNvdW50ZXIKKwkJICogcmVnIGZvciBEQzNDTyBkZWJ1Z2dpbmcgYW5kIHZh
bGlkYXRpb24sCisJCSAqIGJ1dCBUR0wgRE1DIGYvdyBpcyB1c2luZyBETUNfREVCVUczIHJlZyBm
b3IgREMzQ08gY291bnRlci4KKwkJICovCisJCXNlcV9wcmludGYobSwgIkRDM0NPIGNvdW50OiAl
ZFxuIiwgSTkxNV9SRUFEKERNQ19ERUJVRzMpKTsKIAl9IGVsc2UgewogCQlkYzVfcmVnID0gSVNf
QlJPWFRPTihkZXZfcHJpdikgPyBCWFRfQ1NSX0RDM19EQzVfQ09VTlQgOgogCQkJCQkJIFNLTF9D
U1JfREMzX0RDNV9DT1VOVDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDE4OGQzYjM4MjYy
Ny4uZTI5NDA1MDFkN2E2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTcyNjcsNiArNzI2
Nyw4IEBAIGVudW0gewogI2RlZmluZSBUR0xfRE1DX0RFQlVHX0RDNV9DT1VOVAlfTU1JTygweDEw
MTA4NCkKICNkZWZpbmUgVEdMX0RNQ19ERUJVR19EQzZfQ09VTlQJX01NSU8oMHgxMDEwODgpCiAK
KyNkZWZpbmUgRE1DX0RFQlVHMwkJX01NSU8oMHgxMDEwOTApCisKIC8qIGludGVycnVwdHMgKi8K
ICNkZWZpbmUgREVfTUFTVEVSX0lSUV9DT05UUk9MICAgKDEgPDwgMzEpCiAjZGVmaW5lIERFX1NQ
UklURUJfRkxJUF9ET05FICAgICgxIDw8IDI5KQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
