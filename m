Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A72726C700
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 20:14:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD24C6EAAF;
	Wed, 16 Sep 2020 18:14:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C11896EAAF
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 18:14:30 +0000 (UTC)
IronPort-SDR: 0eHrm0axipuKn1+g9Q1eD0jLRbrkoRcNgD9+e9swqMiTExWcUaeXs2C9op157w7mt8LKmlap0u
 U4U4Y5NRJl0w==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="160465080"
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="160465080"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 11:14:29 -0700
IronPort-SDR: A/g0FEa6yuJtS9ySIwsi+2e3cgVF9c0+n4S6ix83l4iN9pYmtVHAWv+UTE0L6Pwz6mSbnwiJ5b
 y6jxByZFIA0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="288442091"
Received: from cooperch-ml.itwn.intel.com ([10.5.253.151])
 by fmsmga008.fm.intel.com with ESMTP; 16 Sep 2020 11:14:27 -0700
From: Cooper Chiou <cooper.chiou@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Sep 2020 02:07:45 +0800
Message-Id: <20200916180745.627-1-cooper.chiou@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2FQcm9ncmFtTWdzckZvckNvcnJlY3RTbGljZVNwZWNpZmljTW1pb1JlYWRzIGFwcGxpZXMgZm9y
IEdlbjkgdG8KcmVzb2x2ZSBWUDggaGFyZHdhcmUgZW5jb2Rpbmcgc3lzdGVtIGhhbmcgdXAgb24g
R1QxIHNrdQoKUmVmZXJlbmNlOiBIU0QjMTUwODA0NTAxOAoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28u
dml2aUBpbnRlbC5jb20+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpD
YzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPgpDYzogV2lsbGlhbSBUc2VuZyA8
d2lsbGlhbS50c2VuZ0BpbnRlbC5jb20+CkNjOiBMZWUgU2hhd24gQyA8c2hhd24uYy5sZWVAaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDb29wZXIgQ2hpb3UgPGNvb3Blci5jaGlvdUBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDgg
KysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggNTcy
NmNkMGEzN2UwLi41M2VhNDM1OTU0NWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYwpAQCAtOTM1LDkgKzkzNSwxMyBAQCBoc3dfZ3Rfd29ya2Fyb3VuZHNf
aW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlzdCAq
d2FsKQogCXdhX21hc2tlZF9lbih3YWwsIEhBTEZfU0xJQ0VfQ0hJQ0tFTjMsIEhTV19TQU1QTEVf
Q19QRVJGT1JNQU5DRSk7CiB9CiAKK3N0YXRpYyB2b2lkIHdhX2luaXRfbWNyKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpOworCiBzdGF0aWMg
dm9pZAogZ2VuOV9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiB7CisJd2FfaW5pdF9tY3IoaTkxNSwgd2Fs
KTsKKwogCS8qIFdhRGlzYWJsZUtpbGxMb2dpYzpieHQsc2tsLGtibCAqLwogCWlmICghSVNfQ09G
RkVFTEFLRShpOTE1KSAmJiAhSVNfQ09NRVRMQUtFKGk5MTUpKQogCQl3YV93cml0ZV9vcih3YWws
CkBAIC0xMDQwLDcgKzEwNDQsNyBAQCB3YV9pbml0X21jcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQogCXVuc2lnbmVkIGludCBzbGljZSwg
c3Vic2xpY2U7CiAJdTMyIGwzX2VuLCBtY3IsIG1jcl9tYXNrOwogCi0JR0VNX0JVR19PTihJTlRF
TF9HRU4oaTkxNSkgPCAxMCk7CisJR0VNX0JVR19PTihJTlRFTF9HRU4oaTkxNSkgPCA5KTsKIAog
CS8qCiAJICogV2FQcm9ncmFtTWdzckZvckwzQmFua1NwZWNpZmljTW1pb1JlYWRzOiBjbmwsaWNs
CkBAIC0xMDQ5LDcgKzEwNTMsNyBAQCB3YV9pbml0X21jcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQogCSAqIGJ5IGRlZmF1bHQsIHRvIG1h
a2Ugc3VyZSB3ZSBjb3JyZWN0bHkgcmVhZCBjZXJ0YWluIHJlZ2lzdGVycwogCSAqIGxhdGVyIG9u
IChpbiB0aGUgcmFuZ2UgMHhCMTAwIC0gMHhCM0ZGKS4KIAkgKgotCSAqIFdhUHJvZ3JhbU1nc3JG
b3JDb3JyZWN0U2xpY2VTcGVjaWZpY01taW9SZWFkczpjbmwsaWNsCisJICogV2FQcm9ncmFtTWdz
ckZvckNvcnJlY3RTbGljZVNwZWNpZmljTW1pb1JlYWRzOmdlbjksY25sLGljbAogCSAqIEJlZm9y
ZSBhbnkgTU1JTyByZWFkIGludG8gc2xpY2Uvc3Vic2xpY2Ugc3BlY2lmaWMgcmVnaXN0ZXJzLCBN
Q1IKIAkgKiBwYWNrZXQgY29udHJvbCByZWdpc3RlciBuZWVkcyB0byBiZSBwcm9ncmFtbWVkIHRv
IHBvaW50IHRvIGFueQogCSAqIGVuYWJsZWQgcy9zcyBwYWlyLiBPdGhlcndpc2UsIGluY29ycmVj
dCB2YWx1ZXMgd2lsbCBiZSByZXR1cm5lZC4KLS0gCjIuMjguMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
