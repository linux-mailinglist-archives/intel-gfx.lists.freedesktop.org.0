Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D80879C6F
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 00:28:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68D5D6E0AC;
	Mon, 29 Jul 2019 22:28:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BDC36E0AC
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 22:28:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 15:28:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,324,1559545200"; d="scan'208";a="182918865"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga002.jf.intel.com with ESMTP; 29 Jul 2019 15:28:21 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jul 2019 15:28:00 -0700
Message-Id: <20190729222800.1010-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/uc: don't enable communication twice
 on resume
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

V2hlbiBjb21pbmcgb3V0IG9mIFMzL1M0IHdlIHNhbml0aXplIGFuZCByZS1pbml0IHRoZSBIVywg
d2hpY2ggaW5jbHVkZXMKZW5hYmxpbmcgY29tbXVuaWNhdGlvbiBkdXJpbmcgdWNfaW5pdF9ody4g
V2UgdGhlcmVmb3JlIGRvbid0IHdhbnQgdG8gZG8KdGhhdCBhZ2FpbiBpbiB1Y19yZXN1bWUgYW5k
IGNhbiBqdXN0IHRlbGwgR3VDIHRvIHJlbG9hZCBpdHMgc3RhdGUuCgpTaWduZWQtb2ZmLWJ5OiBE
YW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpD
YzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF91Yy5jIHwgMTYgKysrKysrKysrKysrKysrLQogMSBmaWxlIGNoYW5n
ZWQsIDE1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfdWMuYwppbmRleCBmYWZhOWJlMWUxMmEuLjM0NzA2YTc1Mzc5MyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCkBAIC0yMzMsMTEgKzIzMywxOCBAQCBzdGF0aWMg
dm9pZCBndWNfZGlzYWJsZV9pbnRlcnJ1cHRzKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKIAlndWMt
PmludGVycnVwdHMuZGlzYWJsZShndWMpOwogfQogCitzdGF0aWMgYm9vbCBndWNfY29tbXVuaWNh
dGlvbl9lbmFibGVkKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKK3sKKwlyZXR1cm4gZ3VjLT5zZW5k
ICE9IGludGVsX2d1Y19zZW5kX25vcDsKK30KKwogc3RhdGljIGludCBndWNfZW5hYmxlX2NvbW11
bmljYXRpb24oc3RydWN0IGludGVsX2d1YyAqZ3VjKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1ID0gZ3VjX3RvX2d0KGd1YyktPmk5MTU7CiAJaW50IHJldDsKIAorCUdFTV9CVUdf
T04oZ3VjX2NvbW11bmljYXRpb25fZW5hYmxlZChndWMpKTsKKwogCXJldCA9IGludGVsX2d1Y19j
dF9lbmFibGUoJmd1Yy0+Y3QpOwogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CkBAIC01NTgsNyAr
NTY1LDE0IEBAIGludCBpbnRlbF91Y19yZXN1bWUoc3RydWN0IGludGVsX3VjICp1YykKIAlpZiAo
IWludGVsX2d1Y19pc19ydW5uaW5nKGd1YykpCiAJCXJldHVybiAwOwogCi0JZ3VjX2VuYWJsZV9j
b21tdW5pY2F0aW9uKGd1Yyk7CisJLyoKKwkgKiBXaGVuIGNvbWluZyBvdXQgb2YgUzMvUzQgd2Ug
c2FuaXRpemUgYW5kIHJlLWluaXQgdGhlIEhXLCBzbworCSAqIGNvbW11bmljYXRpb24gaXMgYWxy
ZWFkeSByZS1lbmFibGVkIGF0IHRoaXMgcG9pbnQgYW5kIHdlIGp1c3QgbmVlZAorCSAqIHRvIHRl
bGwgR3VDIHRvIHJlbG9hZCBpdHMgaW50ZXJuYWwgc3RhdGUuIER1cmluZyBydW50aW1lIHJlc3Vt
ZSB3ZQorCSAqIGluc3RlYWQgd2FudCB0byByZS1pbml0IGV2ZXJ5dGhpbmcuCisJICovCisJaWYg
KCFndWNfY29tbXVuaWNhdGlvbl9lbmFibGVkKGd1YykpCisJCWd1Y19lbmFibGVfY29tbXVuaWNh
dGlvbihndWMpOwogCiAJZXJyID0gaW50ZWxfZ3VjX3Jlc3VtZShndWMpOwogCWlmIChlcnIpIHsK
LS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
