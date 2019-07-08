Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BB762C82
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 01:17:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2817A89FDE;
	Mon,  8 Jul 2019 23:17:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15DDB89FF6
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 23:17:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 16:16:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="316859660"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga004.jf.intel.com with ESMTP; 08 Jul 2019 16:16:57 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 16:16:27 -0700
Message-Id: <20190708231629.9296-24-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190708231629.9296-1-lucas.demarchi@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 23/25] drm/i915/tgl: skip setting
 PORT_CL_DW12_* on initialization
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

QWNjb3JkaW5nIHRvIHRoZSBzcGVjIHdoZW4gaW5pdGlhbGl6aW5nIHRoZSBkaXNwbGF5IGluIFRH
TCB3ZSBzaG91bGQgbm90CnNldCBQT1JUX0NMX0RXMTIgZm9yIHRoZSBBdXggY2hhbm5lbCBvZiB0
aGUgY29tYm8gUEhZcy4gV2Ugd2lsbCByZS11c2UgdGhlCnBvd2VyIHdlbGwgaG9va3MgZnJvbSBJ
Q0wgc28ganVzdCBjaGVjayBmb3IgSVNfVElHRVJMQUtFKCkgaW5zaWRlIGl0LgoKQ2M6IEltcmUg
RGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hp
IDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCAxMiArKysrKysrKy0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCA4IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwppbmRleCBiZTNkNGQxZWVj
ZTIuLmYwNDBhNzQzNDlkZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKQEAgLTQ1OCw4ICs0NTgsMTAgQEAgaWNsX2NvbWJvX3Bo
eV9hdXhfcG93ZXJfd2VsbF9lbmFibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAogCXZhbCA9IEk5MTVfUkVBRChyZWdzLT5kcml2ZXIpOwogCUk5MTVfV1JJVEUocmVncy0+ZHJp
dmVyLCB2YWwgfCBIU1dfUFdSX1dFTExfQ1RMX1JFUShwd19pZHgpKTsKIAotCXZhbCA9IEk5MTVf
UkVBRChJQ0xfUE9SVF9DTF9EVzEyKHBvcnQpKTsKLQlJOTE1X1dSSVRFKElDTF9QT1JUX0NMX0RX
MTIocG9ydCksIHZhbCB8IElDTF9MQU5FX0VOQUJMRV9BVVgpOworCWlmICghSVNfVElHRVJMQUtF
KGRldl9wcml2KSkgeworCQl2YWwgPSBJOTE1X1JFQUQoSUNMX1BPUlRfQ0xfRFcxMihwb3J0KSk7
CisJCUk5MTVfV1JJVEUoSUNMX1BPUlRfQ0xfRFcxMihwb3J0KSwgdmFsIHwgSUNMX0xBTkVfRU5B
QkxFX0FVWCk7CisJfQogCiAJaHN3X3dhaXRfZm9yX3Bvd2VyX3dlbGxfZW5hYmxlKGRldl9wcml2
LCBwb3dlcl93ZWxsKTsKIApAQCAtNDg2LDggKzQ4OCwxMCBAQCBpY2xfY29tYm9fcGh5X2F1eF9w
b3dlcl93ZWxsX2Rpc2FibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCWVu
dW0gcG9ydCBwb3J0ID0gSUNMX0FVWF9QV19UT19QT1JUKHB3X2lkeCk7CiAJdTMyIHZhbDsKIAot
CXZhbCA9IEk5MTVfUkVBRChJQ0xfUE9SVF9DTF9EVzEyKHBvcnQpKTsKLQlJOTE1X1dSSVRFKElD
TF9QT1JUX0NMX0RXMTIocG9ydCksIHZhbCAmIH5JQ0xfTEFORV9FTkFCTEVfQVVYKTsKKwlpZiAo
IUlTX1RJR0VSTEFLRShkZXZfcHJpdikpIHsKKwkJdmFsID0gSTkxNV9SRUFEKElDTF9QT1JUX0NM
X0RXMTIocG9ydCkpOworCQlJOTE1X1dSSVRFKElDTF9QT1JUX0NMX0RXMTIocG9ydCksIHZhbCAm
IH5JQ0xfTEFORV9FTkFCTEVfQVVYKTsKKwl9CiAKIAl2YWwgPSBJOTE1X1JFQUQocmVncy0+ZHJp
dmVyKTsKIAlJOTE1X1dSSVRFKHJlZ3MtPmRyaXZlciwgdmFsICYgfkhTV19QV1JfV0VMTF9DVExf
UkVRKHB3X2lkeCkpOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
