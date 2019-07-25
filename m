Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CA975B53
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 01:40:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F11156E83C;
	Thu, 25 Jul 2019 23:40:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AD606E839
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 23:40:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 16:40:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,308,1559545200"; d="scan'208";a="175426849"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.9.40])
 by orsmga006.jf.intel.com with ESMTP; 25 Jul 2019 16:40:09 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jul 2019 16:39:52 -0700
Message-Id: <20190725233954.15501-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915/tgl: skip setting PORT_CL_DW12_* on
 initialization
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
Q0wgc28gb25seSBzZXQgdGhpcyByZWdpc3RlciBvbiBnZW4gPCAxMi4KCnYyOiBHZW5lcmFsaXpl
IGNoZWNrIGZvciBnZW4gMTIgKHN1Z2dlc3RlZCBieSBKb3PDqSkKdjM6IFJlYmFzZSBhZnRlciBl
bnVtIHBoeSBpbnRyb2R1Y3Rpb24KCkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+
CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpSZXZpZXdlZC1i
eTogTWF0dCBBdHdvb2QgPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPgpMaW5rOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAxOTA3MTMwMTA5NDAuMTc3
MTEtMi1sdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDEyICsrKysrKysrLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCmluZGV4IDkzYTE0ODY4
NGM1My4uZGQyYTUwYjhiYTBhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwpAQCAtNDU4LDggKzQ1OCwxMCBAQCBpY2xfY29tYm9f
cGh5X2F1eF9wb3dlcl93ZWxsX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsCiAJdmFsID0gSTkxNV9SRUFEKHJlZ3MtPmRyaXZlcik7CiAJSTkxNV9XUklURShyZWdzLT5k
cml2ZXIsIHZhbCB8IEhTV19QV1JfV0VMTF9DVExfUkVRKHB3X2lkeCkpOwogCi0JdmFsID0gSTkx
NV9SRUFEKElDTF9QT1JUX0NMX0RXMTIocGh5KSk7Ci0JSTkxNV9XUklURShJQ0xfUE9SVF9DTF9E
VzEyKHBoeSksIHZhbCB8IElDTF9MQU5FX0VOQUJMRV9BVVgpOworCWlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpIDwgMTIpIHsKKwkJdmFsID0gSTkxNV9SRUFEKElDTF9QT1JUX0NMX0RXMTIocGh5KSk7
CisJCUk5MTVfV1JJVEUoSUNMX1BPUlRfQ0xfRFcxMihwaHkpLCB2YWwgfCBJQ0xfTEFORV9FTkFC
TEVfQVVYKTsKKwl9CiAKIAloc3dfd2FpdF9mb3JfcG93ZXJfd2VsbF9lbmFibGUoZGV2X3ByaXYs
IHBvd2VyX3dlbGwpOwogCkBAIC00ODcsOCArNDg5LDEwIEBAIGljbF9jb21ib19waHlfYXV4X3Bv
d2VyX3dlbGxfZGlzYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJZW51
bSBwaHkgcGh5ID0gSUNMX0FVWF9QV19UT19QSFkocHdfaWR4KTsKIAl1MzIgdmFsOwogCi0JdmFs
ID0gSTkxNV9SRUFEKElDTF9QT1JUX0NMX0RXMTIocGh5KSk7Ci0JSTkxNV9XUklURShJQ0xfUE9S
VF9DTF9EVzEyKHBoeSksIHZhbCAmIH5JQ0xfTEFORV9FTkFCTEVfQVVYKTsKKwlpZiAoSU5URUxf
R0VOKGRldl9wcml2KSA8IDEyKSB7CisJCXZhbCA9IEk5MTVfUkVBRChJQ0xfUE9SVF9DTF9EVzEy
KHBoeSkpOworCQlJOTE1X1dSSVRFKElDTF9QT1JUX0NMX0RXMTIocGh5KSwgdmFsICYgfklDTF9M
QU5FX0VOQUJMRV9BVVgpOworCX0KIAogCXZhbCA9IEk5MTVfUkVBRChyZWdzLT5kcml2ZXIpOwog
CUk5MTVfV1JJVEUocmVncy0+ZHJpdmVyLCB2YWwgJiB+SFNXX1BXUl9XRUxMX0NUTF9SRVEocHdf
aWR4KSk7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
