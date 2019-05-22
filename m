Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CE8261C3
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 12:31:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBF288975F;
	Wed, 22 May 2019 10:31:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C52B98975F
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 10:31:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 03:31:52 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 22 May 2019 03:31:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 May 2019 13:35:05 +0300
Message-Id: <20190522103505.2082-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915: remove duplicate typedef for
 intel_wakeref_t
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
Cc: jani.nikula@intel.com, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rml4IHRoZSBkdXBsaWNhdGUgdHlwZWRlZiBmb3IgaW50ZWxfd2FrZXJlZl90IGxlYWRpbmcgdG8g
Q2xhbmcgYnVpbGQKaXNzdWVzLiBXaGlsZSBhdCBpdCwgYWN0dWFsbHkgbWFrZSB0aGUgaW50ZWxf
cnVudGltZV9wbS5oIGhlYWRlcgpzZWxmLWNvbnRhaW5lZCwgd2hpY2ggd2FzIGNsYWltZWQgaW4g
dGhlIGNvbW1pdCBiZWluZyBmaXhlZC4KClJlcG9ydGVkLWJ5OiBOYXRoYW4gQ2hhbmNlbGxvciA8
bmF0ZWNoYW5jZWxsb3JAZ21haWwuY29tPgpDYzogTmF0aGFuIENoYW5jZWxsb3IgPG5hdGVjaGFu
Y2VsbG9yQGdtYWlsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgpSZWZlcmVuY2VzOiBodHRwOi8vbWlkLm1haWwtYXJjaGl2ZS5jb20vMjAxOTA1MjExODM4
NTAuR0E5MTU3QGFyY2hsaW51eC1lcHljClJlZmVyZW5jZXM6IGh0dHBzOi8vdHJhdmlzLWNpLmNv
bS9DbGFuZ0J1aWx0TGludXgvY29udGludW91cy1pbnRlZ3JhdGlvbi9qb2JzLzIwMTc1NDQyMCNM
MjQzNQpGaXhlczogMGQ1YWRjNWYyZjAxICgiZHJtL2k5MTU6IGV4dHJhY3QgaW50ZWxfcnVudGlt
ZV9wbS5oIGZyb20gaW50ZWxfZHJ2LmgiKQpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFu
aS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhl
YWRlci10ZXN0IHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmgg
ICB8IDggKysrKystLS0KIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRl
ci10ZXN0IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKaW5kZXgg
MmNhNGE1Zi4uM2E5NjYzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmls
ZS5oZWFkZXItdGVzdAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXIt
dGVzdApAQCAtNTUsNiArNTUsNyBAQCBoZWFkZXJfdGVzdCA6PSBcCiAJaW50ZWxfcG0uaCBcCiAJ
aW50ZWxfcHNyLmggXAogCWludGVsX3F1aXJrcy5oIFwKKwlpbnRlbF9ydW50aW1lX3BtLmggXAog
CWludGVsX3Nkdm8uaCBcCiAJaW50ZWxfc2lkZWJhbmQuaCBcCiAJaW50ZWxfc3ByaXRlLmggXApk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5oCmluZGV4IGI5NjRjYS4uMGE0YzRi
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5oCkBAIC02LDEyICs2LDE0
IEBACiAjaWZuZGVmIF9fSU5URUxfUlVOVElNRV9QTV9IX18KICNkZWZpbmUgX19JTlRFTF9SVU5U
SU1FX1BNX0hfXwogCi0jaW5jbHVkZSA8bGludXgvc3RhY2tkZXBvdC5oPgogI2luY2x1ZGUgPGxp
bnV4L3R5cGVzLmg+CiAKLXN0cnVjdCBkcm1faTkxNV9wcml2YXRlOworI2luY2x1ZGUgImludGVs
X2Rpc3BsYXkuaCIKKyNpbmNsdWRlICJpbnRlbF93YWtlcmVmLmgiCiAKLXR5cGVkZWYgZGVwb3Rf
c3RhY2tfaGFuZGxlX3QgaW50ZWxfd2FrZXJlZl90Oworc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7
CitzdHJ1Y3QgZHJtX3ByaW50ZXI7CitzdHJ1Y3QgaW50ZWxfZW5jb2RlcjsKIAogZW51bSBpOTE1
X2RybV9zdXNwZW5kX21vZGUgewogCUk5MTVfRFJNX1NVU1BFTkRfSURMRSwKLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
