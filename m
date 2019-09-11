Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B059AFE0D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 15:50:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FE946EB05;
	Wed, 11 Sep 2019 13:50:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C6A6EB05
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 13:50:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 06:50:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,493,1559545200"; d="scan'208";a="200525526"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 11 Sep 2019 06:50:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Sep 2019 16:50:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Sep 2019 16:50:00 +0300
Message-Id: <20190911135000.23272-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix DRM_I915_DEBUG IOMMU stuff
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IG5lZWQgdG8gc2VsZWN0IElPTU1VX1NVUFBPUlQgYXMgd2VsbCwgb3RoZXJ3aXNlIHdlIGNhbiBi
ZSBsZWZ0CndpdGg6CiBDT05GSUdfSU9NTVVfSU9WQT1tCiAjIENPTkZJR19JT01NVV9TVVBQT1JU
IGlzIG5vdCBzZXQKIENPTkZJR19JTlRFTF9JT01NVT15Cgp3aGljaCBjb21wbGFpbnM6CiJXQVJO
SU5HOiB1bm1ldCBkaXJlY3QgZGVwZW5kZW5jaWVzIGRldGVjdGVkIGZvciBJTlRFTF9JT01NVSIK
CmFuZCBmYWlscyB0byBsaW5rOgpsZDogZHJpdmVycy9pb21tdS9pbnRlbC1pb21tdS5vOiBpbiBm
dW5jdGlvbiBgZnJlZV9hbGxfY3B1X2NhY2hlZF9pb3Zhcyc6Ci9ob21lL3ZzeXJqYWxhL3NyYy9s
aW51eC9idWlsZF9za2wvLi4vZHJpdmVycy9pb21tdS9pbnRlbC1pb21tdS5jOjQ0NjY6IHVuZGVm
aW5lZCByZWZlcmVuY2UgdG8gYGZyZWVfY3B1X2NhY2hlZF9pb3ZhcycKLi4uCgpPciBkbyB3ZSBt
YXliZSB3YW50IHNvbWV0aGluZyBsaWtlOgogc2VsZWN0IDxpb21tdSB0aGluZz4gaWYgSU9NTVVf
U1VQUE9SVAppbnN0ZWFkPwoKQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgpGaXhlczogMDIyMjlhY2IzOTI2ICgiZHJtL2k5MTU6IEZvcmNlIGNvbXBpbGF0aW9uIHdp
dGggaW50ZWwtaW9tbXUgZm9yIENJIHZhbGlkYXRpb24iKQpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L0tjb25maWcuZGVidWcgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLmRlYnVnCmluZGV4IGM1YzAwY2FkNmJhMS4uZDk0
MDI4MGRmNmI5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLmRlYnVn
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcKQEAgLTIyLDYgKzIyLDcg
QEAgY29uZmlnIERSTV9JOTE1X0RFQlVHCiAgICAgICAgIGRlcGVuZHMgb24gRFJNX0k5MTUKIAlz
ZWxlY3QgUENJX01TSQogCXNlbGVjdCBJT01NVV9BUEkKKwlzZWxlY3QgSU9NTVVfU1VQUE9SVAog
CXNlbGVjdCBJT01NVV9JT1ZBCiAJc2VsZWN0IE5FRURfRE1BX01BUF9TVEFURQogCXNlbGVjdCBE
TUFSX1RBQkxFCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
