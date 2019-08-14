Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC608D252
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 13:38:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4FDD6E14F;
	Wed, 14 Aug 2019 11:38:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B39B6E14F
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 11:38:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 04:38:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,385,1559545200"; d="scan'208";a="351880607"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga005.jf.intel.com with ESMTP; 14 Aug 2019 04:38:33 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.194])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7EBcOvI019218; Wed, 14 Aug 2019 12:38:31 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Aug 2019 11:38:21 +0000
Message-Id: <20190814113821.28700-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190814113821.28700-1-michal.wajdeczko@intel.com>
References: <20190814113821.28700-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/uc: Move FW size sanity check back
 to fetch
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

RnJvbTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgoKV2hp
bGUgd2UgbmVlZCB0byBrbm93IFdPUENNIHNpemUgdG8gZG8gdGhpcyBzYW5pdHkgY2hlY2ssIGl0
IGhhcyBtb3JlIHRvCmRvIHdpdGggRlcgdGhhbiB3aXRoIFdPUENNLiBMZXQncyBtb3ZlIHRoZSBj
aGVjayB0byBmZXRjaCBwaGFzZSwgaXQncwpub3QgbGlrZSBXT1BDTSBpcyBnb2luZyB0byBncm93
IGluIHRoZSBtZWFudGltZS4KCnYyOiByZWJhc2VkCgpTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIFdp
bmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1pY2hh
bCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpDYzogRGFuaWVsZSBDZXJh
b2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KQ2M6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogSmFja2llIExpIDx5YW9kb25nLmxp
QGludGVsLmNvbT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4Lmlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jIHwg
MTEgKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmMgICAgICAg
fCAxNCArKy0tLS0tLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAx
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Y19mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwpp
bmRleCBkMDU2ZTFmNGJkNmQuLjk4Y2IwZWZmMTQzZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF91Y19mdy5jCkBAIC0yNjUsNiArMjY1LDcgQEAgaW50IGludGVsX3VjX2Z3X2Zl
dGNoKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncsIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1KQogCXNpemVfdCBzaXplOwogCWludCBlcnI7CiAKKwlHRU1fQlVHX09OKCFpOTE1LT53b3Bj
bS5zaXplKTsKIAlHRU1fQlVHX09OKCFpbnRlbF91Y19md19zdXBwb3J0ZWQodWNfZncpKTsKIAog
CWVyciA9IGk5MTVfaW5qZWN0X2xvYWRfZXJyb3IoaTkxNSwgLUVOWElPKTsKQEAgLTMyNCw2ICsz
MjUsMTYgQEAgaW50IGludGVsX3VjX2Z3X2ZldGNoKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncs
IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCQlnb3RvIGZhaWw7CiAJfQogCisJLyog
U2FuaXR5IGNoZWNrIHdoZXRoZXIgdGhpcyBmdyBpcyBub3QgbGFyZ2VyIHRoYW4gd2hvbGUgV09Q
Q00gbWVtb3J5ICovCisJc2l6ZSA9IHNpemVvZihzdHJ1Y3QgdWNfY3NzX2hlYWRlcikgKyB1Y19m
dy0+dWNvZGVfc2l6ZTsKKwlpZiAodW5saWtlbHkoc2l6ZSA+PSBpOTE1LT53b3BjbS5zaXplKSkg
eworCQlkZXZfd2FybihkZXYsICIlcyBmaXJtd2FyZSAlczogaW52YWxpZCBzaXplOiAlenUgPiAl
enVcbiIsCisJCQkgaW50ZWxfdWNfZndfdHlwZV9yZXByKHVjX2Z3LT50eXBlKSwgdWNfZnctPnBh
dGgsCisJCQkgc2l6ZSwgKHNpemVfdClpOTE1LT53b3BjbS5zaXplKTsKKwkJZXJyID0gLUUyQklH
OworCQlnb3RvIGZhaWw7CisJfQorCiAJLyogR2V0IHZlcnNpb24gbnVtYmVycyBmcm9tIHRoZSBD
U1MgaGVhZGVyICovCiAJc3dpdGNoICh1Y19mdy0+dHlwZSkgewogCWNhc2UgSU5URUxfVUNfRldf
VFlQRV9HVUM6CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93b3BjbS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uYwppbmRleCBlNWJjN2I4YTQzM2Uu
LjI5NTk3ODM1NmVlZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29w
Y20uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93b3BjbS5jCkBAIC0xOTcsNiAr
MTk3LDggQEAgdm9pZCBpbnRlbF93b3BjbV9pbml0KHN0cnVjdCBpbnRlbF93b3BjbSAqd29wY20p
CiAJR0VNX0JVR19PTighd29wY20tPnNpemUpOwogCUdFTV9CVUdfT04od29wY20tPmd1Yy5iYXNl
KTsKIAlHRU1fQlVHX09OKHdvcGNtLT5ndWMuc2l6ZSk7CisJR0VNX0JVR19PTihndWNfZndfc2l6
ZSA+PSB3b3BjbS0+c2l6ZSk7CisJR0VNX0JVR19PTihodWNfZndfc2l6ZSA+PSB3b3BjbS0+c2l6
ZSk7CiAKIAlpZiAoaTkxNV9pbmplY3RfcHJvYmVfZmFpbHVyZShpOTE1KSkKIAkJcmV0dXJuOwpA
QCAtMjA5LDE4ICsyMTEsNiBAQCB2b2lkIGludGVsX3dvcGNtX2luaXQoc3RydWN0IGludGVsX3dv
cGNtICp3b3BjbSkKIAkJZ290byBjaGVjazsKIAl9CiAKLQlpZiAoZ3VjX2Z3X3NpemUgPj0gd29w
Y20tPnNpemUpIHsKLQkJRFJNX0VSUk9SKCJHdUMgRlcgKCV1S2lCKSBpcyB0b28gYmlnIHRvIGZp
dCBpbiBXT1BDTS4iLAotCQkJICBndWNfZndfc2l6ZSAvIDEwMjQpOwotCQlyZXR1cm47Ci0JfQot
Ci0JaWYgKGh1Y19md19zaXplID49IHdvcGNtLT5zaXplKSB7Ci0JCURSTV9FUlJPUigiSHVDIEZX
ICgldUtpQikgaXMgdG9vIGJpZyB0byBmaXQgaW4gV09QQ00uIiwKLQkJCSAgaHVjX2Z3X3NpemUg
LyAxMDI0KTsKLQkJcmV0dXJuOwotCX0KLQogCWd1Y193b3BjbV9iYXNlID0gQUxJR04oaHVjX2Z3
X3NpemUgKyBXT1BDTV9SRVNFUlZFRF9TSVpFLAogCQkJICAgICAgIEdVQ19XT1BDTV9PRkZTRVRf
QUxJR05NRU5UKTsKIAlpZiAoKGd1Y193b3BjbV9iYXNlICsgY3R4X3JzdmQpID49IHdvcGNtLT5z
aXplKSB7Ci0tIAoyLjE5LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
