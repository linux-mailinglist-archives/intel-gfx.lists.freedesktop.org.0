Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0388564E0B
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 23:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 066B58915A;
	Wed, 10 Jul 2019 21:37:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3D0B89152
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 21:37:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 14:37:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="156623297"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by orsmga007.jf.intel.com with ESMTP; 10 Jul 2019 14:37:36 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 14:39:50 -0700
Message-Id: <20190710213951.517-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915/display/icl: Bump up the
 vdisplay to reflect higher transcoder vertical limits
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

T24gSUNMKywgdGhlIHZlcnRpY2FsIGxpbWl0cyBmb3IgdGhlIHRyYW5zY29kZXJzIGFyZSBpbmNy
ZWFzZWQgdG8gODE5MiBzbyBidW1wIHVwCmxpbWl0cyBpbiBpbnRlbF9tb2RlX3ZhbGlkKCkKCnYz
OgoqIFN1cHBvcnRlZCBzdGFydGluZyBJQ0wgKFZpbGxlKQoqIFVzZSB0aGUgaGlnaGVyIGxpbWl0
cyBmcm9tIFRSQU5TX1ZUT1RBTCByZWdpc3RlciAoVmlsbGUpCnYyOgoqIENoZWNrcGF0Y2ggd2Fy
bmluZyAoTWFuYXNpKQoKQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBs
aW51eC5pbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jIHwgOSArKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YwppbmRleCBmMDcwODE4MTViODAuLjk4ODNmNjA3YmI4OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE1NzY0LDggKzE1NzY0LDEzIEBAIGlu
dGVsX21vZGVfdmFsaWQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAkJCSAgIERSTV9NT0RFX0ZM
QUdfQ0xLRElWMikpCiAJCXJldHVybiBNT0RFX0JBRDsKIAotCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDkgfHwKLQkgICAgSVNfQlJPQURXRUxMKGRldl9wcml2KSB8fCBJU19IQVNXRUxMKGRl
dl9wcml2KSkgeworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKSB7CisJCWhkaXNwbGF5
X21heCA9IDgxOTI7CisJCXZkaXNwbGF5X21heCA9IDgxOTI7CisJCWh0b3RhbF9tYXggPSA4MTky
OworCQl2dG90YWxfbWF4ID0gODE5MjsKKwl9IGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gOSB8fAorCQkgICBJU19CUk9BRFdFTEwoZGV2X3ByaXYpIHx8IElTX0hBU1dFTEwoZGV2X3By
aXYpKSB7CiAJCWhkaXNwbGF5X21heCA9IDgxOTI7IC8qIEZESSBtYXggNDA5NiBoYW5kbGVkIGVs
c2V3aGVyZSAqLwogCQl2ZGlzcGxheV9tYXggPSA0MDk2OwogCQlodG90YWxfbWF4ID0gODE5MjsK
LS0gCjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
