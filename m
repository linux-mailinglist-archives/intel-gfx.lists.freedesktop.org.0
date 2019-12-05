Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06989114902
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 23:02:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F7216F90F;
	Thu,  5 Dec 2019 22:02:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69EB26F913
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 22:02:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 14:02:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,282,1571727600"; d="scan'208";a="243411387"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga002.fm.intel.com with ESMTP; 05 Dec 2019 14:02:53 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Dec 2019 14:02:43 -0800
Message-Id: <20191205220243.27403-5-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191205220243.27403-1-daniele.ceraolospurio@intel.com>
References: <20191205220243.27403-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 5/5] HAX: force enable_guc=2 and WA i915#571
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

VG8gZ2V0IGEgZnVsbCBydW4gd2l0aCBHdUMgbG9hZGluZyBhbmQgSHVDIGF1dGggZW5hYmxlZC4K
ClNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3Nw
dXJpb0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZ3Rf
cG0uYyB8IDkgKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oICAg
ICAgIHwgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZ3RfcG0u
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2d0X3BtLmMKaW5kZXggMDlmZjhl
NGY4OGFmLi44NmIxNzZjODg3YjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NlbGZ0ZXN0X2d0X3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rf
Z3RfcG0uYwpAQCAtMTIsOCArMTIsMTEgQEAgc3RhdGljIGludCBsaXZlX2d0X3Jlc3VtZSh2b2lk
ICphcmcpCiB7CiAJc3RydWN0IGludGVsX2d0ICpndCA9IGFyZzsKIAlJR1RfVElNRU9VVChlbmRf
dGltZSk7CisJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7CiAJaW50IGVycjsKIAorCXdha2VyZWYg
PSBpbnRlbF9ydW50aW1lX3BtX2dldChndC0+dW5jb3JlLT5ycG0pOworCiAJLyogRG8gc2V2ZXJh
bCBzdXNwZW5kL3Jlc3VtZSBjeWNsZXMgdG8gY2hlY2sgd2UgZG9uJ3QgZXhwbG9kZSEgKi8KIAlk
byB7CiAJCWludGVsX2d0X3N1c3BlbmRfcHJlcGFyZShndCk7CkBAIC0yNiw2ICsyOSwxMCBAQCBz
dGF0aWMgaW50IGxpdmVfZ3RfcmVzdW1lKHZvaWQgKmFyZykKIAkJCWJyZWFrOwogCQl9CiAKKwkJ
ZXJyID0gaW50ZWxfZ3RfaW5pdF9odyhndCk7CisJCWlmIChlcnIpCisJCQlicmVhazsKKwogCQll
cnIgPSBpbnRlbF9ndF9yZXN1bWUoZ3QpOwogCQlpZiAoZXJyKQogCQkJYnJlYWs7CkBAIC00NSw2
ICs1Miw4IEBAIHN0YXRpYyBpbnQgbGl2ZV9ndF9yZXN1bWUodm9pZCAqYXJnKQogCQl9CiAJfSB3
aGlsZSAoIV9faWd0X3RpbWVvdXQoZW5kX3RpbWUsIE5VTEwpKTsKIAorCWludGVsX3J1bnRpbWVf
cG1fcHV0KGd0LT51bmNvcmUtPnJwbSwgd2FrZXJlZik7CisKIAlyZXR1cm4gZXJyOwogfQogCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaAppbmRleCAzMWI4OGYyOTdmYmMuLmFjZGE5ZjJhMTIw
NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oCkBAIC01NCw3ICs1NCw3IEBAIHN0cnVj
dCBkcm1fcHJpbnRlcjsKIAlwYXJhbShpbnQsIGRpc2FibGVfcG93ZXJfd2VsbCwgLTEpIFwKIAlw
YXJhbShpbnQsIGVuYWJsZV9pcHMsIDEpIFwKIAlwYXJhbShpbnQsIGludmVydF9icmlnaHRuZXNz
LCAwKSBcCi0JcGFyYW0oaW50LCBlbmFibGVfZ3VjLCAwKSBcCisJcGFyYW0oaW50LCBlbmFibGVf
Z3VjLCAyKSBcCiAJcGFyYW0oaW50LCBndWNfbG9nX2xldmVsLCAtMSkgXAogCXBhcmFtKGNoYXIg
KiwgZ3VjX2Zpcm13YXJlX3BhdGgsIE5VTEwpIFwKIAlwYXJhbShjaGFyICosIGh1Y19maXJtd2Fy
ZV9wYXRoLCBOVUxMKSBcCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
