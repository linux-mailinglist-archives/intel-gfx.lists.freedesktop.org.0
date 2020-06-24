Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBA6207F27
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 00:09:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A19FB6E054;
	Wed, 24 Jun 2020 22:09:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70EF76E08E
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 22:09:46 +0000 (UTC)
IronPort-SDR: 0l3DedZxOXFjr0ZlILOPeVrRm0Nc1dteaxAQ/HqA6QjaK+KI63L3DPJC9Ocno3w6zq7l6X52tE
 qoKyJF24iJMw==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="142135087"
X-IronPort-AV: E=Sophos;i="5.75,276,1589266800"; d="scan'208";a="142135087"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 15:09:45 -0700
IronPort-SDR: n+hMaJLuMS6z+vTz2XPkPcjEUafWZcwASTKjSu5YWdZ8o6ScLTs0vAPxxU5iRaZ+EyxzLa7gDf
 qFBCdYIwmH1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,276,1589266800"; d="scan'208";a="293689054"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga002.jf.intel.com with ESMTP; 24 Jun 2020 15:09:45 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jun 2020 15:11:07 -0700
Message-Id: <20200624221108.10038-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915/dp: Helper for checking
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
VXNlIDIgc2VwYXJhdGUgZnVuY3Rpb25zIG9yIGlkbGUgYW5kIGFjdGl2ZSAoVmlsbGUpCgpDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEltcmUg
RGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8
bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jIHwgMTcgKysrKysrKystLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKaW5kZXggODg0YjUwN2M1ZjU1Li43ZDVjOGFiODhmYzQgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMTE4NCwxNiArMTE4NCwxNSBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9wcmVwYXJlX2hkbWlfZGRpX2J1ZmZlcnMoc3RydWN0IGludGVs
X2VuY29kZXIgKmVuY29kZXIsCiBzdGF0aWMgdm9pZCBpbnRlbF93YWl0X2RkaV9idWZfaWRsZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQkJICAgIGVudW0gcG9ydCBwb3J0
KQogewotCWk5MTVfcmVnX3QgcmVnID0gRERJX0JVRl9DVEwocG9ydCk7Ci0JaW50IGk7Ci0KLQlm
b3IgKGkgPSAwOyBpIDwgMTY7IGkrKykgewotCQl1ZGVsYXkoMSk7Ci0JCWlmIChpbnRlbF9kZV9y
ZWFkKGRldl9wcml2LCByZWcpICYgRERJX0JVRl9JU19JRExFKQotCQkJcmV0dXJuOworCWlmIChJ
U19CUk9YVE9OKGRldl9wcml2KSkgeworCQl1ZGVsYXkoMTYpOworCQlyZXR1cm47CiAJfQotCWRy
bV9lcnIoJmRldl9wcml2LT5kcm0sICJUaW1lb3V0IHdhaXRpbmcgZm9yIERESSBCVUYgJWMgaWRs
ZSBiaXRcbiIsCi0JCXBvcnRfbmFtZShwb3J0KSk7CisKKwlpZiAod2FpdF9mb3JfdXMoKGludGVs
X2RlX3JlYWQoZGV2X3ByaXYsIERESV9CVUZfQ1RMKHBvcnQpKSAmCisJCQkgRERJX0JVRl9JU19J
RExFKSwgNjAwKSkKKwkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwgIlRpbWVvdXQgd2FpdGluZyBm
b3IgRERJIEJVRiAlYyB0byBnZXQgaWRsZVxuIiwKKwkJCXBvcnRfbmFtZShwb3J0KSk7CiB9CiAK
IHN0YXRpYyB1MzIgaHN3X3BsbF90b19kZGlfcGxsX3NlbChjb25zdCBzdHJ1Y3QgaW50ZWxfc2hh
cmVkX2RwbGwgKnBsbCkKLS0gCjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
