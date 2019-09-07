Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 416E7AC3AF
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 02:22:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E19B6E09F;
	Sat,  7 Sep 2019 00:22:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D5F16E09F
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Sep 2019 00:22:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 17:22:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,474,1559545200"; d="scan'208";a="177796070"
Received: from mdroper-desk.fm.intel.com ([10.105.128.12])
 by orsmga008.jf.intel.com with ESMTP; 06 Sep 2019 17:22:10 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Sep 2019 17:21:42 -0700
Message-Id: <20190907002143.22591-8-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190907002143.22591-1-matthew.d.roper@intel.com>
References: <20190907002143.22591-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/8] drm/i915: Enhance cdclk sanitization
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

V2hlbiByZWFkaW5nIG91dCB0aGUgQklPUy1wcm9ncmFtbWVkIGNkY2xrIHN0YXRlLCBsZXQncyBt
YWtlIHN1cmUgdGhhdAp0aGUgY2RjbGsgdmFsdWUgaXMgb24gdGhlIHZhbGlkIGxpc3QgZm9yIHRo
ZSBwbGF0Zm9ybSwgZW5zdXJlIHRoYXQgdGhlClZDTyBtYXRjaGVzIHRoZSBjZGNsaywgYW5kIGVu
c3VyZSB0aGF0IHRoZSBDRDJYIGRpdmlkZXIgd2FzIHNldApwcm9wZXJseS4KCkNjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBN
YXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyB8IDM0ICsrKysrKysrKysrKysrKysrKysrLS0K
IDEgZmlsZSBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwppbmRleCBhNjY5NjY5N2EwOWYu
LjM1NjQ5NTU5MWNmOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2Rj
bGsuYwpAQCAtMTYwNyw2ICsxNjA3LDcgQEAgc3RhdGljIHZvaWQgYnh0X3NldF9jZGNsayhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiBzdGF0aWMgdm9pZCBieHRfc2FuaXRpemVf
Y2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCXUzMiBjZGN0bCwg
ZXhwZWN0ZWQ7CisJaW50IGNkY2xrLCB2Y287CiAKIAlpbnRlbF91cGRhdGVfY2RjbGsoZGV2X3By
aXYpOwogCWludGVsX2R1bXBfY2RjbGtfc3RhdGUoJmRldl9wcml2LT5jZGNsay5odywgIkN1cnJl
bnQgQ0RDTEsiKTsKQEAgLTE2MjksOCArMTYzMCwzNyBAQCBzdGF0aWMgdm9pZCBieHRfc2FuaXRp
emVfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCSAqLwogCWNkY3Rs
ICY9IH5CWFRfQ0RDTEtfQ0QyWF9QSVBFX05PTkU7CiAKLQlleHBlY3RlZCA9IChjZGN0bCAmIEJY
VF9DRENMS19DRDJYX0RJVl9TRUxfTUFTSykgfAotCQlza2xfY2RjbGtfZGVjaW1hbChkZXZfcHJp
di0+Y2RjbGsuaHcuY2RjbGspOworCS8qIE1ha2Ugc3VyZSB0aGlzIGlzIGEgbGVnYWwgY2RjbGsg
dmFsdWUgZm9yIHRoZSBwbGF0Zm9ybSAqLworCWNkY2xrID0gY2FsY19jZGNsayhkZXZfcHJpdiwg
ZGV2X3ByaXYtPmNkY2xrLmh3LmNkY2xrKTsKKwlpZiAoY2RjbGsgIT0gZGV2X3ByaXYtPmNkY2xr
Lmh3LmNkY2xrKQorCQlnb3RvIHNhbml0aXplOworCisJLyogTWFrZSBzdXJlIHRoZSBWQ08gaXMg
Y29ycmVjdCBmb3IgdGhlIGNkY2xrICovCisJdmNvID0gY2FsY19jZGNsa19wbGxfdmNvKGRldl9w
cml2LCBjZGNsayk7CisJaWYgKHZjbyAhPSBkZXZfcHJpdi0+Y2RjbGsuaHcudmNvKQorCQlnb3Rv
IHNhbml0aXplOworCisJZXhwZWN0ZWQgPSBza2xfY2RjbGtfZGVjaW1hbChjZGNsayk7CisKKwkv
KiBGaWd1cmUgb3V0IHdoYXQgQ0QyWCBkaXZpZGVyIHdlIHNob3VsZCBiZSB1c2luZyBmb3IgdGhp
cyBjZGNsayAqLworCXN3aXRjaCAoRElWX1JPVU5EX0NMT1NFU1QoZGV2X3ByaXYtPmNkY2xrLmh3
LnZjbywKKwkJCQkgIGRldl9wcml2LT5jZGNsay5ody5jZGNsaykpIHsKKwljYXNlIDI6CisJCWV4
cGVjdGVkIHw9IEJYVF9DRENMS19DRDJYX0RJVl9TRUxfMTsKKwkJYnJlYWs7CisJY2FzZSAzOgor
CQlleHBlY3RlZCB8PSBCWFRfQ0RDTEtfQ0QyWF9ESVZfU0VMXzFfNTsKKwkJYnJlYWs7CisJY2Fz
ZSA0OgorCQlleHBlY3RlZCB8PSBCWFRfQ0RDTEtfQ0QyWF9ESVZfU0VMXzI7CisJCWJyZWFrOwor
CWNhc2UgODoKKwkJZXhwZWN0ZWQgfD0gQlhUX0NEQ0xLX0NEMlhfRElWX1NFTF80OworCQlicmVh
azsKKwlkZWZhdWx0OgorCQlnb3RvIHNhbml0aXplOworCX0KKwogCS8qCiAJICogRGlzYWJsZSBT
U0EgUHJlY2hhcmdlIHdoZW4gQ0QgY2xvY2sgZnJlcXVlbmN5IDwgNTAwIE1IeiwKIAkgKiBlbmFi
bGUgb3RoZXJ3aXNlLgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
