Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 859701B4D75
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 21:38:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB1F389D7B;
	Wed, 22 Apr 2020 19:38:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A7A689D7B
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 19:38:10 +0000 (UTC)
IronPort-SDR: Pl+jLCIYTMsfrSJzM1fx9n6fRywi0hbFnjrFx2zTyU4VwUDz4QBWBYJjKmpnvkqvQgJ+TEBGTB
 kiBNaN7DO4/g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2020 12:38:09 -0700
IronPort-SDR: sSGZuEmtUOs6foeP+s+rbZx1dNvjQLpW4TH2kFz5ytceaiDueMduUQb1orGDDnheOp/hoK4bmN
 YTWf739YPHPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,304,1583222400"; d="scan'208";a="456634271"
Received: from skarunan-mobl1.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.251.142.224])
 by fmsmga005.fm.intel.com with ESMTP; 22 Apr 2020 12:38:09 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Apr 2020 12:40:01 -0700
Message-Id: <20200422194002.206744-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/hdmi: Get digital_port only once
 in intel_ddi_pre_enable_hdmi()
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

R2V0dGluZyBpdCBvbmx5IG9uY2UgYWxzbyByZW1vdmluZyBpbnRlbF9oZG1pIHRoYXQgaXMgdXNl
ZCBvbmx5IG9uY2UKYW5kIGNhbiBiZSBlYXNpbHkgYWNjZXNzZWQgYnkgZGlnX3BvcnQtPmhkbWku
CgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMTEg
KysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggYzA4NmFl
NWViMTJmLi4yNTVkYzc5NmVkZTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYwpAQCAtMzMxMCwxMyArMzMxMCwxMSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcHJl
X2VuYWJsZV9oZG1pKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCQkJCSAgICAg
IGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkJCSAgICAgIGNv
bnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKQogewotCXN0cnVjdCBp
bnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0ID0gZW5jX3RvX2RpZ19wb3J0KGVuY29k
ZXIpOwotCXN0cnVjdCBpbnRlbF9oZG1pICppbnRlbF9oZG1pID0gJmludGVsX2RpZ19wb3J0LT5o
ZG1pOwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rl
ci0+YmFzZS5kZXYpOwotCWludCBsZXZlbCA9IGludGVsX2RkaV9oZG1pX2xldmVsKGVuY29kZXIp
OwogCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gZW5jX3RvX2RpZ19wb3J0
KGVuY29kZXIpOworCWludCBsZXZlbCA9IGludGVsX2RkaV9oZG1pX2xldmVsKGVuY29kZXIpOwog
Ci0JaW50ZWxfZHBfZHVhbF9tb2RlX3NldF90bWRzX291dHB1dChpbnRlbF9oZG1pLCB0cnVlKTsK
KwlpbnRlbF9kcF9kdWFsX21vZGVfc2V0X3RtZHNfb3V0cHV0KCZkaWdfcG9ydC0+aGRtaSwgdHJ1
ZSk7CiAJaW50ZWxfZGRpX2Nsa19zZWxlY3QoZW5jb2RlciwgY3J0Y19zdGF0ZSk7CiAKIAlpbnRl
bF9kaXNwbGF5X3Bvd2VyX2dldChkZXZfcHJpdiwgZGlnX3BvcnQtPmRkaV9pb19wb3dlcl9kb21h
aW4pOwpAQCAtMzM0MSw5ICszMzM5LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX3ByZV9lbmFi
bGVfaGRtaShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAogCWludGVsX2RkaV9l
bmFibGVfcGlwZV9jbG9jayhlbmNvZGVyLCBjcnRjX3N0YXRlKTsKIAotCWludGVsX2RpZ19wb3J0
LT5zZXRfaW5mb2ZyYW1lcyhlbmNvZGVyLAotCQkJCSAgICAgICBjcnRjX3N0YXRlLT5oYXNfaW5m
b2ZyYW1lLAotCQkJCSAgICAgICBjcnRjX3N0YXRlLCBjb25uX3N0YXRlKTsKKwlkaWdfcG9ydC0+
c2V0X2luZm9mcmFtZXMoZW5jb2RlciwgY3J0Y19zdGF0ZS0+aGFzX2luZm9mcmFtZSwgY3J0Y19z
dGF0ZSwKKwkJCQkgY29ubl9zdGF0ZSk7CiB9CiAKIHN0YXRpYyB2b2lkIGludGVsX2RkaV9wcmVf
ZW5hYmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAotLSAKMi4yNi4yCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
