Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C493283F
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 08:03:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18BF189996;
	Mon,  3 Jun 2019 06:03:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57BBB8999C;
 Mon,  3 Jun 2019 06:03:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jun 2019 23:03:31 -0700
X-ExtLoop1: 1
Received: from xzhan34-mobl3.bj.intel.com ([10.238.154.54])
 by orsmga003.jf.intel.com with ESMTP; 02 Jun 2019 23:03:28 -0700
From: Xiaolin Zhang <xiaolin.zhang@intel.com>
To: intel-gvt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon,  3 Jun 2019 14:02:47 +0800
Message-Id: <1559541769-25279-7-git-send-email-xiaolin.zhang@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559541769-25279-1-git-send-email-xiaolin.zhang@intel.com>
References: <1559541769-25279-1-git-send-email-xiaolin.zhang@intel.com>
Subject: [Intel-gfx] [PATCH v6 6/8] drm/i915/gvt: GVTg handle shared_page
 setup
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
Cc: zhenyu.z.wang@intel.com, hang.yuan@intel.com, zhiyuan.lv@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

R1ZUZyBpbXBsZW1lbnRlZCBzaGFyZWRfcGFnZSBzZXR1cCBvcGVyYXRpb24gYW5kIHJlYWRfc2hh
cmVkX3BhZ2UKZnVuY3Rpb25hbGl0eSBiYXNlZCBvbiBoeXBlcnZpc29yX3JlYWRfZ3BhKCkuCgp0
aGUgc2hhcmVkX3BhZ2VfZ3BhIHdhcyBwYXNzZWQgZnJvbSBndWVzdCBkcml2ZXIgdGhyb3VnaCBQ
VklORk8Kc2hhcmVkX3BhZ2VfZ3BhIHJlZ2lzdGVyLgoKdjA6IFJGQy4KdjE6IHJlYmFzZS4KdjI6
IHJlYmFzZS4KdjM6IGFkZGVkIHNoYXJlZF9wYWdlX2dwYSBjaGVjayBhbmQgaWYgcmVhZF9ncGEg
ZmFpbHVyZSwgcmV0dXJuIHplcm8KbWVtb3J5IGFuZCBoYW5kbGUgVkdUX0cyVl9TSEFSRURfUEFH
RV9TRVRVUCBnMnYgbm90aWZpY2F0aW9uCnY0OiByZWJhc2UuCnY1OiByZWJhc2UuCnY2OiByZWJh
c2UsIGFkZGVkIFBWIHZlcnNpb24gc3VwcG9ydC4KClNpZ25lZC1vZmYtYnk6IFhpYW9saW4gWmhh
bmcgPHhpYW9saW4uemhhbmdAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d2
dC9ndnQuaCAgICAgIHwgIDggKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2hhbmRs
ZXJzLmMgfCAyMCArKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L3Zn
cHUuYyAgICAgfCA0MyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAzIGZp
bGVzIGNoYW5nZWQsIDcwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvZ3Z0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dnQvZ3Z0LmgKaW5kZXggYjU0ZjJiZC4uMWVmYmY2OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3Z0L2d2dC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9ndnQuaApA
QCAtNDksNiArNDksNyBAQAogI2luY2x1ZGUgImZiX2RlY29kZXIuaCIKICNpbmNsdWRlICJkbWFi
dWYuaCIKICNpbmNsdWRlICJwYWdlX3RyYWNrLmgiCisjaW5jbHVkZSAiaTkxNV92Z3B1LmgiCiAK
ICNkZWZpbmUgR1ZUX01BWF9WR1BVIDgKIApAQCAtMjI5LDYgKzIzMCw4IEBAIHN0cnVjdCBpbnRl
bF92Z3B1IHsKIAlzdHJ1Y3QgY29tcGxldGlvbiB2YmxhbmtfZG9uZTsKIAogCXUzMiBzY2FuX25v
bnByaXZiYjsKKwl1NjQgc2hhcmVkX3BhZ2VfZ3BhOworCWJvb2wgc2hhcmVkX3BhZ2VfZW5hYmxl
ZDsKIH07CiAKIC8qIHZhbGlkYXRpbmcgR00gaGVhbHRoeSBzdGF0dXMqLwpAQCAtNjg2LDcgKzY4
OSwxMCBAQCBpbnQgaW50ZWxfZ3Z0X2RlYnVnZnNfYWRkX3ZncHUoc3RydWN0IGludGVsX3ZncHUg
KnZncHUpOwogdm9pZCBpbnRlbF9ndnRfZGVidWdmc19yZW1vdmVfdmdwdShzdHJ1Y3QgaW50ZWxf
dmdwdSAqdmdwdSk7CiBpbnQgaW50ZWxfZ3Z0X2RlYnVnZnNfaW5pdChzdHJ1Y3QgaW50ZWxfZ3Z0
ICpndnQpOwogdm9pZCBpbnRlbF9ndnRfZGVidWdmc19jbGVhbihzdHJ1Y3QgaW50ZWxfZ3Z0ICpn
dnQpOwotCitpbnQgaW50ZWxfZ3Z0X3JlYWRfc2hhcmVkX3BhZ2Uoc3RydWN0IGludGVsX3ZncHUg
KnZncHUsCisJCXVuc2lnbmVkIGludCBvZmZzZXQsIHZvaWQgKmJ1ZiwgdW5zaWduZWQgbG9uZyBs
ZW4pOworaW50IGludGVsX2d2dF93cml0ZV9zaGFyZWRfcGFnZShzdHJ1Y3QgaW50ZWxfdmdwdSAq
dmdwdSwKKwkJdW5zaWduZWQgaW50IG9mZnNldCwgdm9pZCAqYnVmLCB1bnNpZ25lZCBsb25nIGxl
bik7CiAKICNpbmNsdWRlICJ0cmFjZS5oIgogI2luY2x1ZGUgIm1wdC5oIgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2hhbmRsZXJzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndnQvaGFuZGxlcnMuYwppbmRleCBmZDJmNzJjLi43OTY3OWRhIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndnQvaGFuZGxlcnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndnQvaGFuZGxlcnMuYwpAQCAtMTE5NSw2ICsxMTk1LDggQEAgc3RhdGljIGludCBwdmluZm9f
bW1pb19yZWFkKHN0cnVjdCBpbnRlbF92Z3B1ICp2Z3B1LCB1bnNpZ25lZCBpbnQgb2Zmc2V0LAog
CWNhc2UgMHg3ODAxMDoJLyogdmd0X2NhcHMgKi8KIAljYXNlIDB4Nzg4MWM6CiAJY2FzZSBfdmd0
aWZfcmVnKHB2X2NhcHMpOgorCWNhc2UgX3ZndGlmX3JlZyhzaGFyZWRfcGFnZV9ncGEpOgorCWNh
c2UgX3ZndGlmX3JlZyhzaGFyZWRfcGFnZV9ncGEpICsgNDoKIAkJYnJlYWs7CiAJZGVmYXVsdDoK
IAkJaW52YWxpZF9yZWFkID0gdHJ1ZTsKQEAgLTEyMTIsNiArMTIxNCw5IEBAIHN0YXRpYyBpbnQg
aGFuZGxlX2cydl9ub3RpZmljYXRpb24oc3RydWN0IGludGVsX3ZncHUgKnZncHUsIGludCBub3Rp
ZmljYXRpb24pCiAJZW51bSBpbnRlbF9ndnRfZ3R0X3R5cGUgcm9vdF9lbnRyeV90eXBlID0gR1RU
X1RZUEVfUFBHVFRfUk9PVF9MNF9FTlRSWTsKIAlzdHJ1Y3QgaW50ZWxfdmdwdV9tbSAqbW07CiAJ
dTY0ICpwZHBzOworCXVuc2lnbmVkIGxvbmcgZ3BhLCBnZm47CisJdTE2IHZlcl9tYWpvciA9IFBW
X01BSk9SOworCXUxNiB2ZXJfbWlub3IgPSBQVl9NSU5PUjsKIAogCXBkcHMgPSAodTY0ICopJnZn
cHVfdnJlZzY0X3QodmdwdSwgdmd0aWZfcmVnKHBkcFswXSkpOwogCkBAIC0xMjI1LDYgKzEyMzAs
MTkgQEAgc3RhdGljIGludCBoYW5kbGVfZzJ2X25vdGlmaWNhdGlvbihzdHJ1Y3QgaW50ZWxfdmdw
dSAqdmdwdSwgaW50IG5vdGlmaWNhdGlvbikKIAljYXNlIFZHVF9HMlZfUFBHVFRfTDNfUEFHRV9U
QUJMRV9ERVNUUk9ZOgogCWNhc2UgVkdUX0cyVl9QUEdUVF9MNF9QQUdFX1RBQkxFX0RFU1RST1k6
CiAJCXJldHVybiBpbnRlbF92Z3B1X3B1dF9wcGd0dF9tbSh2Z3B1LCBwZHBzKTsKKwljYXNlIFZH
VF9HMlZfU0hBUkVEX1BBR0VfU0VUVVA6CisJCWdwYSA9IHZncHVfdnJlZzY0X3QodmdwdSwgdmd0
aWZfcmVnKHNoYXJlZF9wYWdlX2dwYSkpOworCQlnZm4gPSBncGEgPj4gUEFHRV9TSElGVDsKKwkJ
aWYgKCFpbnRlbF9ndnRfaHlwZXJ2aXNvcl9pc192YWxpZF9nZm4odmdwdSwgZ2ZuKSkgeworCQkJ
dmdwdV92cmVnX3QodmdwdSwgdmd0aWZfcmVnKHB2X2NhcHMpKSA9IDA7CisJCQlyZXR1cm4gMDsK
KwkJfQorCQl2Z3B1LT5zaGFyZWRfcGFnZV9ncGEgPSBncGE7CisJCXZncHUtPnNoYXJlZF9wYWdl
X2VuYWJsZWQgPSB0cnVlOworCisJCWludGVsX2d2dF93cml0ZV9zaGFyZWRfcGFnZSh2Z3B1LCAw
LCAmdmVyX21ham9yLCAyKTsKKwkJaW50ZWxfZ3Z0X3dyaXRlX3NoYXJlZF9wYWdlKHZncHUsIDIs
ICZ2ZXJfbWlub3IsIDIpOworCQlicmVhazsKIAljYXNlIFZHVF9HMlZfRVhFQ0xJU1RfQ09OVEVY
VF9DUkVBVEU6CiAJY2FzZSBWR1RfRzJWX0VYRUNMSVNUX0NPTlRFWFRfREVTVFJPWToKIAljYXNl
IDE6CS8qIFJlbW92ZSB0aGlzIGluIGd1ZXN0IGRyaXZlci4gKi8KQEAgLTEyODQsNiArMTMwMiw4
IEBAIHN0YXRpYyBpbnQgcHZpbmZvX21taW9fd3JpdGUoc3RydWN0IGludGVsX3ZncHUgKnZncHUs
IHVuc2lnbmVkIGludCBvZmZzZXQsCiAJY2FzZSBfdmd0aWZfcmVnKHBkcFszXS5oaSk6CiAJY2Fz
ZSBfdmd0aWZfcmVnKGV4ZWNsaXN0X2NvbnRleHRfZGVzY3JpcHRvcl9sbyk6CiAJY2FzZSBfdmd0
aWZfcmVnKGV4ZWNsaXN0X2NvbnRleHRfZGVzY3JpcHRvcl9oaSk6CisJY2FzZSBfdmd0aWZfcmVn
KHNoYXJlZF9wYWdlX2dwYSk6CisJY2FzZSBfdmd0aWZfcmVnKHNoYXJlZF9wYWdlX2dwYSkgKyA0
OgogCQlicmVhazsKIAljYXNlIF92Z3RpZl9yZWcocnN2NVswXSkuLi5fdmd0aWZfcmVnKHJzdjVb
M10pOgogCQllbnRlcl9mYWlsc2FmZV9tb2RlKHZncHUsIEdWVF9GQUlMU0FGRV9JTlNVRkZJQ0lF
TlRfUkVTT1VSQ0UpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L3ZncHUu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC92Z3B1LmMKaW5kZXggM2VjYzQ1YS4uOGNiYTMw
ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L3ZncHUuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndnQvdmdwdS5jCkBAIC02Myw2ICs2Myw4IEBAIHZvaWQgcG9wdWxh
dGVfcHZpbmZvX3BhZ2Uoc3RydWN0IGludGVsX3ZncHUgKnZncHUpCiAJdmdwdV92cmVnX3Qodmdw
dSwgdmd0aWZfcmVnKGN1cnNvcl94X2hvdCkpID0gVUlOVF9NQVg7CiAJdmdwdV92cmVnX3Qodmdw
dSwgdmd0aWZfcmVnKGN1cnNvcl95X2hvdCkpID0gVUlOVF9NQVg7CiAKKwl2Z3B1X3ZyZWc2NF90
KHZncHUsIHZndGlmX3JlZyhzaGFyZWRfcGFnZV9ncGEpKSA9IDA7CisKIAlndnRfZGJnX2NvcmUo
IlBvcHVsYXRlIFBWSU5GTyBQQUdFIGZvciB2R1BVICVkXG4iLCB2Z3B1LT5pZCk7CiAJZ3Z0X2Ri
Z19jb3JlKCJhcGVydHVyZSBiYXNlIFtHTUFEUl0gMHglbGx4IHNpemUgMHglbGx4XG4iLAogCQl2
Z3B1X2FwZXJ0dXJlX2dtYWRyX2Jhc2UodmdwdSksIHZncHVfYXBlcnR1cmVfc3oodmdwdSkpOwpA
QCAtNTkzLDMgKzU5NSw0NCBAQCB2b2lkIGludGVsX2d2dF9yZXNldF92Z3B1KHN0cnVjdCBpbnRl
bF92Z3B1ICp2Z3B1KQogCWludGVsX2d2dF9yZXNldF92Z3B1X2xvY2tlZCh2Z3B1LCB0cnVlLCAw
KTsKIAltdXRleF91bmxvY2soJnZncHUtPnZncHVfbG9jayk7CiB9CisKKy8qKgorICogaW50ZWxf
Z3Z0X3JlYWRfc2hhcmVkX3BhZ2UgLSByZWFkIGNvbnRlbnQgZnJvbSBzaGFyZWQgcGFnZQorICov
CitpbnQgaW50ZWxfZ3Z0X3JlYWRfc2hhcmVkX3BhZ2Uoc3RydWN0IGludGVsX3ZncHUgKnZncHUs
CisJCXVuc2lnbmVkIGludCBvZmZzZXQsIHZvaWQgKmJ1ZiwgdW5zaWduZWQgbG9uZyBsZW4pCit7
CisJaW50IHJldCA9IC1FSU5WQUw7CisJdW5zaWduZWQgbG9uZyBncGE7CisKKwlpZiAob2Zmc2V0
ID49IHNpemVvZihzdHJ1Y3QgZ3Z0X3NoYXJlZF9wYWdlKSkKKwkJZ290byBlcnI7CisKKwlncGEg
PSB2Z3B1LT5zaGFyZWRfcGFnZV9ncGEgKyBvZmZzZXQ7CisJcmV0ID0gaW50ZWxfZ3Z0X2h5cGVy
dmlzb3JfcmVhZF9ncGEodmdwdSwgZ3BhLCBidWYsIGxlbik7CisJaWYgKCFyZXQpCisJCXJldHVy
biByZXQ7CitlcnI6CisJZ3Z0X3ZncHVfZXJyKCJyZWFkIHNoYXJlZCBwYWdlIChvZmZzZXQgJXgp
IGZhaWxlZCIsIG9mZnNldCk7CisJbWVtc2V0KGJ1ZiwgMCwgbGVuKTsKKwlyZXR1cm4gcmV0Owor
fQorCitpbnQgaW50ZWxfZ3Z0X3dyaXRlX3NoYXJlZF9wYWdlKHN0cnVjdCBpbnRlbF92Z3B1ICp2
Z3B1LAorCQl1bnNpZ25lZCBpbnQgb2Zmc2V0LCB2b2lkICpidWYsIHVuc2lnbmVkIGxvbmcgbGVu
KQoreworCWludCByZXQgPSAtRUlOVkFMOworCXVuc2lnbmVkIGxvbmcgZ3BhOworCisJaWYgKG9m
ZnNldCA+PSBzaXplb2Yoc3RydWN0IGd2dF9zaGFyZWRfcGFnZSkpCisJCWdvdG8gZXJyOworCisJ
Z3BhID0gdmdwdS0+c2hhcmVkX3BhZ2VfZ3BhICsgb2Zmc2V0OworCXJldCA9IGludGVsX2d2dF9o
eXBlcnZpc29yX3dyaXRlX2dwYSh2Z3B1LCBncGEsIGJ1ZiwgbGVuKTsKKwlpZiAoIXJldCkKKwkJ
cmV0dXJuIHJldDsKK2VycjoKKwlndnRfdmdwdV9lcnIoIndyaXRlIHNoYXJlZCBwYWdlIChvZmZz
ZXQgJXgpIGZhaWxlZCIsIG9mZnNldCk7CisJbWVtc2V0KGJ1ZiwgMCwgbGVuKTsKKwlyZXR1cm4g
cmV0OworfQotLSAKMi43LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
