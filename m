Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B895143C23
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 12:39:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FC9C6EC81;
	Tue, 21 Jan 2020 11:39:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 936AB6EC81
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 11:39:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 03:39:23 -0800
X-IronPort-AV: E=Sophos;i="5.70,345,1574150400"; d="scan'208";a="219929585"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 03:39:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jan 2020 13:39:15 +0200
Message-Id: <20200121113915.9813-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH RESEND] drm/i915: add display engine uncore
 helpers
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIGNvbnZlbmllbmNlIGhlbHBlcnMgZm9yIHRoZSBtb3N0IGNvbW1vbiB1bmNvcmUgb3BlcmF0
aW9ucyB3aXRoCnN0cnVjdCBkcm1faTkxNV9wcml2YXRlICogYXMgY29udGV4dCByYXRoZXIgdGhh
biBzdHJ1Y3QgaW50ZWxfdW5jb3JlICouCgpUaGUgZ29hbCBpcyB0byByZXBsYWNlIGFsbCBpbnN0
YW5jZXMgb2YgSTkxNV9SRUFEKCksCkk5MTVfUE9TVElOR19SRUFEKCksIEk5MTVfV1JJVEUoKSwg
STkxNV9SRUFEX0ZXKCksIGFuZCBJOTE1X1dSSVRFX0ZXKCkKaW4gZGlzcGxheS8gd2l0aCB0aGVz
ZSwgdG8gZmluYWxseSBiZSBhYmxlIHRvIGdldCByaWQgb2YgdGhlIGltcGxpY2l0CmRldl9wcml2
IGxvY2FsIHBhcmFtZXRlciB1c2UuCgpUaGUgaWRlYSBpcyB0aGF0IGFueSBub24tdTMyIHJlYWRz
IG9yIHdyaXRlcyBhcmUgc3BlY2lhbCBlbm91Z2ggdGhhdAp0aGV5IGNhbiB1c2UgdGhlIGludGVs
X3VuY29yZV8qIGZ1bmN0aW9ucyBkaXJlY3RseS4KCnYyOgotIHJlbmFtZSB0aGUgZmlsZSBpbnRl
bF9kZS5oCi0gbW92ZSBpbnRlbF9kZV93YWl0X2Zvcl8qIHRoZXJlIHRvbwotIGFsc28gYWRkIGRl
IGZ3IGhlbHBlcnMKCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
Q2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5j
b20+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+
CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KQ2M6IFJvZHJp
Z28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZS5oICAgICAgIHwgNzIgKysrKysrKysrKysrKysrKysrKwogLi4uL2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwgMTQgLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCA3
MyBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmgKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RlLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAw
Li4wMGRhMTBiZjM1ZjUKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RlLmgKQEAgLTAsMCArMSw3MiBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IE1JVCAqLworLyoKKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9u
CisgKi8KKworI2lmbmRlZiBfX0lOVEVMX0RFX0hfXworI2RlZmluZSBfX0lOVEVMX0RFX0hfXwor
CisjaW5jbHVkZSAiaTkxNV9kcnYuaCIKKyNpbmNsdWRlICJpOTE1X3JlZy5oIgorI2luY2x1ZGUg
ImludGVsX3VuY29yZS5oIgorCitzdGF0aWMgaW5saW5lIHUzMgoraW50ZWxfZGVfcmVhZChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgaTkxNV9yZWdfdCByZWcpCit7CisJcmV0dXJuIGlu
dGVsX3VuY29yZV9yZWFkKCZpOTE1LT51bmNvcmUsIHJlZyk7Cit9CisKK3N0YXRpYyBpbmxpbmUg
dm9pZAoraW50ZWxfZGVfcG9zdGluZ19yZWFkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
LCBpOTE1X3JlZ190IHJlZykKK3sKKwlpbnRlbF91bmNvcmVfcG9zdGluZ19yZWFkKCZpOTE1LT51
bmNvcmUsIHJlZyk7Cit9CisKKy8qIE5vdGU6IHJlYWQgdGhlIHdhcm5pbmdzIGZvciBpbnRlbF91
bmNvcmVfKl9mdygpIGZ1bmN0aW9ucyEgKi8KK3N0YXRpYyBpbmxpbmUgdTMyCitpbnRlbF9kZV9y
ZWFkX2Z3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBpOTE1X3JlZ190IHJlZykKK3sK
KwlyZXR1cm4gaW50ZWxfdW5jb3JlX3JlYWRfZncoJmk5MTUtPnVuY29yZSwgcmVnKTsKK30KKwor
c3RhdGljIGlubGluZSB2b2lkCitpbnRlbF9kZV93cml0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwgaTkxNV9yZWdfdCByZWcsIHUzMiB2YWwpCit7CisJaW50ZWxfdW5jb3JlX3dyaXRl
KCZpOTE1LT51bmNvcmUsIHJlZywgdmFsKTsKK30KKworLyogTm90ZTogcmVhZCB0aGUgd2Fybmlu
Z3MgZm9yIGludGVsX3VuY29yZV8qX2Z3KCkgZnVuY3Rpb25zISAqLworc3RhdGljIGlubGluZSB2
b2lkCitpbnRlbF9kZV93cml0ZV9mdyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgaTkx
NV9yZWdfdCByZWcsIHUzMiB2YWwpCit7CisJaW50ZWxfdW5jb3JlX3dyaXRlX2Z3KCZpOTE1LT51
bmNvcmUsIHJlZywgdmFsKTsKK30KKworc3RhdGljIGlubGluZSB2b2lkCitpbnRlbF9kZV9ybXco
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGk5MTVfcmVnX3QgcmVnLCB1MzIgY2xlYXIs
IHUzMiBzZXQpCit7CisJaW50ZWxfdW5jb3JlX3JtdygmaTkxNS0+dW5jb3JlLCByZWcsIGNsZWFy
LCBzZXQpOworfQorCitzdGF0aWMgaW5saW5lIGludAoraW50ZWxfZGVfd2FpdF9mb3JfcmVnaXN0
ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGk5MTVfcmVnX3QgcmVnLAorCQkJICAg
dTMyIG1hc2ssIHUzMiB2YWx1ZSwgdW5zaWduZWQgaW50IHRpbWVvdXQpCit7CisJcmV0dXJuIGlu
dGVsX3dhaXRfZm9yX3JlZ2lzdGVyKCZpOTE1LT51bmNvcmUsIHJlZywgbWFzaywgdmFsdWUsIHRp
bWVvdXQpOworfQorCitzdGF0aWMgaW5saW5lIGludAoraW50ZWxfZGVfd2FpdF9mb3Jfc2V0KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBpOTE1X3JlZ190IHJlZywKKwkJICAgICAgdTMy
IG1hc2ssIHVuc2lnbmVkIGludCB0aW1lb3V0KQoreworCXJldHVybiBpbnRlbF9kZV93YWl0X2Zv
cl9yZWdpc3RlcihpOTE1LCByZWcsIG1hc2ssIG1hc2ssIHRpbWVvdXQpOworfQorCitzdGF0aWMg
aW5saW5lIGludAoraW50ZWxfZGVfd2FpdF9mb3JfY2xlYXIoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUsIGk5MTVfcmVnX3QgcmVnLAorCQkJdTMyIG1hc2ssIHVuc2lnbmVkIGludCB0aW1l
b3V0KQoreworCXJldHVybiBpbnRlbF9kZV93YWl0X2Zvcl9yZWdpc3RlcihpOTE1LCByZWcsIG1h
c2ssIDAsIHRpbWVvdXQpOworfQorCisjZW5kaWYgLyogX19JTlRFTF9ERV9IX18gKi8KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKaW5k
ZXggMTU1Y2U0OWFlNzY0Li4wZDdhZGMyYzE2N2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCkBAIC00NCw2ICs0NCw3IEBACiAj
aW5jbHVkZSA8bWVkaWEvY2VjLW5vdGlmaWVyLmg+CiAKICNpbmNsdWRlICJpOTE1X2Rydi5oIgor
I2luY2x1ZGUgImludGVsX2RlLmgiCiAKIHN0cnVjdCBkcm1fcHJpbnRlcjsKIApkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmgKaW5kZXggMDc3YWYyMmI4MzQwLi4xNmY2ZTk1N2Y4MjEgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaApAQCAtMjAxMCwyMCArMjAxMCw2IEBAIGludCBpOTE1X3JlZ19yZWFkX2lv
Y3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAjZGVmaW5lIEk5MTVfUkVB
RF9GVyhyZWdfXykgX19JOTE1X1JFR19PUChyZWFkX2Z3LCBkZXZfcHJpdiwgKHJlZ19fKSkKICNk
ZWZpbmUgSTkxNV9XUklURV9GVyhyZWdfXywgdmFsX18pIF9fSTkxNV9SRUdfT1Aod3JpdGVfZncs
IGRldl9wcml2LCAocmVnX18pLCAodmFsX18pKQogCi0vKiByZWdpc3RlciB3YWl0IHdyYXBwZXJz
IGZvciBkaXNwbGF5IHJlZ3MgKi8KLSNkZWZpbmUgaW50ZWxfZGVfd2FpdF9mb3JfcmVnaXN0ZXIo
ZGV2X3ByaXZfLCByZWdfLCBtYXNrXywgdmFsdWVfLCB0aW1lb3V0XykgXAotCWludGVsX3dhaXRf
Zm9yX3JlZ2lzdGVyKCYoZGV2X3ByaXZfKS0+dW5jb3JlLCBcCi0JCQkJKHJlZ18pLCAobWFza18p
LCAodmFsdWVfKSwgKHRpbWVvdXRfKSkKLQotI2RlZmluZSBpbnRlbF9kZV93YWl0X2Zvcl9zZXQo
ZGV2X3ByaXZfLCByZWdfLCBtYXNrXywgdGltZW91dF8pICh7CVwKLQl1MzIgbWFza19fID0gKG1h
c2tfKTsJCQkJCQlcCi0JaW50ZWxfZGVfd2FpdF9mb3JfcmVnaXN0ZXIoKGRldl9wcml2XyksIChy
ZWdfKSwJCQlcCi0JCQkJICAgbWFza19fLCBtYXNrX18sICh0aW1lb3V0XykpOyBcCi19KQotCi0j
ZGVmaW5lIGludGVsX2RlX3dhaXRfZm9yX2NsZWFyKGRldl9wcml2XywgcmVnXywgbWFza18sIHRp
bWVvdXRfKSBcCi0JaW50ZWxfZGVfd2FpdF9mb3JfcmVnaXN0ZXIoKGRldl9wcml2XyksIChyZWdf
KSwgKG1hc2tfKSwgMCwgKHRpbWVvdXRfKSkKLQogLyogaTkxNV9tbS5jICovCiBpbnQgcmVtYXBf
aW9fbWFwcGluZyhzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwKIAkJICAgICB1bnNpZ25lZCBs
b25nIGFkZHIsIHVuc2lnbmVkIGxvbmcgcGZuLCB1bnNpZ25lZCBsb25nIHNpemUsCi0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
