Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C454AE24
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 00:50:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B34B26E271;
	Tue, 18 Jun 2019 22:50:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 350EC6E26F
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 22:50:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 15:50:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,390,1557212400"; d="scan'208";a="186267183"
Received: from josouza-mobl.jf.intel.com ([10.24.8.250])
 by fmsmga002.fm.intel.com with ESMTP; 18 Jun 2019 15:50:37 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jun 2019 15:50:34 -0700
Message-Id: <20190618225035.31816-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190618225035.31816-1-jose.souza@intel.com>
References: <20190618225035.31816-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/ehl: Remove unsupported cd clocks
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

RUhMIGRvIG5vdCBzdXBwb3J0IDY0OCBhbmQgNjUyLjggTUh6LgoKQlNwZWM6IDIwNTk4CkNjOiBD
bGludCBUYXlsb3IgPENsaW50b24uQS5UYXlsb3JAaW50ZWwuY29tPgpDYzogTWF0dCBSb3BlciA8
bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgMTcgKysrKysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCAxMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwppbmRleCBkNTYwZTI1ZDNmYjUuLjI2YzE3ZWNmMjA4
MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwpAQCAtMTc1
NCw3ICsxNzU0LDggQEAgc3RhdGljIHZvaWQgY25sX3Nhbml0aXplX2NkY2xrKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlkZXZfcHJpdi0+Y2RjbGsuaHcudmNvID0gLTE7CiB9
CiAKLXN0YXRpYyBpbnQgaWNsX2NhbGNfY2RjbGsoaW50IG1pbl9jZGNsaywgdW5zaWduZWQgaW50
IHJlZikKK3N0YXRpYyBpbnQgaWNsX2NhbGNfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LCBpbnQgbWluX2NkY2xrLAorCQkJICB1bnNpZ25lZCBpbnQgcmVmKQogewogCWNv
bnN0IGludCByYW5nZXNfMjRbXSA9IHsgMTgwMDAwLCAxOTIwMDAsIDMxMjAwMCwgNTUyMDAwLCA2
NDgwMDAgfTsKIAljb25zdCBpbnQgcmFuZ2VzXzE5XzM4W10gPSB7IDE3MjgwMCwgMTkyMDAwLCAz
MDcyMDAsIDU1NjgwMCwgNjUyODAwIH07CkBAIC0xNzc2LDYgKzE3NzcsMTIgQEAgc3RhdGljIGlu
dCBpY2xfY2FsY19jZGNsayhpbnQgbWluX2NkY2xrLCB1bnNpZ25lZCBpbnQgcmVmKQogCQlicmVh
azsKIAl9CiAKKwkvKgorCSAqIEVITCBkbyBub3Qgc3VwcG9ydCA2NDggYW5kIDY1Mi44IE1Ieiwg
c28ganVzdCBkZWNyZW1lbnQgdGhlIGxlbgorCSAqLworCWlmIChJU19FTEtIQVJUTEFLRShkZXZf
cHJpdikpCisJCWxlbi0tOworCiAJZm9yIChpID0gMDsgaSA8IGxlbjsgaSsrKSB7CiAJCWlmICht
aW5fY2RjbGsgPD0gcmFuZ2VzW2ldKQogCQkJcmV0dXJuIHJhbmdlc1tpXTsKQEAgLTE5NTQsNyAr
MTk2MSw4IEBAIHN0YXRpYyB2b2lkIGljbF9pbml0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIAlEUk1fREVCVUdfS01TKCJTYW5pdGl6aW5nIGNkY2xrIHByb2dyYW1t
ZWQgYnkgcHJlLW9zXG4iKTsKIAogCXNhbml0aXplZF9zdGF0ZS5yZWYgPSBkZXZfcHJpdi0+Y2Rj
bGsuaHcucmVmOwotCXNhbml0aXplZF9zdGF0ZS5jZGNsayA9IGljbF9jYWxjX2NkY2xrKDAsIHNh
bml0aXplZF9zdGF0ZS5yZWYpOworCXNhbml0aXplZF9zdGF0ZS5jZGNsayA9IGljbF9jYWxjX2Nk
Y2xrKGRldl9wcml2LCAwLAorCQkJCQkgICAgICAgc2FuaXRpemVkX3N0YXRlLnJlZik7CiAJc2Fu
aXRpemVkX3N0YXRlLnZjbyA9IGljbF9jYWxjX2NkY2xrX3BsbF92Y28oZGV2X3ByaXYsCiAJCQkJ
CQkgICAgIHNhbml0aXplZF9zdGF0ZS5jZGNsayk7CiAJc2FuaXRpemVkX3N0YXRlLnZvbHRhZ2Vf
bGV2ZWwgPQpAQCAtMjU1NCw3ICsyNTYyLDcgQEAgc3RhdGljIGludCBpY2xfbW9kZXNldF9jYWxj
X2NkY2xrKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCWlmIChtaW5fY2RjbGsg
PCAwKQogCQlyZXR1cm4gbWluX2NkY2xrOwogCi0JY2RjbGsgPSBpY2xfY2FsY19jZGNsayhtaW5f
Y2RjbGssIHJlZik7CisJY2RjbGsgPSBpY2xfY2FsY19jZGNsayhkZXZfcHJpdiwgbWluX2NkY2xr
LCByZWYpOwogCXZjbyA9IGljbF9jYWxjX2NkY2xrX3BsbF92Y28oZGV2X3ByaXYsIGNkY2xrKTsK
IAogCXN0YXRlLT5jZGNsay5sb2dpY2FsLnZjbyA9IHZjbzsKQEAgLTI1NjQsNyArMjU3Miw4IEBA
IHN0YXRpYyBpbnQgaWNsX21vZGVzZXRfY2FsY19jZGNsayhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSkKIAkJICAgIGNubF9jb21wdXRlX21pbl92b2x0YWdlX2xldmVsKHN0YXRlKSk7
CiAKIAlpZiAoIXN0YXRlLT5hY3RpdmVfY3J0Y3MpIHsKLQkJY2RjbGsgPSBpY2xfY2FsY19jZGNs
ayhzdGF0ZS0+Y2RjbGsuZm9yY2VfbWluX2NkY2xrLCByZWYpOworCQljZGNsayA9IGljbF9jYWxj
X2NkY2xrKGRldl9wcml2LCBzdGF0ZS0+Y2RjbGsuZm9yY2VfbWluX2NkY2xrLAorCQkJCSAgICAg
ICByZWYpOwogCQl2Y28gPSBpY2xfY2FsY19jZGNsa19wbGxfdmNvKGRldl9wcml2LCBjZGNsayk7
CiAKIAkJc3RhdGUtPmNkY2xrLmFjdHVhbC52Y28gPSB2Y287Ci0tIAoyLjIyLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
