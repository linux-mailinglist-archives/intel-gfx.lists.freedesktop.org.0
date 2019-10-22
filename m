Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2866E061C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 16:12:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF2CF6E81A;
	Tue, 22 Oct 2019 14:12:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F9046E81A
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 14:12:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 07:12:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,327,1566889200"; d="scan'208";a="227726397"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.143])
 by fmsmga002.fm.intel.com with ESMTP; 22 Oct 2019 07:12:24 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 20:04:03 +0530
Message-Id: <20191022143404.30442-6-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191022143404.30442-1-uma.shankar@intel.com>
References: <20191022143404.30442-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v2 5/6] drm/i915/display: Enable BT2020 for HDR on
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
