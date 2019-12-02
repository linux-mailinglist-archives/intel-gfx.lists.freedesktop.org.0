Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CE810ECC3
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 17:01:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4E958967A;
	Mon,  2 Dec 2019 16:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9003A6E093;
 Mon,  2 Dec 2019 16:01:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 08:01:19 -0800
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; d="scan'208";a="204606716"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 08:01:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Dec 2019 18:00:49 +0200
Message-Id: <bdd0c16b8e2a37589a67e43c70a507001e0e5d27.1575302334.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1575302334.git.jani.nikula@intel.com>
References: <cover.1575302334.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 01/10] drm/i915/gvt: use intel uncore functions
 for forcewake register access
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
Cc: jani.nikula@intel.com, intel-gvt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW92ZSBhd2F5IGZyb20gSTkxNV9SRUFEX0ZXKCkgYW5kIEk5MTVfV1JJVEVfRlcoKSBhbmQgc3dp
dGNoIHRvIHVzaW5nCmludGVsX3VuY29yZV9yZWFkX2Z3KCkgYW5kIGludGVsX3VuY29yZV93cml0
ZV9mdygpLCByZXNwZWN0aXZlbHkuCgpObyBmdW5jdGlvbmFsIGNoYW5nZXMuCgpDYzogWmhlbnl1
IFdhbmcgPHpoZW55dXdAbGludXguaW50ZWwuY29tPgpDYzogWmhpIFdhbmcgPHpoaS5hLndhbmdA
aW50ZWwuY29tPgpDYzogaW50ZWwtZ3Z0LWRldkBsaXN0cy5mcmVlZGVza3RvcC5vcmcKU2lnbmVk
LW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndnQvbW1pb19jb250ZXh0LmMgfCAxOSArKysrKysrKysrKystLS0tLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvc2NoZWR1bGVyLmMgICAgfCAgOSArKysrKystLS0K
IDIgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L21taW9fY29udGV4dC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Z0L21taW9fY29udGV4dC5jCmluZGV4IGFhZjE1OTE2ZDI5YS4uN2M3
NmU3ODcxYmViIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvbW1pb19jb250
ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L21taW9fY29udGV4dC5jCkBAIC0x
NzUsNyArMTc1LDggQEAgc3RhdGljIHZvaWQgbG9hZF9yZW5kZXJfbW9jcyhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCW9mZnNldC5yZWcgPSByZWdzW3JpbmdfaWRdOwogCQlm
b3IgKGkgPSAwOyBpIDwgR0VOOV9NT0NTX1NJWkU7IGkrKykgewogCQkJZ2VuOV9yZW5kZXJfbW9j
cy5jb250cm9sX3RhYmxlW3JpbmdfaWRdW2ldID0KLQkJCQlJOTE1X1JFQURfRlcob2Zmc2V0KTsK
KwkJCQlpbnRlbF91bmNvcmVfcmVhZF9mdygmZGV2X3ByaXYtPnVuY29yZSwKKwkJCQkJCSAgICAg
b2Zmc2V0KTsKIAkJCW9mZnNldC5yZWcgKz0gNDsKIAkJfQogCX0KQEAgLTE4Myw3ICsxODQsNyBA
QCBzdGF0aWMgdm9pZCBsb2FkX3JlbmRlcl9tb2NzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKIAlvZmZzZXQucmVnID0gMHhiMDIwOwogCWZvciAoaSA9IDA7IGkgPCBHRU45X01P
Q1NfU0laRSAvIDI7IGkrKykgewogCQlnZW45X3JlbmRlcl9tb2NzLmwzY2NfdGFibGVbaV0gPQot
CQkJSTkxNV9SRUFEX0ZXKG9mZnNldCk7CisJCQlpbnRlbF91bmNvcmVfcmVhZF9mdygmZGV2X3By
aXYtPnVuY29yZSwgb2Zmc2V0KTsKIAkJb2Zmc2V0LnJlZyArPSA0OwogCX0KIAlnZW45X3JlbmRl
cl9tb2NzLmluaXRpYWxpemVkID0gdHJ1ZTsKQEAgLTQyNyw3ICs0MjgsOCBAQCBzdGF0aWMgdm9p
ZCBzd2l0Y2hfbW9jcyhzdHJ1Y3QgaW50ZWxfdmdwdSAqcHJlLCBzdHJ1Y3QgaW50ZWxfdmdwdSAq
bmV4dCwKIAkJCW5ld192ID0gZ2VuOV9yZW5kZXJfbW9jcy5jb250cm9sX3RhYmxlW3JpbmdfaWRd
W2ldOwogCiAJCWlmIChvbGRfdiAhPSBuZXdfdikKLQkJCUk5MTVfV1JJVEVfRlcob2Zmc2V0LCBu
ZXdfdik7CisJCQlpbnRlbF91bmNvcmVfd3JpdGVfZncoJmRldl9wcml2LT51bmNvcmUsIG9mZnNl
dCwKKwkJCQkJICAgICAgbmV3X3YpOwogCiAJCW9mZnNldC5yZWcgKz0gNDsKIAl9CkBAIC00NDUs
NyArNDQ3LDggQEAgc3RhdGljIHZvaWQgc3dpdGNoX21vY3Moc3RydWN0IGludGVsX3ZncHUgKnBy
ZSwgc3RydWN0IGludGVsX3ZncHUgKm5leHQsCiAJCQkJbmV3X3YgPSBnZW45X3JlbmRlcl9tb2Nz
LmwzY2NfdGFibGVbaV07CiAKIAkJCWlmIChvbGRfdiAhPSBuZXdfdikKLQkJCQlJOTE1X1dSSVRF
X0ZXKGwzX29mZnNldCwgbmV3X3YpOworCQkJCWludGVsX3VuY29yZV93cml0ZV9mdygmZGV2X3By
aXYtPnVuY29yZSwKKwkJCQkJCSAgICAgIGwzX29mZnNldCwgbmV3X3YpOwogCiAJCQlsM19vZmZz
ZXQucmVnICs9IDQ7CiAJCX0KQEAgLTQ5MiwxMyArNDk1LDE1IEBAIHN0YXRpYyB2b2lkIHN3aXRj
aF9tbWlvKHN0cnVjdCBpbnRlbF92Z3B1ICpwcmUsCiAKIAkJLy8gc2F2ZQogCQlpZiAocHJlKSB7
Ci0JCQl2Z3B1X3ZyZWdfdChwcmUsIG1taW8tPnJlZykgPSBJOTE1X1JFQURfRlcobW1pby0+cmVn
KTsKKwkJCXZncHVfdnJlZ190KHByZSwgbW1pby0+cmVnKSA9IGludGVsX3VuY29yZV9yZWFkX2Z3
KCZkZXZfcHJpdi0+dW5jb3JlLAorCQkJCQkJCQkgICAgICAgICAgIG1taW8tPnJlZyk7CiAJCQlp
ZiAobW1pby0+bWFzaykKIAkJCQl2Z3B1X3ZyZWdfdChwcmUsIG1taW8tPnJlZykgJj0KIAkJCQkJ
CX4obW1pby0+bWFzayA8PCAxNik7CiAJCQlvbGRfdiA9IHZncHVfdnJlZ190KHByZSwgbW1pby0+
cmVnKTsKIAkJfSBlbHNlCi0JCQlvbGRfdiA9IG1taW8tPnZhbHVlID0gSTkxNV9SRUFEX0ZXKG1t
aW8tPnJlZyk7CisJCQlvbGRfdiA9IG1taW8tPnZhbHVlID0gaW50ZWxfdW5jb3JlX3JlYWRfZnco
JmRldl9wcml2LT51bmNvcmUsCisJCQkJCQkJCSAgIG1taW8tPnJlZyk7CiAKIAkJLy8gcmVzdG9y
ZQogCQlpZiAobmV4dCkgewpAQCAtNTI2LDcgKzUzMSw3IEBAIHN0YXRpYyB2b2lkIHN3aXRjaF9t
bWlvKHN0cnVjdCBpbnRlbF92Z3B1ICpwcmUsCiAJCQkJbmV3X3YgPSBtbWlvLT52YWx1ZTsKIAkJ
fQogCi0JCUk5MTVfV1JJVEVfRlcobW1pby0+cmVnLCBuZXdfdik7CisJCWludGVsX3VuY29yZV93
cml0ZV9mdygmZGV2X3ByaXYtPnVuY29yZSwgbW1pby0+cmVnLCBuZXdfdik7CiAKIAkJdHJhY2Vf
cmVuZGVyX21taW8ocHJlID8gcHJlLT5pZCA6IDAsCiAJCQkJICBuZXh0ID8gbmV4dC0+aWQgOiAw
LApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L3NjaGVkdWxlci5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Z0L3NjaGVkdWxlci5jCmluZGV4IDViMmE3ZDA3MmVjOS4uZTdh
MmM3NmZjZGNlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvc2NoZWR1bGVy
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L3NjaGVkdWxlci5jCkBAIC0yMTcsMTEg
KzIxNywxNCBAQCBzdGF0aWMgdm9pZCBzYXZlX3JpbmdfaHdfc3RhdGUoc3RydWN0IGludGVsX3Zn
cHUgKnZncHUsIGludCByaW5nX2lkKQogCWk5MTVfcmVnX3QgcmVnOwogCiAJcmVnID0gUklOR19J
TlNURE9ORShyaW5nX2Jhc2UpOwotCXZncHVfdnJlZyh2Z3B1LCBpOTE1X21taW9fcmVnX29mZnNl
dChyZWcpKSA9IEk5MTVfUkVBRF9GVyhyZWcpOworCXZncHVfdnJlZyh2Z3B1LCBpOTE1X21taW9f
cmVnX29mZnNldChyZWcpKSA9IGludGVsX3VuY29yZV9yZWFkX2Z3KCZkZXZfcHJpdi0+dW5jb3Jl
LAorCQkJCQkJCQkJICByZWcpOwogCXJlZyA9IFJJTkdfQUNUSEQocmluZ19iYXNlKTsKLQl2Z3B1
X3ZyZWcodmdwdSwgaTkxNV9tbWlvX3JlZ19vZmZzZXQocmVnKSkgPSBJOTE1X1JFQURfRlcocmVn
KTsKKwl2Z3B1X3ZyZWcodmdwdSwgaTkxNV9tbWlvX3JlZ19vZmZzZXQocmVnKSkgPSBpbnRlbF91
bmNvcmVfcmVhZF9mdygmZGV2X3ByaXYtPnVuY29yZSwKKwkJCQkJCQkJCSAgcmVnKTsKIAlyZWcg
PSBSSU5HX0FDVEhEX1VEVyhyaW5nX2Jhc2UpOwotCXZncHVfdnJlZyh2Z3B1LCBpOTE1X21taW9f
cmVnX29mZnNldChyZWcpKSA9IEk5MTVfUkVBRF9GVyhyZWcpOworCXZncHVfdnJlZyh2Z3B1LCBp
OTE1X21taW9fcmVnX29mZnNldChyZWcpKSA9IGludGVsX3VuY29yZV9yZWFkX2Z3KCZkZXZfcHJp
di0+dW5jb3JlLAorCQkJCQkJCQkJICByZWcpOwogfQogCiBzdGF0aWMgaW50IHNoYWRvd19jb250
ZXh0X3N0YXR1c19jaGFuZ2Uoc3RydWN0IG5vdGlmaWVyX2Jsb2NrICpuYiwKLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
