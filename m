Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B788B7F31
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 18:32:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ED3C6F878;
	Thu, 19 Sep 2019 16:32:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BC946F878
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 16:32:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 09:32:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="181527543"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 19 Sep 2019 09:32:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2019 19:32:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 19:31:13 +0300
Message-Id: <20190919163113.17402-22-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
References: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel 21/21] sna: Fix compiler
 warnings due to DrawablePtr vs. PixmapPtr
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRl
YWwgd2l0aCB4c2VydmVyIGNvbW1pdCA4ZTNiMjZjZWFhODYgKCJNYWtlIFBpeG1hcERpcnR5VXBk
YXRlUmVjOjpzcmMKYSBEcmF3YWJsZVB0ciIpCgpOb3Qgc3VyZSB0aGlzIGlzIHN0aWxsIGNvcnJl
Y3QgdGhvdWdoLiBJcyB0aGlzIHN0dWZmIGxpbWl0ZWQgdG8KcGl4bWFwcyBhbnltb3JlPwoKU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KLS0tCiBzcmMvc25hL3NuYV9hY2NlbC5jIHwgMjAgKysrKysrKysrKysrKysrKysrKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvc3JjL3NuYS9zbmFfYWNjZWwuYyBiL3NyYy9zbmEvc25hX2FjY2VsLmMKaW5kZXggODI2NmU4
NmQ4ZmVhLi5mYTM4NmZmNmI5YTYgMTAwNjQ0Ci0tLSBhL3NyYy9zbmEvc25hX2FjY2VsLmMKKysr
IGIvc3JjL3NuYS9zbmFfYWNjZWwuYwpAQCAtMTc1MTgsNyArMTc1MTgsMTEgQEAgc3RhdGljIGJv
b2wgaGFzX29mZmxvYWRfc2xhdmVzKHN0cnVjdCBzbmEgKnNuYSkKIAlQaXhtYXBEaXJ0eVVwZGF0
ZVB0ciBkaXJ0eTsKIAogCXhvcmdfbGlzdF9mb3JfZWFjaF9lbnRyeShkaXJ0eSwgJnNjcmVlbi0+
cGl4bWFwX2RpcnR5X2xpc3QsIGVudCkgeworI2lmZGVmIEhBU19ESVJUWVRSQUNLSU5HX0RSQVdB
QkxFX1NSQworCQlhc3NlcnQoZGlydHktPnNyYyA9PSAmc25hLT5mcm9udC0+ZHJhd2FibGUpOwor
I2Vsc2UKIAkJYXNzZXJ0KGRpcnR5LT5zcmMgPT0gc25hLT5mcm9udCk7CisjZW5kaWYKIAkJaWYg
KFJlZ2lvbk5vdEVtcHR5KERhbWFnZVJlZ2lvbihkaXJ0eS0+ZGFtYWdlKSkpCiAJCQlyZXR1cm4g
dHJ1ZTsKIAl9CkBAIC0xNzY3OSw3ICsxNzY4MywxMSBAQCBzdGF0aWMgdm9pZCBzbmFfYWNjZWxf
cG9zdF9kYW1hZ2Uoc3RydWN0IHNuYSAqc25hKQogCQlpZiAoUmVnaW9uTmlsKGRhbWFnZSkpCiAJ
CQljb250aW51ZTsKIAotCQlzcmMgPSBkaXJ0eS0+c3JjOworI2lmZGVmIEhBU19ESVJUWVRSQUNL
SU5HX0RSQVdBQkxFX1NSQworCQlhc3NlcnQoZGlydHktPnNyYy0+dHlwZSA9PSBEUkFXQUJMRV9Q
SVhNQVApOworI2VuZGlmCisKKwkJc3JjID0gKFBpeG1hcFB0cilkaXJ0eS0+c3JjOwogCQlkc3Qg
PSBkaXJ0eS0+c2xhdmVfZHN0LT5tYXN0ZXJfcGl4bWFwOwogCiAJCXJlZ2lvbi5leHRlbnRzLngx
ID0gZGlydHktPng7CkBAIC0xNzkzMCw5ICsxNzkzOCwxNSBAQCBtaWdyYXRlX2RpcnR5X3RyYWNr
aW5nKFBpeG1hcFB0ciBvbGRfZnJvbnQsIFBpeG1hcFB0ciBuZXdfZnJvbnQpCiAJUGl4bWFwRGly
dHlVcGRhdGVQdHIgZGlydHksIHNhZmU7CiAKIAl4b3JnX2xpc3RfZm9yX2VhY2hfZW50cnlfc2Fm
ZShkaXJ0eSwgc2FmZSwgJnNjcmVlbi0+cGl4bWFwX2RpcnR5X2xpc3QsIGVudCkgeworI2lmZGVm
IEhBU19ESVJUWVRSQUNLSU5HX0RSQVdBQkxFX1NSQworCQlhc3NlcnQoZGlydHktPnNyYyA9PSAm
b2xkX2Zyb250LT5kcmF3YWJsZSk7CisJCWlmIChkaXJ0eS0+c3JjICE9ICZvbGRfZnJvbnQtPmRy
YXdhYmxlKQorCQkJY29udGludWU7CisjZWxzZQogCQlhc3NlcnQoZGlydHktPnNyYyA9PSBvbGRf
ZnJvbnQpOwogCQlpZiAoZGlydHktPnNyYyAhPSBvbGRfZnJvbnQpCiAJCQljb250aW51ZTsKKyNl
bmRpZgogCiAJCURhbWFnZVVucmVnaXN0ZXIoJmRpcnR5LT5zcmMtPmRyYXdhYmxlLCBkaXJ0eS0+
ZGFtYWdlKTsKIAkJRGFtYWdlRGVzdHJveShkaXJ0eS0+ZGFtYWdlKTsKQEAgLTE3OTQ3LDcgKzE3
OTYxLDExIEBAIG1pZ3JhdGVfZGlydHlfdHJhY2tpbmcoUGl4bWFwUHRyIG9sZF9mcm9udCwgUGl4
bWFwUHRyIG5ld19mcm9udCkKIAkJfQogCiAJCURhbWFnZVJlZ2lzdGVyKCZuZXdfZnJvbnQtPmRy
YXdhYmxlLCBkaXJ0eS0+ZGFtYWdlKTsKKyNpZmRlZiBIQVNfRElSVFlUUkFDS0lOR19EUkFXQUJM
RV9TUkMKKwkJZGlydHktPnNyYyA9ICZuZXdfZnJvbnQtPmRyYXdhYmxlOworI2Vsc2UKIAkJZGly
dHktPnNyYyA9IG5ld19mcm9udDsKKyNlbmRpZgogCX0KICNlbmRpZgogfQotLSAKMi4yMS4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
