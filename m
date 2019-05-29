Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D93362D9A4
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 11:54:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44DE089F75;
	Wed, 29 May 2019 09:54:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51A9F89F75
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 09:54:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 02:54:38 -0700
X-ExtLoop1: 1
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.74.155])
 by fmsmga001.fm.intel.com with ESMTP; 29 May 2019 02:54:37 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2019 15:20:52 +0530
Message-Id: <1559123462-7343-3-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559123462-7343-1-git-send-email-swati2.sharma@intel.com>
References: <1559123462-7343-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v7][PATCH 02/12] drm/i915: Enable
 intel_color_get_config()
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gdGhpcyBwYXRjaCwgaW50ZWxfY29sb3JfZ2V0X2NvbmZpZygpIGlzIGVuYWJsZWQgYW5kIHN1
cHBvcnQKZm9yIHJlYWRfbHV0cygpIHdpbGwgYmUgYWRkZWQgcGxhdGZvcm0gYnkgcGxhdGZvcm0g
aW5jcmVtZW50YWxseQppbiB0aGUgZm9sbG93LXVwIHBhdGNoZXMuCgp2NDogLVJlbmFtZWQgaW50
ZWxfZ2V0X2NvbG9yX2NvbmZpZyB0byBpbnRlbF9jb2xvcl9nZXRfY29uZmlnIFtKYW5pXQogICAg
LUFkZGVkIHRoZSB1c2VyIGVhcmx5IG9uIHN1Y2ggdGhhdCBzdXBwb3J0IGZvciBnZXRfY29sb3Jf
Y29uZmlnKCkKICAgICBjYW4gYmUgYWRkZWQgcGxhdGZvcm0gYnkgcGxhdGZvcm0gaW5jcmVtZW50
YWxseSBbSmFuaV0KdjU6IC1JbmNvcnJlY3QgcGxhY2UgZm9yIGNhbGxpbmcgaW50ZWxfY29sb3Jf
Z2V0X2NvbmZpZygpIGluCiAgICAgaGFzd2VsbF9nZXRfcGlwZV9jb25maWcoKSBbVmlsbGVdCnY2
OiAtUmVuYW1lZCBpbnRlbF9jb2xvcl9yZWFkX2x1dHMoKSB0byBpbnRlbF9jb2xvcl9nZXRfY29u
ZmlnKCkKICAgICBbSmFuaSBhbmQgVmlsbGVdCgpTaWduZWQtb2ZmLWJ5OiBTd2F0aSBTaGFybWEg
PHN3YXRpMi5zaGFybWFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2Rpc3BsYXkuYyB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwppbmRleCAwNTE3N2YzLi4zZTAxMDI4IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCkBAIC04MzUxLDYgKzgzNTEsNyBAQCBzdGF0
aWMgYm9vbCBpOXh4X2dldF9waXBlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAkJ
cGlwZV9jb25maWctPmNnbV9tb2RlID0gSTkxNV9SRUFEKENHTV9QSVBFX01PREUoY3J0Yy0+cGlw
ZSkpOwogCiAJaTl4eF9nZXRfcGlwZV9jb2xvcl9jb25maWcocGlwZV9jb25maWcpOworCWludGVs
X2NvbG9yX2dldF9jb25maWcocGlwZV9jb25maWcpOwogCiAJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPCA0KQogCQlwaXBlX2NvbmZpZy0+ZG91YmxlX3dpZGUgPSB0bXAgJiBQSVBFQ09ORl9ET1VC
TEVfV0lERTsKQEAgLTk0MjYsNiArOTQyNyw3IEBAIHN0YXRpYyBib29sIGlyb25sYWtlX2dldF9w
aXBlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAlwaXBlX2NvbmZpZy0+Y3NjX21v
ZGUgPSBJOTE1X1JFQUQoUElQRV9DU0NfTU9ERShjcnRjLT5waXBlKSk7CiAKIAlpOXh4X2dldF9w
aXBlX2NvbG9yX2NvbmZpZyhwaXBlX2NvbmZpZyk7CisJaW50ZWxfY29sb3JfZ2V0X2NvbmZpZyhw
aXBlX2NvbmZpZyk7CiAKIAlpZiAoSTkxNV9SRUFEKFBDSF9UUkFOU0NPTkYoY3J0Yy0+cGlwZSkp
ICYgVFJBTlNfRU5BQkxFKSB7CiAJCXN0cnVjdCBpbnRlbF9zaGFyZWRfZHBsbCAqcGxsOwpAQCAt
OTg3NCw2ICs5ODc2LDggQEAgc3RhdGljIGJvb2wgaGFzd2VsbF9nZXRfcGlwZV9jb25maWcoc3Ry
dWN0IGludGVsX2NydGMgKmNydGMsCiAJCWk5eHhfZ2V0X3BpcGVfY29sb3JfY29uZmlnKHBpcGVf
Y29uZmlnKTsKIAl9CiAKKwlpbnRlbF9jb2xvcl9nZXRfY29uZmlnKHBpcGVfY29uZmlnKTsKKwog
CXBvd2VyX2RvbWFpbiA9IFBPV0VSX0RPTUFJTl9QSVBFX1BBTkVMX0ZJVFRFUihjcnRjLT5waXBl
KTsKIAlXQVJOX09OKHBvd2VyX2RvbWFpbl9tYXNrICYgQklUX1VMTChwb3dlcl9kb21haW4pKTsK
IAotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
