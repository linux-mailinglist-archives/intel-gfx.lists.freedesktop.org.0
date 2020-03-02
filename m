Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 783B91767EA
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 00:13:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AEBD8910C;
	Mon,  2 Mar 2020 23:13:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D4C26E1B1
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 23:13:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 15:13:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,508,1574150400"; d="scan'208";a="233545089"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.234])
 by fmsmga008.fm.intel.com with ESMTP; 02 Mar 2020 15:13:26 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Mar 2020 15:14:21 -0800
Message-Id: <20200302231421.224322-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200302231421.224322-1-jose.souza@intel.com>
References: <20200302231421.224322-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Move and restrict
 Wa_1408615072
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

Rm9sbG93aW5nIHRoZSBjaGFuZ2VzIGluIHRoZSBwcmV2aW91cyBwYXRjaAoiZHJtL2k5MTUvZ2Vu
MTE6IE1vdmluZyBXQXMgdG8gcmNzX2VuZ2luZV93YV9pbml0KCkiIGFsc28gbW92aW5nIFRHTApX
YV8xNDA4NjE1MDcyIHRvIHJjc19lbmdpbmVfd2FfaW5pdCgpIHRoaXMgd2F5IGFmdGVyIGEgZW5n
aW5lCnJlc2V0IGl0IHdpbGwgYmUgcmVhcHBsaWVkIGFsc28gcmVzdHJpY3RpbmcgaXQgdG8gQjAg
YXMgaXQgaXMgZml4ZWQgaW4KQjAgc3RlcHBpbmcuCgpCU3BlYzogNTI4OTAKQ2M6IE1hdHQgUm9w
ZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA0ICsrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmMgICAgICAgICAgICAgfCA0IC0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jCmluZGV4IDkwZTFjNDhkZDZiZS4uY2I3ZDg1YzQyZjEzIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKQEAgLTEzODAsNiArMTM4
MCwxMCBAQCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiAJCSAqIFdhXzE0MDEwMjI5MjA2OnRnbAogCQkg
Ki8KIAkJd2FfbWFza2VkX2VuKHdhbCwgR0VOOV9ST1dfQ0hJQ0tFTjQsIEdFTjEyX0RJU0FCTEVf
VERMX1BVU0gpOworCisJCS8qIFdhXzE0MDg2MTUwNzI6dGdsICovCisJCXdhX21hc2tlZF9lbih3
YWwsIFVOU0xJQ0VfVU5JVF9MRVZFTF9DTEtHQVRFMiwKKwkJCSAgICAgVlNVTklUX0NMS0dBVEVf
RElTX1RHTCk7CiAJfQogCiAJaWYgKElTX1RJR0VSTEFLRShpOTE1KSkgewpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMKaW5kZXggZDNkZjAwNDQ1Nzg3Li5lN2YzNmViYzI4MmQgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uYwpAQCAtNjc5MiwxMCArNjc5Miw2IEBAIHN0YXRpYyB2b2lkIHRnbF9pbml0X2Ns
b2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJdTMyIHZkX3Bn
X2VuYWJsZSA9IDA7CiAJdW5zaWduZWQgaW50IGk7CiAKLQkvKiBXYV8xNDA4NjE1MDcyOnRnbCAq
LwotCWludGVsX3VuY29yZV9ybXcoJmRldl9wcml2LT51bmNvcmUsIFVOU0xJQ0VfVU5JVF9MRVZF
TF9DTEtHQVRFMiwKLQkJCSAwLCBWU1VOSVRfQ0xLR0FURV9ESVNfVEdMKTsKLQogCS8qIFRoaXMg
aXMgbm90IGEgV0EuIEVuYWJsZSBWRCBIQ1AgJiBNRlhfRU5DIHBvd2VyZ2F0ZSAqLwogCWZvciAo
aSA9IDA7IGkgPCBJOTE1X01BWF9WQ1M7IGkrKykgewogCQlpZiAoSEFTX0VOR0lORShkZXZfcHJp
diwgX1ZDUyhpKSkpCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
