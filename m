Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFF61ED703
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 21:41:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5E7289AF3;
	Wed,  3 Jun 2020 19:41:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D2AD89AF3
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2020 19:41:53 +0000 (UTC)
IronPort-SDR: Q55A+ee1z3Se+oQW5NQlyP+r4QUpr5HJr+cwngNdtaOkd8cFa/NsjjXYRdXhPK25w2h8iqN1Mu
 ZLbHT9/MqPWQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 12:41:52 -0700
IronPort-SDR: Il3tR9PyIf3m52Jy3O7F0VwoFCmbqP6c+p0zHWn3cjRXS8QF1oOmx7qRe9kmTCDNG6mx7DkCJB
 PesLoBc7jcQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,469,1583222400"; d="scan'208";a="294083537"
Received: from psethi-desk2.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.254.182.158])
 by fmsmga004.fm.intel.com with ESMTP; 03 Jun 2020 12:41:52 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jun 2020 12:43:06 -0700
Message-Id: <20200603194308.78622-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915/bios: Parse HOBL parameter
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

SE9CTCBtZWFucyBob3VycyBvZiBiYXR0ZXJ5IGxpZmUsIGl0IGlzIGEgcG93ZXItc2F2aW5nIGZl
YXR1cmUKd2VyZSBzdXBwb3J0ZWQgbW90aGVyYm9hcmRzIGNhbiB1c2UgYSBzcGVjaWFsIHZvbHRh
Z2Ugc3dpbmcgdGFibGUKdGhhdCB1c2VzIGxlc3MgcG93ZXIuCgpTbyBoZXJlIHBhcnNpbmcgdGhl
IFZCVCB0byBjaGVjayBpZiB0aGlzIGZlYXR1cmUgaXMgc3VwcG9ydGVkLgpXaGlsZSBhdCBpdCBh
bHJlYWR5IGFkZGVkIHRoZSBWUlIgcGFyYW1ldGVyIHRvby4KCkJTcGVjOiAyMDE1MApTaWduZWQt
b2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyAgICAgfCAzICsrKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oIHwgMiArKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwgMSArCiAzIGZpbGVz
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9iaW9zLmMKaW5kZXggODM5MTI0NjQ3MjAyLi5iM2M0NTNhYTc2MjMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCkBAIC03MjIsNiArNzIyLDkgQEAgcGFy
c2VfcG93ZXJfY29uc2VydmF0aW9uX2ZlYXR1cmVzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwKIAkgKi8KIAlpZiAoIShwb3dlci0+ZHJycyAmIEJJVChwYW5lbF90eXBlKSkpCiAJ
CWRldl9wcml2LT52YnQuZHJyc190eXBlID0gRFJSU19OT1RfU1VQUE9SVEVEOworCisJaWYgKGJk
Yi0+dmVyc2lvbiA+PSAyMzIpCisJCWRldl9wcml2LT52YnQuZWRwLmhvYmwgPSBwb3dlci0+aG9i
bCAmIEJJVChwYW5lbF90eXBlKTsKIH0KIAogc3RhdGljIHZvaWQKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaAppbmRleCBhZWY3ZmU5MzJkMWEuLjY1ZjU1
MmY1N2UwNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92
YnRfZGVmcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2Rl
ZnMuaApAQCAtODIwLDYgKzgyMCw4IEBAIHN0cnVjdCBiZGJfbGZwX3Bvd2VyIHsKIAl1MTYgYWRi
OwogCXUxNiBsYWNlX2VuYWJsZWRfc3RhdHVzOwogCXN0cnVjdCBhZ3Jlc3NpdmVuZXNzX3Byb2Zp
bGVfZW50cnkgYWdncmVzc2l2ZW5lc1sxNl07CisJdTE2IGhvYmw7IC8qIDIzMisgKi8KKwl1MTYg
dnJyOyAvKiAyMzMrICovCiB9IF9fcGFja2VkOwogCiAvKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgK
aW5kZXggZTk5MjU1ZTE3ZWI3Li4yMzM2YzkyMzFlZWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aApAQCAtNjkwLDYgKzY5MCw3IEBAIHN0cnVjdCBpbnRlbF92YnRfZGF0YSB7CiAJCWJvb2wgaW5p
dGlhbGl6ZWQ7CiAJCWludCBicHA7CiAJCXN0cnVjdCBlZHBfcG93ZXJfc2VxIHBwczsKKwkJYm9v
bCBob2JsOwogCX0gZWRwOwogCiAJc3RydWN0IHsKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
