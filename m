Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6284C7B615
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 01:08:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BE4A89FA7;
	Tue, 30 Jul 2019 23:08:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2ABA89FA0
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 23:08:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 16:08:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="371854038"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jul 2019 16:08:02 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 16:07:40 -0700
Message-Id: <20190730230743.19542-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190730230743.19542-1-daniele.ceraolospurio@intel.com>
References: <20190730230743.19542-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/5] drm/i915/uc: Move uC WOPCM setup in
 uc_init_hw
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

VGhlIHJlZ2lzdGVyIHdlIHdyaXRlIGFyZSBub3QgV09QQ00gcmVncyBidXQgdUMgb25lcyByZWxh
dGVkIHRvIGhvdwpHdUMgYW5kIEh1QyBhcmUgZ29pbmcgdG8gdXNlIHRoZSBXT1BDTSwgc28gaXQg
bWFrZXMgbG9naWNhbCBzZW5zZQpmb3IgdGhlbSB0byBiZSBwcm9ncmFtbWVkIGFzIHBhcnQgb2Yg
dWNfaW5pdF9ody4gVGhlIFdPUENNIG1hcCBvbiB0aGUKb3RoZXIgc2lkZSBpcyBub3QgdUMtc3Bl
Y2lmaWMgKGFsdGhvdWdoIHRoYXQgaXMgb3VyIG1haW4gdXNlLWNhc2UpLCBzbwprZWVwIHRoYXQg
c2VwYXJhdGUuCgp2MjogbW92ZSB3cml0ZV9hbmRfdmVyaWZ5IHRvIHVuY29yZSwgZml4IGxvZywg
cmUtdXNlIGVycl9vdXQgdGFnLAogICAgYWRkIGludGVsX3dvcGNtX2d1Y19iYXNlLCBmaXggbG9n
CgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9z
cHVyaW9AaW50ZWwuY29tPgpDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0Bp
bnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jIHwgNDcgKysrKysrKysrKysr
KysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgIHwgIDMgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgfCAgOCArLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuaCAgIHwgMTIgKysrKysKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3dvcGNtLmMgICAgfCA2OCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmggICAgfCAxOCArKysrKy0tCiA2IGZpbGVz
IGNoYW5nZWQsIDc2IGluc2VydGlvbnMoKyksIDgwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF91Yy5jCmluZGV4IDY1N2ZkY2I3MGQwMC4uNzc5NGE2YTFmOTMyIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKQEAgLTM5OSw2ICszOTksNDkgQEAg
dm9pZCBpbnRlbF91Y19zYW5pdGl6ZShzdHJ1Y3QgaW50ZWxfdWMgKnVjKQogCV9fdWNfc2FuaXRp
emUodWMpOwogfQogCisvKiBJbml0aWFsaXplIGFuZCB2ZXJpZnkgdGhlIHVDIHJlZ3MgcmVsYXRl
ZCB0byB1QyBwb3NpdGlvbmluZyBpbiBXT1BDTSAqLworc3RhdGljIGludCB1Y19pbml0X3dvcGNt
KHN0cnVjdCBpbnRlbF91YyAqdWMpCit7CisJc3RydWN0IGludGVsX2d0ICpndCA9IHVjX3RvX2d0
KHVjKTsKKwlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBndC0+dW5jb3JlOworCXUzMiBi
YXNlID0gaW50ZWxfd29wY21fZ3VjX2Jhc2UoJmd0LT5pOTE1LT53b3BjbSk7CisJdTMyIHNpemUg
PSBpbnRlbF93b3BjbV9ndWNfc2l6ZSgmZ3QtPmk5MTUtPndvcGNtKTsKKwl1MzIgaHVjX2FnZW50
ID0gaW50ZWxfdWNfaXNfdXNpbmdfaHVjKHVjKSA/IEhVQ19MT0FESU5HX0FHRU5UX0dVQyA6IDA7
CisJdTMyIG1hc2s7CisJaW50IGVycjsKKworCUdFTV9CVUdfT04oIWludGVsX3VjX2lzX3VzaW5n
X2d1Yyh1YykpOworCUdFTV9CVUdfT04oIShiYXNlICYgR1VDX1dPUENNX09GRlNFVF9NQVNLKSk7
CisJR0VNX0JVR19PTihiYXNlICYgfkdVQ19XT1BDTV9PRkZTRVRfTUFTSyk7CisJR0VNX0JVR19P
TighKHNpemUgJiBHVUNfV09QQ01fU0laRV9NQVNLKSk7CisJR0VNX0JVR19PTihzaXplICYgfkdV
Q19XT1BDTV9TSVpFX01BU0spOworCisJbWFzayA9IEdVQ19XT1BDTV9TSVpFX01BU0sgfCBHVUNf
V09QQ01fU0laRV9MT0NLRUQ7CisJZXJyID0gaW50ZWxfdW5jb3JlX3dyaXRlX2FuZF92ZXJpZnko
dW5jb3JlLCBHVUNfV09QQ01fU0laRSwgc2l6ZSwgbWFzaywKKwkJCQkJICAgIHNpemUgfCBHVUNf
V09QQ01fU0laRV9MT0NLRUQpOworCWlmIChlcnIpCisJCWdvdG8gZXJyX291dDsKKworCW1hc2sg
PSBHVUNfV09QQ01fT0ZGU0VUX01BU0sgfCBHVUNfV09QQ01fT0ZGU0VUX1ZBTElEIHwgaHVjX2Fn
ZW50OworCWVyciA9IGludGVsX3VuY29yZV93cml0ZV9hbmRfdmVyaWZ5KHVuY29yZSwgRE1BX0dV
Q19XT1BDTV9PRkZTRVQsCisJCQkJCSAgICBiYXNlIHwgaHVjX2FnZW50LCBtYXNrLAorCQkJCQkg
ICAgYmFzZSB8IGh1Y19hZ2VudCB8CisJCQkJCSAgICBHVUNfV09QQ01fT0ZGU0VUX1ZBTElEKTsK
KwlpZiAoZXJyKQorCQlnb3RvIGVycl9vdXQ7CisKKwlyZXR1cm4gMDsKKworZXJyX291dDoKKwlE
Uk1fRVJST1IoIkZhaWxlZCB0byBpbml0IHVDIFdPUENNIHJlZ2lzdGVyczpcbiIpOworCURSTV9F
UlJPUigiRE1BX0dVQ19XT1BDTV9PRkZTRVQ9JSN4XG4iLAorCQkgIGludGVsX3VuY29yZV9yZWFk
KHVuY29yZSwgRE1BX0dVQ19XT1BDTV9PRkZTRVQpKTsKKwlEUk1fRVJST1IoIkdVQ19XT1BDTV9T
SVpFPSUjeFxuIiwKKwkJICBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEdVQ19XT1BDTV9TSVpF
KSk7CisKKwlyZXR1cm4gZXJyOworfQorCiBpbnQgaW50ZWxfdWNfaW5pdF9odyhzdHJ1Y3QgaW50
ZWxfdWMgKnVjKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdWNfdG9fZ3Qo
dWMpLT5pOTE1OwpAQCAtNDExLDYgKzQ1NCwxMCBAQCBpbnQgaW50ZWxfdWNfaW5pdF9odyhzdHJ1
Y3QgaW50ZWxfdWMgKnVjKQogCiAJR0VNX0JVR19PTighaW50ZWxfdWNfZndfc3VwcG9ydGVkKCZn
dWMtPmZ3KSk7CiAKKwlyZXQgPSB1Y19pbml0X3dvcGNtKHVjKTsKKwlpZiAocmV0KQorCQlnb3Rv
IGVycl9vdXQ7CisKIAlndWNfcmVzZXRfaW50ZXJydXB0cyhndWMpOwogCiAJLyogV2FFbmFibGV1
S2VybmVsSGVhZGVyVmFsaWRGaXg6c2tsICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCAz
ZWViMjFmZjA0YzIuLmJkZWRlNjMyNWQ4NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0y
Mjc0LDEwICsyMjc0LDkgQEAgSVNfU1VCUExBVEZPUk0oY29uc3Qgc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUsCiAKICNkZWZpbmUgSEFTX0dUX1VDKGRldl9wcml2KQkoSU5URUxfSU5GTyhk
ZXZfcHJpdiktPmhhc19ndF91YykKIAotLyogSGF2aW5nIEd1Qy9IdUMgaXMgbm90IHRoZSBzYW1l
IGFzIHVzaW5nIEd1Qy9IdUMgKi8KKy8qIEhhdmluZyBHdUMgaXMgbm90IHRoZSBzYW1lIGFzIHVz
aW5nIEd1QyAqLwogI2RlZmluZSBVU0VTX0dVQyhkZXZfcHJpdikJCWludGVsX3VjX2lzX3VzaW5n
X2d1YygmKGRldl9wcml2KS0+Z3QudWMpCiAjZGVmaW5lIFVTRVNfR1VDX1NVQk1JU1NJT04oZGV2
X3ByaXYpCWludGVsX3VjX2lzX3VzaW5nX2d1Y19zdWJtaXNzaW9uKCYoZGV2X3ByaXYpLT5ndC51
YykKLSNkZWZpbmUgVVNFU19IVUMoZGV2X3ByaXYpCQlpbnRlbF91Y19pc191c2luZ19odWMoJihk
ZXZfcHJpdiktPmd0LnVjKQogCiAjZGVmaW5lIEhBU19QT09MRURfRVUoZGV2X3ByaXYpCShJTlRF
TF9JTkZPKGRldl9wcml2KS0+aGFzX3Bvb2xlZF9ldSkKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMK
aW5kZXggNjU4NjNlOTU1ZjQwLi5mNjgxMTUyZDI3ZmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0u
YwpAQCAtMTI0MCwxNCArMTI0MCw4IEBAIGludCBpOTE1X2dlbV9pbml0X2h3KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KQogCQlnb3RvIG91dDsKIAl9CiAKLQlyZXQgPSBpbnRlbF93b3Bj
bV9pbml0X2h3KCZpOTE1LT53b3BjbSwgZ3QpOwotCWlmIChyZXQpIHsKLQkJRFJNX0VSUk9SKCJF
bmFibGluZyBXT1BDTSBmYWlsZWQgKCVkKVxuIiwgcmV0KTsKLQkJZ290byBvdXQ7Ci0JfQotCiAJ
LyogV2UgY2FuJ3QgZW5hYmxlIGNvbnRleHRzIHVudGlsIGFsbCBmaXJtd2FyZSBpcyBsb2FkZWQg
Ki8KLQlyZXQgPSBpbnRlbF91Y19pbml0X2h3KCZpOTE1LT5ndC51Yyk7CisJcmV0ID0gaW50ZWxf
dWNfaW5pdF9odygmZ3QtPnVjKTsKIAlpZiAocmV0KSB7CiAJCURSTV9FUlJPUigiRW5hYmxpbmcg
dWMgZmFpbGVkICglZClcbiIsIHJldCk7CiAJCWdvdG8gb3V0OwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF91bmNvcmUuaAppbmRleCAyZjZmZmEzMDk2NjkuLmU2MDNkMjEwYTM0ZCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfdW5jb3JlLmgKQEAgLTM5Myw2ICszOTMsMTggQEAgc3RhdGljIGlubGluZSB2
b2lkIGludGVsX3VuY29yZV9ybXdfZncoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlLAogCWlu
dGVsX3VuY29yZV93cml0ZV9mdyh1bmNvcmUsIHJlZywgdmFsKTsKIH0KIAorc3RhdGljIGlubGlu
ZSBpbnQgaW50ZWxfdW5jb3JlX3dyaXRlX2FuZF92ZXJpZnkoc3RydWN0IGludGVsX3VuY29yZSAq
dW5jb3JlLAorCQkJCQkJaTkxNV9yZWdfdCByZWcsIHUzMiB2YWwsCisJCQkJCQl1MzIgbWFzaywg
dTMyIGV4cGVjdGVkX3ZhbCkKK3sKKwl1MzIgcmVnX3ZhbDsKKworCWludGVsX3VuY29yZV93cml0
ZSh1bmNvcmUsIHJlZywgdmFsKTsKKwlyZWdfdmFsID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3Jl
LCByZWcpOworCisJcmV0dXJuIChyZWdfdmFsICYgbWFzaykgIT0gZXhwZWN0ZWRfdmFsID8gLUVJ
TlZBTCA6IDA7Cit9CisKICNkZWZpbmUgcmF3X3JlZ19yZWFkKGJhc2UsIHJlZykgXAogCXJlYWRs
KGJhc2UgKyBpOTE1X21taW9fcmVnX29mZnNldChyZWcpKQogI2RlZmluZSByYXdfcmVnX3dyaXRl
KGJhc2UsIHJlZywgdmFsdWUpIFwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3dvcGNtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93b3BjbS5jCmluZGV4IDBl
ODZhOWU4NWI0OS4uZDk5NzNjMGIwMzg0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF93b3BjbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmMK
QEAgLTIyNCw3MSArMjI0LDMgQEAgaW50IGludGVsX3dvcGNtX2luaXQoc3RydWN0IGludGVsX3dv
cGNtICp3b3BjbSkKIAogCXJldHVybiAwOwogfQotCi1zdGF0aWMgaW50Ci13cml0ZV9hbmRfdmVy
aWZ5KHN0cnVjdCBpbnRlbF9ndCAqZ3QsCi0JCSBpOTE1X3JlZ190IHJlZywgdTMyIHZhbCwgdTMy
IG1hc2ssIHUzMiBsb2NrZWRfYml0KQotewotCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9
IGd0LT51bmNvcmU7Ci0JdTMyIHJlZ192YWw7Ci0KLQlHRU1fQlVHX09OKHZhbCAmIH5tYXNrKTsK
LQotCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIHJlZywgdmFsKTsKLQotCXJlZ192YWwgPSBp
bnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIHJlZyk7Ci0KLQlyZXR1cm4gKHJlZ192YWwgJiBtYXNr
KSAhPSAodmFsIHwgbG9ja2VkX2JpdCkgPyAtRUlPIDogMDsKLX0KLQotLyoqCi0gKiBpbnRlbF93
b3BjbV9pbml0X2h3KCkgLSBTZXR1cCBHdUMgV09QQ00gcmVnaXN0ZXJzLgotICogQHdvcGNtOiBw
b2ludGVyIHRvIGludGVsX3dvcGNtLgotICogQGd0OiBwb2ludGVyIHRvIHRoZSBjb250YWluaW5n
IEdUCi0gKgotICogU2V0dXAgdGhlIEd1QyBXT1BDTSBzaXplIGFuZCBvZmZzZXQgcmVnaXN0ZXJz
IHdpdGggdGhlIGNhbGN1bGF0ZWQgdmFsdWVzLiBJdAotICogd2lsbCB2ZXJpZnkgdGhlIHJlZ2lz
dGVyIHZhbHVlcyB0byBtYWtlIHN1cmUgdGhlIHJlZ2lzdGVycyBhcmUgbG9ja2VkIHdpdGgKLSAq
IGNvcnJlY3QgdmFsdWVzLgotICoKLSAqIFJldHVybjogMCBvbiBzdWNjZXNzLiAtRUlPIGlmIHJl
Z2lzdGVycyB3ZXJlIGxvY2tlZCB3aXRoIGluY29ycmVjdCB2YWx1ZXMuCi0gKi8KLWludCBpbnRl
bF93b3BjbV9pbml0X2h3KHN0cnVjdCBpbnRlbF93b3BjbSAqd29wY20sIHN0cnVjdCBpbnRlbF9n
dCAqZ3QpCi17Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB3b3BjbV90b19pOTE1
KHdvcGNtKTsKLQlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBndC0+dW5jb3JlOwotCXUz
MiBodWNfYWdlbnQ7Ci0JdTMyIG1hc2s7Ci0JaW50IGVycjsKLQotCWlmICghVVNFU19HVUMoaTkx
NSkpCi0JCXJldHVybiAwOwotCi0JR0VNX0JVR19PTighSEFTX0dUX1VDKGk5MTUpKTsKLQlHRU1f
QlVHX09OKCF3b3BjbS0+Z3VjLnNpemUpOwotCUdFTV9CVUdfT04oIXdvcGNtLT5ndWMuYmFzZSk7
Ci0KLQllcnIgPSB3cml0ZV9hbmRfdmVyaWZ5KGd0LCBHVUNfV09QQ01fU0laRSwgd29wY20tPmd1
Yy5zaXplLAotCQkJICAgICAgIEdVQ19XT1BDTV9TSVpFX01BU0sgfCBHVUNfV09QQ01fU0laRV9M
T0NLRUQsCi0JCQkgICAgICAgR1VDX1dPUENNX1NJWkVfTE9DS0VEKTsKLQlpZiAoZXJyKQotCQln
b3RvIGVycl9vdXQ7Ci0KLQlodWNfYWdlbnQgPSBVU0VTX0hVQyhpOTE1KSA/IEhVQ19MT0FESU5H
X0FHRU5UX0dVQyA6IDA7Ci0JbWFzayA9IEdVQ19XT1BDTV9PRkZTRVRfTUFTSyB8IEdVQ19XT1BD
TV9PRkZTRVRfVkFMSUQgfCBodWNfYWdlbnQ7Ci0JZXJyID0gd3JpdGVfYW5kX3ZlcmlmeShndCwg
RE1BX0dVQ19XT1BDTV9PRkZTRVQsCi0JCQkgICAgICAgd29wY20tPmd1Yy5iYXNlIHwgaHVjX2Fn
ZW50LCBtYXNrLAotCQkJICAgICAgIEdVQ19XT1BDTV9PRkZTRVRfVkFMSUQpOwotCWlmIChlcnIp
Ci0JCWdvdG8gZXJyX291dDsKLQotCXJldHVybiAwOwotCi1lcnJfb3V0OgotCURSTV9FUlJPUigi
RmFpbGVkIHRvIGluaXQgV09QQ00gcmVnaXN0ZXJzOlxuIik7Ci0JRFJNX0VSUk9SKCJETUFfR1VD
X1dPUENNX09GRlNFVD0lI3hcbiIsCi0JCSAgaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBETUFf
R1VDX1dPUENNX09GRlNFVCkpOwotCURSTV9FUlJPUigiR1VDX1dPUENNX1NJWkU9JSN4XG4iLAot
CQkgIGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgR1VDX1dPUENNX1NJWkUpKTsKLQotCXJldHVy
biBlcnI7Ci19CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93b3BjbS5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uaAppbmRleCA1NmFhZWQ0ZDY0ZmYu
LmY5YjYwMzIwNWJiMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29w
Y20uaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93b3BjbS5oCkBAIC05LDggKzks
NiBAQAogCiAjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KIAotc3RydWN0IGludGVsX2d0OwotCiAv
KioKICAqIHN0cnVjdCBpbnRlbF93b3BjbSAtIE92ZXJhbGwgV09QQ00gaW5mbyBhbmQgV09QQ00g
cmVnaW9ucy4KICAqIEBzaXplOiBTaXplIG9mIG92ZXJhbGwgV09QQ00uCkBAIC0yNiw2ICsyNCwy
MSBAQCBzdHJ1Y3QgaW50ZWxfd29wY20gewogCX0gZ3VjOwogfTsKIAorLyoqCisgKiBpbnRlbF93
b3BjbV9ndWNfYmFzZSgpCisgKiBAd29wY206CWludGVsX3dvcGNtIHN0cnVjdHVyZQorICoKKyAq
IFJldHVybnMgdGhlIGJhc2Ugb2YgdGhlIFdPUENNIHNoYWRvd2VkIHJlZ2lvbi4KKyAqCisgKiBS
ZXR1cm5zOgorICogMCBpZiBHdUMgaXMgbm90IHByZXNlbnQgb3Igbm90IGluIHVzZS4KKyAqIE90
aGVyd2lzZSwgdGhlIEd1QyBXT1BDTSBiYXNlLgorICovCitzdGF0aWMgaW5saW5lIHUzMiBpbnRl
bF93b3BjbV9ndWNfYmFzZShzdHJ1Y3QgaW50ZWxfd29wY20gKndvcGNtKQoreworCXJldHVybiB3
b3BjbS0+Z3VjLmJhc2U7Cit9CisKIC8qKgogICogaW50ZWxfd29wY21fZ3VjX3NpemUoKQogICog
QHdvcGNtOglpbnRlbF93b3BjbSBzdHJ1Y3R1cmUKQEAgLTQzLDYgKzU2LDUgQEAgc3RhdGljIGlu
bGluZSB1MzIgaW50ZWxfd29wY21fZ3VjX3NpemUoc3RydWN0IGludGVsX3dvcGNtICp3b3BjbSkK
IAogdm9pZCBpbnRlbF93b3BjbV9pbml0X2Vhcmx5KHN0cnVjdCBpbnRlbF93b3BjbSAqd29wY20p
OwogaW50IGludGVsX3dvcGNtX2luaXQoc3RydWN0IGludGVsX3dvcGNtICp3b3BjbSk7Ci1pbnQg
aW50ZWxfd29wY21faW5pdF9odyhzdHJ1Y3QgaW50ZWxfd29wY20gKndvcGNtLCBzdHJ1Y3QgaW50
ZWxfZ3QgKmd0KTsKIAogI2VuZGlmCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
