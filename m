Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AD221159F
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 00:09:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9B9A6E4BA;
	Wed,  1 Jul 2020 22:09:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A5C66E4BA
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 22:09:17 +0000 (UTC)
IronPort-SDR: tTzghPfk3bs/IqqOA3Ww+LVK6vmfNgFOZM3b4+59HxDUA379EEt8s39qFumlpr+cnu21SJUYeO
 yotVgg3oibHg==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="134175868"
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="134175868"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 15:09:16 -0700
IronPort-SDR: HHLsPZUKxa0y8+1nGmaiqutWut0c8ssxqXGD9OhbHfcBQl6g8DX95hzQ3UFkWE8LXZwoUifM5U
 SRCbEtnV4R7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="387142848"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga001.fm.intel.com with ESMTP; 01 Jul 2020 15:09:16 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 15:10:51 -0700
Message-Id: <20200701221052.8946-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 1/2] drm/i915/dp: Helper for checking
 DDI_BUF_CTL Idle status
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

TW9kaWZ5IHRoZSBoZWxwZXIgdG8gYWRkIGEgZml4ZWQgZGVsYXkgb3IgcG9sbCB3aXRoIHRpbWVv
dXQKYmFzZWQgb24gcGxhdGZvcm0gc3BlY2lmaWNhdGlvbiB0byBjaGVjayBmb3IgZWl0aGVyIElk
bGUgYml0CnNldCAoRERJX0JVRl9DVEwgaXMgaWRsZSBmb3IgZGlzYWJsZSBjYXNlKQoKdjI6Ciog
VXNlIDIgc2VwYXJhdGUgZnVuY3Rpb25zIG9yIGlkbGUgYW5kIGFjdGl2ZSAoVmlsbGUpCnYzOgoq
IENoYW5nZSB0aGUgdGltZW91dCB0byAxNnVzZWNzIChWaWxsZSkKdjQ6CiogQ2hhbmdlIHRoZSB0
aW1lb3V0IDgsIGZvbGxvdyBzcGVjIChWaWxsZSkKCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwu
Y29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwg
MTcgKysrKysrKystLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDkg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5k
ZXggMDI1ZDQwNTJmNmY4Li5hN2RlMTM0NGRiNjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYwpAQCAtMTE4NCwxNiArMTE4NCwxNSBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9wcmVwYXJlX2hkbWlfZGRpX2J1ZmZlcnMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIs
CiBzdGF0aWMgdm9pZCBpbnRlbF93YWl0X2RkaV9idWZfaWRsZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsCiAJCQkJICAgIGVudW0gcG9ydCBwb3J0KQogewotCWk5MTVfcmVnX3Qg
cmVnID0gRERJX0JVRl9DVEwocG9ydCk7Ci0JaW50IGk7Ci0KLQlmb3IgKGkgPSAwOyBpIDwgMTY7
IGkrKykgewotCQl1ZGVsYXkoMSk7Ci0JCWlmIChpbnRlbF9kZV9yZWFkKGRldl9wcml2LCByZWcp
ICYgRERJX0JVRl9JU19JRExFKQotCQkJcmV0dXJuOworCWlmIChJU19CUk9YVE9OKGRldl9wcml2
KSkgeworCQl1ZGVsYXkoMTYpOworCQlyZXR1cm47CiAJfQotCWRybV9lcnIoJmRldl9wcml2LT5k
cm0sICJUaW1lb3V0IHdhaXRpbmcgZm9yIERESSBCVUYgJWMgaWRsZSBiaXRcbiIsCi0JCXBvcnRf
bmFtZShwb3J0KSk7CisKKwlpZiAod2FpdF9mb3JfdXMoKGludGVsX2RlX3JlYWQoZGV2X3ByaXYs
IERESV9CVUZfQ1RMKHBvcnQpKSAmCisJCQkgRERJX0JVRl9JU19JRExFKSwgOCkpCisJCWRybV9l
cnIoJmRldl9wcml2LT5kcm0sICJUaW1lb3V0IHdhaXRpbmcgZm9yIERESSBCVUYgJWMgdG8gZ2V0
IGlkbGVcbiIsCisJCQlwb3J0X25hbWUocG9ydCkpOwogfQogCiBzdGF0aWMgdTMyIGhzd19wbGxf
dG9fZGRpX3BsbF9zZWwoY29uc3Qgc3RydWN0IGludGVsX3NoYXJlZF9kcGxsICpwbGwpCi0tIAoy
LjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
