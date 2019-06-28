Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1960259CAB
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 15:12:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 784836E921;
	Fri, 28 Jun 2019 13:12:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03B8B6E921
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 13:12:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 06:12:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,427,1557212400"; d="scan'208";a="314131409"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga004.jf.intel.com with ESMTP; 28 Jun 2019 06:12:36 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 18:37:46 +0530
Message-Id: <20190628130754.9527-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190628130754.9527-1-anshuman.gupta@intel.com>
References: <20190628130754.9527-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/10] i915:Added DC3CO mask to allowed_dc_mask
 and gen9_dc_mask.
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBlbmFibGVzIGRjM2NvIHN0YXRlIGluIGVuYWJsZV9kYyBtb2R1bGUgcGFyYW0K
YW5kIGFkZHMgZGMzY28gZW5hYmxlIG1hc2sgdG8gYWxsb3dlZF9kY19tYXNrIGFuZCBnZW45X2Rj
X21hc2suCgpDYzogamFuaS5uaWt1bGFAaW50ZWwuY29tCkNjOiBpbXJlLmRlYWtAaW50ZWwuY29t
CkNjOiBhbmltZXNoLm1hbm5hQGludGVsLmNvbQpTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0
YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGFyYW1zLmMgICAgICB8ICAzICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVu
dGltZV9wbS5jIHwgMTMgKysrKysrKysrKystLQogMiBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGFyYW1zLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5jCmluZGV4
IGI1YmUwYWJiYmEzNS4uZWVkMTljZTNjMThhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BhcmFtcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1z
LmMKQEAgLTQ2LDcgKzQ2LDggQEAgaTkxNV9wYXJhbV9uYW1lZChtb2Rlc2V0LCBpbnQsIDA0MDAs
CiAKIGk5MTVfcGFyYW1fbmFtZWRfdW5zYWZlKGVuYWJsZV9kYywgaW50LCAwNDAwLAogCSJFbmFi
bGUgcG93ZXItc2F2aW5nIGRpc3BsYXkgQy1zdGF0ZXMuICIKLQkiKC0xPWF1dG8gW2RlZmF1bHRd
OyAwPWRpc2FibGU7IDE9dXAgdG8gREM1OyAyPXVwIHRvIERDNikiKTsKKwkiKC0xPWF1dG8gW2Rl
ZmF1bHRdOyAwPWRpc2FibGU7IDE9dXAgdG8gREM1OyAyPXVwIHRvIERDNjsgIgorCSIzPXVwIHRv
IERDNiB3aXRoIERDM0NPKSIpOwogCiBpOTE1X3BhcmFtX25hbWVkX3Vuc2FmZShlbmFibGVfZmJj
LCBpbnQsIDA2MDAsCiAJIkVuYWJsZSBmcmFtZSBidWZmZXIgY29tcHJlc3Npb24gZm9yIHBvd2Vy
IHNhdmluZ3MgIgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGlt
ZV9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jCmluZGV4IGI0
YWJhYmFiZGY2Yy4uYzg2MGMxMTA3YzgyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9ydW50aW1lX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVu
dGltZV9wbS5jCkBAIC05NDgsNiArOTQ4LDEwIEBAIHN0YXRpYyB1MzIgZ2VuOV9kY19tYXNrKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAl1MzIgbWFzazsKIAogCW1hc2sgPSBE
Q19TVEFURV9FTl9VUFRPX0RDNTsKKworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID09IDEyKQor
CQltYXNrIHw9IERDX1NUQVRFX0VOX0RDM0NPIHwgRENfU1RBVEVfRU5fVVBUT19EQzYKKwkJCQkJ
ICB8IERDX1NUQVRFX0VOX0RDOTsKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKIAkJ
bWFzayB8PSBEQ19TVEFURV9FTl9VUFRPX0RDNiB8IERDX1NUQVRFX0VOX0RDOTsKIAllbHNlIGlm
IChJU19HRU45X0xQKGRldl9wcml2KSkKQEAgLTM3NTQsNyArMzc1OCwxMCBAQCBzdGF0aWMgdTMy
IGdldF9hbGxvd2VkX2RjX21hc2soY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LAogCWludCByZXF1ZXN0ZWRfZGM7CiAJaW50IG1heF9kYzsKIAotCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDExKSB7CisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPT0gMTIpIHsKKwkJ
bWF4X2RjID0gMzsKKwkJbWFzayA9IERDX1NUQVRFX0VOX0RDOTsKKwl9IGVsc2UgaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPj0gMTEpIHsKIAkJbWF4X2RjID0gMjsKIAkJLyoKIAkJICogREM5IGhh
cyBhIHNlcGFyYXRlIEhXIGZsb3cgZnJvbSB0aGUgcmVzdCBvZiB0aGUgREMgc3RhdGVzLApAQCAt
Mzc4MCw3ICszNzg3LDcgQEAgc3RhdGljIHUzMiBnZXRfYWxsb3dlZF9kY19tYXNrKGNvbnN0IHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJcmVxdWVzdGVkX2RjID0gZW5hYmxl
X2RjOwogCX0gZWxzZSBpZiAoZW5hYmxlX2RjID09IC0xKSB7CiAJCXJlcXVlc3RlZF9kYyA9IG1h
eF9kYzsKLQl9IGVsc2UgaWYgKGVuYWJsZV9kYyA+IG1heF9kYyAmJiBlbmFibGVfZGMgPD0gMikg
eworCX0gZWxzZSBpZiAoZW5hYmxlX2RjID4gbWF4X2RjICYmIGVuYWJsZV9kYyA8PSAzKSB7CiAJ
CURSTV9ERUJVR19LTVMoIkFkanVzdGluZyByZXF1ZXN0ZWQgbWF4IERDIHN0YXRlICglZC0+JWQp
XG4iLAogCQkJICAgICAgZW5hYmxlX2RjLCBtYXhfZGMpOwogCQlyZXF1ZXN0ZWRfZGMgPSBtYXhf
ZGM7CkBAIC0zNzg5LDYgKzM3OTYsOCBAQCBzdGF0aWMgdTMyIGdldF9hbGxvd2VkX2RjX21hc2so
Y29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQlyZXF1ZXN0ZWRfZGMg
PSBtYXhfZGM7CiAJfQogCisJaWYgKHJlcXVlc3RlZF9kYyA+IDIpCisJCW1hc2sgfD0gRENfU1RB
VEVfRU5fREMzQ087CiAJaWYgKHJlcXVlc3RlZF9kYyA+IDEpCiAJCW1hc2sgfD0gRENfU1RBVEVf
RU5fVVBUT19EQzY7CiAJaWYgKHJlcXVlc3RlZF9kYyA+IDApCi0tIAoyLjIxLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
