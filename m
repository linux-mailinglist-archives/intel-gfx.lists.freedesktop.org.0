Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2756D8D31
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 12:03:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDC1A6E912;
	Wed, 16 Oct 2019 10:03:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB1256E912
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 10:03:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 03:03:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,303,1566889200"; d="scan'208";a="189633958"
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.143])
 by orsmga008.jf.intel.com with ESMTP; 16 Oct 2019 03:03:46 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Oct 2019 16:02:48 +0530
Message-Id: <20191016103249.32121-6-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191016103249.32121-1-uma.shankar@intel.com>
References: <20191016103249.32121-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v1 5/6] drm/i915/display: Enable BT2020 for HDR on
 LSPCON devices
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

RW5hYmxlIENvbG9yc3BhY2UgYXMgQlQyMDIwIGlmIGRyaXZpbmcgSERSIGNvbnRlbnQuU2VuZGlu
ZyBDb2xvcmltZXRyeQpkYXRhIGZvciBIRFIgdXNpbmcgQVZJIGluZm9mcmFtZS4gTFNQQ09OIGZp
cm13YXJlIGV4cGVjdHMgdGhpcyBhbmQgdGhvdWdoClNPQyBkcml2ZXMgRFAsIGZvciBIRE1JIHBh
bmVsIEFWSSBpbmZvZnJhbWUgaXMgc2VudCB0byB0aGUgTFNQQ09OIGRldmljZQp3aGljaCB0cmFu
c2ZlcnMgdGhlIHNhbWUgdG8gSERNSSBzaW5rLgoKU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIg
PHVtYS5zaGFua2FyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2xzcGNvbi5jIHwgMTggKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwg
MTggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfbHNwY29uLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xz
cGNvbi5jCmluZGV4IGMzMjQ1MjM2MGVlYi4uODU2NWJmNzNjNGNkIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMKQEAgLTUwNSw2ICs1MDUsMTEgQEAgdm9p
ZCBsc3Bjb25fcmVhZF9pbmZvZnJhbWUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJ
LyogRklYTUUgaW1wbGVtZW50IHRoaXMgKi8KIH0KIAorLyogSERNSSBIRFIgQ29sb3JzcGFjZSBT
cGVjIERlZmluaXRpb25zICovCisjZGVmaW5lIE5PUk1BTF9DT0xPUklNRVRSWV9NQVNLCQkweDMK
KyNkZWZpbmUgRVhURU5ERURfQ09MT1JJTUVUUllfTUFTSwkweDcKKyNkZWZpbmUgSERNSV9DT0xP
UklNRVRSWV9CVDIwMjBfWUNDCSgoMyA8PCAwKSB8ICg2IDw8IDIpIHwgKDAgPDwgNSkpCisKIHZv
aWQgbHNwY29uX3NldF9pbmZvZnJhbWVzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAog
CQkJICAgYm9vbCBlbmFibGUsCiAJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwKQEAgLTU0OSw2ICs1NTQsMTkgQEAgdm9pZCBsc3Bjb25fc2V0X2luZm9mcmFt
ZXMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkJCSAgIEhETUlfUVVBTlRJWkFU
SU9OX1JBTkdFX0xJTUlURUQgOgogCQkJCQkgICBIRE1JX1FVQU5USVpBVElPTl9SQU5HRV9GVUxM
KTsKIAorCS8qCisJICogU2V0IEJUMjAyMCBjb2xvcnNwYWNlIGlmIGRyaXZpbmcgSERSIGRhdGEK
KwkgKiBUb0RvOiBNYWtlIHRoaXMgZ2VuZXJpYyBhbmQgZXhwb3NlIGFsbCBjb2xvcnNwYWNlcyBm
b3IgbHNwY29uCisJICovCisJaWYgKGxzcGNvbi0+YWN0aXZlICYmIGNvbm5fc3RhdGUtPmhkcl9t
ZXRhZGF0YV9jaGFuZ2VkKSB7CisJCWZyYW1lLmF2aS5jb2xvcmltZXRyeSA9CisJCQkJSERNSV9D
T0xPUklNRVRSWV9CVDIwMjBfWUNDICYKKwkJCQlOT1JNQUxfQ09MT1JJTUVUUllfTUFTSzsKKwkJ
ZnJhbWUuYXZpLmV4dGVuZGVkX2NvbG9yaW1ldHJ5ID0KKwkJCQkoSERNSV9DT0xPUklNRVRSWV9C
VDIwMjBfWUNDID4+IDIpICYKKwkJCQkgRVhURU5ERURfQ09MT1JJTUVUUllfTUFTSzsKKwl9CisK
IAlyZXQgPSBoZG1pX2luZm9mcmFtZV9wYWNrKCZmcmFtZSwgYnVmLCBzaXplb2YoYnVmKSk7CiAJ
aWYgKHJldCA8IDApIHsKIAkJRFJNX0VSUk9SKCJGYWlsZWQgdG8gcGFjayBBVkkgSUZcbiIpOwot
LSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
