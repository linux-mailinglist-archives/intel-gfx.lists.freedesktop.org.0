Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF0C2245A5
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 23:14:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CA776E213;
	Fri, 17 Jul 2020 21:14:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E725D6E220
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 21:14:11 +0000 (UTC)
IronPort-SDR: UpiXlcaDCAfxFRVEuMtDA+dPErHONukzph9GPUuxenVV+XfN74+szkSzAZ3JQV3j6+2oe+yaX5
 eYnGHEdWywkQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="148843860"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="148843860"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 14:14:11 -0700
IronPort-SDR: qnjBQYdem6AtIcqd2CgsveM6jSBI3eaDL9ldwfZACRUnsGs3ga1X6EuyF7mTpnsX+8cCZ2EkOQ
 KEWWWWjjzpQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="270913539"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 17 Jul 2020 14:14:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Jul 2020 00:14:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Jul 2020 00:13:33 +0300
Message-Id: <20200717211345.26851-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/20] drm/i915: Add glk+ degamma readout
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
YWQgb3V0IHRoZSBkZWdhbW1hIExVVCBvbiBnbGsrLiBObyBzdGF0ZSBjaGVrZXIgYXMgb2YgeWV0
IHNpbmNlCml0IHJlcXVpcmVzIGRlYWxpbmcgd2l0aCBoZSBnbGsgY3NjIHZzLiBkZWdhbW1hIG1l
c3MuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3Iu
YyB8IDQ0ICsrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA0NCBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
b2xvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCmluZGV4
IDI2MGJiYmQ1YmJmMi4uNDM3Y2M1NjkyNWFiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jb2xvci5jCkBAIC0xOTU1LDEwICsxOTU1LDUxIEBAIHN0YXRpYyBzdHJ1Y3Qg
ZHJtX3Byb3BlcnR5X2Jsb2IgKmJkd19yZWFkX2x1dF8xMChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YywKIAlyZXR1cm4gYmxvYjsKIH0KIAorc3RhdGljIHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAq
Z2xrX3JlYWRfZGVnYW1tYV9sdXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpCit7CisJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CisJ
aW50IGksIGx1dF9zaXplID0gSU5URUxfSU5GTyhkZXZfcHJpdiktPmNvbG9yLmRlZ2FtbWFfbHV0
X3NpemU7CisJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOworCXN0cnVjdCBkcm1fcHJvcGVy
dHlfYmxvYiAqYmxvYjsKKwlzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqbHV0OworCisJYmxvYiA9IGRy
bV9wcm9wZXJ0eV9jcmVhdGVfYmxvYigmZGV2X3ByaXYtPmRybSwKKwkJCQkJc2l6ZW9mKHN0cnVj
dCBkcm1fY29sb3JfbHV0KSAqIGx1dF9zaXplLAorCQkJCQlOVUxMKTsKKwlpZiAoSVNfRVJSKGJs
b2IpKQorCQlyZXR1cm4gTlVMTDsKKworCWx1dCA9IGJsb2ItPmRhdGE7CisKKwkvKgorCSAqIFdo
ZW4gc2V0dGluZyB0aGUgYXV0by1pbmNyZW1lbnQgYml0LCB0aGUgaGFyZHdhcmUgc2VlbXMgdG8K
KwkgKiBpZ25vcmUgdGhlIGluZGV4IGJpdHMsIHNvIHdlIG5lZWQgdG8gcmVzZXQgaXQgdG8gaW5k
ZXggMAorCSAqIHNlcGFyYXRlbHkuCisJICovCisJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFBS
RV9DU0NfR0FNQ19JTkRFWChwaXBlKSwgMCk7CisJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFBS
RV9DU0NfR0FNQ19JTkRFWChwaXBlKSwKKwkJICAgICAgIFBSRV9DU0NfR0FNQ19BVVRPX0lOQ1JF
TUVOVCk7CisKKwlmb3IgKGkgPSAwOyBpIDwgbHV0X3NpemU7IGkrKykgeworCQl1MzIgdmFsID0g
aW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgUFJFX0NTQ19HQU1DX0RBVEEocGlwZSkpOworCisJCWx1
dFtpXS5yZWQgPSB2YWw7CisJCWx1dFtpXS5ncmVlbiA9IHZhbDsKKwkJbHV0W2ldLmJsdWUgPSB2
YWw7CisJfQorCisJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFBSRV9DU0NfR0FNQ19JTkRFWChw
aXBlKSwgMCk7CisKKwlyZXR1cm4gYmxvYjsKK30KKwogc3RhdGljIHZvaWQgZ2xrX3JlYWRfbHV0
cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKIAlzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKIAorCWlm
IChjcnRjX3N0YXRlLT5jc2NfZW5hYmxlKQorCQljcnRjX3N0YXRlLT5ody5kZWdhbW1hX2x1dCA9
IGdsa19yZWFkX2RlZ2FtbWFfbHV0KGNydGMpOworCiAJaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9l
bmFibGUpCiAJCXJldHVybjsKIApAQCAtMjAxMCw2ICsyMDUxLDkgQEAgc3RhdGljIHZvaWQgaWNs
X3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKIAlzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRj
KTsKIAorCWlmIChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlICYgUFJFX0NTQ19HQU1NQV9FTkFCTEUp
CisJCWNydGNfc3RhdGUtPmh3LmRlZ2FtbWFfbHV0ID0gZ2xrX3JlYWRfZGVnYW1tYV9sdXQoY3J0
Yyk7CisKIAlpZiAoKGNydGNfc3RhdGUtPmdhbW1hX21vZGUgJiBQT1NUX0NTQ19HQU1NQV9FTkFC
TEUpID09IDApCiAJCXJldHVybjsKIAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
