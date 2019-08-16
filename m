Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 060368FD14
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 10:06:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7320F6EB29;
	Fri, 16 Aug 2019 08:06:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF1936EB23
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 08:06:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 01:06:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="184851601"
Received: from miyoungj-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.105.68])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2019 01:06:07 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Aug 2019 01:04:52 -0700
Message-Id: <20190816080503.28594-29-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190816080503.28594-1-lucas.demarchi@intel.com>
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 28/39] drm/i915/tgl: add GEN12_MAX_CONTEXT_HW_ID
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

RnJvbTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KCkxpa2UgR2VuMTEsIEdlbjEyIGhhcyAxMSBhdmFpbGFibGUgYml0cyBmb3IgdGhlIGN0
eCBpZCBmaWVsZC4gSG93ZXZlciwKdGhlIGxhc3QgdmFsdWUgKDB4N0ZGKSBpcyByZXNlcnZlZCB0
byBpbmRpY2F0ZSAiaW52YWxpZCBjb250ZXh0Iiwgc28Kd2UgbmVlZCB0byByZWR1Y2UgdGhlIG1h
eGltdW0gbnVtYmVyIG9mIGNvbnRleHRzIGJ5IDEgY29tcGFyZWQgdG8gR2VuMTEuCgpDYzogSm9v
bmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgfCA0
ICsrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgfCAyICsr
CiAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCmluZGV4IGE2YjBjYjcxNDI5
Mi4uYzQ0YjM0NjYzM2FkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fY29udGV4dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9j
b250ZXh0LmMKQEAgLTE3Myw3ICsxNzMsOSBAQCBzdGF0aWMgaW5saW5lIGludCBuZXdfaHdfaWQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGdmcF90IGdmcCkKIAogCWxvY2tkZXBfYXNz
ZXJ0X2hlbGQoJmk5MTUtPmNvbnRleHRzLm11dGV4KTsKIAotCWlmIChJTlRFTF9HRU4oaTkxNSkg
Pj0gMTEpCisJaWYgKElOVEVMX0dFTihpOTE1KSA+PSAxMikKKwkJbWF4ID0gR0VOMTJfTUFYX0NP
TlRFWFRfSFdfSUQ7CisJZWxzZSBpZiAoSU5URUxfR0VOKGk5MTUpID49IDExKQogCQltYXggPSBH
RU4xMV9NQVhfQ09OVEVYVF9IV19JRDsKIAllbHNlIGlmIChVU0VTX0dVQ19TVUJNSVNTSU9OKGk5
MTUpKQogCQkvKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggOGQ1N2U5NjgwYzk5Li40OWM4
YjQ5ZDBlMWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMTYwNCw2ICsxNjA0LDggQEAg
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgewogI2RlZmluZSBNQVhfQ09OVEVYVF9IV19JRCAoMTw8
MjEpIC8qIGV4Y2x1c2l2ZSAqLwogI2RlZmluZSBNQVhfR1VDX0NPTlRFWFRfSFdfSUQgKDEgPDwg
MjApIC8qIGV4Y2x1c2l2ZSAqLwogI2RlZmluZSBHRU4xMV9NQVhfQ09OVEVYVF9IV19JRCAoMTw8
MTEpIC8qIGV4Y2x1c2l2ZSAqLworLyogaW4gR2VuMTIgSUQgMHg3RkYgaXMgcmVzZXJ2ZWQgdG8g
aW5kaWNhdGUgImludmFsaWQgY29udGV4dCIgKi8KKyNkZWZpbmUgR0VOMTJfTUFYX0NPTlRFWFRf
SFdfSUQJKEdFTjExX01BWF9DT05URVhUX0hXX0lEIC0gMSkKIAkJc3RydWN0IGxpc3RfaGVhZCBo
d19pZF9saXN0OwogCX0gY29udGV4dHM7CiAKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
