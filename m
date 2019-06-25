Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3545554C9
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 18:46:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D28126E175;
	Tue, 25 Jun 2019 16:46:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D91D6E175
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 16:46:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 09:46:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="245130296"
Received: from rmfosha-dev-1.fm.intel.com ([10.19.83.123])
 by orsmga001.jf.intel.com with ESMTP; 25 Jun 2019 09:46:05 -0700
From: "Robert M. Fosha" <robert.m.fosha@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 09:41:07 -0700
Message-Id: <20190625164107.21512-1-robert.m.fosha@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190621200940.32665-1-robert.m.fosha@intel.com>
References: <20190621200940.32665-1-robert.m.fosha@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/guc: Add debug capture of GuC
 exception
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

RGV0ZWN0IEd1QyBmaXJtd2FyZSBsb2FkIGZhaWx1cmUgZHVlIHRvIGFuIGV4Y2VwdGlvbiBkdXJp
bmcgZXhlY3V0aW9uCmluIEd1QyBmaXJtd2FyZS4gT3V0cHV0IHRoZSBHdUMgRUlQIHdoZXJlIGV4
Y2VwdGlvbiBvY2N1cnJlZCB0byBkbWVzZwpmb3IgR3VDIGRlYnVnIGluZm9ybWF0aW9uLgoKdjI6
IGNvcnJlY3QgdHlwb3MsIGNoYW5nZSBkZWJ1ZyBtZXNzYWdlIGFuZCBlcnJvciBjb2RlIHJldHVy
bmVkIGZvcgpHdUMgZXhjZXB0aW9uIChNaWNoYWwpCgpTaWduZWQtb2ZmLWJ5OiBSb2JlcnQgTS4g
Rm9zaGEgPHJvYmVydC5tLmZvc2hhQGludGVsLmNvbT4KQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVy
aW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CkNjOiBNaWNoYWwgV2FqZGVjemtv
IDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9ndWNfZncuYyAgfCA3ICsrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1
Y19yZWcuaCB8IDEgKwogMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZncuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2d1Y19mdy5jCmluZGV4IDcyY2RhZmQ5NjM2YS4uOTcwZjM5ZWYyNDhiIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZncuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZncuYwpAQCAtMTk3LDYgKzE5Nyw3IEBAIHN0YXRp
YyBpbmxpbmUgYm9vbCBndWNfcmVhZHkoc3RydWN0IGludGVsX2d1YyAqZ3VjLCB1MzIgKnN0YXR1
cykKIAogc3RhdGljIGludCBndWNfd2FpdF91Y29kZShzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCiB7
CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndWNfdG9faTkxNShndWMpOwogCXUz
MiBzdGF0dXM7CiAJaW50IHJldDsKIApAQCAtMjE2LDYgKzIxNywxMiBAQCBzdGF0aWMgaW50IGd1
Y193YWl0X3Vjb2RlKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKIAkJcmV0ID0gLUVOT0VYRUM7CiAJ
fQogCisJaWYgKChzdGF0dXMgJiBHU19VS0VSTkVMX01BU0spID09IEdTX1VLRVJORUxfRVhDRVBU
SU9OKSB7CisJCURSTV9FUlJPUigiR3VDIGZpcm13YXJlIGV4Y2VwdGlvbi4gRUlQOiAlI3hcbiIs
CisJCQkgIGludGVsX3VuY29yZV9yZWFkKCZpOTE1LT51bmNvcmUsIFNPRlRfU0NSQVRDSCgxMykp
KTsKKwkJcmV0ID0gLUVOWElPOworCX0KKwogCWlmIChyZXQgPT0gMCAmJiAhZ3VjX3hmZXJfY29t
cGxldGVkKGd1YywgJnN0YXR1cykpIHsKIAkJRFJNX0VSUk9SKCJHdUMgaXMgcmVhZHksIGJ1dCB0
aGUgeGZlciAlMDh4IGlzIGluY29tcGxldGVcbiIsCiAJCQkgIHN0YXR1cyk7CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9ndWNfcmVnLmgKaW5kZXggYTIxNGY4YjcxOTI5Li5kOTBiODhmYWRiNWUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19yZWcuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfcmVnLmgKQEAgLTM3LDYgKzM3LDcgQEAKICNkZWZp
bmUgICBHU19VS0VSTkVMX01BU0sJCSAgKDB4RkYgPDwgR1NfVUtFUk5FTF9TSElGVCkKICNkZWZp
bmUgICBHU19VS0VSTkVMX0xBUElDX0RPTkUJCSAgKDB4MzAgPDwgR1NfVUtFUk5FTF9TSElGVCkK
ICNkZWZpbmUgICBHU19VS0VSTkVMX0RQQ19FUlJPUgkJICAoMHg2MCA8PCBHU19VS0VSTkVMX1NI
SUZUKQorI2RlZmluZSAgIEdTX1VLRVJORUxfRVhDRVBUSU9OCQkgICgweDcwIDw8IEdTX1VLRVJO
RUxfU0hJRlQpCiAjZGVmaW5lICAgR1NfVUtFUk5FTF9SRUFEWQkJICAoMHhGMCA8PCBHU19VS0VS
TkVMX1NISUZUKQogI2RlZmluZSAgIEdTX01JQV9TSElGVAkJCTE2CiAjZGVmaW5lICAgR1NfTUlB
X01BU0sJCQkgICgweDA3IDw8IEdTX01JQV9TSElGVCkKLS0gCjIuMjEuMC41LmdhZWI1ODJhOTgz
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
