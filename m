Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D1FBE67C
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 22:33:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51CE06FB60;
	Wed, 25 Sep 2019 20:33:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FB3A6FB52
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 20:33:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 13:33:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,549,1559545200"; d="scan'208";a="183375796"
Received: from jausmus-gentoo-dev6.jf.intel.com (HELO jausmus-gentoo-dev6)
 ([10.54.75.43])
 by orsmga008.jf.intel.com with SMTP; 25 Sep 2019 13:33:24 -0700
Received: by jausmus-gentoo-dev6 (sSMTP sendmail emulation);
 Wed, 25 Sep 2019 13:34:03 -0700
From: James Ausmus <james.ausmus@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Sep 2019 13:33:51 -0700
Message-Id: <20190925203352.9827-3-james.ausmus@intel.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190925203352.9827-1-james.ausmus@intel.com>
References: <20190925203352.9827-1-james.ausmus@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/tgl: Read SAGV block time from
 PCODE
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
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3RhcnRpbmcgZnJvbSBUR0wsIHdlIG5vdyBuZWVkIHRvIHJlYWQgdGhlIFNBR1YgYmxvY2sgdGlt
ZSB2aWEgYSBQQ09ERQptYWlsYm94LCByYXRoZXIgdGhhbiBoYXZpbmcgYSBzdGF0aWMgdmFsdWUu
CgpCU3BlYzogNDkzMjYKCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAaW50ZWwu
Y29tPgpDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5j
b20+CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogSmFtZXMgQXVzbXVzIDxqYW1lcy5hdXNtdXNAaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5jIHwgMjAgKysrKysrKysrKysrKysrLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgMTYg
aW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRl
eCBlNzUyZGU5NDcwYmQuLjg0YWU2NTUzNDg1YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBA
IC04ODY1LDYgKzg4NjUsNyBAQCBlbnVtIHsKICNkZWZpbmUgICAgIEdFTjlfU0FHVl9ESVNBQkxF
CQkJMHgwCiAjZGVmaW5lICAgICBHRU45X1NBR1ZfSVNfRElTQUJMRUQJCTB4MQogI2RlZmluZSAg
ICAgR0VOOV9TQUdWX0VOQUJMRQkJCTB4MworI2RlZmluZSBHRU4xMl9QQ09ERV9SRUFEX1NBR1Zf
QkxPQ0tfVElNRV9VUwkweDIzCiAjZGVmaW5lIEdFTjZfUENPREVfREFUQQkJCQlfTU1JTygweDEz
ODEyOCkKICNkZWZpbmUgICBHRU42X1BDT0RFX0ZSRVFfSUFfUkFUSU9fU0hJRlQJOAogI2RlZmlu
ZSAgIEdFTjZfUENPREVfRlJFUV9SSU5HX1JBVElPX1NISUZUCTE2CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cG0uYwppbmRleCA1YWQ3MmRjYjBmYWEuLmNhMmJlYzA5ZWRiNSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jCkBAIC0zNjY1LDE2ICszNjY1LDI2IEBAIGludGVsX2hhc19zYWd2KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHN0YXRpYyBpbnQKIGludGVsX2dldF9zYWd2X2Jsb2Nr
X3RpbWVfdXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewotCWludCBzYWd2
X2Jsb2NrX3RpbWVfdXMgPSAxMDAwOyAvKiBEZWZhdWx0IHRvIHVudXNhYmxlIGJsb2NrIHRpbWUg
Ki8KKwl1aW50IHZhbCA9IDA7CisJaW50IHJldCwgc2Fndl9ibG9ja190aW1lX3VzID0gMTAwMDsg
LyogRGVmYXVsdCB0byB1bnVzYWJsZSBibG9jayB0aW1lICovCiAKLQlpZiAoSVNfR0VOKGRldl9w
cml2LCAxMSkpCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKKwkJcmV0ID0gc2Fu
ZHlicmlkZ2VfcGNvZGVfcmVhZChkZXZfcHJpdiwKKwkJCQkJICAgICBHRU4xMl9QQ09ERV9SRUFE
X1NBR1ZfQkxPQ0tfVElNRV9VUywKKwkJCQkJICAgICAmdmFsLCBOVUxMKTsKKwkJaWYgKCFyZXQp
CisJCQlzYWd2X2Jsb2NrX3RpbWVfdXMgPSB2YWw7CisJCWVsc2UKKwkJCURSTV9ERUJVR19EUklW
RVIoIkNvdWxkbid0IHJlYWQgU0FHViBibG9jayB0aW1lIVxuIik7CisJfSBlbHNlIGlmIChJU19H
RU4oZGV2X3ByaXYsIDExKSkgewogCQlzYWd2X2Jsb2NrX3RpbWVfdXMgPSAxMDsKLQllbHNlIGlm
IChJU19HRU4oZGV2X3ByaXYsIDEwKSkKKwl9IGVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgMTAp
KSB7CiAJCXNhZ3ZfYmxvY2tfdGltZV91cyA9IDIwOwotCWVsc2UgaWYgKElTX0dFTihkZXZfcHJp
diwgOSkpCisJfSBlbHNlIGlmIChJU19HRU4oZGV2X3ByaXYsIDkpKSB7CiAJCXNhZ3ZfYmxvY2tf
dGltZV91cyA9IDMwOwotCWVsc2UKKwl9IGVsc2UgewogCQlNSVNTSU5HX0NBU0UoSU5URUxfR0VO
KGRldl9wcml2KSk7CisJfQogCiAJcmV0dXJuIHNhZ3ZfYmxvY2tfdGltZV91czsKIH0KLS0gCjIu
MjIuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
