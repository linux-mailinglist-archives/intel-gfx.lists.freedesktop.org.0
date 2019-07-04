Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FD15F652
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 12:07:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FBBF6E2DC;
	Thu,  4 Jul 2019 10:07:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48B306E2DC
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 10:07:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 03:07:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,450,1557212400"; d="scan'208";a="158245951"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by orsmga008.jf.intel.com with ESMTP; 04 Jul 2019 03:07:22 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Thu,  4 Jul 2019 08:38:31 +0530
Message-Id: <20190704030831.17266-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/hdcp: debugs logs for sink related
 failures
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

QWRkaW5nIGZldyBtb3JlIGRlYnVnIGxvZ3MgdG8gaWRlbnRpZnkgdGhlIHNpbmsgc3BlY2lmaWMg
SERDUCBmYWlsdXJlcwphbG9uZyB3aXRoIGEgb3V0IG9mIG1lbS4KClNpZ25lZC1vZmYtYnk6IFJh
bWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KY2M6IERhbmllbCBWZXR0ZXIgPGRh
bmllbEBmZndsbC5jaD4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hk
Y3AuYyB8IDEyICsrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwg
MyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hkY3AuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5j
CmluZGV4IGJjM2E5NGQ0OTFjNC4uYTc4MTM5ZjllODQ3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2hkY3AuYwpAQCAtNTIzLDEyICs1MjMsMTYgQEAgaW50IGludGVsX2hk
Y3BfYXV0aF9kb3duc3RyZWFtKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikKIAkg
KiBhdXRoZW50aWNhdGlvbi4KIAkgKi8KIAludW1fZG93bnN0cmVhbSA9IERSTV9IRENQX05VTV9E
T1dOU1RSRUFNKGJzdGF0dXNbMF0pOwotCWlmIChudW1fZG93bnN0cmVhbSA9PSAwKQorCWlmIChu
dW1fZG93bnN0cmVhbSA9PSAwKSB7CisJCURSTV9ERUJVR19LTVMoIlJlcGVhdGVyIHdpdGggemVy
byBkb3duc3RyZWFtIGRldmljZXNcbiIpOwogCQlyZXR1cm4gLUVJTlZBTDsKKwl9CiAKIAlrc3Zf
ZmlmbyA9IGtjYWxsb2MoRFJNX0hEQ1BfS1NWX0xFTiwgbnVtX2Rvd25zdHJlYW0sIEdGUF9LRVJO
RUwpOwotCWlmICgha3N2X2ZpZm8pCisJaWYgKCFrc3ZfZmlmbykgeworCQlEUk1fREVCVUdfS01T
KCJPdXQgb2YgbWVtOiBrc3ZfZmlmb1xuIik7CiAJCXJldHVybiAtRU5PTUVNOworCX0KIAogCXJl
dCA9IHNoaW0tPnJlYWRfa3N2X2ZpZm8oaW50ZWxfZGlnX3BvcnQsIG51bV9kb3duc3RyZWFtLCBr
c3ZfZmlmbyk7CiAJaWYgKHJldCkKQEAgLTEyMDYsOCArMTIxMCwxMCBAQCBzdGF0aWMgaW50IGhk
Y3AyX2F1dGhlbnRpY2F0aW9uX2tleV9leGNoYW5nZShzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpj
b25uZWN0b3IpCiAJaWYgKHJldCA8IDApCiAJCXJldHVybiByZXQ7CiAKLQlpZiAobXNncy5zZW5k
X2NlcnQucnhfY2Fwc1swXSAhPSBIRENQXzJfMl9SWF9DQVBTX1ZFUlNJT05fVkFMKQorCWlmICht
c2dzLnNlbmRfY2VydC5yeF9jYXBzWzBdICE9IEhEQ1BfMl8yX1JYX0NBUFNfVkVSU0lPTl9WQUwp
IHsKKwkJRFJNX0RFQlVHX0tNUygiY2VydC5yeF9jYXBzIGRvbnQgY2xhaW0gSERDUDIuMlxuIik7
CiAJCXJldHVybiAtRUlOVkFMOworCX0KIAogCWhkY3AtPmlzX3JlcGVhdGVyID0gSERDUF8yXzJf
UlhfUkVQRUFURVIobXNncy5zZW5kX2NlcnQucnhfY2Fwc1syXSk7CiAKLS0gCjIuMTkuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
