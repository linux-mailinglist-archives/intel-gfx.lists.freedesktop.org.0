Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E6590FCB
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 11:40:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28EFE6E4AB;
	Sat, 17 Aug 2019 09:40:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E27976E4BE
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Aug 2019 09:39:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Aug 2019 02:39:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,396,1559545200"; d="scan'208";a="376950767"
Received: from vidyashr-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.251.152.227])
 by fmsmga005.fm.intel.com with ESMTP; 17 Aug 2019 02:39:57 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 17 Aug 2019 02:38:50 -0700
Message-Id: <20190817093902.2171-29-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190817093902.2171-1-lucas.demarchi@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 28/40] drm/i915/tgl: add
 GEN12_MAX_CONTEXT_HW_ID
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
byBpbmRpY2F0ZSBlbmdpbmUgaWRsZSwgc28gd2UKbmVlZCB0byByZWR1Y2UgdGhlIG1heGltdW0g
bnVtYmVyIG9mIGNvbnRleHRzIGJ5IDEgY29tcGFyZWQgdG8gR2VuMTEuCgpDYzogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2Vy
YW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgfCA0ICsrKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgfCAyICsrCiAyIGZpbGVzIGNoYW5n
ZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCmluZGV4IGNkMWZkMmU1NDIzYS4uMWNkZmUwNTUxNGMz
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKQEAgLTE3
Myw3ICsxNzMsOSBAQCBzdGF0aWMgaW5saW5lIGludCBuZXdfaHdfaWQoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUsIGdmcF90IGdmcCkKIAogCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmk5MTUt
PmNvbnRleHRzLm11dGV4KTsKIAotCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gMTEpCisJaWYgKElO
VEVMX0dFTihpOTE1KSA+PSAxMikKKwkJbWF4ID0gR0VOMTJfTUFYX0NPTlRFWFRfSFdfSUQ7CisJ
ZWxzZSBpZiAoSU5URUxfR0VOKGk5MTUpID49IDExKQogCQltYXggPSBHRU4xMV9NQVhfQ09OVEVY
VF9IV19JRDsKIAllbHNlIGlmIChVU0VTX0dVQ19TVUJNSVNTSU9OKGk5MTUpKQogCQkvKgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggZDZjOGVmY2JhNjEyLi5jOWIxYjk0YTYyMGYgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMTYwNSw2ICsxNjA1LDggQEAgc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgewogI2RlZmluZSBNQVhfQ09OVEVYVF9IV19JRCAoMTw8MjEpIC8qIGV4Y2x1c2l2
ZSAqLwogI2RlZmluZSBNQVhfR1VDX0NPTlRFWFRfSFdfSUQgKDEgPDwgMjApIC8qIGV4Y2x1c2l2
ZSAqLwogI2RlZmluZSBHRU4xMV9NQVhfQ09OVEVYVF9IV19JRCAoMTw8MTEpIC8qIGV4Y2x1c2l2
ZSAqLworLyogaW4gR2VuMTIgSUQgMHg3RkYgaXMgcmVzZXJ2ZWQgdG8gaW5kaWNhdGUgaWRsZSAq
LworI2RlZmluZSBHRU4xMl9NQVhfQ09OVEVYVF9IV19JRAkoR0VOMTFfTUFYX0NPTlRFWFRfSFdf
SUQgLSAxKQogCQlzdHJ1Y3QgbGlzdF9oZWFkIGh3X2lkX2xpc3Q7CiAJfSBjb250ZXh0czsKIAot
LSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
