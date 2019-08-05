Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D31A827DA
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 01:17:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D77666E207;
	Mon,  5 Aug 2019 23:17:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B12FA6E207
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2019 23:17:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Aug 2019 16:17:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,350,1559545200"; d="scan'208";a="202619102"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga002.fm.intel.com with ESMTP; 05 Aug 2019 16:17:38 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Aug 2019 16:17:22 -0700
Message-Id: <20190805231723.21060-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/tgl: add GEN12_MAX_CONTEXT_HW_ID
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TGlrZSBHZW4xMSwgR2VuMTIgaGFzIDExIGF2YWlsYWJsZSBiaXRzIGZvciB0aGUgY3R4IGlkIGZp
ZWxkLiBIb3dldmVyLAp0aGUgbGFzdCB2YWx1ZSAoMHg3RkYpIGlzIHJlc2VydmVkIHRvIGluZGlj
YXRlIGVuZ2luZSBpZGxlLCBzbyB3ZQpuZWVkIHRvIHJlZHVjZSB0aGUgbWF4aW11bSBudW1iZXIg
b2YgY29udGV4dHMgYnkgMSBjb21wYXJlZCB0byBHZW4xMS4KClNpZ25lZC1vZmYtYnk6IERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CkNjOiBM
dWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9jb250ZXh0LmMgfCA0ICsrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmggICAgICAgICAgICAgfCAyICsrCiAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29u
dGV4dC5jCmluZGV4IDY0ZjdhNTMzZTg4Ni4uNWM0NzRmMzhiYWM2IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKQEAgLTE3Miw3ICsxNzIsOSBAQCBzdGF0
aWMgaW5saW5lIGludCBuZXdfaHdfaWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGdm
cF90IGdmcCkKIAogCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmk5MTUtPmNvbnRleHRzLm11dGV4KTsK
IAotCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gMTEpCisJaWYgKElOVEVMX0dFTihpOTE1KSA+PSAx
MikKKwkJbWF4ID0gR0VOMTJfTUFYX0NPTlRFWFRfSFdfSUQ7CisJZWxzZSBpZiAoSU5URUxfR0VO
KGk5MTUpID49IDExKQogCQltYXggPSBHRU4xMV9NQVhfQ09OVEVYVF9IV19JRDsKIAllbHNlIGlm
IChVU0VTX0dVQ19TVUJNSVNTSU9OKGk5MTUpKQogCQkvKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgK
aW5kZXggODkzMWRkODQ3YmI1Li5iZTU5OTVjNjBmNzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aApAQCAtMTU4MSw2ICsxNTgxLDggQEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgewogI2RlZmlu
ZSBNQVhfQ09OVEVYVF9IV19JRCAoMTw8MjEpIC8qIGV4Y2x1c2l2ZSAqLwogI2RlZmluZSBNQVhf
R1VDX0NPTlRFWFRfSFdfSUQgKDEgPDwgMjApIC8qIGV4Y2x1c2l2ZSAqLwogI2RlZmluZSBHRU4x
MV9NQVhfQ09OVEVYVF9IV19JRCAoMTw8MTEpIC8qIGV4Y2x1c2l2ZSAqLworLyogaW4gR2VuMTIg
SUQgMHg3RkYgaXMgcmVzZXJ2ZWQgdG8gaW5kaWNhdGUgaWRsZSAqLworI2RlZmluZSBHRU4xMl9N
QVhfQ09OVEVYVF9IV19JRAkoR0VOMTFfTUFYX0NPTlRFWFRfSFdfSUQgLSAxKQogCQlzdHJ1Y3Qg
bGlzdF9oZWFkIGh3X2lkX2xpc3Q7CiAJfSBjb250ZXh0czsKIAotLSAKMi4yMi4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
