Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 631922CE315
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 00:51:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 672006E0E6;
	Thu,  3 Dec 2020 23:51:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6B246E0DE
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 23:51:04 +0000 (UTC)
IronPort-SDR: 7ciwHQwqnli0Z7mpmnbBPlIwRJAFPdkoM5Ucl90j4RnKav/4T5ghXo0eoJnYpE3Veu6K1a1XgK
 9frNhYeKISjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="161067210"
X-IronPort-AV: E=Sophos;i="5.78,390,1599548400"; d="scan'208";a="161067210"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 15:51:03 -0800
IronPort-SDR: k2ih0vnL7aTaihN14woZr+0tPj562ljw4BBbCIWq+Wony/bzH8WlVJdGcFKTjbOQ3q6ElqFhgI
 vy24N0nvas1w==
X-IronPort-AV: E=Sophos;i="5.78,390,1599548400"; d="scan'208";a="550716508"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 03 Dec 2020 15:51:03 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Dec 2020 15:53:56 -0800
Message-Id: <20201203235358.18041-7-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201203235358.18041-1-manasi.d.navare@intel.com>
References: <20201203235358.18041-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 7/9] drm/i915/display/vrr: Disable VRR in
 modeset disable path
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

VGhpcyBwYXRjaCBkaXNhYmxlcyB0aGUgVlJSIGVuYWJsZSBhbmQgVlJSIFBVU0gKYml0cyBpbiB0
aGUgSFcgZHVyaW5nIGNvbW1pdCBtb2Rlc2V0IGRpc2FibGUgc2VxdWVuY2UuCgpUaHNpIGRpc2Fi
bGUgd2lsbCBoYXBwZW4gd2hlbiB0aGUgcG9ydCBpcyBkaXNhYmxlZApvciB3aGVuIHRoZSB1c2Vy
c3BhY2Ugc2V0cyBWUlIgcHJvcCB0byBmYWxzZSBhbmQKcmVxdWVzdHMgdG8gZGlzYWJsZSBWUlIu
Cgp2MjoKKiBVc2UgaW50ZWxfZGVfcm13IChKYW5pIE4pCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFy
ZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jIHwgIDIgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdnJyLmMgfCAxNiArKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Zyci5oIHwgIDEgKwogMyBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggNDg0Njdj
NmFiYjM3Li4wN2ZiNzI5NmM4YzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYwpAQCAtMzk5NSw2ICszOTk1LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX3Bvc3Rf
ZGlzYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAogCQlpbnRlbF9kaXNh
YmxlX3BpcGUob2xkX2NydGNfc3RhdGUpOwogCisJCWludGVsX3Zycl9kaXNhYmxlKG9sZF9jcnRj
X3N0YXRlKTsKKwogCQlpbnRlbF9kZGlfZGlzYWJsZV90cmFuc2NvZGVyX2Z1bmMob2xkX2NydGNf
c3RhdGUpOwogCiAJCWludGVsX2RzY19kaXNhYmxlKG9sZF9jcnRjX3N0YXRlKTsKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jCmluZGV4IDM1OTdhNTM4ODdkZC4uYTNlZGZh
ZGI1MGYxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zy
ci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMKQEAgLTEz
MywzICsxMzMsMTkgQEAgdm9pZCBpbnRlbF92cnJfc2VuZF9wdXNoKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAi
U2VuZGluZyBWUlIgUHVzaCBvbiBwaXBlICVjXG4iLAogCQkgICAgcGlwZV9uYW1lKHBpcGUpKTsK
IH0KKwordm9pZCBpbnRlbF92cnJfZGlzYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqb2xkX2NydGNfc3RhdGUpCit7CisJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRl
bF9jcnRjKG9sZF9jcnRjX3N0YXRlLT51YXBpLmNydGMpOworCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOworCWVudW0gcGlwZSBwaXBl
ID0gY3J0Yy0+cGlwZTsKKworCWlmICghb2xkX2NydGNfc3RhdGUtPnZyci5lbmFibGUpCisJCXJl
dHVybjsKKworCWludGVsX2RlX3JtdyhkZXZfcHJpdiwgVFJBTlNfVlJSX0NUTChwaXBlKSwgVlJS
X0NUTF9GTElQX0xJTkVfRU4gfCBWUlJfQ1RMX1ZSUl9FTkFCTEUsIDApOworCWludGVsX2RlX3Jt
dyhkZXZfcHJpdiwgVFJBTlNfUFVTSChwaXBlKSwgVFJBTlNfUFVTSF9FTiwgMCk7CisKKwlkcm1f
ZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgIkRpc2FibGluZyBWUlIgb24gcGlwZSAlY1xuIiwKKwkJ
ICAgIHBpcGVfbmFtZShwaXBlKSk7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Zyci5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF92cnIuaAppbmRleCAxMTJlNDAxNDdlMzUuLjVkM2RlZjAyNDAwNiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5oCkBAIC0yMiw1ICsyMiw2IEBAIHZvaWQgaW50ZWxf
dnJyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiB2b2lkIGludGVs
X3Zycl9lbmFibGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCSAgICAgIGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKIHZvaWQgaW50ZWxfdnJyX3Nl
bmRfcHVzaChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cit2b2lk
IGludGVsX3Zycl9kaXNhYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0
Y19zdGF0ZSk7CiAKICNlbmRpZiAvKiBfX0lOVEVMX1ZSUl9IX18gKi8KLS0gCjIuMTkuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
