Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 593A6DA642
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 09:20:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 913916E578;
	Thu, 17 Oct 2019 07:20:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 896BA6E578
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 07:20:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 00:20:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,306,1566889200"; d="scan'208";a="208177857"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga002.jf.intel.com with ESMTP; 17 Oct 2019 00:20:10 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Oct 2019 00:20:09 -0700
Message-Id: <20191017072009.31539-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191017072009.31539-1-umesh.nerlige.ramappa@intel.com>
References: <20191017072009.31539-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915/perf: enable OAR context
 save/restore of performance counters
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgoK
V2Ugd2FudCB0aGlzIHNvIHdlIGNhbiBwcmVlbXB0IHBlcmZvcm1hbmNlIHF1ZXJpZXMgYW5kIGtl
ZXAgdGhlIHN5c3RlbQpyZXNwb25zaXZlIGV2ZW4gd2hlbiBsb25nIHJ1bm5pbmcgcXVlcmllcyBh
cmUgb25nb2luZy4gV2UgYXZvaWQgZG9pbmcKaXQgZm9yIGFsbCBjb250ZXh0cy4KCnYyOiB1c2Ug
TFJJIHRvIG1vZGlmeSBjb250ZXh0IGNvbnRyb2wgKENocmlzKQp2MzogdXNlIE1BU0tFRF9GSUVM
RCB0byBwcm9ncmFtIGp1c3QgdGhlIG1hc2tlZCBiaXRzIChDaHJpcykKClNpZ25lZC1vZmYtYnk6
IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogVW1lc2ggTmVybGlnZSBSYW1hcHBhIDx1bWVzaC5uZXJsaWdlLnJhbWFwcGFAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5oIHwgIDEgKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgICAgfCAzOSArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuaAppbmRleCA5OWRjNTc2YTRlMjUuLmI2ZGFhYzcxMmM5ZSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmgKQEAgLTQzLDYgKzQzLDcgQEAgc3RydWN0
IGludGVsX2VuZ2luZV9jczsKICNkZWZpbmUJICBDVFhfQ1RSTF9FTkdJTkVfQ1RYX1JFU1RPUkVf
SU5ISUJJVAkoMSA8PCAwKQogI2RlZmluZSAgIENUWF9DVFJMX1JTX0NUWF9FTkFCTEUJCSgxIDw8
IDEpCiAjZGVmaW5lCSAgQ1RYX0NUUkxfRU5HSU5FX0NUWF9TQVZFX0lOSElCSVQJKDEgPDwgMikK
KyNkZWZpbmUJICBHRU4xMl9DVFhfQ1RSTF9PQVJfQ09OVEVYVF9FTkFCTEUJKDEgPDwgOCkKICNk
ZWZpbmUgUklOR19DT05URVhUX1NUQVRVU19QVFIoYmFzZSkJCV9NTUlPKChiYXNlKSArIDB4M2Ew
KQogI2RlZmluZSBSSU5HX0VYRUNMSVNUX1NRX0NPTlRFTlRTKGJhc2UpCQlfTU1JTygoYmFzZSkg
KyAweDUxMCkKICNkZWZpbmUgUklOR19FWEVDTElTVF9DT05UUk9MKGJhc2UpCQlfTU1JTygoYmFz
ZSkgKyAweDU1MCkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKaW5kZXggYWJjMmI3YTZkYzkyLi40
N2E4ZDYxMGFmNmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCkBAIC0yMjExLDYgKzIyMTEs
MzYgQEAgc3RhdGljIGludCBnZW44X2NvbmZpZ3VyZV9jb250ZXh0KHN0cnVjdCBpOTE1X2dlbV9j
b250ZXh0ICpjdHgsCiAJcmV0dXJuIGVycjsKIH0KIAorc3RhdGljIGludCBnZW4xMl9lbWl0X29h
cl9jb25maWcoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCBib29sIGVuYWJsZSkKK3sKKwlzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICpycTsKKwl1MzIgKmNzOworCWludCBlcnIgPSAwOworCisJcnEgPSBp
OTE1X3JlcXVlc3RfY3JlYXRlKGNlKTsKKwlpZiAoSVNfRVJSKHJxKSkKKwkJcmV0dXJuIFBUUl9F
UlIocnEpOworCisJY3MgPSBpbnRlbF9yaW5nX2JlZ2luKHJxLCA0KTsKKwlpZiAoSVNfRVJSKGNz
KSkgeworCQllcnIgPSBQVFJfRVJSKGNzKTsKKwkJZ290byBvdXQ7CisJfQorCisJKmNzKysgPSBN
SV9MT0FEX1JFR0lTVEVSX0lNTSgxKTsKKwkqY3MrKyA9IGk5MTVfbW1pb19yZWdfb2Zmc2V0KFJJ
TkdfQ09OVEVYVF9DT05UUk9MKGNlLT5lbmdpbmUtPm1taW9fYmFzZSkpOworCSpjcysrID0gX01B
U0tFRF9GSUVMRChHRU4xMl9DVFhfQ1RSTF9PQVJfQ09OVEVYVF9FTkFCTEUsCisJCQkgICAgICBl
bmFibGUgPyBHRU4xMl9DVFhfQ1RSTF9PQVJfQ09OVEVYVF9FTkFCTEUgOiAwKTsKKwkqY3MrKyA9
IE1JX05PT1A7CisKKwlpbnRlbF9yaW5nX2FkdmFuY2UocnEsIGNzKTsKKworb3V0OgorCWk5MTVf
cmVxdWVzdF9hZGQocnEpOworCisJcmV0dXJuIGVycjsKK30KKwogLyoKICAqIE1hbmFnZXMgdXBk
YXRpbmcgdGhlIHBlci1jb250ZXh0IGFzcGVjdHMgb2YgdGhlIE9BIHN0cmVhbQogICogY29uZmln
dXJhdGlvbiBhY3Jvc3MgYWxsIGNvbnRleHRzLgpAQCAtMjQyNSw2ICsyNDU1LDE1IEBAIHN0YXRp
YyBpbnQgZ2VuMTJfZW5hYmxlX21ldHJpY19zZXQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0
cmVhbSkKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCisJLyoKKwkgKiBGb3IgR2VuMTIsIHBl
cmZvcm1hbmNlIGNvdW50ZXJzIGFyZSBjb250ZXh0CisJICogc2F2ZWQvcmVzdG9yZWQuIE9ubHkg
ZW5hYmxlIGl0IGZvciB0aGUgY29udGV4dCB0aGF0CisJICogcmVxdWVzdGVkIHRoaXMuCisJICov
CisJcmV0ID0gZ2VuMTJfZW1pdF9vYXJfY29uZmlnKHN0cmVhbS0+cGlubmVkX2N0eCwgb2FfY29u
ZmlnICE9IE5VTEwpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CisKIAlyZXR1cm4gZW1pdF9v
YV9jb25maWcoc3RyZWFtLCBvYV9jb250ZXh0KHN0cmVhbSkpOwogfQogCi0tIAoyLjIwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
