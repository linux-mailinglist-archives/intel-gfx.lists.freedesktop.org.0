Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF202F54C5
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 23:05:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C68EA6EC78;
	Wed, 13 Jan 2021 22:05:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 561736EC77
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 22:05:33 +0000 (UTC)
IronPort-SDR: EqGaPX5Hlvz9uts77HuwNEad2UUlEFS6H573R+gGMOZwWdW1WIlSHdsJZ2mWY4jGJPg2BtAUhc
 ZAOMd/BkMRLw==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="165950103"
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="165950103"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 14:05:32 -0800
IronPort-SDR: TArEUk9EaiLyGGBmDbMCP4LCYQL3t4ot9KFeuPXWu8vZrpbMbIp6JNYDlQte8HJrcBGO9g3Qig
 +TG7mTUg5K4Q==
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="400696568"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 13 Jan 2021 14:05:32 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 14:09:27 -0800
Message-Id: <20210113220935.4151-11-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210113220935.4151-1-manasi.d.navare@intel.com>
References: <20210113220935.4151-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 10/18] drm/i915/display/vrr: Configure and
 enable VRR in modeset enable
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

VGhpcyBwYXRjaCBjb21wdXRlcyB0aGUgVlJSIHBhcmFtZXRlcnMgZnJvbSBWUlIgY3J0YyBzdGF0
ZXMKYW5kIGNvbmZpZ3VyZXMgdGhlbSBpbiBWUlIgcmVnaXN0ZXJzIGR1cmluZyBDUlRDIGVuYWJs
ZSBpbgp0aGUgbW9kZXNldCBlbmFibGUgc2VxdWVuY2UuCgp2MjoKKiBSZW1vdmUgaW5pdGlhbGl6
YXRpb24gdG8gMCAoSmFuaSBOKQoqIFVzZSBjb3JyZWN0IHBpcGUgJWMgKEphbmkgTikKCnYzOgoq
IFJlbW92ZSBkZWJ1ZyBwcmludHMgKFZpbGxlKQoqIFVzZSBjcHVfdHJhbnMgaW5zdGVhZCBvZiBw
aXBlIGZvciBUUkFOU19WUlIgcmVncyAoVmlsbGUpCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8
bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jIHwgIDMgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Zyci5jIHwgMjEgKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Zyci5oIHwgIDMgKysrCiAzIGZpbGVzIGNoYW5nZWQsIDI3IGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCA0
OWNmNzZhOWI0YzYuLmI0NDJmMDZlOTgwMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jCkBAIC01MCw2ICs1MCw3IEBACiAjaW5jbHVkZSAiaW50ZWxfc3ByaXRlLmgi
CiAjaW5jbHVkZSAiaW50ZWxfdGMuaCIKICNpbmNsdWRlICJpbnRlbF92ZHNjLmgiCisjaW5jbHVk
ZSAiaW50ZWxfdnJyLmgiCiAKIHN0cnVjdCBkZGlfYnVmX3RyYW5zIHsKIAl1MzIgdHJhbnMxOwkv
KiBiYWxhbmNlIGxlZyBlbmFibGUsIGRlLWVtcGggbGV2ZWwgKi8KQEAgLTQzMTMsNiArNDMxNCw4
IEBAIHN0YXRpYyB2b2lkIGludGVsX2VuYWJsZV9kZGkoc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUsCiAJaWYgKCFjcnRjX3N0YXRlLT5iaWdqb2luZXJfc2xhdmUpCiAJCWludGVsX2Rk
aV9lbmFibGVfdHJhbnNjb2Rlcl9mdW5jKGVuY29kZXIsIGNydGNfc3RhdGUpOwogCisJaW50ZWxf
dnJyX2VuYWJsZShlbmNvZGVyLCBjcnRjX3N0YXRlKTsKKwogCWludGVsX2VuYWJsZV9waXBlKGNy
dGNfc3RhdGUpOwogCiAJaW50ZWxfY3J0Y192Ymxhbmtfb24oY3J0Y19zdGF0ZSk7CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYwppbmRleCA0NjY2NjNiZTkwZjUuLmU3ZmIy
OTdlOGQyMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92
cnIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jCkBAIC0x
MDAsMyArMTAwLDI0IEBAIGludGVsX3Zycl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJbWluKDI1NSwgY3J0Y19zdGF0ZS0+dnJyLnZtaW4gLSBh
ZGp1c3RlZF9tb2RlLT5jcnRjX3ZkaXNwbGF5IC0gNCAtIDEpOwogfQogCit2b2lkIGludGVsX3Zy
cl9lbmFibGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCisJCSAgICAgIGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQoreworCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOworCWVudW0gdHJh
bnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOworCXUz
MiB0cmFuc192cnJfY3RsOworCisJaWYgKCFjcnRjX3N0YXRlLT52cnIuZW5hYmxlKQorCQlyZXR1
cm47CisKKwl0cmFuc192cnJfY3RsID0gVlJSX0NUTF9WUlJfRU5BQkxFIHwKKwkJVlJSX0NUTF9J
R05fTUFYX1NISUZUIHwgVlJSX0NUTF9GTElQX0xJTkVfRU4gfAorCQlWUlJfQ1RMX1BJUEVMSU5F
X0ZVTEwoY3J0Y19zdGF0ZS0+dnJyLnBpcGVsaW5lX2Z1bGwpIHwKKwkJVlJSX0NUTF9QSVBFTElO
RV9GVUxMX09WRVJSSURFOworCisJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFRSQU5TX1ZSUl9W
TUlOKGNwdV90cmFuc2NvZGVyKSwgY3J0Y19zdGF0ZS0+dnJyLnZtaW4gLSAxKTsKKwlpbnRlbF9k
ZV93cml0ZShkZXZfcHJpdiwgVFJBTlNfVlJSX1ZNQVgoY3B1X3RyYW5zY29kZXIpLCBjcnRjX3N0
YXRlLT52cnIudm1heCAtIDEpOworCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBUUkFOU19WUlJf
Q1RMKGNwdV90cmFuc2NvZGVyKSwgdHJhbnNfdnJyX2N0bCk7CisJaW50ZWxfZGVfd3JpdGUoZGV2
X3ByaXYsIFRSQU5TX1ZSUl9GTElQTElORShjcHVfdHJhbnNjb2RlciksIGNydGNfc3RhdGUtPnZy
ci5mbGlwbGluZSAtIDEpOworCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBUUkFOU19QVVNIKGNw
dV90cmFuc2NvZGVyKSwgVFJBTlNfUFVTSF9FTik7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92cnIuaAppbmRleCA2N2M0NzdkNmQxYTQuLjgwYzMzZmJkMDYzOSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5oCkBAIC0xNCwxMCArMTQsMTMgQEAg
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZTsKIHN0cnVjdCBpbnRlbF9jcnRjOwogc3RydWN0IGlu
dGVsX2NydGNfc3RhdGU7CiBzdHJ1Y3QgaW50ZWxfZHA7CitzdHJ1Y3QgaW50ZWxfZW5jb2RlcjsK
IAogYm9vbCBpbnRlbF92cnJfaXNfY2FwYWJsZShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVj
dG9yKTsKIHZvaWQgaW50ZWxfdnJyX2NoZWNrX21vZGVzZXQoc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUpOwogdm9pZCBpbnRlbF92cnJfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCQkgICAgICBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9z
dGF0ZSAqY29ubl9zdGF0ZSk7Cit2b2lkIGludGVsX3Zycl9lbmFibGUoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsCisJCSAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKTsKIAogI2VuZGlmIC8qIF9fSU5URUxfVlJSX0hfXyAqLwotLSAKMi4xOS4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
