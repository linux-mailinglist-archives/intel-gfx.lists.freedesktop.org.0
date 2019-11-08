Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E75E0F5A0D
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 22:43:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CA226FA96;
	Fri,  8 Nov 2019 21:43:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C78D6FA95
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 21:43:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 13:43:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,283,1569308400"; d="scan'208";a="197036923"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.10.155])
 by orsmga008.jf.intel.com with ESMTP; 08 Nov 2019 13:43:27 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Nov 2019 13:42:51 -0800
Message-Id: <20191108214251.79305-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: do not warn late about hdmi on port A
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

VGhlIHdhcm5pbmcgc2hvdWxkIGJlIGp1c3QgYSB3YXJuaW5nLiBXaGVyZSBpdCBpcyBjdXJyZW50
bHkgaXMgd3JvbmcKc2luY2Ugd2UgYWxyZWFkeSByZWdpc3RlcmVkIHRoZSBjb25uZWN0b3Igb24g
ZHJtLCBtZWFuaW5nIGl0IGRpZXMgbGF0ZXIKb24gYSBOVUxMIHBvaW50ZXIgZGVyZWYgaWYgdGhl
IFZCVC1vdmVycmlkaW5nIHdlIGhhdmUgaXMgcmVtb3ZlZC4gTW92ZQp0aGUgd2FybmluZyB1cC4K
ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIHwgNSArKyst
LQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCmluZGV4IGUwODRjMmY3NTM3OS4u
ZWQ0YTY4ZmIzNTFmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2hkbWkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWku
YwpAQCAtMzE0MCw2ICszMTQwLDkgQEAgdm9pZCBpbnRlbF9oZG1pX2luaXRfY29ubmVjdG9yKHN0
cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LAogCURSTV9ERUJVR19LTVMo
IkFkZGluZyBIRE1JIGNvbm5lY3RvciBvbiBbRU5DT0RFUjolZDolc11cbiIsCiAJCSAgICAgIGlu
dGVsX2VuY29kZXItPmJhc2UuYmFzZS5pZCwgaW50ZWxfZW5jb2Rlci0+YmFzZS5uYW1lKTsKIAor
CWlmIChXQVJOX09OKHBvcnQgPT0gUE9SVF9BKSkKKwkJcmV0dXJuOworCiAJaWYgKFdBUk4oaW50
ZWxfZGlnX3BvcnQtPm1heF9sYW5lcyA8IDQsCiAJCSAiTm90IGVub3VnaCBsYW5lcyAoJWQpIGZv
ciBIRE1JIG9uIFtFTkNPREVSOiVkOiVzXVxuIiwKIAkJIGludGVsX2RpZ19wb3J0LT5tYXhfbGFu
ZXMsIGludGVsX2VuY29kZXItPmJhc2UuYmFzZS5pZCwKQEAgLTMxNTksOCArMzE2Miw2IEBAIHZv
aWQgaW50ZWxfaGRtaV9pbml0X2Nvbm5lY3RvcihzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpp
bnRlbF9kaWdfcG9ydCwKIAogCWludGVsX2hkbWktPmRkY19idXMgPSBpbnRlbF9oZG1pX2RkY19w
aW4oZGV2X3ByaXYsIHBvcnQpOwogCi0JaWYgKFdBUk5fT04ocG9ydCA9PSBQT1JUX0EpKQotCQly
ZXR1cm47CiAJaW50ZWxfZW5jb2Rlci0+aHBkX3BpbiA9IGludGVsX2hwZF9waW5fZGVmYXVsdChk
ZXZfcHJpdiwgcG9ydCk7CiAKIAlpZiAoSEFTX0RESShkZXZfcHJpdikpCi0tIAoyLjI0LjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
