Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D6017C3EB
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 18:12:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFDAD6E49C;
	Fri,  6 Mar 2020 17:11:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E0C96E49C
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 17:11:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 09:11:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,522,1574150400"; d="scan'208";a="352784405"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga001.fm.intel.com with ESMTP; 06 Mar 2020 09:11:56 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Mar 2020 09:11:39 -0800
Message-Id: <20200306171139.1414649-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200305202435.1284242-1-matthew.d.roper@intel.com>
References: <20200305202435.1284242-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/tgl: Don't treat unslice registers
 as masked
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
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 "kernelci . org bot" <bot@kernelci.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIFVOU0xJQ0VfVU5JVF9MRVZFTF9DTEtHQVRFIGFuZCBVTlNMSUNFX1VOSVRfTEVWRUxfQ0xL
R0FURTIgcmVnaXN0ZXJzCnRoYXQgd2UgdXBkYXRlIGluIGEgZmV3IGVuZ2luZSB3b3JrYXJvdW5k
cyBhcmUgbm90IG1hc2tlZCByZWdpc3RlcnMKKGkuZS4sIHdlIGRvbid0IGhhdmUgdG8gd3JpdGUg
YSBtYXNrIGJpdCBpbiB0aGUgdG9wIDE2IGJpdHMgd2hlbgp1cGRhdGluZyBvbmUgb2YgdGhlIGxv
d2VyIDE2IGJpdHMpLiAgQXMgc3VjaCwgdGhlc2Ugd29ya2Fyb3VuZHMgc2hvdWxkCmJlIGFwcGxp
ZWQgdmlhIHdhX3dyaXRlX29yKCkgcmF0aGVyIHRoYW4gd2FfbWFza2VkX2VuKCkKCnYyOgogLSBS
ZWJhc2UKClJlcG9ydGVkLWJ5OiBOaWNrIERlc2F1bG5pZXJzIDxuZGVzYXVsbmllcnNAZ29vZ2xl
LmNvbT4KUmVwb3J0ZWQtYnk6IGtlcm5lbGNpLm9yZyBib3QgPGJvdEBrZXJuZWxjaS5vcmc+ClJl
ZmVyZW5jZXM6IGh0dHBzOi8vZ2l0aHViLmNvbS9DbGFuZ0J1aWx0TGludXgvbGludXgvaXNzdWVz
LzkxOApGaXhlczogNTAxNDhhMjVmODQxICgiZHJtL2k5MTUvdGdsOiBNb3ZlIGFuZCByZXN0cmlj
dCBXYV8xNDA4NjE1MDcyIikKRml4ZXM6IDM1NTFmZjkyODc0NCAoImRybS9pOTE1L2dlbjExOiBN
b3ZpbmcgV0FzIHRvIHJjc19lbmdpbmVfd2FfaW5pdCgpIikKQ2M6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxt
YXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpUZXN0ZWQtYnk6IE5pY2sgRGVzYXVsbmllcnMgPG5k
ZXNhdWxuaWVyc0Bnb29nbGUuY29tPgpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYyB8IDEyICsrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5z
ZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYwppbmRleCA3YmU3MWExYTU3MTkuLjAzZGQxN2NhMzlhNyAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC0xMzg3LDggKzEz
ODcsOCBAQCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiAJCXdhX21hc2tlZF9lbih3YWwsIEdFTjlfUk9X
X0NISUNLRU40LCBHRU4xMl9ESVNBQkxFX1RETF9QVVNIKTsKIAogCQkvKiBXYV8xNDA4NjE1MDcy
OnRnbCAqLwotCQl3YV9tYXNrZWRfZW4od2FsLCBVTlNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURTIs
Ci0JCQkgICAgIFZTVU5JVF9DTEtHQVRFX0RJU19UR0wpOworCQl3YV93cml0ZV9vcih3YWwsIFVO
U0xJQ0VfVU5JVF9MRVZFTF9DTEtHQVRFMiwKKwkJCSAgICBWU1VOSVRfQ0xLR0FURV9ESVNfVEdM
KTsKIAl9CiAKIAlpZiAoSVNfVElHRVJMQUtFKGk5MTUpKSB7CkBAIC0xNDcyLDEyICsxNDcyLDEy
IEBAIHJjc19lbmdpbmVfd2FfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0
cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKIAkJICogV2FfMTQwODYxNTA3MjppY2wsZWhsICAodnN1
bml0KQogCQkgKiBXYV8xNDA3NTk2Mjk0OmljbCxlaGwgIChoc3VuaXQpCiAJCSAqLwotCQl3YV9t
YXNrZWRfZW4od2FsLCBVTlNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURSwKLQkJCSAgICAgVlNVTklU
X0NMS0dBVEVfRElTIHwgSFNVTklUX0NMS0dBVEVfRElTKTsKKwkJd2Ffd3JpdGVfb3Iod2FsLCBV
TlNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURSwKKwkJCSAgICBWU1VOSVRfQ0xLR0FURV9ESVMgfCBI
U1VOSVRfQ0xLR0FURV9ESVMpOwogCiAJCS8qIFdhXzE0MDczNTI0Mjc6aWNsLGVobCAqLwotCQl3
YV9tYXNrZWRfZW4od2FsLCBVTlNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURTIsCi0JCQkgICAgIFBT
RFVOSVRfQ0xLR0FURV9ESVMpOworCQl3YV93cml0ZV9vcih3YWwsIFVOU0xJQ0VfVU5JVF9MRVZF
TF9DTEtHQVRFMiwKKwkJCSAgICBQU0RVTklUX0NMS0dBVEVfRElTKTsKIAl9CiAKIAlpZiAoSVNf
R0VOX1JBTkdFKGk5MTUsIDksIDEyKSkgewotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
