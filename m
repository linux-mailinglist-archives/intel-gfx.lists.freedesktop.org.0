Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0747AB64B9
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 15:37:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDD6C6F387;
	Wed, 18 Sep 2019 13:37:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8797C6F387
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 13:37:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 06:37:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,520,1559545200"; d="scan'208";a="189265631"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by orsmga003.jf.intel.com with ESMTP; 18 Sep 2019 06:36:59 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Sep 2019 16:34:45 +0300
Message-Id: <20190918133445.14736-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v3] drm/i915: Add TigerLake bandwidth checking
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
Cc: ville.syrjala@intel.com, martin.peres@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkZWQgYmFuZHdpZHRoIGNhbGN1bGF0aW9uIGFsZ29yaXRobSBhbmQgY2hlY2tzLApzaW1pbGFy
IHdheSBhcyBpdCB3YXMgZG9uZSBmb3IgSUNMLCBzb21lIGNvbnN0YW50cwp3ZXJlIGNvcnJlY3Rl
ZCBhY2NvcmRpbmcgdG8gQlNwZWMuCgpTaWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5
IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KCnYyOiBTdGFydCB1c2luZyBzYW1lIGlj
bF9nZXRfYndfaW5mbyBmdW5jdGlvbiB0byBhdm9pZAogICAgY29kZSBkdXBsaWNhdGlvbi4gTW92
ZWQgbXBhZ2VzaXplIHRvIG1lbW9yeSBpbmZvCiAgICByZWxhdGVkIHN0cnVjdHVyZSBhcyBpdCBp
cyBub3cgZGVwZW5kYW50IG9uIG1lbW9yeSB0eXBlLgogICAgRml4ZWQgcWkudF9ibCBmaWVsZCBh
c3NpZ25tZW50LgoKdjM6IFJlbW92ZWQgbXBhZ2VzaXplIGFzIHVudXNlZC4gRHVwbGljYXRlIGNv
ZGUgYW5kIHJlZHVuZGFudCBibGFua2xpbmUKICAgIGZpeGVkLgoKRml4ZXM6IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTYwMAotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyB8IDI1ICsrKysrKysrKysrKysrKysrKy0tLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYwppbmRleCA2ODg4NThlYmU0ZDAuLjcw
ODBlYzczZDMzYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9idy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYwpAQCAt
NTYsNyArNTYsMTEgQEAgc3RhdGljIGludCBpY2xfcGNvZGVfcmVhZF9tZW1fZ2xvYmFsX2luZm8o
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCXFpLT5udW1fY2hhbm5lbHMgPSAo
dmFsICYgMHhmMCkgPj4gNDsKIAlxaS0+bnVtX3BvaW50cyA9ICh2YWwgJiAweGYwMCkgPj4gODsK
IAotCXFpLT50X2JsID0gcWktPmRyYW1fdHlwZSA9PSBJTlRFTF9EUkFNX0REUjQgPyA0IDogODsK
KwlpZiAoSVNfR0VOKGRldl9wcml2LCAxMSkpIHsKKwkJcWktPnRfYmwgPSBxaS0+ZHJhbV90eXBl
ID09IElOVEVMX0RSQU1fRERSNCA/IDQgOiA4OworCX0gZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2
LCAxMikpIHsKKwkJcWktPnRfYmwgPSBxaS0+ZHJhbV90eXBlID09IElOVEVMX0RSQU1fRERSNCA/
IDQgOiAxNjsKKwl9CiAKIAlyZXR1cm4gMDsKIH0KQEAgLTEzMiwyMCArMTM2LDI1IEBAIHN0YXRp
YyBpbnQgaWNsX3NhZ3ZfbWF4X2RjbGsoY29uc3Qgc3RydWN0IGludGVsX3Fndl9pbmZvICpxaSkK
IH0KIAogc3RydWN0IGludGVsX3NhX2luZm8gewotCXU4IGRlYnVyc3QsIG1wYWdlc2l6ZSwgZGVw
cm9nYndsaW1pdCwgZGlzcGxheXJ0aWRzOworCXUxNiBkaXNwbGF5cnRpZHM7CisJdTggZGVidXJz
dCwgZGVwcm9nYndsaW1pdDsKIH07CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfc2FfaW5m
byBpY2xfc2FfaW5mbyA9IHsKIAkuZGVidXJzdCA9IDgsCi0JLm1wYWdlc2l6ZSA9IDE2LAogCS5k
ZXByb2did2xpbWl0ID0gMjUsIC8qIEdCL3MgKi8KIAkuZGlzcGxheXJ0aWRzID0gMTI4LAogfTsK
IAotc3RhdGljIGludCBpY2xfZ2V0X2J3X2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQorc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9zYV9pbmZvIHRnbF9zYV9pbmZvID0g
eworCS5kZWJ1cnN0ID0gMTYsCisJLmRlcHJvZ2J3bGltaXQgPSAzNCwgLyogR0IvcyAqLworCS5k
aXNwbGF5cnRpZHMgPSAyNTYsCit9OworCitzdGF0aWMgaW50IGljbF9nZXRfYndfaW5mbyhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGNvbnN0IHN0cnVjdCBpbnRlbF9zYV9pbmZv
ICpzYSkKIHsKIAlzdHJ1Y3QgaW50ZWxfcWd2X2luZm8gcWkgPSB7fTsKLQljb25zdCBzdHJ1Y3Qg
aW50ZWxfc2FfaW5mbyAqc2EgPSAmaWNsX3NhX2luZm87CiAJYm9vbCBpc195X3RpbGUgPSB0cnVl
OyAvKiBhc3N1bWUgeSB0aWxlIG1heSBiZSB1c2VkICovCiAJaW50IG51bV9jaGFubmVsczsKIAlp
bnQgZGVpbnRlcmxlYXZlOwpAQCAtMjM0LDEzICsyNDMsMTUgQEAgc3RhdGljIHVuc2lnbmVkIGlu
dCBpY2xfbWF4X2J3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIHZvaWQgaW50
ZWxfYndfaW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJaWYg
KElTX0dFTihkZXZfcHJpdiwgMTEpKQotCQlpY2xfZ2V0X2J3X2luZm8oZGV2X3ByaXYpOworCQlp
Y2xfZ2V0X2J3X2luZm8oZGV2X3ByaXYsICZpY2xfc2FfaW5mbyk7CisJZWxzZSBpZiAoSVNfR0VO
KGRldl9wcml2LCAxMikpCisJCWljbF9nZXRfYndfaW5mbyhkZXZfcHJpdiwgJnRnbF9zYV9pbmZv
KTsKIH0KIAogc3RhdGljIHVuc2lnbmVkIGludCBpbnRlbF9tYXhfZGF0YV9yYXRlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCQkJaW50IG51bV9wbGFuZXMpCiB7Ci0JaWYg
KElTX0dFTihkZXZfcHJpdiwgMTEpKQorCWlmIChJU19HRU4oZGV2X3ByaXYsIDExKSB8fCBJU19H
RU4oZGV2X3ByaXYsIDEyKSkKIAkJLyoKIAkJICogRklYTUUgd2l0aCBTQUdWIGRpc2FibGVkIG1h
eWJlIHdlIGNhbiBhc3N1bWUKIAkJICogcG9pbnQgMSB3aWxsIGFsd2F5cyBiZSB1c2VkPyBTZWVt
cyB0byBtYXRjaAotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
