Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D172C8ED6
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 21:14:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12ED46E83B;
	Mon, 30 Nov 2020 20:14:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CE5C6E838
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 20:14:26 +0000 (UTC)
IronPort-SDR: xOaU1GTs7O2yPKI/qjpOh5KU9C+tK2S2/muC7aFUuUR3cZHWKHInZHZkegswaIK7jDuFmB1Pe7
 zuM0xtdd1sNQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="190892957"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="190892957"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 12:14:16 -0800
IronPort-SDR: ohdH409kdXB4jEMXagdZGkilATHcdrYlPJR5HES9WkCaBxlCj48UMjlZV7X8DJNnQZBE7tXkxg
 BKYvWtbIx09A==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="372472340"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 12:14:14 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 02:17:31 +0530
Message-Id: <20201130204738.2443-9-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201130204738.2443-1-uma.shankar@intel.com>
References: <20201130204738.2443-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v14 08/15] drm/i915/display: Enable colorspace
 programming for LSPCON devices
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

RW5hYmxlIEhETUkgQ29sb3JzcGFjZSBmb3IgTFNQQ09OIGJhc2VkIGRldmljZXMuIFNlbmRpbmcg
Q29sb3JpbWV0cnkKZGF0YSBmb3IgSERSIHVzaW5nIEFWSSBpbmZvZnJhbWUuIExTUENPTiBmaXJt
d2FyZSBleHBlY3RzIHRoaXMgYW5kIHRob3VnaApTT0MgZHJpdmVzIERQLCBmb3IgSERNSSBwYW5l
bCBBVkkgaW5mb2ZyYW1lIGlzIHNlbnQgdG8gdGhlIExTUENPTiBkZXZpY2UKd2hpY2ggdHJhbnNm
ZXJzIHRoZSBzYW1lIHRvIEhETUkgc2luay4KCnYyOiBEcm9wcGVkIHN0YXRlIG1hbmFnZWQgaW4g
ZHJtIGNvcmUgYXMgcGVyIEphbmkgTmlrdWxhJ3Mgc3VnZ2VzdGlvbi4KCnYzOiBBbGlnbmVkIGNv
bG9yaW1ldHJ5IGhhbmRsaW5nIGZvciBsc3Bjb24gYXMgcGVyIGNvbXB1dGVfYXZpX2luZm9mcmFt
ZXMsCmFzIHN1Z2dlc3RlZCBieSBWaWxsZS4KCnY0OiBGaW5hbGx5IGZpeGVkIHRoaXMgd2l0aCBW
aWxsZSdzIGhlbHAsIHJlLXBocmFzZWQgdGhlIGNvbW1pdCBoZWFkZXIKYW5kIGRlc2NyaXB0aW9u
LgoKdjU6IFJlZ2lzdGVyIEhETUkgY29sb3JzcGFjZSBmb3IgbHNwY29uIGFuZCBtb3ZlIHRoaXMg
dG8KaW50ZWxfZHBfYWRkX3Byb3BlcnRpZXMgYXMgd2UgY2FuJ3QgY3JlYXRlIHByb3BlcnR5IGF0
IGxhdGVfcmVnaXN0ZXIuCgpDcmVkaXRzLXRvOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5r
YXJAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMgICAgIHwgOSArKysrKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfbHNwY29uLmMgfCAzICsrKwogMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4
IGYwNjYwMzFhZjE2Mi4uMjFhMGNhNmFlMmE2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jCkBAIC03MTkzLDEwICs3MTkzLDEzIEBAIGludGVsX2RwX2FkZF9wcm9wZXJ0
aWVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25u
ZWN0CiAJZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA1KQogCQlkcm1fY29ubmVjdG9y
X2F0dGFjaF9tYXhfYnBjX3Byb3BlcnR5KGNvbm5lY3RvciwgNiwgMTIpOwogCi0JaW50ZWxfYXR0
YWNoX2RwX2NvbG9yc3BhY2VfcHJvcGVydHkoY29ubmVjdG9yKTsKLQotCWlmIChpbnRlbF9iaW9z
X2lzX2xzcGNvbl9wcmVzZW50KGRldl9wcml2LCBwb3J0KSkKKwkvKiBSZWdpc3RlciBIRE1JIGNv
bG9yc3BhY2UgZm9yIGNhc2Ugb2YgbHNwY29uICovCisJaWYgKGludGVsX2Jpb3NfaXNfbHNwY29u
X3ByZXNlbnQoZGV2X3ByaXYsIHBvcnQpKSB7CiAJCWRybV9jb25uZWN0b3JfYXR0YWNoX2NvbnRl
bnRfdHlwZV9wcm9wZXJ0eShjb25uZWN0b3IpOworCQlpbnRlbF9hdHRhY2hfaGRtaV9jb2xvcnNw
YWNlX3Byb3BlcnR5KGNvbm5lY3Rvcik7CisJfSBlbHNlIHsKKwkJaW50ZWxfYXR0YWNoX2RwX2Nv
bG9yc3BhY2VfcHJvcGVydHkoY29ubmVjdG9yKTsKKwl9CiAKIAlpZiAoSVNfR0VNSU5JTEFLRShk
ZXZfcHJpdikgfHwgSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKIAkJZHJtX29iamVjdF9hdHRh
Y2hfcHJvcGVydHkoJmNvbm5lY3Rvci0+YmFzZSwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2xzcGNvbi5jCmluZGV4IDBhNGMwNWQ2NzEwOC4uY2I3NjhhMWFlNGM5IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMKQEAgLTUyMyw2ICs1
MjMsOSBAQCB2b2lkIGxzcGNvbl9zZXRfaW5mb2ZyYW1lcyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwKIAllbHNlCiAJCWZyYW1lLmF2aS5jb2xvcnNwYWNlID0gSERNSV9DT0xPUlNQQUNF
X1JHQjsKIAorCS8qIFNldCB0aGUgQ29sb3JzcGFjZSBhcyBwZXIgdGhlIEhETUkgc3BlYyAqLwor
CWRybV9oZG1pX2F2aV9pbmZvZnJhbWVfY29sb3JzcGFjZSgmZnJhbWUuYXZpLCBjb25uX3N0YXRl
KTsKKwogCS8qIG5vbnNlbnNlIGNvbWJpbmF0aW9uICovCiAJZHJtX1dBUk5fT04oZW5jb2Rlci0+
YmFzZS5kZXYsIGNydGNfc3RhdGUtPmxpbWl0ZWRfY29sb3JfcmFuZ2UgJiYKIAkJICAgIGNydGNf
c3RhdGUtPm91dHB1dF9mb3JtYXQgIT0gSU5URUxfT1VUUFVUX0ZPUk1BVF9SR0IpOwotLSAKMi4y
Ni4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
