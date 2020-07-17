Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 258F72245B3
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 23:14:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E3266E221;
	Fri, 17 Jul 2020 21:14:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0F546E229
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 21:14:20 +0000 (UTC)
IronPort-SDR: Pc8niqx/EF7HUoYWO2rglq06NyzyfaTiSWxsMc90r6/Cddkv4OFjIxhV5nttW3aIR1cDSWQWtp
 Tcsljbyn3lzw==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="137788090"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="137788090"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 14:14:19 -0700
IronPort-SDR: WURayRDAVoqwpVBiYpRpqoDBqnWV6pyVtlH4h83NJxVmEqIbtM5fhaM46v0yMWVBjLhqfPsrqx
 0h8KPZqeD2Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="326952204"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 17 Jul 2020 14:14:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Jul 2020 00:14:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Jul 2020 00:13:36 +0300
Message-Id: <20200717211345.26851-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/20] drm/i915: Do degamma+gamma readout in
 bdw+ split gamma mode
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
YWQgb3V0IGJvdGggZ2FtbWEgYW5kIGRlZ2FtbWEgd2hlbiB1c25nIHRoZSBzcGxpdCBnYW1tYSBt
b2RlCm9uIGJkdysuIFdlIGNhbid0IHVzZSB0aGUgYXV0byBpbmNyZW1lbnQgbW9kZSB0byBpdGVy
YXRlIHRoZQpMVVRzIHNpbmNlIHdlIHdhbnQgdG8gcmVhZCBvdXQgbGVzcyBlbnRyaWVzIHRoYW4g
d2hhdCB3ZSBzdHVmZgppbnRvIHRoZSBzb2Z0d2FyZSBMVVQuCgpTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDUyICsrKysrKysrKysrKysrKysr
KysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA1MSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCmluZGV4IDU3NDJhYzFh
Zjg2Mi4uZjM0MjU3OTIyZTRkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NvbG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jb2xvci5jCkBAIC0xOTU5LDYgKzE5NTksNDYgQEAgc3RhdGljIHZvaWQgaWxrX3JlYWRfbHV0
cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAkJY3J0Y19zdGF0ZS0+aHcu
Z2FtbWFfbHV0ID0gaWxrX3JlYWRfbHV0XzEwKGNydGMpOwogfQogCisvKgorICogSVZCL0hTVyBC
c3BlYyAvIFBBTF9QUkVDX0lOREVYOgorICogIlJlc3RyaWN0aW9uIDogSW5kZXggYXV0byBpbmNy
ZW1lbnQgbW9kZSBpcyBub3QKKyAqICBzdXBwb3J0ZWQgYW5kIG11c3Qgbm90IGJlIGVuYWJsZWQu
IgorICovCitzdGF0aWMgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICppdmJfcmVhZF9sdXRfMTAo
c3RydWN0IGludGVsX2NydGMgKmNydGMsCisJCQkJCQkgdTMyIHByZWNfaW5kZXgpCit7CisJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7
CisJaW50IGksIGh3X2x1dF9zaXplID0gaXZiX2x1dF8xMF9zaXplKHByZWNfaW5kZXgpOworCWlu
dCBsdXRfc2l6ZSA9IElOVEVMX0lORk8oZGV2X3ByaXYpLT5jb2xvci5nYW1tYV9sdXRfc2l6ZTsK
KwllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7CisJc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9i
ICpibG9iOworCXN0cnVjdCBkcm1fY29sb3JfbHV0ICpsdXQ7CisKKwlibG9iID0gZHJtX3Byb3Bl
cnR5X2NyZWF0ZV9ibG9iKCZkZXZfcHJpdi0+ZHJtLAorCQkJCQlzaXplb2Yoc3RydWN0IGRybV9j
b2xvcl9sdXQpICogbHV0X3NpemUsCisJCQkJCU5VTEwpOworCWlmIChJU19FUlIoYmxvYikpCisJ
CXJldHVybiBOVUxMOworCisJbHV0ID0gYmxvYi0+ZGF0YTsKKworCWZvciAoaSA9IDA7IGkgPCBs
dXRfc2l6ZTsgaSsrKSB7CisJCS8qIFdlIGRpc2NhcmQgaGFsZiB0aGUgdXNlciBlbnRyaWVzIGlu
IHNwbGl0IGdhbW1hIG1vZGUgKi8KKwkJaW50IGluZGV4ID0gRElWX1JPVU5EX1VQKGkgKiAoaHdf
bHV0X3NpemUgLSAxKSwgbHV0X3NpemUgLSAxKTsKKwkJdTMyIHZhbDsKKworCQlpbnRlbF9kZV93
cml0ZShkZXZfcHJpdiwgUFJFQ19QQUxfSU5ERVgocGlwZSksCisJCQkgICAgICAgcHJlY19pbmRl
eCArIGluZGV4KTsKKwkJdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgUFJFQ19QQUxfREFU
QShwaXBlKSk7CisKKwkJaWxrX2x1dF8xMF9wYWNrKCZsdXRbaV0sIHZhbCk7CisJfQorCisJaW50
ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFBSRUNfUEFMX0lOREVYKHBpcGUpLCAwKTsKKworCXJldHVy
biBibG9iOworfQorCiAvKiBPbiBCRFcrIHRoZSBpbmRleCBhdXRvIGluY3JlbWVudCBtb2RlIGFj
dHVhbGx5IHdvcmtzICovCiBzdGF0aWMgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpiZHdfcmVh
ZF9sdXRfMTAoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJCQkJCQkgdTMyIHByZWNfaW5kZXgp
CkBAIC0yMDA2LDcgKzIwNDYsMTcgQEAgc3RhdGljIHZvaWQgYmR3X3JlYWRfbHV0cyhzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAkJKmJsb2IgPSBpbGtfcmVhZF9sdXRfOChj
cnRjKTsKIAkJYnJlYWs7CiAJY2FzZSBHQU1NQV9NT0RFX01PREVfU1BMSVQ6Ci0JCS8qIEZJWE1F
ICovCisJCS8qCisJCSAqIENhbid0IHVzZSBiZHdfcmVhZF9sdXRfMTAoKSB3aXRoIGl0cyBhdXRv
LWluY3JlbWVudAorCQkgKiBtb2RlIGhlcmUgc2luY2Ugd2Ugd2FudCB0byBnZW5lcmF0ZSAxMDI0
IGVudHJ5CisJCSAqIHNvZnR3YXJlIExVVHMgZnJvbSB0aGUgNTEyIGVudHJ5IGhhcmR3YXJlIExV
VHMuCisJCSAqLworCQljcnRjX3N0YXRlLT5ody5kZWdhbW1hX2x1dCA9CisJCQlpdmJfcmVhZF9s
dXRfMTAoY3J0YywgUEFMX1BSRUNfU1BMSVRfTU9ERSB8CisJCQkJCVBBTF9QUkVDX0lOREVYX1ZB
TFVFKDApKTsKKwkJY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0ID0KKwkJCWl2Yl9yZWFkX2x1dF8x
MChjcnRjLCBQQUxfUFJFQ19TUExJVF9NT0RFIHwKKwkJCQkJUEFMX1BSRUNfSU5ERVhfVkFMVUUo
NTEyKSk7CiAJCWJyZWFrOwogCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzEwQklUOgogCQkqYmxvYiA9
IGJkd19yZWFkX2x1dF8xMChjcnRjLCBQQUxfUFJFQ19JTkRFWF9WQUxVRSgwKSk7Ci0tIAoyLjI2
LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
