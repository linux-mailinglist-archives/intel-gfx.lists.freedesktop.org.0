Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D644C28D6B8
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 00:58:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BE426E97D;
	Tue, 13 Oct 2020 22:58:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0BBD6E150
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 22:58:03 +0000 (UTC)
IronPort-SDR: 2FWnS78QKFxecopl5cv38q19G38SdAp8IikIxcHUI5AUa3clgUkUnKOIUp4BuyapCrrjU3HryD
 zKgCPSjSnwrQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="145315615"
X-IronPort-AV: E=Sophos;i="5.77,372,1596524400"; d="scan'208";a="145315615"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 15:58:02 -0700
IronPort-SDR: yyKN9TulMgBOu5bKnGl8PrlXEGQr1fiJh0T1WYtLOHMwZtu9q04a8f4ecCiLriDd77WdI0MMqt
 8p9fBpq6I/yw==
X-IronPort-AV: E=Sophos;i="5.77,372,1596524400"; d="scan'208";a="313976720"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.55])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 15:58:02 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Oct 2020 16:01:21 -0700
Message-Id: <20201013230121.331595-6-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201013230121.331595-1-jose.souza@intel.com>
References: <20201013230121.331595-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] DEBUG: drm/i915/display: Add debug
 information to selective fetch
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

SnVzdCBmb3IgZmVhdHVyZSBkZXZlbG9wbWVudCwgbm90IG5lZWRlZCBpbiBwcm9kdWN0aW9uLgoK
U2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDE3ICsr
KysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCmluZGV4IGMz
MGQ3MDY5Y2JhYS4uMWIyYWUzYmQwMmVlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMKQEAgLTExOTQsMTEgKzExOTQsMTkgQEAgdm9pZCBpbnRlbF9wc3IyX3Byb2dy
YW1fcGxhbmVfc2VsX2ZldGNoKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCiAKIAkvKiBUT0RP
OiBjb25zaWRlciBhdXhpbGlhcnkgc3VyZmFjZXMgKi8KIAl4ID0gcGxhbmVfc3RhdGUtPnVhcGku
c3JjLngxID4+IDE2OwotCXkgPSAocGxhbmVfc3RhdGUtPnVhcGkuc3JjLnkxID4+IDE2KSArIGNs
aXAtPnkxOworCXkgPSBwbGFuZV9zdGF0ZS0+dWFwaS5zcmMueTEgPj4gMTY7CisJZHJtX2luZm8o
JmRldl9wcml2LT5kcm0sICJwbGFuZSVjIHNyYy54PSVpIHNyYy55PSVpIGNsaXAueTE9JWkgY2xp
cC55Mj0laVxuIiwKKwkJIHBsYW5lX25hbWUocGxhbmUtPmlkKSwgeCwgeSwgY2xpcC0+eTEsIGNs
aXAtPnkyKTsKKwlkcm1faW5mbygmZGV2X3ByaXYtPmRybSwgIlx0Y29sb3JfcGxhbmVbY29sb3Jf
cGxhbmVdLng9JWkgY29sb3JfcGxhbmVbY29sb3JfcGxhbmVdLnk9JWlcbiIsCisJCSBwbGFuZV9z
dGF0ZS0+Y29sb3JfcGxhbmVbY29sb3JfcGxhbmVdLngsCisJCSBwbGFuZV9zdGF0ZS0+Y29sb3Jf
cGxhbmVbY29sb3JfcGxhbmVdLnkpOworCisJeSArPSBjbGlwLT55MTsKIAlyZXQgPSBza2xfY2Fs
Y19tYWluX3N1cmZhY2Vfb2Zmc2V0KHBsYW5lX3N0YXRlLCAmeCwgJnksICZvZmZzZXQpOwogCWlm
IChyZXQpCiAJCWRybV93YXJuX29uY2UoJmRldl9wcml2LT5kcm0sICJza2xfY2FsY19tYWluX3N1
cmZhY2Vfb2Zmc2V0KCkgcmV0dXJuZWQgJWlcbiIsCiAJCQkgICAgICByZXQpOworCWRybV9pbmZv
KCZkZXZfcHJpdi0+ZHJtLCAiXHRjYWxjdWxhdGVkIG9mZnNldCB4PSVpIHk9JWlcbiIsIHgsIHkp
OwogCXZhbCA9IHkgPDwgMTYgfCB4OwogCWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBQTEFO
RV9TRUxfRkVUQ0hfT0ZGU0VUKHBpcGUsIHBsYW5lLT5pZCksCiAJCQkgIHZhbCk7CkBAIC0xMzM1
LDYgKzEzNDMsOCBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCQkJcGlwZV9kaXJ0eV9hcmVhc1twbGFuZS0+aWQgKiAy
ICsgMV0gPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0OwogCX0KIAorCWRybV9pbmZvKHN0YXRl
LT5iYXNlLmRldiwgImludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZSgpXG4iKTsKKwogCWZvcl9l
YWNoX29sZG5ld19pbnRlbF9wbGFuZV9pbl9zdGF0ZShzdGF0ZSwgcGxhbmUsIG9sZF9wbGFuZV9z
dGF0ZSwKIAkJCQkJICAgICBuZXdfcGxhbmVfc3RhdGUsIGkpIHsKIAkJc3RydWN0IGRybV9yZWN0
ICpzZWxfZmV0Y2hfYXJlYSwgdGVtcDsKQEAgLTE0MTEsNiArMTQyMSwxMSBAQCBpbnQgaW50ZWxf
cHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAog
CQlpZiAoaiA8IDApCiAJCQlzZWxfZmV0Y2hfYXJlYS0+eTIgKz0gajsKIAorCQlkcm1faW5mbyhz
dGF0ZS0+YmFzZS5kZXYsICJcdHBsYW5lJWMgeTE9JWkgeTI9JWkgZHN0LnkxPSVpIGRzdC55Mj0l
aVxuIiwKKwkJCSBwbGFuZV9uYW1lKHBsYW5lLT5pZCksIHNlbF9mZXRjaF9hcmVhLT55MSwKKwkJ
CSBzZWxfZmV0Y2hfYXJlYS0+eTIsIG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTEsCisJCQkg
bmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55Mik7CisKIAkJdGVtcCA9ICpzZWxfZmV0Y2hfYXJl
YTsKIAkJdGVtcC55MSArPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkxID4+IDE2OwogCQl0
ZW1wLnkyICs9IG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTEgPj4gMTY7Ci0tIAoyLjI4LjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
