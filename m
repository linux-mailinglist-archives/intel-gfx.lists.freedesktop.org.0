Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C7CAED3C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 16:38:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 093256E0F3;
	Tue, 10 Sep 2019 14:38:38 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9279A6E0ED
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 14:38:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 07:38:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="175328634"
Received: from dudibroo-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.31.14])
 by orsmga007.jf.intel.com with ESMTP; 10 Sep 2019 07:38:34 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 10 Sep 2019 15:38:20 +0100
Message-Id: <20190910143823.10686-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190910143823.10686-1-tvrtko.ursulin@linux.intel.com>
References: <20190910143823.10686-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Move GT init to intel_gt.c
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkNvZGUgaW4g
aTkxNV9nZW1faW5pdF9odyBpcyBhbGwgYWJvdXQgR1QgaW5pdCBzbyBtb3ZlIGl0IHRvIGludGVs
X2d0LmMKcmVuYW1pbmcgdG8gaW50ZWxfZ3RfaW5pdF9ody4KCkV4aXN0aW5nIGludGVsX2d0X2lu
aXRfaHcgaXMgcmVuYW1lZCB0byBpbnRlbF9ndF9pbml0X2h3X2Vhcmx5IHNpbmNlIGl0CmlzIGN1
cnJlbnRseSBjYWxsZWQgZnJvbSBkcml2ZXIgcHJvYmUuCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpDYzogQW5kaSBTaHl0aSA8YW5kaS5z
aHl0aUBpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYyAgICB8ICAyICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jICAgICAgICB8IDkyICsrKysrKysr
KysrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oICAgICAg
ICB8ICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jICAgICB8ICAy
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgICB8ICAyICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICB8ICAxIC0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICAgIHwgOTEgKy0tLS0tLS0tLS0tLS0tLS0t
LS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ3R0LmMgfCAgMiArLQog
OCBmaWxlcyBjaGFuZ2VkLCA5OCBpbnNlcnRpb25zKCspLCA5NyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCmluZGV4IDliMTEyOWFhYWNmZS4uM2JkNzY0
MTA0ZDQxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYwpAQCAtMjQyLDcg
KzI0Miw3IEBAIHZvaWQgaTkxNV9nZW1fcmVzdW1lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1KQogCW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwogCWludGVsX3VuY29y
ZV9mb3JjZXdha2VfZ2V0KCZpOTE1LT51bmNvcmUsIEZPUkNFV0FLRV9BTEwpOwogCi0JaWYgKGk5
MTVfZ2VtX2luaXRfaHcoaTkxNSkpCisJaWYgKGludGVsX2d0X2luaXRfaHcoJmk5MTUtPmd0KSkK
IAkJZ290byBlcnJfd2VkZ2VkOwogCiAJLyoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2d0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCmlu
ZGV4IGUyY2M2OTdkMjdmYi4uZWVmOWJkYWU4ZWJiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9ndC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2d0LmMKQEAgLTYsNiArNiw3IEBACiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJp
bnRlbF9ndC5oIgogI2luY2x1ZGUgImludGVsX2d0X3BtLmgiCisjaW5jbHVkZSAiaW50ZWxfbW9j
cy5oIgogI2luY2x1ZGUgImludGVsX3VuY29yZS5oIgogI2luY2x1ZGUgImludGVsX3BtLmgiCiAK
QEAgLTI1LDcgKzI2LDcgQEAgdm9pZCBpbnRlbF9ndF9pbml0X2Vhcmx5KHN0cnVjdCBpbnRlbF9n
dCAqZ3QsIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCWludGVsX3VjX2luaXRfZWFy
bHkoJmd0LT51Yyk7CiB9CiAKLXZvaWQgaW50ZWxfZ3RfaW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkKK3ZvaWQgaW50ZWxfZ3RfaW5pdF9od19lYXJseShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSkKIHsKIAlpOTE1LT5ndC5nZ3R0ID0gJmk5MTUtPmdndHQ7CiAKQEAg
LTMzLDYgKzM0LDk1IEBAIHZvaWQgaW50ZWxfZ3RfaW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSkKIAlpbnRlbF9ndF9wbV9kaXNhYmxlKCZpOTE1LT5ndCk7CiB9CiAKK3N0YXRp
YyB2b2lkIGluaXRfdW51c2VkX3Jpbmcoc3RydWN0IGludGVsX2d0ICpndCwgdTMyIGJhc2UpCit7
CisJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ3QtPnVuY29yZTsKKworCWludGVsX3Vu
Y29yZV93cml0ZSh1bmNvcmUsIFJJTkdfQ1RMKGJhc2UpLCAwKTsKKwlpbnRlbF91bmNvcmVfd3Jp
dGUodW5jb3JlLCBSSU5HX0hFQUQoYmFzZSksIDApOworCWludGVsX3VuY29yZV93cml0ZSh1bmNv
cmUsIFJJTkdfVEFJTChiYXNlKSwgMCk7CisJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgUklO
R19TVEFSVChiYXNlKSwgMCk7Cit9CisKK3N0YXRpYyB2b2lkIGluaXRfdW51c2VkX3JpbmdzKHN0
cnVjdCBpbnRlbF9ndCAqZ3QpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBn
dC0+aTkxNTsKKworCWlmIChJU19JODMwKGk5MTUpKSB7CisJCWluaXRfdW51c2VkX3JpbmcoZ3Qs
IFBSQjFfQkFTRSk7CisJCWluaXRfdW51c2VkX3JpbmcoZ3QsIFNSQjBfQkFTRSk7CisJCWluaXRf
dW51c2VkX3JpbmcoZ3QsIFNSQjFfQkFTRSk7CisJCWluaXRfdW51c2VkX3JpbmcoZ3QsIFNSQjJf
QkFTRSk7CisJCWluaXRfdW51c2VkX3JpbmcoZ3QsIFNSQjNfQkFTRSk7CisJfSBlbHNlIGlmIChJ
U19HRU4oaTkxNSwgMikpIHsKKwkJaW5pdF91bnVzZWRfcmluZyhndCwgU1JCMF9CQVNFKTsKKwkJ
aW5pdF91bnVzZWRfcmluZyhndCwgU1JCMV9CQVNFKTsKKwl9IGVsc2UgaWYgKElTX0dFTihpOTE1
LCAzKSkgeworCQlpbml0X3VudXNlZF9yaW5nKGd0LCBQUkIxX0JBU0UpOworCQlpbml0X3VudXNl
ZF9yaW5nKGd0LCBQUkIyX0JBU0UpOworCX0KK30KKworaW50IGludGVsX2d0X2luaXRfaHcoc3Ry
dWN0IGludGVsX2d0ICpndCkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0
LT5pOTE1OworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGd0LT51bmNvcmU7CisJaW50
IHJldDsKKworCUJVR19PTighaTkxNS0+a2VybmVsX2NvbnRleHQpOworCXJldCA9IGludGVsX2d0
X3Rlcm1pbmFsbHlfd2VkZ2VkKGd0KTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0OworCisJZ3Qt
Pmxhc3RfaW5pdF90aW1lID0ga3RpbWVfZ2V0KCk7CisKKwkvKiBEb3VibGUgbGF5ZXIgc2VjdXJp
dHkgYmxhbmtldCwgc2VlIGk5MTVfZ2VtX2luaXQoKSAqLworCWludGVsX3VuY29yZV9mb3JjZXdh
a2VfZ2V0KHVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7CisKKwlpZiAoSEFTX0VEUkFNKGk5MTUpICYm
IElOVEVMX0dFTihpOTE1KSA8IDkpCisJCWludGVsX3VuY29yZV9ybXcodW5jb3JlLCBIU1dfSURJ
Q1IsIDAsIElESUhBU0hNU0soMHhmKSk7CisKKwlpZiAoSVNfSEFTV0VMTChpOTE1KSkKKwkJaW50
ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKKwkJCQkgICBNSV9QUkVESUNBVEVfUkVTVUxUXzIsCisJ
CQkJICAgSVNfSFNXX0dUMyhpOTE1KSA/CisJCQkJICAgTE9XRVJfU0xJQ0VfRU5BQkxFRCA6IExP
V0VSX1NMSUNFX0RJU0FCTEVEKTsKKworCS8qIEFwcGx5IHRoZSBHVCB3b3JrYXJvdW5kcy4uLiAq
LworCWludGVsX2d0X2FwcGx5X3dvcmthcm91bmRzKGd0KTsKKwkvKiAuLi5hbmQgZGV0ZXJtaW5l
IHdoZXRoZXIgdGhleSBhcmUgc3RpY2tpbmcuICovCisJaW50ZWxfZ3RfdmVyaWZ5X3dvcmthcm91
bmRzKGd0LCAiaW5pdCIpOworCisJaW50ZWxfZ3RfaW5pdF9zd2l6emxpbmcoZ3QpOworCisJLyoK
KwkgKiBBdCBsZWFzdCA4MzAgY2FuIGxlYXZlIHNvbWUgb2YgdGhlIHVudXNlZCByaW5ncworCSAq
ICJhY3RpdmUiIChpZS4gaGVhZCAhPSB0YWlsKSBhZnRlciByZXN1bWUgd2hpY2gKKwkgKiB3aWxs
IHByZXZlbnQgYzMgZW50cnkuIE1ha2VzIHN1cmUgYWxsIHVudXNlZCByaW5ncworCSAqIGFyZSB0
b3RhbGx5IGlkbGUuCisJICovCisJaW5pdF91bnVzZWRfcmluZ3MoZ3QpOworCisJcmV0ID0gaTkx
NV9wcGd0dF9pbml0X2h3KGd0KTsKKwlpZiAocmV0KSB7CisJCURSTV9FUlJPUigiRW5hYmxpbmcg
UFBHVFQgZmFpbGVkICglZClcbiIsIHJldCk7CisJCWdvdG8gb3V0OworCX0KKworCS8qIFdlIGNh
bid0IGVuYWJsZSBjb250ZXh0cyB1bnRpbCBhbGwgZmlybXdhcmUgaXMgbG9hZGVkICovCisJcmV0
ID0gaW50ZWxfdWNfaW5pdF9odygmZ3QtPnVjKTsKKwlpZiAocmV0KSB7CisJCWk5MTVfcHJvYmVf
ZXJyb3IoaTkxNSwgIkVuYWJsaW5nIHVjIGZhaWxlZCAoJWQpXG4iLCByZXQpOworCQlnb3RvIG91
dDsKKwl9CisKKwlpbnRlbF9tb2NzX2luaXQoZ3QpOworCitvdXQ6CisJaW50ZWxfdW5jb3JlX2Zv
cmNld2FrZV9wdXQodW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsKKwlyZXR1cm4gcmV0OworfQorCiBz
dGF0aWMgdm9pZCBybXdfc2V0KHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwgaTkxNV9yZWdf
dCByZWcsIHUzMiBzZXQpCiB7CiAJaW50ZWxfdW5jb3JlX3Jtdyh1bmNvcmUsIHJlZywgMCwgc2V0
KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oCmluZGV4IDE3YWYyMWNiN2VkMy4uZTZhYjBi
ZmYwZWZiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmgKQEAgLTI4LDcgKzI4LDggQEAg
c3RhdGljIGlubGluZSBzdHJ1Y3QgaW50ZWxfZ3QgKmh1Y190b19ndChzdHJ1Y3QgaW50ZWxfaHVj
ICpodWMpCiB9CiAKIHZvaWQgaW50ZWxfZ3RfaW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxfZ3QgKmd0
LCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7Ci12b2lkIGludGVsX2d0X2luaXRfaHco
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwordm9pZCBpbnRlbF9ndF9pbml0X2h3X2Vh
cmx5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKK2ludCBfX211c3RfY2hlY2sgaW50
ZWxfZ3RfaW5pdF9odyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KTsKIGludCBpbnRlbF9ndF9pbml0KHN0
cnVjdCBpbnRlbF9ndCAqZ3QpOwogdm9pZCBpbnRlbF9ndF9kcml2ZXJfcmVnaXN0ZXIoc3RydWN0
IGludGVsX2d0ICpndCk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3Jlc2V0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCmluZGV4
IGI5ZDg0ZDUyZTk4Ni4uMjk2YmJjNzc0NWZiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9yZXNldC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3Jlc2V0LmMKQEAgLTk3Miw3ICs5NzIsNyBAQCB2b2lkIGludGVsX2d0X3Jlc2V0KHN0cnVjdCBp
bnRlbF9ndCAqZ3QsCiAJICogd2FzIHJ1bm5pbmcgYXQgdGhlIHRpbWUgb2YgdGhlIHJlc2V0IChp
LmUuIHdlIHdlcmVuJ3QgVlQKIAkgKiBzd2l0Y2hlZCBhd2F5KS4KIAkgKi8KLQlyZXQgPSBpOTE1
X2dlbV9pbml0X2h3KGd0LT5pOTE1KTsKKwlyZXQgPSBpbnRlbF9ndF9pbml0X2h3KGd0KTsKIAlp
ZiAocmV0KSB7CiAJCURSTV9FUlJPUigiRmFpbGVkIHRvIGluaXRpYWxpc2UgSFcgZm9sbG93aW5n
IHJlc2V0ICglZClcbiIsCiAJCQkgIHJldCk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwppbmRleCAx
YWY0ZWJhOTY4YzAuLmIxYTk0MmZjNDNjOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCkBAIC0x
MjMyLDcgKzEyMzIsNyBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX2h3X3Byb2JlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlpZiAocmV0KQogCQlnb3RvIGVycl9nZ3R0Owog
Ci0JaW50ZWxfZ3RfaW5pdF9odyhkZXZfcHJpdik7CisJaW50ZWxfZ3RfaW5pdF9od19lYXJseShk
ZXZfcHJpdik7CiAKIAlyZXQgPSBpOTE1X2dndHRfZW5hYmxlX2h3KGRldl9wcml2KTsKIAlpZiAo
cmV0KSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCBlMjg5YjRmZmQzNGIuLjJlNzA0NDAy
Yjk5ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0yMzE4LDcgKzIzMTgsNiBAQCBzdGF0
aWMgaW5saW5lIHUzMiBpOTE1X3Jlc2V0X2VuZ2luZV9jb3VudChzdHJ1Y3QgaTkxNV9ncHVfZXJy
b3IgKmVycm9yLAogCiB2b2lkIGk5MTVfZ2VtX2luaXRfbW1pbyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSk7CiBpbnQgX19tdXN0X2NoZWNrIGk5MTVfZ2VtX2luaXQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KTsKLWludCBfX211c3RfY2hlY2sgaTkxNV9nZW1faW5pdF9o
dyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogdm9pZCBpOTE1X2dlbV9kcml2
ZXJfcmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwogdm9pZCBpOTE1X2dl
bV9kcml2ZXJfdW5yZWdpc3RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7CiB2b2lk
IGk5MTVfZ2VtX2RyaXZlcl9yZW1vdmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCmluZGV4IDE0MTAyNGM2NmYzNi4uZGIyNjgxNTE0YTBi
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKQEAgLTExNDgsOTUgKzExNDgsNiBAQCB2b2lkIGk5
MTVfZ2VtX3Nhbml0aXplKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCWludGVsX3J1
bnRpbWVfcG1fcHV0KCZpOTE1LT5ydW50aW1lX3BtLCB3YWtlcmVmKTsKIH0KIAotc3RhdGljIHZv
aWQgaW5pdF91bnVzZWRfcmluZyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCB1MzIgYmFzZSkKLXsKLQlz
dHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBndC0+dW5jb3JlOwotCi0JaW50ZWxfdW5jb3Jl
X3dyaXRlKHVuY29yZSwgUklOR19DVEwoYmFzZSksIDApOwotCWludGVsX3VuY29yZV93cml0ZSh1
bmNvcmUsIFJJTkdfSEVBRChiYXNlKSwgMCk7Ci0JaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwg
UklOR19UQUlMKGJhc2UpLCAwKTsKLQlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCBSSU5HX1NU
QVJUKGJhc2UpLCAwKTsKLX0KLQotc3RhdGljIHZvaWQgaW5pdF91bnVzZWRfcmluZ3Moc3RydWN0
IGludGVsX2d0ICpndCkKLXsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5p
OTE1OwotCi0JaWYgKElTX0k4MzAoaTkxNSkpIHsKLQkJaW5pdF91bnVzZWRfcmluZyhndCwgUFJC
MV9CQVNFKTsKLQkJaW5pdF91bnVzZWRfcmluZyhndCwgU1JCMF9CQVNFKTsKLQkJaW5pdF91bnVz
ZWRfcmluZyhndCwgU1JCMV9CQVNFKTsKLQkJaW5pdF91bnVzZWRfcmluZyhndCwgU1JCMl9CQVNF
KTsKLQkJaW5pdF91bnVzZWRfcmluZyhndCwgU1JCM19CQVNFKTsKLQl9IGVsc2UgaWYgKElTX0dF
TihpOTE1LCAyKSkgewotCQlpbml0X3VudXNlZF9yaW5nKGd0LCBTUkIwX0JBU0UpOwotCQlpbml0
X3VudXNlZF9yaW5nKGd0LCBTUkIxX0JBU0UpOwotCX0gZWxzZSBpZiAoSVNfR0VOKGk5MTUsIDMp
KSB7Ci0JCWluaXRfdW51c2VkX3JpbmcoZ3QsIFBSQjFfQkFTRSk7Ci0JCWluaXRfdW51c2VkX3Jp
bmcoZ3QsIFBSQjJfQkFTRSk7Ci0JfQotfQotCi1pbnQgaTkxNV9nZW1faW5pdF9odyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKLXsKLQlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUg
PSAmaTkxNS0+dW5jb3JlOwotCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSAmaTkxNS0+Z3Q7Ci0JaW50
IHJldDsKLQotCUJVR19PTighaTkxNS0+a2VybmVsX2NvbnRleHQpOwotCXJldCA9IGludGVsX2d0
X3Rlcm1pbmFsbHlfd2VkZ2VkKGd0KTsKLQlpZiAocmV0KQotCQlyZXR1cm4gcmV0OwotCi0JZ3Qt
Pmxhc3RfaW5pdF90aW1lID0ga3RpbWVfZ2V0KCk7Ci0KLQkvKiBEb3VibGUgbGF5ZXIgc2VjdXJp
dHkgYmxhbmtldCwgc2VlIGk5MTVfZ2VtX2luaXQoKSAqLwotCWludGVsX3VuY29yZV9mb3JjZXdh
a2VfZ2V0KHVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7Ci0KLQlpZiAoSEFTX0VEUkFNKGk5MTUpICYm
IElOVEVMX0dFTihpOTE1KSA8IDkpCi0JCWludGVsX3VuY29yZV9ybXcodW5jb3JlLCBIU1dfSURJ
Q1IsIDAsIElESUhBU0hNU0soMHhmKSk7Ci0KLQlpZiAoSVNfSEFTV0VMTChpOTE1KSkKLQkJaW50
ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKLQkJCQkgICBNSV9QUkVESUNBVEVfUkVTVUxUXzIsCi0J
CQkJICAgSVNfSFNXX0dUMyhpOTE1KSA/Ci0JCQkJICAgTE9XRVJfU0xJQ0VfRU5BQkxFRCA6IExP
V0VSX1NMSUNFX0RJU0FCTEVEKTsKLQotCS8qIEFwcGx5IHRoZSBHVCB3b3JrYXJvdW5kcy4uLiAq
LwotCWludGVsX2d0X2FwcGx5X3dvcmthcm91bmRzKGd0KTsKLQkvKiAuLi5hbmQgZGV0ZXJtaW5l
IHdoZXRoZXIgdGhleSBhcmUgc3RpY2tpbmcuICovCi0JaW50ZWxfZ3RfdmVyaWZ5X3dvcmthcm91
bmRzKGd0LCAiaW5pdCIpOwotCi0JaW50ZWxfZ3RfaW5pdF9zd2l6emxpbmcoZ3QpOwotCi0JLyoK
LQkgKiBBdCBsZWFzdCA4MzAgY2FuIGxlYXZlIHNvbWUgb2YgdGhlIHVudXNlZCByaW5ncwotCSAq
ICJhY3RpdmUiIChpZS4gaGVhZCAhPSB0YWlsKSBhZnRlciByZXN1bWUgd2hpY2gKLQkgKiB3aWxs
IHByZXZlbnQgYzMgZW50cnkuIE1ha2VzIHN1cmUgYWxsIHVudXNlZCByaW5ncwotCSAqIGFyZSB0
b3RhbGx5IGlkbGUuCi0JICovCi0JaW5pdF91bnVzZWRfcmluZ3MoZ3QpOwotCi0JcmV0ID0gaTkx
NV9wcGd0dF9pbml0X2h3KGd0KTsKLQlpZiAocmV0KSB7Ci0JCURSTV9FUlJPUigiRW5hYmxpbmcg
UFBHVFQgZmFpbGVkICglZClcbiIsIHJldCk7Ci0JCWdvdG8gb3V0OwotCX0KLQotCS8qIFdlIGNh
bid0IGVuYWJsZSBjb250ZXh0cyB1bnRpbCBhbGwgZmlybXdhcmUgaXMgbG9hZGVkICovCi0JcmV0
ID0gaW50ZWxfdWNfaW5pdF9odygmZ3QtPnVjKTsKLQlpZiAocmV0KSB7Ci0JCWk5MTVfcHJvYmVf
ZXJyb3IoaTkxNSwgIkVuYWJsaW5nIHVjIGZhaWxlZCAoJWQpXG4iLCByZXQpOwotCQlnb3RvIG91
dDsKLQl9Ci0KLQlpbnRlbF9tb2NzX2luaXQoZ3QpOwotCi1vdXQ6Ci0JaW50ZWxfdW5jb3JlX2Zv
cmNld2FrZV9wdXQodW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsKLQlyZXR1cm4gcmV0OwotfQotCiBz
dGF0aWMgaW50IF9faW50ZWxfZW5naW5lc19yZWNvcmRfZGVmYXVsdHMoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUpCiB7CiAJc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdHNbSTkxNV9O
VU1fRU5HSU5FU10gPSB7fTsKQEAgLTE0NDksNyArMTM2MCw3IEBAIGludCBpOTE1X2dlbV9pbml0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogCWludGVsX3VjX2luaXQoJmRl
dl9wcml2LT5ndC51Yyk7CiAKLQlyZXQgPSBpOTE1X2dlbV9pbml0X2h3KGRldl9wcml2KTsKKwly
ZXQgPSBpbnRlbF9ndF9pbml0X2h3KCZkZXZfcHJpdi0+Z3QpOwogCWlmIChyZXQpCiAJCWdvdG8g
ZXJyX3VjX2luaXQ7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0
cy9tb2NrX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ3R0LmMK
aW5kZXggZTYyYTY3ZTBmNzljLi43ZDVmYjYwYjQzYmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L3NlbGZ0ZXN0cy9tb2NrX2d0dC5jCkBAIC0xMTgsNyArMTE4LDcgQEAgdm9pZCBtb2NrX2luaXRf
Z2d0dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfZ2d0dCAqZ2d0
dCkKIAogCWk5MTVfYWRkcmVzc19zcGFjZV9pbml0KCZnZ3R0LT52bSwgVk1fQ0xBU1NfR0dUVCk7
CiAKLQlpbnRlbF9ndF9pbml0X2h3KGk5MTUpOworCWludGVsX2d0X2luaXRfaHdfZWFybHkoaTkx
NSk7CiB9CiAKIHZvaWQgbW9ja19maW5pX2dndHQoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
