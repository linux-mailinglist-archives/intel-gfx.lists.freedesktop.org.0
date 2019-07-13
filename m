Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B6867766
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 03:09:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B39056E369;
	Sat, 13 Jul 2019 01:09:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA5DF6E369
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 01:09:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 18:09:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,484,1557212400"; d="scan'208";a="341850901"
Received: from dhoyan-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.252.197.100])
 by orsmga005.jf.intel.com with ESMTP; 12 Jul 2019 18:09:44 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 18:09:19 -0700
Message-Id: <20190713010940.17711-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190713010940.17711-1-lucas.demarchi@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/22] drm/i915/tgl: skip setting PORT_CL_DW12_*
 on initialization
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
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIHwgMTIgKysrKysr
KystLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9w
b3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2Vy
LmMKaW5kZXggOTNhMTQ4Njg0YzUzLi5kZDJhNTBiOGJhMGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCkBAIC00NTgsOCArNDU4
LDEwIEBAIGljbF9jb21ib19waHlfYXV4X3Bvd2VyX3dlbGxfZW5hYmxlKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKIAl2YWwgPSBJOTE1X1JFQUQocmVncy0+ZHJpdmVyKTsKIAlJ
OTE1X1dSSVRFKHJlZ3MtPmRyaXZlciwgdmFsIHwgSFNXX1BXUl9XRUxMX0NUTF9SRVEocHdfaWR4
KSk7CiAKLQl2YWwgPSBJOTE1X1JFQUQoSUNMX1BPUlRfQ0xfRFcxMihwaHkpKTsKLQlJOTE1X1dS
SVRFKElDTF9QT1JUX0NMX0RXMTIocGh5KSwgdmFsIHwgSUNMX0xBTkVfRU5BQkxFX0FVWCk7CisJ
aWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMikgeworCQl2YWwgPSBJOTE1X1JFQUQoSUNMX1BP
UlRfQ0xfRFcxMihwaHkpKTsKKwkJSTkxNV9XUklURShJQ0xfUE9SVF9DTF9EVzEyKHBoeSksIHZh
bCB8IElDTF9MQU5FX0VOQUJMRV9BVVgpOworCX0KIAogCWhzd193YWl0X2Zvcl9wb3dlcl93ZWxs
X2VuYWJsZShkZXZfcHJpdiwgcG93ZXJfd2VsbCk7CiAKQEAgLTQ4Nyw4ICs0ODksMTAgQEAgaWNs
X2NvbWJvX3BoeV9hdXhfcG93ZXJfd2VsbF9kaXNhYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKIAllbnVtIHBoeSBwaHkgPSBJQ0xfQVVYX1BXX1RPX1BIWShwd19pZHgpOwog
CXUzMiB2YWw7CiAKLQl2YWwgPSBJOTE1X1JFQUQoSUNMX1BPUlRfQ0xfRFcxMihwaHkpKTsKLQlJ
OTE1X1dSSVRFKElDTF9QT1JUX0NMX0RXMTIocGh5KSwgdmFsICYgfklDTF9MQU5FX0VOQUJMRV9B
VVgpOworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTIpIHsKKwkJdmFsID0gSTkxNV9SRUFE
KElDTF9QT1JUX0NMX0RXMTIocGh5KSk7CisJCUk5MTVfV1JJVEUoSUNMX1BPUlRfQ0xfRFcxMihw
aHkpLCB2YWwgJiB+SUNMX0xBTkVfRU5BQkxFX0FVWCk7CisJfQogCiAJdmFsID0gSTkxNV9SRUFE
KHJlZ3MtPmRyaXZlcik7CiAJSTkxNV9XUklURShyZWdzLT5kcml2ZXIsIHZhbCAmIH5IU1dfUFdS
X1dFTExfQ1RMX1JFUShwd19pZHgpKTsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
