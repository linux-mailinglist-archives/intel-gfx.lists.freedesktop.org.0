Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6551A8EDB
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 01:03:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCCCE6E030;
	Tue, 14 Apr 2020 23:03:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68A776E5C1
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 23:03:03 +0000 (UTC)
IronPort-SDR: a76sZ1v5AuAlg3/UVueHqzEBoggMXaMUjoharCsuprwSnToWeH8kl6dYWcxTMB0a3lcKTz4XHq
 zw7SPqA3CleQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 16:03:03 -0700
IronPort-SDR: jX9SZGr9lt6L+H1L++rr8WPb8j3F4pQOfQcFrtNeR5pd4rB+3D9JcBAO6NcBhvgn7Sy4GhPb9Z
 wjc2AEhidmgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,384,1580803200"; d="scan'208";a="288370891"
Received: from unknown (HELO josouza-MOBL2.amr.corp.intel.com) ([10.209.55.81])
 by fmsmga002.fm.intel.com with ESMTP; 14 Apr 2020 16:03:02 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Apr 2020 16:04:41 -0700
Message-Id: <20200414230442.262092-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414230442.262092-1-jose.souza@intel.com>
References: <20200414230442.262092-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/hdmi: Get digital_port only once
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
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggMWFhYjkz
YTk0ZjQwLi5kZTVjYjI1MDUzZTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYwpAQCAtMzMyOCwxMyArMzMyOCwxMSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcHJl
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
aW4pOwpAQCAtMzM1OSw5ICszMzU3LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX3ByZV9lbmFi
bGVfaGRtaShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAogCWludGVsX2RkaV9l
bmFibGVfcGlwZV9jbG9jayhjcnRjX3N0YXRlKTsKIAotCWludGVsX2RpZ19wb3J0LT5zZXRfaW5m
b2ZyYW1lcyhlbmNvZGVyLAotCQkJCSAgICAgICBjcnRjX3N0YXRlLT5oYXNfaW5mb2ZyYW1lLAot
CQkJCSAgICAgICBjcnRjX3N0YXRlLCBjb25uX3N0YXRlKTsKKwlkaWdfcG9ydC0+c2V0X2luZm9m
cmFtZXMoZW5jb2RlciwgY3J0Y19zdGF0ZS0+aGFzX2luZm9mcmFtZSwgY3J0Y19zdGF0ZSwKKwkJ
CQkgY29ubl9zdGF0ZSk7CiB9CiAKIHN0YXRpYyB2b2lkIGludGVsX2RkaV9wcmVfZW5hYmxlKHN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAotLSAKMi4yNi4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
