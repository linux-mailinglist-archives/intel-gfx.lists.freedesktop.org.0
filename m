Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8E2851C2
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 19:12:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BF7D6E6DE;
	Wed,  7 Aug 2019 17:12:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8D426E742
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 17:12:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 09:58:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="177020457"
Received: from jssummer-desk.jf.intel.com ([10.165.21.197])
 by orsmga003.jf.intel.com with ESMTP; 07 Aug 2019 09:58:32 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Aug 2019 09:58:26 -0700
Message-Id: <20190807165832.26324-4-stuart.summers@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190807165832.26324-1-stuart.summers@intel.com>
References: <20190807165832.26324-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/9] drm/i915: Add subslice stride runtime
 parameter
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

QWRkIGEgbmV3IHBhcmFtZXRlciwgc3Nfc3RyaWRlLCB0byB0aGUgcnVudGltZSBpbmZvCnN0cnVj
dHVyZS4gVGhpcyBpcyB1c2VkIHRvIG1pcnJvciB0aGUgdXNlcnNwYWNlIGNvbmNlcHQKb2Ygc3Vi
c2xpY2Ugc3RyaWRlLCB3aGljaCBpcyBhIHJhbmdlIG9mIHN1YnNsaWNlcyBwZXIgc2xpY2UuCgpU
aGlzIHBhdGNoIHNpbXBseSBhZGRzIHRoZSBkZWZpbml0aW9uIGFuZCB1cGRhdGVzIHVzYWdlCmlu
IHRoZSBRVUVSWV9UT1BPTE9HWV9JTkZPIGhhbmRsZXIuCgpTaWduZWQtb2ZmLWJ5OiBTdHVhcnQg
U3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3NzZXUuYyB8IDIgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3NzZXUuaCB8IDIgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcXVlcnkuYyAgICB8IDUg
KystLS0KIDMgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuYwppbmRleCAwOGI3NGFlNDA3MzkuLjJkOWU2
ZmE0ZWU0NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuYwpAQCAtMTQsNiArMTQs
OCBAQCB2b2lkIGludGVsX3NzZXVfc2V0X2luZm8oc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUs
IHU4IG1heF9zbGljZXMsCiAJc3NldS0+bWF4X3NsaWNlcyA9IG1heF9zbGljZXM7CiAJc3NldS0+
bWF4X3N1YnNsaWNlcyA9IG1heF9zdWJzbGljZXM7CiAJc3NldS0+bWF4X2V1c19wZXJfc3Vic2xp
Y2UgPSBtYXhfZXVzX3Blcl9zdWJzbGljZTsKKworCXNzZXUtPnNzX3N0cmlkZSA9IEdFTl9TU0VV
X1NUUklERShzc2V1LT5tYXhfc3Vic2xpY2VzKTsKIH0KIAogdW5zaWduZWQgaW50CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9zc2V1LmgKaW5kZXggNjRlNDdkYWQwN2JlLi5iMDEwMWUxYzY5YmQg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmgKQEAgLTMzLDYgKzMzLDggQEAgc3Ry
dWN0IHNzZXVfZGV2X2luZm8gewogCXU4IG1heF9zdWJzbGljZXM7CiAJdTggbWF4X2V1c19wZXJf
c3Vic2xpY2U7CiAKKwl1OCBzc19zdHJpZGU7CisKIAkvKiBXZSBkb24ndCBoYXZlIG1vcmUgdGhh
biA4IGV1cyBwZXIgc3Vic2xpY2UgYXQgdGhlIG1vbWVudCBhbmQgYXMgd2UKIAkgKiBzdG9yZSBl
dXMgZW5hYmxlZCB1c2luZyBiaXRzLCBubyBuZWVkIHRvIG11bHRpcGx5IGJ5IGV1cyBwZXIKIAkg
KiBzdWJzbGljZS4KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcXVlcnku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcXVlcnkuYwppbmRleCBhZDkyNDBhMDgxN2Eu
LmQ4ZTI1ZGNmNWYwYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9xdWVy
eS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcXVlcnkuYwpAQCAtMzcsNyArMzcs
NiBAQCBzdGF0aWMgaW50IHF1ZXJ5X3RvcG9sb2d5X2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LAogCWNvbnN0IHN0cnVjdCBzc2V1X2Rldl9pbmZvICpzc2V1ID0gJlJVTlRJ
TUVfSU5GTyhkZXZfcHJpdiktPnNzZXU7CiAJc3RydWN0IGRybV9pOTE1X3F1ZXJ5X3RvcG9sb2d5
X2luZm8gdG9wbzsKIAl1MzIgc2xpY2VfbGVuZ3RoLCBzdWJzbGljZV9sZW5ndGgsIGV1X2xlbmd0
aCwgdG90YWxfbGVuZ3RoOwotCXU4IHN1YnNsaWNlX3N0cmlkZSA9IEdFTl9TU0VVX1NUUklERShz
c2V1LT5tYXhfc3Vic2xpY2VzKTsKIAl1OCBldV9zdHJpZGUgPSBHRU5fU1NFVV9TVFJJREUoc3Nl
dS0+bWF4X2V1c19wZXJfc3Vic2xpY2UpOwogCWludCByZXQ7CiAKQEAgLTUwLDcgKzQ5LDcgQEAg
c3RhdGljIGludCBxdWVyeV90b3BvbG9neV9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwKIAlCVUlMRF9CVUdfT04oc2l6ZW9mKHU4KSAhPSBzaXplb2Yoc3NldS0+c2xpY2Vf
bWFzaykpOwogCiAJc2xpY2VfbGVuZ3RoID0gc2l6ZW9mKHNzZXUtPnNsaWNlX21hc2spOwotCXN1
YnNsaWNlX2xlbmd0aCA9IHNzZXUtPm1heF9zbGljZXMgKiBzdWJzbGljZV9zdHJpZGU7CisJc3Vi
c2xpY2VfbGVuZ3RoID0gc3NldS0+bWF4X3NsaWNlcyAqIHNzZXUtPnNzX3N0cmlkZTsKIAlldV9s
ZW5ndGggPSBzc2V1LT5tYXhfc2xpY2VzICogc3NldS0+bWF4X3N1YnNsaWNlcyAqIGV1X3N0cmlk
ZTsKIAl0b3RhbF9sZW5ndGggPSBzaXplb2YodG9wbykgKyBzbGljZV9sZW5ndGggKyBzdWJzbGlj
ZV9sZW5ndGggKwogCQkgICAgICAgZXVfbGVuZ3RoOwpAQCAtNjksNyArNjgsNyBAQCBzdGF0aWMg
aW50IHF1ZXJ5X3RvcG9sb2d5X2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAogCXRvcG8ubWF4X2V1c19wZXJfc3Vic2xpY2UgPSBzc2V1LT5tYXhfZXVzX3Blcl9zdWJzbGlj
ZTsKIAogCXRvcG8uc3Vic2xpY2Vfb2Zmc2V0ID0gc2xpY2VfbGVuZ3RoOwotCXRvcG8uc3Vic2xp
Y2Vfc3RyaWRlID0gc3Vic2xpY2Vfc3RyaWRlOworCXRvcG8uc3Vic2xpY2Vfc3RyaWRlID0gc3Nl
dS0+c3Nfc3RyaWRlOwogCXRvcG8uZXVfb2Zmc2V0ID0gc2xpY2VfbGVuZ3RoICsgc3Vic2xpY2Vf
bGVuZ3RoOwogCXRvcG8uZXVfc3RyaWRlID0gZXVfc3RyaWRlOwogCi0tIAoyLjIxLjAuNS5nYWVi
NTgyYTk4MwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
