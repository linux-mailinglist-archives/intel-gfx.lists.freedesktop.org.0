Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C69F82AC
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 22:59:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A77DA6E16B;
	Mon, 11 Nov 2019 21:59:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D4366E16B
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 21:59:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 13:58:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,294,1569308400"; d="scan'208";a="206880329"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by orsmga003.jf.intel.com with ESMTP; 11 Nov 2019 13:58:59 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2019 13:59:59 -0800
Message-Id: <20191111215959.1634-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191111203730.czdgdkrfh2mxd7jt@ldmartin-desk1>
References: <20191111203730.czdgdkrfh2mxd7jt@ldmartin-desk1>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/tgl: MOCS table fixes
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

VGhlIGJzcGVjIHdhcyBqdXN0IHVwZGF0ZWQgd2l0aCBhIGNvdXBsZSBjb3JyZWN0aW9ucyB0byB0
aGUgVEdMIE1PQ1MKdGFibGUuICBFbnRyaWVzIDE2IGFuZCAxNyBhcmUgbWFya2VkIGFzIHJlc2Vy
dmVkIChvdmVycmlkaW5nIHRoZSB2YWx1ZQp3ZSBpbmhlcml0IGZyb20gR0VOMTFfTU9DU19FTlRS
SUVTKSBhbmQgZW50cnkgNjEgc2hvdWxkbid0IGhhdmUgdGhlCkxFX1NDRiBiaXQgYXBwbGllZC4K
Ck5vdGUgdGhhdCBzaW5jZSB3ZSdyZSBpbnRlbnRpb25hbGx5L2V4cGxpY2l0bHkgb3ZlcnJpZGlu
ZyB0YWJsZSBlbnRyaWVzCmZyb20gR0VOMTFfTU9DU19FTlRSSUVTIHdlIHNob3VsZCBzdXBwcmVz
cyB0aGUgJ292ZXJyaWRlLWluaXQnIGNvbXBpbGVyCndhcm5pbmdzIGZvciB0aGUgVEdMIHRhYmxl
LgoKdjI6CiAtIEFkZCBhIE1PQ1NfRU5UUllfVU5VU0VEKCkgYW5kIHVzZSBpdCB0byBkZWNsYXJl
IHRoZQogICBleHBsaWNpdGx5LXJlc2VydmVkIE1PQ1MgZW50cmllcy4gKEx1Y2FzKQogLSBNb3Zl
IHRoZSB3YXJuaW5nIHN1cHByZXNzaW9uIGZyb20gdGhlIE1ha2VmaWxlIHRvIGEgI3ByYWdtYSB0
aGF0IG9ubHkKICAgYWZmZWN0cyB0aGUgVEdMIHRhYmxlLiAoTHVjYXMpCgpCc3BlYzogNDUxMDEK
Rml4ZXM6IDJkZGY5OTIxNzljNCAoImRybS9pOTE1L3RnbDogRGVmaW5lIE1PQ1MgZW50cmllcyBm
b3IgVGlnZXJsYWtlIikKQ2M6IFRvbWFzeiBMaXMgPHRvbWFzei5saXNAaW50ZWwuY29tPgpDYzog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jIHwgMTYgKysrKysrKysrKysrKy0tLQogMSBmaWxlIGNo
YW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbW9jcy5jCmluZGV4IDZlODgxYzczNWIyMC4uNGFlMDc2NTBiZmNiIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCkBAIC05MSw2ICs5MSw5IEBAIHN0cnVjdCBkcm1f
aTkxNV9tb2NzX3RhYmxlIHsKIAkJLnVzZWQgPSAxLCBcCiAJfQogCisjZGVmaW5lIE1PQ1NfRU5U
UllfVU5VU0VEKF9faWR4KSBcCisJW19faWR4XSA9IHsgLnVzZWQgPSAwIH0KKwogLyoKICAqIE1P
Q1MgdGFibGVzCiAgKgpAQCAtMjQxLDE0ICsyNDQsMjAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBk
cm1faTkxNV9tb2NzX2VudHJ5IGJyb3h0b25fbW9jc190YWJsZVtdID0gewogCQkgICBMRV8zX1dC
IHwgTEVfVENfMV9MTEMgfCBMRV9MUlVNKDMpLCBcCiAJCSAgIEwzXzFfVUMpCiAKKyNwcmFnbWEg
R0NDIGRpYWdub3N0aWMgcHVzaAorI3ByYWdtYSBHQ0MgZGlhZ25vc3RpYyBpZ25vcmVkICItV292
ZXJyaWRlLWluaXQiCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pOTE1X21vY3NfZW50cnkgdGln
ZXJsYWtlX21vY3NfdGFibGVbXSA9IHsKIAkvKiBCYXNlIC0gRXJyb3IgKFJlc2VydmVkIGZvciBO
b24tVXNlKSAqLwotCU1PQ1NfRU5UUlkoMCwgMHgwLCAweDApLAorCU1PQ1NfRU5UUllfVU5VU0VE
KDApLAogCS8qIEJhc2UgLSBSZXNlcnZlZCAqLwotCU1PQ1NfRU5UUlkoMSwgMHgwLCAweDApLAor
CU1PQ1NfRU5UUllfVU5VU0VEKDEpLAogCiAJR0VOMTFfTU9DU19FTlRSSUVTLAogCisJLyogUmVz
ZXJ2ZWQgKG92ZXJyaWRlcyB2YWx1ZXMgZnJvbSBHRU4xMV9NT0NTX0VOVFJJRVMpICovCisJTU9D
U19FTlRSWV9VTlVTRUQoMTYpLAorCU1PQ1NfRU5UUllfVU5VU0VEKDE3KSwKKwogCS8qIEltcGxp
Y2l0bHkgZW5hYmxlIEwxIC0gSERDOkwxICsgTDMgKyBMTEMgKi8KIAlNT0NTX0VOVFJZKDQ4LAog
CQkgICBMRV8zX1dCIHwgTEVfVENfMV9MTEMgfCBMRV9MUlVNKDMpLApAQCAtMjcxLDkgKzI4MCwx
MCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pOTE1X21vY3NfZW50cnkgdGlnZXJsYWtlX21v
Y3NfdGFibGVbXSA9IHsKIAkJICAgTDNfMV9VQyksCiAJLyogSFcgU3BlY2lhbCBDYXNlIChEaXNw
bGF5YWJsZSkgKi8KIAlNT0NTX0VOVFJZKDYxLAotCQkgICBMRV8xX1VDIHwgTEVfVENfMV9MTEMg
fCBMRV9TQ0YoMSksCisJCSAgIExFXzFfVUMgfCBMRV9UQ18xX0xMQywKIAkJICAgTDNfM19XQiks
CiB9OworI3ByYWdtYSBHQ0MgZGlhZ25vc3RpYyBwb3AKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBk
cm1faTkxNV9tb2NzX2VudHJ5IGljZWxha2VfbW9jc190YWJsZVtdID0gewogCS8qIEJhc2UgLSBV
bmNhY2hlZCAoRGVwcmVjYXRlZCkgKi8KLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
