Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D4064F9A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 02:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6631C89C21;
	Thu, 11 Jul 2019 00:38:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC24C89C13
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 00:38:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 17:38:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="193232362"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2019 17:38:49 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 17:38:20 -0700
Message-Id: <20190711003833.17420-8-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711003833.17420-1-lucas.demarchi@intel.com>
References: <20190711003833.17420-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 08/21] drm/i915/tgl: Add power well support
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

RnJvbTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgoKVGhlIHBhdGNoIGFkZHMgdGhl
IG5ldyBwb3dlciB3ZWxscyBpbnRyb2R1Y2VkIGJ5IFRHTCAoR0VOIDEyKSBhbmQKbWFwcyB0aGVz
ZSB0byBleGlzdGluZy9uZXcgcG93ZXIgZG9tYWlucy4gVGhlIGNoYW5nZXMgZm9yIEdFTiAxMiB3
cnQKdG8gR0VOIDExIGFyZSB0aGUgZm9sbG93aW5nOgoKLSBUcmFuc2NvZGVyI0VEUCByZW1vdmVk
IGZyb20gcG93ZXIgd2VsbCMxIChUcmFuc2NvZGVyI0EgdXNlZCBpbgogIGxvdy1wb3dlciBtb2Rl
IGluc3RlYWQpCi0gVHJhbnNjb2RlciNBIGlzIG5vdyBiYWNrZWQgYnkgcG93ZXIgd2VsbCMxIGlu
c3RlYWQgb2YgcG93ZXIgd2VsbCMzCi0gVGhlIERESSNCL0MgY29tYm8gUEhZIHBvcnRzIGFyZSBu
b3cgYmFja2VkIGJ5IHBvd2VyIHdlbGwjMSBpbnN0ZWFkIG9mCiAgcG93ZXIgd2VsbCMzCi0gTmV3
IHBvd2VyIHdlbGwjNSBhZGRlZCBmb3IgcGlwZSNEIGZ1bmN0aW9uYWxpdHkgKFRPRE8pCi0gMiBh
ZGRpdGlvbmFsIFRDIHBvcnRzIChUQyM1LTYpIGJhY2tlZCBieSBwb3dlciB3ZWxsIzMsIDIgcG9y
dAogIHNwZWNpZmljIElPIHBvd2VyIHdlbGxzIChvbmx5IGZvciB0aGUgbm9uLVRCVCBtb2Rlcykg
YW5kIDQgcG9ydAogIHNwZWNpZmljIEFVWCBwb3dlciB3ZWxscyAoMi0yIGZvciBUQlQgdnMuIG5v
bi1UQlQgbW9kZXMpCi0gUG93ZXIgd2VsbCMyIGJhY2tzIG5vdyBWRFNDL2pvaW5pbmcgZm9yIHBp
cGUjQSBpbnN0ZWFkIG9mIFZEU0MgZm9yCiAgZURQIGFuZCBNSVBJIERTSSAoVE9ETykKCk9uIFRH
TCBQb3J0IERESSNDIGNoYW5nZWQgdG8gYmUgYSBjb21ibyBQSFkgKG5hdGl2ZSBEUC9IRE1JKSBh
bmQKQlNwZWMgaGFzIHJlbmFtZWQgcG9ydHMgRERJI0QtRiB0byBUQyM0LTYgcmVzcGVjdGl2ZWx5
LiBUaHVzIG9uIElDTCB3ZQpoYXZlIHRoZSBmb2xsb3dpbmcgbmFtaW5nIGZvciBwb3J0czoKCi0g
Q29tYm8gUEhZcyAobmF0aXZlIERQL0hETUkpOgogIERESSNBLUIKLSBUQlQvbm9uLVRCVCAoVEMg
YWx0bW9kZSwgbmF0aXZlIERQL0hETUkpIFBIWXM6CiAgRERJI0MtRgoKU3RhcnRpbmcgZnJvbSBH
RU4gMTIgd2UgaGF2ZSB0aGUgZm9sbG93aW5nIG5hbWluZyBmb3IgcG9ydHM6Ci0gQ29tYm8gUEhZ
cyAobmF0aXZlIERQL0hETUkpOgogIERESSNBLUMKLSBUQlQvbm9uLVRCVCAoVEMgYWx0bW9kZSwg
bmF0aXZlIERQL0hETUkpIFBIWXM6CiAgRERJIFRDIzEtNgoKVG8gc2F2ZSBzb21lIHNwYWNlIGlu
IHRoZSBwb3dlciBkb21haW4gZW51bSB0aGUgcG93ZXIgZG9tYWluIG5hbWluZyBpbgp0aGUgZHJp
dmVyIHJlZmxlY3RzIHRoZSBhYm92ZSBjaGFuZ2UsIHRoYXQgaXMgcG93ZXIgZG9tYWlucyBUQyMx
LTMgYXJlCmFkZGVkIGFzIGFsaWFzZXMgZm9yIERESSNELUYgYW5kIG5ldyBwb3dlciBkb21haW5z
IGFyZSByZXNlcnZlZCBmb3IKVEMjNC02LgoKdjIgKEx1Y2FzKToKICAtIFNlcGFyYXRlIG91dCB0
aGUgYml0cyBhbmQgZGVmaW5pdGlvbnMgZm9yIFRHTCBmcm9tIHRoZSBJQ0wgb25lcy4KICAgIEZp
eCB1c2Ugb2YgVFJBTlNDT0RFUl9FRFBfVkRTQywgdGhhdCBpcyBub3cgdGhlIGNvcnJlY3QgZGVm
aW5lIHNpbmNlCiAgICB3ZSBkb24ndCBkZWZpbmUgVFJBTlNDT0RFUl9BX1ZEU0MgcG93ZXIgZG9t
YWluIHRvIHNwYXJlIGEgb25lIGJpdCBpbgogICAgdGhlIGJpdG1hc2sgKHN1Z2dlc3RlZCBieSBW
aWxsZSkKdjMgKEx1Y2FzKToKICAtIEZpeCBtaXNzaW5nIHNxdWFzaGVzIG9uIHYyCiAgLSBSZWJh
c2Ugb24gcmVuYW1lZCBUUkFOU0NPREVSX0VEUF9WRFNDCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hh
LnNyaXZhdHNhQGludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVs
LmNvbT4KQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpSZXZpZXdlZC1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KTGluazog
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTkwNzA4MjMx
NjI5LjkyOTYtMTAtbHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tCi0tLQogLi4uL2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jICAgIHwgNDc0ICsrKysrKysrKysrKysrKysrLQog
Li4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oICAgIHwgIDI2ICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgICAgICAgfCAgIDMgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8ICAyMCArLQogNCBm
aWxlcyBjaGFuZ2VkLCA1MDYgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwppbmRl
eCA0ZjRjMzVhNWVmMmEuLmZlYWQwNzJhZmQ5NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKQEAgLTIzLDggKzIzLDExIEBAIGJv
b2wgaW50ZWxfZGlzcGxheV9wb3dlcl93ZWxsX2lzX2VuYWJsZWQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAogCQkJCQkgZW51bSBpOTE1X3Bvd2VyX3dlbGxfaWQgcG93ZXJfd2Vs
bF9pZCk7CiAKIGNvbnN0IGNoYXIgKgotaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW5fc3RyKGVu
dW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gZG9tYWluKQoraW50ZWxfZGlzcGxheV9wb3dl
cl9kb21haW5fc3RyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAorCQkJICAgICAgIGVu
dW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gZG9tYWluKQogeworCWJvb2wgZGRpX3RjX3Bv
cnRzID0gSVNfR0VOKGk5MTUsIDEyKTsKKwogCXN3aXRjaCAoZG9tYWluKSB7CiAJY2FzZSBQT1dF
Ul9ET01BSU5fRElTUExBWV9DT1JFOgogCQlyZXR1cm4gIkRJU1BMQVlfQ09SRSI7CkBAIC02MSwx
MSArNjQsMjMgQEAgaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW5fc3RyKGVudW0gaW50ZWxfZGlz
cGxheV9wb3dlcl9kb21haW4gZG9tYWluKQogCWNhc2UgUE9XRVJfRE9NQUlOX1BPUlRfRERJX0Nf
TEFORVM6CiAJCXJldHVybiAiUE9SVF9ERElfQ19MQU5FUyI7CiAJY2FzZSBQT1dFUl9ET01BSU5f
UE9SVF9ERElfRF9MQU5FUzoKLQkJcmV0dXJuICJQT1JUX0RESV9EX0xBTkVTIjsKKwkJQlVJTERf
QlVHX09OKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9EX0xBTkVTICE9CisJCQkgICAgIFBPV0VSX0RP
TUFJTl9QT1JUX0RESV9UQzFfTEFORVMpOworCQlyZXR1cm4gZGRpX3RjX3BvcnRzID8gIlBPUlRf
RERJX1RDMV9MQU5FUyIgOiAiUE9SVF9ERElfRF9MQU5FUyI7CiAJY2FzZSBQT1dFUl9ET01BSU5f
UE9SVF9ERElfRV9MQU5FUzoKLQkJcmV0dXJuICJQT1JUX0RESV9FX0xBTkVTIjsKKwkJQlVJTERf
QlVHX09OKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9FX0xBTkVTICE9CisJCQkgICAgIFBPV0VSX0RP
TUFJTl9QT1JUX0RESV9UQzJfTEFORVMpOworCQlyZXR1cm4gZGRpX3RjX3BvcnRzID8gIlBPUlRf
RERJX1RDMl9MQU5FUyIgOiAiUE9SVF9ERElfRV9MQU5FUyI7CiAJY2FzZSBQT1dFUl9ET01BSU5f
UE9SVF9ERElfRl9MQU5FUzoKLQkJcmV0dXJuICJQT1JUX0RESV9GX0xBTkVTIjsKKwkJQlVJTERf
QlVHX09OKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9GX0xBTkVTICE9CisJCQkgICAgIFBPV0VSX0RP
TUFJTl9QT1JUX0RESV9UQzNfTEFORVMpOworCQlyZXR1cm4gZGRpX3RjX3BvcnRzID8gIlBPUlRf
RERJX1RDM19MQU5FUyIgOiAiUE9SVF9ERElfRl9MQU5FUyI7CisJY2FzZSBQT1dFUl9ET01BSU5f
UE9SVF9ERElfVEM0X0xBTkVTOgorCQlyZXR1cm4gIlBPUlRfRERJX1RDNF9MQU5FUyI7CisJY2Fz
ZSBQT1dFUl9ET01BSU5fUE9SVF9ERElfVEM1X0xBTkVTOgorCQlyZXR1cm4gIlBPUlRfRERJX1RD
NV9MQU5FUyI7CisJY2FzZSBQT1dFUl9ET01BSU5fUE9SVF9ERElfVEM2X0xBTkVTOgorCQlyZXR1
cm4gIlBPUlRfRERJX1RDNl9MQU5FUyI7CiAJY2FzZSBQT1dFUl9ET01BSU5fUE9SVF9ERElfQV9J
TzoKIAkJcmV0dXJuICJQT1JUX0RESV9BX0lPIjsKIAljYXNlIFBPV0VSX0RPTUFJTl9QT1JUX0RE
SV9CX0lPOgpAQCAtNzMsMTEgKzg4LDIzIEBAIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluX3N0
cihlbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluIGRvbWFpbikKIAljYXNlIFBPV0VSX0RP
TUFJTl9QT1JUX0RESV9DX0lPOgogCQlyZXR1cm4gIlBPUlRfRERJX0NfSU8iOwogCWNhc2UgUE9X
RVJfRE9NQUlOX1BPUlRfRERJX0RfSU86Ci0JCXJldHVybiAiUE9SVF9ERElfRF9JTyI7CisJCUJV
SUxEX0JVR19PTihQT1dFUl9ET01BSU5fUE9SVF9ERElfRF9JTyAhPQorCQkJICAgICBQT1dFUl9E
T01BSU5fUE9SVF9ERElfVEMxX0lPKTsKKwkJcmV0dXJuIGRkaV90Y19wb3J0cyA/ICJQT1JUX0RE
SV9UQzFfSU8iIDogIlBPUlRfRERJX0RfSU8iOwogCWNhc2UgUE9XRVJfRE9NQUlOX1BPUlRfRERJ
X0VfSU86Ci0JCXJldHVybiAiUE9SVF9ERElfRV9JTyI7CisJCUJVSUxEX0JVR19PTihQT1dFUl9E
T01BSU5fUE9SVF9ERElfRV9JTyAhPQorCQkJICAgICBQT1dFUl9ET01BSU5fUE9SVF9ERElfVEMy
X0lPKTsKKwkJcmV0dXJuIGRkaV90Y19wb3J0cyA/ICJQT1JUX0RESV9UQzJfSU8iIDogIlBPUlRf
RERJX0VfSU8iOwogCWNhc2UgUE9XRVJfRE9NQUlOX1BPUlRfRERJX0ZfSU86Ci0JCXJldHVybiAi
UE9SVF9ERElfRl9JTyI7CisJCUJVSUxEX0JVR19PTihQT1dFUl9ET01BSU5fUE9SVF9ERElfRl9J
TyAhPQorCQkJICAgICBQT1dFUl9ET01BSU5fUE9SVF9ERElfVEMzX0lPKTsKKwkJcmV0dXJuIGRk
aV90Y19wb3J0cyA/ICJQT1JUX0RESV9UQzNfSU8iIDogIlBPUlRfRERJX0ZfSU8iOworCWNhc2Ug
UE9XRVJfRE9NQUlOX1BPUlRfRERJX1RDNF9JTzoKKwkJcmV0dXJuICJQT1JUX0RESV9UQzRfSU8i
OworCWNhc2UgUE9XRVJfRE9NQUlOX1BPUlRfRERJX1RDNV9JTzoKKwkJcmV0dXJuICJQT1JUX0RE
SV9UQzVfSU8iOworCWNhc2UgUE9XRVJfRE9NQUlOX1BPUlRfRERJX1RDNl9JTzoKKwkJcmV0dXJu
ICJQT1JUX0RESV9UQzZfSU8iOwogCWNhc2UgUE9XRVJfRE9NQUlOX1BPUlRfRFNJOgogCQlyZXR1
cm4gIlBPUlRfRFNJIjsKIAljYXNlIFBPV0VSX0RPTUFJTl9QT1JUX0NSVDoKQEAgLTk1LDExICsx
MjIsMjAgQEAgaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW5fc3RyKGVudW0gaW50ZWxfZGlzcGxh
eV9wb3dlcl9kb21haW4gZG9tYWluKQogCWNhc2UgUE9XRVJfRE9NQUlOX0FVWF9DOgogCQlyZXR1
cm4gIkFVWF9DIjsKIAljYXNlIFBPV0VSX0RPTUFJTl9BVVhfRDoKLQkJcmV0dXJuICJBVVhfRCI7
CisJCUJVSUxEX0JVR19PTihQT1dFUl9ET01BSU5fQVVYX0QgIT0gUE9XRVJfRE9NQUlOX0FVWF9U
QzEpOworCQlyZXR1cm4gZGRpX3RjX3BvcnRzID8gIkFVWF9UQzEiIDogIkFVWF9EIjsKIAljYXNl
IFBPV0VSX0RPTUFJTl9BVVhfRToKLQkJcmV0dXJuICJBVVhfRSI7CisJCUJVSUxEX0JVR19PTihQ
T1dFUl9ET01BSU5fQVVYX0UgIT0gUE9XRVJfRE9NQUlOX0FVWF9UQzIpOworCQlyZXR1cm4gZGRp
X3RjX3BvcnRzID8gIkFVWF9UQzIiIDogIkFVWF9FIjsKIAljYXNlIFBPV0VSX0RPTUFJTl9BVVhf
RjoKLQkJcmV0dXJuICJBVVhfRiI7CisJCUJVSUxEX0JVR19PTihQT1dFUl9ET01BSU5fQVVYX0Yg
IT0gUE9XRVJfRE9NQUlOX0FVWF9UQzMpOworCQlyZXR1cm4gZGRpX3RjX3BvcnRzID8gIkFVWF9U
QzMiIDogIkFVWF9GIjsKKwljYXNlIFBPV0VSX0RPTUFJTl9BVVhfVEM0OgorCQlyZXR1cm4gIkFV
WF9UQzQiOworCWNhc2UgUE9XRVJfRE9NQUlOX0FVWF9UQzU6CisJCXJldHVybiAiQVVYX1RDNSI7
CisJY2FzZSBQT1dFUl9ET01BSU5fQVVYX1RDNjoKKwkJcmV0dXJuICJBVVhfVEM2IjsKIAljYXNl
IFBPV0VSX0RPTUFJTl9BVVhfSU9fQToKIAkJcmV0dXJuICJBVVhfSU9fQSI7CiAJY2FzZSBQT1dF
Ul9ET01BSU5fQVVYX1RCVDE6CkBAIC0xMTAsNiArMTQ2LDEwIEBAIGludGVsX2Rpc3BsYXlfcG93
ZXJfZG9tYWluX3N0cihlbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluIGRvbWFpbikKIAkJ
cmV0dXJuICJBVVhfVEJUMyI7CiAJY2FzZSBQT1dFUl9ET01BSU5fQVVYX1RCVDQ6CiAJCXJldHVy
biAiQVVYX1RCVDQiOworCWNhc2UgUE9XRVJfRE9NQUlOX0FVWF9UQlQ1OgorCQlyZXR1cm4gIkFV
WF9UQlQ1IjsKKwljYXNlIFBPV0VSX0RPTUFJTl9BVVhfVEJUNjoKKwkJcmV0dXJuICJBVVhfVEJU
NiI7CiAJY2FzZSBQT1dFUl9ET01BSU5fR01CVVM6CiAJCXJldHVybiAiR01CVVMiOwogCWNhc2Ug
UE9XRVJfRE9NQUlOX0lOSVQ6CkBAIC0xNjY0LDEyICsxNzA0LDE1IEBAIF9fYXN5bmNfcHV0X2Rv
bWFpbnNfc3RhdGVfb2soc3RydWN0IGk5MTVfcG93ZXJfZG9tYWlucyAqcG93ZXJfZG9tYWlucykK
IHN0YXRpYyB2b2lkIHByaW50X3Bvd2VyX2RvbWFpbnMoc3RydWN0IGk5MTVfcG93ZXJfZG9tYWlu
cyAqcG93ZXJfZG9tYWlucywKIAkJCQljb25zdCBjaGFyICpwcmVmaXgsIHU2NCBtYXNrKQogewor
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0KKwkJY29udGFpbmVyX29mKHBvd2VyX2Rv
bWFpbnMsIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlLAorCQkJICAgICBwb3dlcl9kb21haW5zKTsK
IAllbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluIGRvbWFpbjsKIAogCURSTV9ERUJVR19E
UklWRVIoIiVzICglbHUpOlxuIiwgcHJlZml4LCBod2VpZ2h0NjQobWFzaykpOwogCWZvcl9lYWNo
X3Bvd2VyX2RvbWFpbihkb21haW4sIG1hc2spCiAJCURSTV9ERUJVR19EUklWRVIoIiVzIHVzZV9j
b3VudCAlZFxuIiwKLQkJCQkgaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW5fc3RyKGRvbWFpbiks
CisJCQkJIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluX3N0cihpOTE1LCBkb21haW4pLAogCQkJ
CSBwb3dlcl9kb21haW5zLT5kb21haW5fdXNlX2NvdW50W2RvbWFpbl0pOwogfQogCkBAIC0xODM5
LDcgKzE4ODIsNyBAQCBfX2ludGVsX2Rpc3BsYXlfcG93ZXJfcHV0X2RvbWFpbihzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiB7CiAJc3RydWN0IGk5MTVfcG93ZXJfZG9tYWlucyAq
cG93ZXJfZG9tYWluczsKIAlzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsICpwb3dlcl93ZWxsOwotCWNv
bnN0IGNoYXIgKm5hbWUgPSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbl9zdHIoZG9tYWluKTsK
Kwljb25zdCBjaGFyICpuYW1lID0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW5fc3RyKGRldl9w
cml2LCBkb21haW4pOwogCiAJcG93ZXJfZG9tYWlucyA9ICZkZXZfcHJpdi0+cG93ZXJfZG9tYWlu
czsKIApAQCAtMjQ5NSw2ICsyNTM4LDg4IEBAIHZvaWQgaW50ZWxfZGlzcGxheV9wb3dlcl9wdXQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogI2RlZmluZSBJQ0xfQVVYX1RCVDRf
SU9fUE9XRVJfRE9NQUlOUyAoCQkJXAogCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9UQlQ0KSkK
IAorLyogVE9ETzogVEdMX1BXXzVfUE9XRVJfRE9NQUlOUzogUElQRV9EICovCisjZGVmaW5lIFRH
TF9QV180X1BPV0VSX0RPTUFJTlMgKAkJCVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QSVBFX0Mp
IHwJCQlcCisJQklUX1VMTChQT1dFUl9ET01BSU5fUElQRV9DX1BBTkVMX0ZJVFRFUikgfAlcCisJ
QklUX1VMTChQT1dFUl9ET01BSU5fSU5JVCkpCisKKyNkZWZpbmUgVEdMX1BXXzNfUE9XRVJfRE9N
QUlOUyAoCQkJXAorCVRHTF9QV180X1BPV0VSX0RPTUFJTlMgfAkJCVwKKwlCSVRfVUxMKFBPV0VS
X0RPTUFJTl9QSVBFX0IpIHwJCQlcCisJQklUX1VMTChQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9C
KSB8CQlcCisJQklUX1VMTChQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9DKSB8CQlcCisJLyogVE9E
TzogVFJBTlNDT0RFUl9EICovCQkJXAorCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BJUEVfQl9QQU5F
TF9GSVRURVIpIHwJXAorCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX1RDMV9MQU5FUykg
fAlcCisJQklUX1VMTChQT1dFUl9ET01BSU5fUE9SVF9ERElfVEMxX0lPKSB8CQlcCisJQklUX1VM
TChQT1dFUl9ET01BSU5fUE9SVF9ERElfVEMyX0xBTkVTKSB8CVwKKwlCSVRfVUxMKFBPV0VSX0RP
TUFJTl9QT1JUX0RESV9UQzJfSU8pIHwJCVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RE
SV9UQzNfTEFORVMpIHwJXAorCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX1RDM19JTykg
fAkJXAorCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX1RDNF9MQU5FUykgfAlcCisJQklU
X1VMTChQT1dFUl9ET01BSU5fUE9SVF9ERElfVEM0X0lPKSB8CQlcCisJQklUX1VMTChQT1dFUl9E
T01BSU5fUE9SVF9ERElfVEM1X0xBTkVTKSB8CVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JU
X0RESV9UQzVfSU8pIHwJCVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9UQzZfTEFO
RVMpIHwJXAorCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX1RDNl9JTykgfAkJXAorCUJJ
VF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9UQzEpIHwJCVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9B
VVhfVEMyKSB8CQlcCisJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX1RDMykgfAkJXAorCUJJVF9V
TEwoUE9XRVJfRE9NQUlOX0FVWF9UQzQpIHwJCVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhf
VEM1KSB8CQlcCisJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX1RDNikgfAkJXAorCUJJVF9VTEwo
UE9XRVJfRE9NQUlOX0FVWF9UQlQxKSB8CQlcCisJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX1RC
VDIpIHwJCVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfVEJUMykgfAkJXAorCUJJVF9VTEwo
UE9XRVJfRE9NQUlOX0FVWF9UQlQ0KSB8CQlcCisJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX1RC
VDUpIHwJCVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfVEJUNikgfAkJXAorCUJJVF9VTEwo
UE9XRVJfRE9NQUlOX1ZHQSkgfAkJCVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVURJTykgfAkJ
CVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9JTklUKSkKKworI2RlZmluZSBUR0xfUFdfMl9QT1dF
Ul9ET01BSU5TICgJCQlcCisJVEdMX1BXXzNfUE9XRVJfRE9NQUlOUyB8CQkJXAorCUJJVF9VTEwo
UE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfVkRTQ19QVzIpIHwJXAorCUJJVF9VTEwoUE9XRVJfRE9N
QUlOX0lOSVQpKQorCisjZGVmaW5lIFRHTF9ESVNQTEFZX0RDX09GRl9QT1dFUl9ET01BSU5TICgJ
CVwKKwlUR0xfUFdfMl9QT1dFUl9ET01BSU5TIHwJCQlcCisJQklUX1VMTChQT1dFUl9ET01BSU5f
TU9ERVNFVCkgfAkJCVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfQSkgfAkJCVwKKwlCSVRf
VUxMKFBPV0VSX0RPTUFJTl9JTklUKSkKKworI2RlZmluZSBUR0xfRERJX0lPX1RDMV9QT1dFUl9E
T01BSU5TICgJCVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9UQzFfSU8pKQorI2Rl
ZmluZSBUR0xfRERJX0lPX1RDMl9QT1dFUl9ET01BSU5TICgJCVwKKwlCSVRfVUxMKFBPV0VSX0RP
TUFJTl9QT1JUX0RESV9UQzJfSU8pKQorI2RlZmluZSBUR0xfRERJX0lPX1RDM19QT1dFUl9ET01B
SU5TICgJCVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9UQzNfSU8pKQorI2RlZmlu
ZSBUR0xfRERJX0lPX1RDNF9QT1dFUl9ET01BSU5TICgJCVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJ
Tl9QT1JUX0RESV9UQzRfSU8pKQorI2RlZmluZSBUR0xfRERJX0lPX1RDNV9QT1dFUl9ET01BSU5T
ICgJCVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9UQzVfSU8pKQorI2RlZmluZSBU
R0xfRERJX0lPX1RDNl9QT1dFUl9ET01BSU5TICgJCVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9Q
T1JUX0RESV9UQzZfSU8pKQorCisjZGVmaW5lIFRHTF9BVVhfVEMxX0lPX1BPV0VSX0RPTUFJTlMg
KAkJXAorCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9UQzEpKQorI2RlZmluZSBUR0xfQVVYX1RD
Ml9JT19QT1dFUl9ET01BSU5TICgJCVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfVEMyKSkK
KyNkZWZpbmUgVEdMX0FVWF9UQzNfSU9fUE9XRVJfRE9NQUlOUyAoCQlcCisJQklUX1VMTChQT1dF
Ul9ET01BSU5fQVVYX1RDMykpCisjZGVmaW5lIFRHTF9BVVhfVEM0X0lPX1BPV0VSX0RPTUFJTlMg
KAkJXAorCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9UQzQpKQorI2RlZmluZSBUR0xfQVVYX1RD
NV9JT19QT1dFUl9ET01BSU5TICgJCVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfVEM1KSkK
KyNkZWZpbmUgVEdMX0FVWF9UQzZfSU9fUE9XRVJfRE9NQUlOUyAoCQlcCisJQklUX1VMTChQT1dF
Ul9ET01BSU5fQVVYX1RDNikpCisjZGVmaW5lIFRHTF9BVVhfVEJUNV9JT19QT1dFUl9ET01BSU5T
ICgJCVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfVEJUNSkpCisjZGVmaW5lIFRHTF9BVVhf
VEJUNl9JT19QT1dFUl9ET01BSU5TICgJCVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfVEJU
NikpCisKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsX29wcyBpOXh4X2Fsd2F5
c19vbl9wb3dlcl93ZWxsX29wcyA9IHsKIAkuc3luY19odyA9IGk5eHhfcG93ZXJfd2VsbF9zeW5j
X2h3X25vb3AsCiAJLmVuYWJsZSA9IGk5eHhfYWx3YXlzX29uX3Bvd2VyX3dlbGxfbm9vcCwKQEAg
LTM0NTIsNiArMzU3NywzMjQgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGxf
ZGVzYyBpY2xfcG93ZXJfd2VsbHNbXSA9IHsKIAl9LAogfTsKIAorc3RhdGljIGNvbnN0IHN0cnVj
dCBpOTE1X3Bvd2VyX3dlbGxfZGVzYyB0Z2xfcG93ZXJfd2VsbHNbXSA9IHsKKwl7CisJCS5uYW1l
ID0gImFsd2F5cy1vbiIsCisJCS5hbHdheXNfb24gPSB0cnVlLAorCQkuZG9tYWlucyA9IFBPV0VS
X0RPTUFJTl9NQVNLLAorCQkub3BzID0gJmk5eHhfYWx3YXlzX29uX3Bvd2VyX3dlbGxfb3BzLAor
CQkuaWQgPSBESVNQX1BXX0lEX05PTkUsCisJfSwKKwl7CisJCS5uYW1lID0gInBvd2VyIHdlbGwg
MSIsCisJCS8qIEhhbmRsZWQgYnkgdGhlIERNQyBmaXJtd2FyZSAqLworCQkuYWx3YXlzX29uID0g
dHJ1ZSwKKwkJLmRvbWFpbnMgPSAwLAorCQkub3BzID0gJmhzd19wb3dlcl93ZWxsX29wcywKKwkJ
LmlkID0gU0tMX0RJU1BfUFdfMSwKKwkJeworCQkJLmhzdy5yZWdzID0gJmhzd19wb3dlcl93ZWxs
X3JlZ3MsCisJCQkuaHN3LmlkeCA9IElDTF9QV19DVExfSURYX1BXXzEsCisJCQkuaHN3Lmhhc19m
dXNlcyA9IHRydWUsCisJCX0sCisJfSwKKwl7CisJCS5uYW1lID0gIkRDIG9mZiIsCisJCS5kb21h
aW5zID0gVEdMX0RJU1BMQVlfRENfT0ZGX1BPV0VSX0RPTUFJTlMsCisJCS5vcHMgPSAmZ2VuOV9k
Y19vZmZfcG93ZXJfd2VsbF9vcHMsCisJCS5pZCA9IERJU1BfUFdfSURfTk9ORSwKKwl9LAorCXsK
KwkJLm5hbWUgPSAicG93ZXIgd2VsbCAyIiwKKwkJLmRvbWFpbnMgPSBUR0xfUFdfMl9QT1dFUl9E
T01BSU5TLAorCQkub3BzID0gJmhzd19wb3dlcl93ZWxsX29wcywKKwkJLmlkID0gU0tMX0RJU1Bf
UFdfMiwKKwkJeworCQkJLmhzdy5yZWdzID0gJmhzd19wb3dlcl93ZWxsX3JlZ3MsCisJCQkuaHN3
LmlkeCA9IElDTF9QV19DVExfSURYX1BXXzIsCisJCQkuaHN3Lmhhc19mdXNlcyA9IHRydWUsCisJ
CX0sCisJfSwKKwl7CisJCS5uYW1lID0gInBvd2VyIHdlbGwgMyIsCisJCS5kb21haW5zID0gVEdM
X1BXXzNfUE9XRVJfRE9NQUlOUywKKwkJLm9wcyA9ICZoc3dfcG93ZXJfd2VsbF9vcHMsCisJCS5p
ZCA9IERJU1BfUFdfSURfTk9ORSwKKwkJeworCQkJLmhzdy5yZWdzID0gJmhzd19wb3dlcl93ZWxs
X3JlZ3MsCisJCQkuaHN3LmlkeCA9IElDTF9QV19DVExfSURYX1BXXzMsCisJCQkuaHN3LmlycV9w
aXBlX21hc2sgPSBCSVQoUElQRV9CKSwKKwkJCS5oc3cuaGFzX3ZnYSA9IHRydWUsCisJCQkuaHN3
Lmhhc19mdXNlcyA9IHRydWUsCisJCX0sCisJfSwKKwl7CisJCS5uYW1lID0gIkRESSBBIElPIiwK
KwkJLmRvbWFpbnMgPSBJQ0xfRERJX0lPX0FfUE9XRVJfRE9NQUlOUywKKwkJLm9wcyA9ICZoc3df
cG93ZXJfd2VsbF9vcHMsCisJCS5pZCA9IERJU1BfUFdfSURfTk9ORSwKKwkJeworCQkJLmhzdy5y
ZWdzID0gJmljbF9kZGlfcG93ZXJfd2VsbF9yZWdzLAorCQkJLmhzdy5pZHggPSBJQ0xfUFdfQ1RM
X0lEWF9ERElfQSwKKwkJfQorCX0sCisJeworCQkubmFtZSA9ICJEREkgQiBJTyIsCisJCS5kb21h
aW5zID0gSUNMX0RESV9JT19CX1BPV0VSX0RPTUFJTlMsCisJCS5vcHMgPSAmaHN3X3Bvd2VyX3dl
bGxfb3BzLAorCQkuaWQgPSBESVNQX1BXX0lEX05PTkUsCisJCXsKKwkJCS5oc3cucmVncyA9ICZp
Y2xfZGRpX3Bvd2VyX3dlbGxfcmVncywKKwkJCS5oc3cuaWR4ID0gSUNMX1BXX0NUTF9JRFhfRERJ
X0IsCisJCX0KKwl9LAorCXsKKwkJLm5hbWUgPSAiRERJIEMgSU8iLAorCQkuZG9tYWlucyA9IElD
TF9ERElfSU9fQ19QT1dFUl9ET01BSU5TLAorCQkub3BzID0gJmhzd19wb3dlcl93ZWxsX29wcywK
KwkJLmlkID0gRElTUF9QV19JRF9OT05FLAorCQl7CisJCQkuaHN3LnJlZ3MgPSAmaWNsX2RkaV9w
b3dlcl93ZWxsX3JlZ3MsCisJCQkuaHN3LmlkeCA9IElDTF9QV19DVExfSURYX0RESV9DLAorCQl9
CisJfSwKKwl7CisJCS5uYW1lID0gIkRESSBUQzEgSU8iLAorCQkuZG9tYWlucyA9IFRHTF9ERElf
SU9fVEMxX1BPV0VSX0RPTUFJTlMsCisJCS5vcHMgPSAmaHN3X3Bvd2VyX3dlbGxfb3BzLAorCQku
aWQgPSBESVNQX1BXX0lEX05PTkUsCisJCXsKKwkJCS5oc3cucmVncyA9ICZpY2xfZGRpX3Bvd2Vy
X3dlbGxfcmVncywKKwkJCS5oc3cuaWR4ID0gVEdMX1BXX0NUTF9JRFhfRERJX1RDMSwKKwkJfSwK
Kwl9LAorCXsKKwkJLm5hbWUgPSAiRERJIFRDMiBJTyIsCisJCS5kb21haW5zID0gVEdMX0RESV9J
T19UQzJfUE9XRVJfRE9NQUlOUywKKwkJLm9wcyA9ICZoc3dfcG93ZXJfd2VsbF9vcHMsCisJCS5p
ZCA9IERJU1BfUFdfSURfTk9ORSwKKwkJeworCQkJLmhzdy5yZWdzID0gJmljbF9kZGlfcG93ZXJf
d2VsbF9yZWdzLAorCQkJLmhzdy5pZHggPSBUR0xfUFdfQ1RMX0lEWF9ERElfVEMyLAorCQl9LAor
CX0sCisJeworCQkubmFtZSA9ICJEREkgVEMzIElPIiwKKwkJLmRvbWFpbnMgPSBUR0xfRERJX0lP
X1RDM19QT1dFUl9ET01BSU5TLAorCQkub3BzID0gJmhzd19wb3dlcl93ZWxsX29wcywKKwkJLmlk
ID0gRElTUF9QV19JRF9OT05FLAorCQl7CisJCQkuaHN3LnJlZ3MgPSAmaWNsX2RkaV9wb3dlcl93
ZWxsX3JlZ3MsCisJCQkuaHN3LmlkeCA9IFRHTF9QV19DVExfSURYX0RESV9UQzMsCisJCX0sCisJ
fSwKKwl7CisJCS5uYW1lID0gIkRESSBUQzQgSU8iLAorCQkuZG9tYWlucyA9IFRHTF9ERElfSU9f
VEM0X1BPV0VSX0RPTUFJTlMsCisJCS5vcHMgPSAmaHN3X3Bvd2VyX3dlbGxfb3BzLAorCQkuaWQg
PSBESVNQX1BXX0lEX05PTkUsCisJCXsKKwkJCS5oc3cucmVncyA9ICZpY2xfZGRpX3Bvd2VyX3dl
bGxfcmVncywKKwkJCS5oc3cuaWR4ID0gVEdMX1BXX0NUTF9JRFhfRERJX1RDNCwKKwkJfSwKKwl9
LAorCXsKKwkJLm5hbWUgPSAiRERJIFRDNSBJTyIsCisJCS5kb21haW5zID0gVEdMX0RESV9JT19U
QzVfUE9XRVJfRE9NQUlOUywKKwkJLm9wcyA9ICZoc3dfcG93ZXJfd2VsbF9vcHMsCisJCS5pZCA9
IERJU1BfUFdfSURfTk9ORSwKKwkJeworCQkJLmhzdy5yZWdzID0gJmljbF9kZGlfcG93ZXJfd2Vs
bF9yZWdzLAorCQkJLmhzdy5pZHggPSBUR0xfUFdfQ1RMX0lEWF9ERElfVEM1LAorCQl9LAorCX0s
CisJeworCQkubmFtZSA9ICJEREkgVEM2IElPIiwKKwkJLmRvbWFpbnMgPSBUR0xfRERJX0lPX1RD
Nl9QT1dFUl9ET01BSU5TLAorCQkub3BzID0gJmhzd19wb3dlcl93ZWxsX29wcywKKwkJLmlkID0g
RElTUF9QV19JRF9OT05FLAorCQl7CisJCQkuaHN3LnJlZ3MgPSAmaWNsX2RkaV9wb3dlcl93ZWxs
X3JlZ3MsCisJCQkuaHN3LmlkeCA9IFRHTF9QV19DVExfSURYX0RESV9UQzYsCisJCX0sCisJfSwK
Kwl7CisJCS5uYW1lID0gIkFVWCBBIiwKKwkJLmRvbWFpbnMgPSBJQ0xfQVVYX0FfSU9fUE9XRVJf
RE9NQUlOUywKKwkJLm9wcyA9ICZpY2xfY29tYm9fcGh5X2F1eF9wb3dlcl93ZWxsX29wcywKKwkJ
LmlkID0gRElTUF9QV19JRF9OT05FLAorCQl7CisJCQkuaHN3LnJlZ3MgPSAmaWNsX2F1eF9wb3dl
cl93ZWxsX3JlZ3MsCisJCQkuaHN3LmlkeCA9IElDTF9QV19DVExfSURYX0FVWF9BLAorCQl9LAor
CX0sCisJeworCQkubmFtZSA9ICJBVVggQiIsCisJCS5kb21haW5zID0gSUNMX0FVWF9CX0lPX1BP
V0VSX0RPTUFJTlMsCisJCS5vcHMgPSAmaWNsX2NvbWJvX3BoeV9hdXhfcG93ZXJfd2VsbF9vcHMs
CisJCS5pZCA9IERJU1BfUFdfSURfTk9ORSwKKwkJeworCQkJLmhzdy5yZWdzID0gJmljbF9hdXhf
cG93ZXJfd2VsbF9yZWdzLAorCQkJLmhzdy5pZHggPSBJQ0xfUFdfQ1RMX0lEWF9BVVhfQiwKKwkJ
fSwKKwl9LAorCXsKKwkJLm5hbWUgPSAiQVVYIEMiLAorCQkuZG9tYWlucyA9IElDTF9BVVhfQ19J
T19QT1dFUl9ET01BSU5TLAorCQkub3BzID0gJmljbF9jb21ib19waHlfYXV4X3Bvd2VyX3dlbGxf
b3BzLAorCQkuaWQgPSBESVNQX1BXX0lEX05PTkUsCisJCXsKKwkJCS5oc3cucmVncyA9ICZpY2xf
YXV4X3Bvd2VyX3dlbGxfcmVncywKKwkJCS5oc3cuaWR4ID0gSUNMX1BXX0NUTF9JRFhfQVVYX0Ms
CisJCX0sCisJfSwKKwl7CisJCS5uYW1lID0gIkFVWCBUQzEiLAorCQkuZG9tYWlucyA9IFRHTF9B
VVhfVEMxX0lPX1BPV0VSX0RPTUFJTlMsCisJCS5vcHMgPSAmaWNsX3RjX3BoeV9hdXhfcG93ZXJf
d2VsbF9vcHMsCisJCS5pZCA9IERJU1BfUFdfSURfTk9ORSwKKwkJeworCQkJLmhzdy5yZWdzID0g
JmljbF9hdXhfcG93ZXJfd2VsbF9yZWdzLAorCQkJLmhzdy5pZHggPSBUR0xfUFdfQ1RMX0lEWF9B
VVhfVEMxLAorCQkJLmhzdy5pc190Y190YnQgPSBmYWxzZSwKKwkJfSwKKwl9LAorCXsKKwkJLm5h
bWUgPSAiQVVYIFRDMiIsCisJCS5kb21haW5zID0gVEdMX0FVWF9UQzJfSU9fUE9XRVJfRE9NQUlO
UywKKwkJLm9wcyA9ICZpY2xfdGNfcGh5X2F1eF9wb3dlcl93ZWxsX29wcywKKwkJLmlkID0gRElT
UF9QV19JRF9OT05FLAorCQl7CisJCQkuaHN3LnJlZ3MgPSAmaWNsX2F1eF9wb3dlcl93ZWxsX3Jl
Z3MsCisJCQkuaHN3LmlkeCA9IFRHTF9QV19DVExfSURYX0FVWF9UQzIsCisJCQkuaHN3LmlzX3Rj
X3RidCA9IGZhbHNlLAorCQl9LAorCX0sCisJeworCQkubmFtZSA9ICJBVVggVEMzIiwKKwkJLmRv
bWFpbnMgPSBUR0xfQVVYX1RDM19JT19QT1dFUl9ET01BSU5TLAorCQkub3BzID0gJmljbF90Y19w
aHlfYXV4X3Bvd2VyX3dlbGxfb3BzLAorCQkuaWQgPSBESVNQX1BXX0lEX05PTkUsCisJCXsKKwkJ
CS5oc3cucmVncyA9ICZpY2xfYXV4X3Bvd2VyX3dlbGxfcmVncywKKwkJCS5oc3cuaWR4ID0gVEdM
X1BXX0NUTF9JRFhfQVVYX1RDMywKKwkJCS5oc3cuaXNfdGNfdGJ0ID0gZmFsc2UsCisJCX0sCisJ
fSwKKwl7CisJCS5uYW1lID0gIkFVWCBUQzQiLAorCQkuZG9tYWlucyA9IFRHTF9BVVhfVEM0X0lP
X1BPV0VSX0RPTUFJTlMsCisJCS5vcHMgPSAmaWNsX3RjX3BoeV9hdXhfcG93ZXJfd2VsbF9vcHMs
CisJCS5pZCA9IERJU1BfUFdfSURfTk9ORSwKKwkJeworCQkJLmhzdy5yZWdzID0gJmljbF9hdXhf
cG93ZXJfd2VsbF9yZWdzLAorCQkJLmhzdy5pZHggPSBUR0xfUFdfQ1RMX0lEWF9BVVhfVEM0LAor
CQkJLmhzdy5pc190Y190YnQgPSBmYWxzZSwKKwkJfSwKKwl9LAorCXsKKwkJLm5hbWUgPSAiQVVY
IFRDNSIsCisJCS5kb21haW5zID0gVEdMX0FVWF9UQzVfSU9fUE9XRVJfRE9NQUlOUywKKwkJLm9w
cyA9ICZpY2xfdGNfcGh5X2F1eF9wb3dlcl93ZWxsX29wcywKKwkJLmlkID0gRElTUF9QV19JRF9O
T05FLAorCQl7CisJCQkuaHN3LnJlZ3MgPSAmaWNsX2F1eF9wb3dlcl93ZWxsX3JlZ3MsCisJCQku
aHN3LmlkeCA9IFRHTF9QV19DVExfSURYX0FVWF9UQzUsCisJCQkuaHN3LmlzX3RjX3RidCA9IGZh
bHNlLAorCQl9LAorCX0sCisJeworCQkubmFtZSA9ICJBVVggVEM2IiwKKwkJLmRvbWFpbnMgPSBU
R0xfQVVYX1RDNl9JT19QT1dFUl9ET01BSU5TLAorCQkub3BzID0gJmljbF90Y19waHlfYXV4X3Bv
d2VyX3dlbGxfb3BzLAorCQkuaWQgPSBESVNQX1BXX0lEX05PTkUsCisJCXsKKwkJCS5oc3cucmVn
cyA9ICZpY2xfYXV4X3Bvd2VyX3dlbGxfcmVncywKKwkJCS5oc3cuaWR4ID0gVEdMX1BXX0NUTF9J
RFhfQVVYX1RDNiwKKwkJCS5oc3cuaXNfdGNfdGJ0ID0gZmFsc2UsCisJCX0sCisJfSwKKwl7CisJ
CS5uYW1lID0gIkFVWCBUQlQxIiwKKwkJLmRvbWFpbnMgPSBJQ0xfQVVYX1RCVDFfSU9fUE9XRVJf
RE9NQUlOUywKKwkJLm9wcyA9ICZoc3dfcG93ZXJfd2VsbF9vcHMsCisJCS5pZCA9IERJU1BfUFdf
SURfTk9ORSwKKwkJeworCQkJLmhzdy5yZWdzID0gJmljbF9hdXhfcG93ZXJfd2VsbF9yZWdzLAor
CQkJLmhzdy5pZHggPSBUR0xfUFdfQ1RMX0lEWF9BVVhfVEJUMSwKKwkJCS5oc3cuaXNfdGNfdGJ0
ID0gdHJ1ZSwKKwkJfSwKKwl9LAorCXsKKwkJLm5hbWUgPSAiQVVYIFRCVDIiLAorCQkuZG9tYWlu
cyA9IElDTF9BVVhfVEJUMl9JT19QT1dFUl9ET01BSU5TLAorCQkub3BzID0gJmhzd19wb3dlcl93
ZWxsX29wcywKKwkJLmlkID0gRElTUF9QV19JRF9OT05FLAorCQl7CisJCQkuaHN3LnJlZ3MgPSAm
aWNsX2F1eF9wb3dlcl93ZWxsX3JlZ3MsCisJCQkuaHN3LmlkeCA9IFRHTF9QV19DVExfSURYX0FV
WF9UQlQyLAorCQkJLmhzdy5pc190Y190YnQgPSB0cnVlLAorCQl9LAorCX0sCisJeworCQkubmFt
ZSA9ICJBVVggVEJUMyIsCisJCS5kb21haW5zID0gSUNMX0FVWF9UQlQzX0lPX1BPV0VSX0RPTUFJ
TlMsCisJCS5vcHMgPSAmaHN3X3Bvd2VyX3dlbGxfb3BzLAorCQkuaWQgPSBESVNQX1BXX0lEX05P
TkUsCisJCXsKKwkJCS5oc3cucmVncyA9ICZpY2xfYXV4X3Bvd2VyX3dlbGxfcmVncywKKwkJCS5o
c3cuaWR4ID0gVEdMX1BXX0NUTF9JRFhfQVVYX1RCVDMsCisJCQkuaHN3LmlzX3RjX3RidCA9IHRy
dWUsCisJCX0sCisJfSwKKwl7CisJCS5uYW1lID0gIkFVWCBUQlQ0IiwKKwkJLmRvbWFpbnMgPSBJ
Q0xfQVVYX1RCVDRfSU9fUE9XRVJfRE9NQUlOUywKKwkJLm9wcyA9ICZoc3dfcG93ZXJfd2VsbF9v
cHMsCisJCS5pZCA9IERJU1BfUFdfSURfTk9ORSwKKwkJeworCQkJLmhzdy5yZWdzID0gJmljbF9h
dXhfcG93ZXJfd2VsbF9yZWdzLAorCQkJLmhzdy5pZHggPSBUR0xfUFdfQ1RMX0lEWF9BVVhfVEJU
NCwKKwkJCS5oc3cuaXNfdGNfdGJ0ID0gdHJ1ZSwKKwkJfSwKKwl9LAorCXsKKwkJLm5hbWUgPSAi
QVVYIFRCVDUiLAorCQkuZG9tYWlucyA9IFRHTF9BVVhfVEJUNV9JT19QT1dFUl9ET01BSU5TLAor
CQkub3BzID0gJmhzd19wb3dlcl93ZWxsX29wcywKKwkJLmlkID0gRElTUF9QV19JRF9OT05FLAor
CQl7CisJCQkuaHN3LnJlZ3MgPSAmaWNsX2F1eF9wb3dlcl93ZWxsX3JlZ3MsCisJCQkuaHN3Lmlk
eCA9IFRHTF9QV19DVExfSURYX0FVWF9UQlQ1LAorCQkJLmhzdy5pc190Y190YnQgPSB0cnVlLAor
CQl9LAorCX0sCisJeworCQkubmFtZSA9ICJBVVggVEJUNiIsCisJCS5kb21haW5zID0gVEdMX0FV
WF9UQlQ2X0lPX1BPV0VSX0RPTUFJTlMsCisJCS5vcHMgPSAmaHN3X3Bvd2VyX3dlbGxfb3BzLAor
CQkuaWQgPSBESVNQX1BXX0lEX05PTkUsCisJCXsKKwkJCS5oc3cucmVncyA9ICZpY2xfYXV4X3Bv
d2VyX3dlbGxfcmVncywKKwkJCS5oc3cuaWR4ID0gVEdMX1BXX0NUTF9JRFhfQVVYX1RCVDYsCisJ
CQkuaHN3LmlzX3RjX3RidCA9IHRydWUsCisJCX0sCisJfSwKKwl7CisJCS5uYW1lID0gInBvd2Vy
IHdlbGwgNCIsCisJCS5kb21haW5zID0gVEdMX1BXXzRfUE9XRVJfRE9NQUlOUywKKwkJLm9wcyA9
ICZoc3dfcG93ZXJfd2VsbF9vcHMsCisJCS5pZCA9IERJU1BfUFdfSURfTk9ORSwKKwkJeworCQkJ
Lmhzdy5yZWdzID0gJmhzd19wb3dlcl93ZWxsX3JlZ3MsCisJCQkuaHN3LmlkeCA9IElDTF9QV19D
VExfSURYX1BXXzQsCisJCQkuaHN3Lmhhc19mdXNlcyA9IHRydWUsCisJCQkuaHN3LmlycV9waXBl
X21hc2sgPSBCSVQoUElQRV9DKSwKKwkJfQorCX0sCisJLyogVE9ETzogcG93ZXIgd2VsbCA1IGZv
ciBwaXBlIEQgKi8KK307CisKIHN0YXRpYyBpbnQKIHNhbml0aXplX2Rpc2FibGVfcG93ZXJfd2Vs
bF9vcHRpb24oY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJCSAg
IGludCBkaXNhYmxlX3Bvd2VyX3dlbGwpCkBAIC0zNTc5LDcgKzQwMjIsOSBAQCBpbnQgaW50ZWxf
cG93ZXJfZG9tYWluc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkg
KiBUaGUgZW5hYmxpbmcgb3JkZXIgd2lsbCBiZSBmcm9tIGxvd2VyIHRvIGhpZ2hlciBpbmRleGVk
IHdlbGxzLAogCSAqIHRoZSBkaXNhYmxpbmcgb3JkZXIgaXMgcmV2ZXJzZWQuCiAJICovCi0JaWYg
KElTX0dFTihkZXZfcHJpdiwgMTEpKSB7CisJaWYgKElTX0dFTihkZXZfcHJpdiwgMTIpKSB7CisJ
CWVyciA9IHNldF9wb3dlcl93ZWxscyhwb3dlcl9kb21haW5zLCB0Z2xfcG93ZXJfd2VsbHMpOwor
CX0gZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCAxMSkpIHsKIAkJZXJyID0gc2V0X3Bvd2VyX3dl
bGxzKHBvd2VyX2RvbWFpbnMsIGljbF9wb3dlcl93ZWxscyk7CiAJfSBlbHNlIGlmIChJU19DQU5O
T05MQUtFKGRldl9wcml2KSkgewogCQllcnIgPSBzZXRfcG93ZXJfd2VsbHMocG93ZXJfZG9tYWlu
cywgY25sX3Bvd2VyX3dlbGxzKTsKQEAgLTQ2NDMsNyArNTA4OCw4IEBAIHN0YXRpYyB2b2lkIGlu
dGVsX3Bvd2VyX2RvbWFpbnNfZHVtcF9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQogCiAJCWZvcl9lYWNoX3Bvd2VyX2RvbWFpbihkb21haW4sIHBvd2VyX3dlbGwtPmRlc2MtPmRv
bWFpbnMpCiAJCQlEUk1fREVCVUdfRFJJVkVSKCIgICUtMjNzICVkXG4iLAotCQkJCQkgaW50ZWxf
ZGlzcGxheV9wb3dlcl9kb21haW5fc3RyKGRvbWFpbiksCisJCQkJCSBpbnRlbF9kaXNwbGF5X3Bv
d2VyX2RvbWFpbl9zdHIoaTkxNSwKKwkJCQkJCQkJCWRvbWFpbiksCiAJCQkJCSBwb3dlcl9kb21h
aW5zLT5kb21haW5fdXNlX2NvdW50W2RvbWFpbl0pOwogCX0KIH0KZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgKaW5kZXggY2M2OTU2MTMy
ZWJjLi41NGFkNGYwYjA4ODYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9wb3dlci5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9wb3dlci5oCkBAIC0zMywxNCArMzMsMjkgQEAgZW51bSBpbnRlbF9k
aXNwbGF5X3Bvd2VyX2RvbWFpbiB7CiAJUE9XRVJfRE9NQUlOX1BPUlRfRERJX0JfTEFORVMsCiAJ
UE9XRVJfRE9NQUlOX1BPUlRfRERJX0NfTEFORVMsCiAJUE9XRVJfRE9NQUlOX1BPUlRfRERJX0Rf
TEFORVMsCisJUE9XRVJfRE9NQUlOX1BPUlRfRERJX1RDMV9MQU5FUyA9IFBPV0VSX0RPTUFJTl9Q
T1JUX0RESV9EX0xBTkVTLAogCVBPV0VSX0RPTUFJTl9QT1JUX0RESV9FX0xBTkVTLAorCVBPV0VS
X0RPTUFJTl9QT1JUX0RESV9UQzJfTEFORVMgPSBQT1dFUl9ET01BSU5fUE9SVF9ERElfRV9MQU5F
UywKIAlQT1dFUl9ET01BSU5fUE9SVF9ERElfRl9MQU5FUywKKwlQT1dFUl9ET01BSU5fUE9SVF9E
RElfVEMzX0xBTkVTID0gUE9XRVJfRE9NQUlOX1BPUlRfRERJX0ZfTEFORVMsCisJUE9XRVJfRE9N
QUlOX1BPUlRfRERJX1RDNF9MQU5FUywKKwlQT1dFUl9ET01BSU5fUE9SVF9ERElfVEM1X0xBTkVT
LAorCVBPV0VSX0RPTUFJTl9QT1JUX0RESV9UQzZfTEFORVMsCiAJUE9XRVJfRE9NQUlOX1BPUlRf
RERJX0FfSU8sCiAJUE9XRVJfRE9NQUlOX1BPUlRfRERJX0JfSU8sCiAJUE9XRVJfRE9NQUlOX1BP
UlRfRERJX0NfSU8sCiAJUE9XRVJfRE9NQUlOX1BPUlRfRERJX0RfSU8sCisJUE9XRVJfRE9NQUlO
X1BPUlRfRERJX1RDMV9JTyA9IFBPV0VSX0RPTUFJTl9QT1JUX0RESV9EX0lPLAogCVBPV0VSX0RP
TUFJTl9QT1JUX0RESV9FX0lPLAorCVBPV0VSX0RPTUFJTl9QT1JUX0RESV9UQzJfSU8gPSBQT1dF
Ul9ET01BSU5fUE9SVF9ERElfRV9JTywKIAlQT1dFUl9ET01BSU5fUE9SVF9ERElfRl9JTywKKwlQ
T1dFUl9ET01BSU5fUE9SVF9ERElfVEMzX0lPID0gUE9XRVJfRE9NQUlOX1BPUlRfRERJX0ZfSU8s
CisJUE9XRVJfRE9NQUlOX1BPUlRfRERJX0dfSU8sCisJUE9XRVJfRE9NQUlOX1BPUlRfRERJX1RD
NF9JTyA9IFBPV0VSX0RPTUFJTl9QT1JUX0RESV9HX0lPLAorCVBPV0VSX0RPTUFJTl9QT1JUX0RE
SV9IX0lPLAorCVBPV0VSX0RPTUFJTl9QT1JUX0RESV9UQzVfSU8gPSBQT1dFUl9ET01BSU5fUE9S
VF9ERElfSF9JTywKKwlQT1dFUl9ET01BSU5fUE9SVF9ERElfSV9JTywKKwlQT1dFUl9ET01BSU5f
UE9SVF9ERElfVEM2X0lPID0gUE9XRVJfRE9NQUlOX1BPUlRfRERJX0lfSU8sCiAJUE9XRVJfRE9N
QUlOX1BPUlRfRFNJLAogCVBPV0VSX0RPTUFJTl9QT1JUX0NSVCwKIAlQT1dFUl9ET01BSU5fUE9S
VF9PVEhFUiwKQEAgLTUwLDEzICs2NSwyMSBAQCBlbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9t
YWluIHsKIAlQT1dFUl9ET01BSU5fQVVYX0IsCiAJUE9XRVJfRE9NQUlOX0FVWF9DLAogCVBPV0VS
X0RPTUFJTl9BVVhfRCwKKwlQT1dFUl9ET01BSU5fQVVYX1RDMSA9IFBPV0VSX0RPTUFJTl9BVVhf
RCwKIAlQT1dFUl9ET01BSU5fQVVYX0UsCisJUE9XRVJfRE9NQUlOX0FVWF9UQzIgPSBQT1dFUl9E
T01BSU5fQVVYX0UsCiAJUE9XRVJfRE9NQUlOX0FVWF9GLAorCVBPV0VSX0RPTUFJTl9BVVhfVEMz
ID0gUE9XRVJfRE9NQUlOX0FVWF9GLAorCVBPV0VSX0RPTUFJTl9BVVhfVEM0LAorCVBPV0VSX0RP
TUFJTl9BVVhfVEM1LAorCVBPV0VSX0RPTUFJTl9BVVhfVEM2LAogCVBPV0VSX0RPTUFJTl9BVVhf
SU9fQSwKIAlQT1dFUl9ET01BSU5fQVVYX1RCVDEsCiAJUE9XRVJfRE9NQUlOX0FVWF9UQlQyLAog
CVBPV0VSX0RPTUFJTl9BVVhfVEJUMywKIAlQT1dFUl9ET01BSU5fQVVYX1RCVDQsCisJUE9XRVJf
RE9NQUlOX0FVWF9UQlQ1LAorCVBPV0VSX0RPTUFJTl9BVVhfVEJUNiwKIAlQT1dFUl9ET01BSU5f
R01CVVMsCiAJUE9XRVJfRE9NQUlOX01PREVTRVQsCiAJUE9XRVJfRE9NQUlOX0dUX0lSUSwKQEAg
LTIyOSw3ICsyNTIsOCBAQCB2b2lkIGJ4dF9kaXNwbGF5X2NvcmVfaW5pdChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGJvb2wgcmVzdW1lKTsKIHZvaWQgYnh0X2Rpc3BsYXlfY29y
ZV91bmluaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIAogY29uc3QgY2hh
ciAqCi1pbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbl9zdHIoZW51bSBpbnRlbF9kaXNwbGF5X3Bv
d2VyX2RvbWFpbiBkb21haW4pOworaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW5fc3RyKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1LAorCQkJICAgICAgIGVudW0gaW50ZWxfZGlzcGxheV9w
b3dlcl9kb21haW4gZG9tYWluKTsKIAogYm9vbCBpbnRlbF9kaXNwbGF5X3Bvd2VyX2lzX2VuYWJs
ZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJCSAgICBlbnVtIGludGVs
X2Rpc3BsYXlfcG93ZXJfZG9tYWluIGRvbWFpbik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdm
cy5jCmluZGV4IDNlNGY1OGYxOTM2Mi4uNGQ1OTk3MmU5Njg5IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2RlYnVnZnMuYwpAQCAtMjQ3Miw3ICsyNDcyLDggQEAgc3RhdGljIGludCBpOTE1X3Bvd2Vy
X2RvbWFpbl9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQogCiAJCWZvcl9l
YWNoX3Bvd2VyX2RvbWFpbihwb3dlcl9kb21haW4sIHBvd2VyX3dlbGwtPmRlc2MtPmRvbWFpbnMp
CiAJCQlzZXFfcHJpbnRmKG0sICIgICUtMjNzICVkXG4iLAotCQkJCSBpbnRlbF9kaXNwbGF5X3Bv
d2VyX2RvbWFpbl9zdHIocG93ZXJfZG9tYWluKSwKKwkJCQkgaW50ZWxfZGlzcGxheV9wb3dlcl9k
b21haW5fc3RyKGRldl9wcml2LAorCQkJCQkJCQlwb3dlcl9kb21haW4pLAogCQkJCSBwb3dlcl9k
b21haW5zLT5kb21haW5fdXNlX2NvdW50W3Bvd2VyX2RvbWFpbl0pOwogCX0KIApkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKaW5kZXggMDhkYzcxZTRiODE4Li42MzIzOGRiMjFiNDQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaApAQCAtOTE0Nyw3ICs5MTQ3LDcgQEAgZW51bSB7CiAjZGVmaW5lICAgR0xL
X1BXX0NUTF9JRFhfRERJX0EJCQkxCiAjZGVmaW5lICAgU0tMX1BXX0NUTF9JRFhfTUlTQ19JTwkJ
MAogCi0vKiBJQ0wgLSBwb3dlciB3ZWxscyAqLworLyogSUNML1RHTCAtIHBvd2VyIHdlbGxzICov
CiAjZGVmaW5lICAgSUNMX1BXX0NUTF9JRFhfUFdfNAkJCTMKICNkZWZpbmUgICBJQ0xfUFdfQ1RM
X0lEWF9QV18zCQkJMgogI2RlZmluZSAgIElDTF9QV19DVExfSURYX1BXXzIJCQkxCkBAIC05MTU2
LDEzICs5MTU2LDI1IEBAIGVudW0gewogI2RlZmluZSBJQ0xfUFdSX1dFTExfQ1RMX0FVWDEJCQlf
TU1JTygweDQ1NDQwKQogI2RlZmluZSBJQ0xfUFdSX1dFTExfQ1RMX0FVWDIJCQlfTU1JTygweDQ1
NDQ0KQogI2RlZmluZSBJQ0xfUFdSX1dFTExfQ1RMX0FVWDQJCQlfTU1JTygweDQ1NDRDKQorI2Rl
ZmluZSAgIFRHTF9QV19DVExfSURYX0FVWF9UQlQ2CQkxNAorI2RlZmluZSAgIFRHTF9QV19DVExf
SURYX0FVWF9UQlQ1CQkxMworI2RlZmluZSAgIFRHTF9QV19DVExfSURYX0FVWF9UQlQ0CQkxMgog
I2RlZmluZSAgIElDTF9QV19DVExfSURYX0FVWF9UQlQ0CQkxMQorI2RlZmluZSAgIFRHTF9QV19D
VExfSURYX0FVWF9UQlQzCQkxMQogI2RlZmluZSAgIElDTF9QV19DVExfSURYX0FVWF9UQlQzCQkx
MAorI2RlZmluZSAgIFRHTF9QV19DVExfSURYX0FVWF9UQlQyCQkxMAogI2RlZmluZSAgIElDTF9Q
V19DVExfSURYX0FVWF9UQlQyCQk5CisjZGVmaW5lICAgVEdMX1BXX0NUTF9JRFhfQVVYX1RCVDEJ
CTkKICNkZWZpbmUgICBJQ0xfUFdfQ1RMX0lEWF9BVVhfVEJUMQkJOAorI2RlZmluZSAgIFRHTF9Q
V19DVExfSURYX0FVWF9UQzYJCTgKKyNkZWZpbmUgICBUR0xfUFdfQ1RMX0lEWF9BVVhfVEM1CQk3
CisjZGVmaW5lICAgVEdMX1BXX0NUTF9JRFhfQVVYX1RDNAkJNgogI2RlZmluZSAgIElDTF9QV19D
VExfSURYX0FVWF9GCQkJNQorI2RlZmluZSAgIFRHTF9QV19DVExfSURYX0FVWF9UQzMJCTUKICNk
ZWZpbmUgICBJQ0xfUFdfQ1RMX0lEWF9BVVhfRQkJCTQKKyNkZWZpbmUgICBUR0xfUFdfQ1RMX0lE
WF9BVVhfVEMyCQk0CiAjZGVmaW5lICAgSUNMX1BXX0NUTF9JRFhfQVVYX0QJCQkzCisjZGVmaW5l
ICAgVEdMX1BXX0NUTF9JRFhfQVVYX1RDMQkJMwogI2RlZmluZSAgIElDTF9QV19DVExfSURYX0FV
WF9DCQkJMgogI2RlZmluZSAgIElDTF9QV19DVExfSURYX0FVWF9CCQkJMQogI2RlZmluZSAgIElD
TF9QV19DVExfSURYX0FVWF9BCQkJMApAQCAtOTE3MCw5ICs5MTgyLDE1IEBAIGVudW0gewogI2Rl
ZmluZSBJQ0xfUFdSX1dFTExfQ1RMX0RESTEJCQlfTU1JTygweDQ1NDUwKQogI2RlZmluZSBJQ0xf
UFdSX1dFTExfQ1RMX0RESTIJCQlfTU1JTygweDQ1NDU0KQogI2RlZmluZSBJQ0xfUFdSX1dFTExf
Q1RMX0RESTQJCQlfTU1JTygweDQ1NDVDKQorI2RlZmluZSAgIFRHTF9QV19DVExfSURYX0RESV9U
QzYJCTgKKyNkZWZpbmUgICBUR0xfUFdfQ1RMX0lEWF9ERElfVEM1CQk3CisjZGVmaW5lICAgVEdM
X1BXX0NUTF9JRFhfRERJX1RDNAkJNgogI2RlZmluZSAgIElDTF9QV19DVExfSURYX0RESV9GCQkJ
NQorI2RlZmluZSAgIFRHTF9QV19DVExfSURYX0RESV9UQzMJCTUKICNkZWZpbmUgICBJQ0xfUFdf
Q1RMX0lEWF9ERElfRQkJCTQKKyNkZWZpbmUgICBUR0xfUFdfQ1RMX0lEWF9ERElfVEMyCQk0CiAj
ZGVmaW5lICAgSUNMX1BXX0NUTF9JRFhfRERJX0QJCQkzCisjZGVmaW5lICAgVEdMX1BXX0NUTF9J
RFhfRERJX1RDMQkJMwogI2RlZmluZSAgIElDTF9QV19DVExfSURYX0RESV9DCQkJMgogI2RlZmlu
ZSAgIElDTF9QV19DVExfSURYX0RESV9CCQkJMQogI2RlZmluZSAgIElDTF9QV19DVExfSURYX0RE
SV9BCQkJMAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
