Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBD2BFAD2
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 23:07:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E231A6EE06;
	Thu, 26 Sep 2019 21:07:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E1396EE04
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 21:07:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 14:07:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,553,1559545200"; d="scan'208";a="194264371"
Received: from josouza-mobl.jf.intel.com ([10.7.200.160])
 by orsmga006.jf.intel.com with ESMTP; 26 Sep 2019 14:07:01 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Sep 2019 14:06:59 -0700
Message-Id: <20190926210659.56317-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190926210659.56317-1-jose.souza@intel.com>
References: <20190926210659.56317-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 4/4] drm/i915/tgl: initialize TC and TBT ports
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CgpOb3cgdGhh
dCBUQyBzdXBwb3J0IHdhcyBhZGRlZCwgaW5pdGlhbGl6ZSBERElzLgoKUmV2aWV3ZWQtYnk6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpBY2tlZC1ieTogTHVj
YXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1
Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDcgKysrKysrLQogMSBmaWxl
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggOGYxMjVmMTYyNGJkLi5iYmUw
ODhiOWQwNTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCkBAIC0xNTM0MCw5ICsxNTM0MCwxNCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9zZXR1cF9vdXRw
dXRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJcmV0dXJuOwogCiAJaWYg
KElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKLQkJLyogVE9ETzogaW5pdGlhbGl6ZSBUQyBw
b3J0cyBhcyB3ZWxsICovCiAJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0EpOwogCQlp
bnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9CKTsKKwkJaW50ZWxfZGRpX2luaXQoZGV2X3By
aXYsIFBPUlRfRCk7CisJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0UpOworCQlpbnRl
bF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9GKTsKKwkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYs
IFBPUlRfRyk7CisJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0gpOworCQlpbnRlbF9k
ZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9JKTsKIAkJaWNsX2RzaV9pbml0KGRldl9wcml2KTsKIAl9
IGVsc2UgaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkgewogCQlpbnRlbF9kZGlfaW5pdChk
ZXZfcHJpdiwgUE9SVF9BKTsKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
