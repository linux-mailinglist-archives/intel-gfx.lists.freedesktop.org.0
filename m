Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6337A1C49E0
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 00:53:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 095016E4D7;
	Mon,  4 May 2020 22:52:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 001B16E4CA
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 22:52:43 +0000 (UTC)
IronPort-SDR: sVGtzUV/OAUc8dXlPZYz5R5Z9rztGD/XJt6S5zXKCMhL65CZZhm86Od/8r3y7axXySYgNmFWGY
 T6tuAwr4244Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 15:52:43 -0700
IronPort-SDR: 25ULHAQHFduMzJ4NtP+E1Y9oJzNkvKRfOlrmf34pq8gZEz38tWmcPh2rYrMlyu9egUqWVRlT+Z
 2zY7vLAwLHbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,353,1583222400"; d="scan'208";a="295646752"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga008.jf.intel.com with ESMTP; 04 May 2020 15:52:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 May 2020 15:52:23 -0700
Message-Id: <20200504225227.464666-19-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200504225227.464666-1-matthew.d.roper@intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 18/22] drm/i915/rkl: Handle comp master/slave
 relationships for PHYs
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2VydGFpbiBjb21ibyBQSFlzIGFjdCBhcyBhIGNvbXBlbnNhdGlvbiBtYXN0ZXIgdG8gb3RoZXIg
UEhZcyBhbmQgbmVlZAp0byBiZSBpbml0aWFsaXplZCB3aXRoIGEgc3BlY2lhbCBpcmVmZ2VuIGJp
dCBpbiB0aGUgUE9SVF9DT01QX0RXOApyZWdpc3Rlci4gIFByZXZpb3VzbHkgUEhZIEEgd2FzIHRo
ZSBvbmx5IGNvbXBlbnNhdGlvbiBtYXN0ZXIgKGZvciBQSFlzCkIgJiBDKSwgYnV0IFJLTCBhZGRz
IGEgZm91cnRoIFBIWSB3aGljaCBpcyBzbGF2ZWQgdG8gUEhZIEMgaW5zdGVhZC4KCkJzcGVjOiA0
OTI5MQpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CkNjOiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KQ2M6IEFkaXR5YSBT
d2FydXAgPGFkaXR5YS5zd2FydXBAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVy
IDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgotLS0KIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb21ib19waHkuYyAgICB8IDI1ICsrKysrKysrKysrKysrKysrLS0KIDEgZmlsZSBj
aGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbWJvX3BoeS5jCmluZGV4IDQzZDg3ODRmNmZhMC4u
NzdiMDRiYjNlYzYyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NvbWJvX3BoeS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y29tYm9fcGh5LmMKQEAgLTIzNCw2ICsyMzQsMjcgQEAgc3RhdGljIGJvb2wgZWhsX3ZidF9kZGlf
ZF9wcmVzZW50KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCXJldHVybiBmYWxzZTsK
IH0KIAorc3RhdGljIGJvb2wgcGh5X2lzX21hc3RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsIGVudW0gcGh5IHBoeSkKK3sKKwkvKgorCSAqIENlcnRhaW4gUEhZcyBhcmUgY29u
bmVjdGVkIHRvIGNvbXBlbnNhdGlvbiByZXNpc3RvcnMgYW5kIGFjdAorCSAqIGFzIG1hc3RlcnMg
dG8gb3RoZXIgUEhZcy4KKwkgKgorCSAqIElDTCxUR0w6CisJICogICBBKG1hc3RlcikgLT4gQihz
bGF2ZSksIEMoc2xhdmUpCisJICogUktMOgorCSAqICAgQShtYXN0ZXIpIC0+IEIoc2xhdmUpCisJ
ICogICBDKG1hc3RlcikgLT4gRChzbGF2ZSkKKwkgKgorCSAqIFdlIG11c3Qgc2V0IHRoZSBJUkVG
R0VOIGJpdCBmb3IgYW55IFBIWSBhY3RpbmcgYXMgYSBtYXN0ZXIKKwkgKiB0byBhbm90aGVyIFBI
WS4KKwkgKi8KKwlpZiAoSVNfUk9DS0VUTEFLRShkZXZfcHJpdikgJiYgcGh5ID09IFBIWV9DKQor
CQlyZXR1cm4gdHJ1ZTsKKworCXJldHVybiBwaHkgPT0gUEhZX0E7Cit9CisKIHN0YXRpYyBib29s
IGljbF9jb21ib19waHlfdmVyaWZ5X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwKIAkJCQkgICAgICAgZW51bSBwaHkgcGh5KQogewpAQCAtMjQ1LDcgKzI2Niw3IEBAIHN0
YXRpYyBib29sIGljbF9jb21ib19waHlfdmVyaWZ5X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKIAogCXJldCA9IGNubF92ZXJpZnlfcHJvY21vbl9yZWZfdmFsdWVzKGRl
dl9wcml2LCBwaHkpOwogCi0JaWYgKHBoeSA9PSBQSFlfQSkgeworCWlmIChwaHlfaXNfbWFzdGVy
KGRldl9wcml2LCBwaHkpKSB7CiAJCXJldCAmPSBjaGVja19waHlfcmVnKGRldl9wcml2LCBwaHks
IElDTF9QT1JUX0NPTVBfRFc4KHBoeSksCiAJCQkJICAgICBJUkVGR0VOLCBJUkVGR0VOKTsKIApA
QCAtMzU2LDcgKzM3Nyw3IEBAIHN0YXRpYyB2b2lkIGljbF9jb21ib19waHlzX2luaXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogc2tpcF9waHlfbWlzYzoKIAkJY25sX3NldF9w
cm9jbW9uX3JlZl92YWx1ZXMoZGV2X3ByaXYsIHBoeSk7CiAKLQkJaWYgKHBoeSA9PSBQSFlfQSkg
eworCQlpZiAocGh5X2lzX21hc3RlcihkZXZfcHJpdiwgcGh5KSkgewogCQkJdmFsID0gaW50ZWxf
ZGVfcmVhZChkZXZfcHJpdiwgSUNMX1BPUlRfQ09NUF9EVzgocGh5KSk7CiAJCQl2YWwgfD0gSVJF
RkdFTjsKIAkJCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBJQ0xfUE9SVF9DT01QX0RXOChwaHkp
LCB2YWwpOwotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
