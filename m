Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 355902D995
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 11:54:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74C7689FF9;
	Wed, 29 May 2019 09:54:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E4FE89F45
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 09:54:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 02:54:37 -0700
X-ExtLoop1: 1
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.74.155])
 by fmsmga001.fm.intel.com with ESMTP; 29 May 2019 02:54:36 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2019 15:20:51 +0530
Message-Id: <1559123462-7343-2-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559123462-7343-1-git-send-email-swati2.sharma@intel.com>
References: <1559123462-7343-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v7][PATCH 01/12] drm/i915: Introduce vfunc read_luts()
 to create hw lut
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

SW4gdGhpcyBwYXRjaCwgYSB2ZnVuYyByZWFkX2x1dHMoKSBpcyBpbnRyb2R1Y2VkIHRvIGNyZWF0
ZSBhIGh3IGx1dAppLmUuIGx1dCBoYXZpbmcgdmFsdWVzIHJlYWQgZnJvbSBnYW1tYS9kZWdhbW1h
IHJlZ2lzdGVycyB3aGljaCB3aWxsCmxhdGVyIGJlIHVzZWQgdG8gY29tcGFyZSB3aXRoIHN3IGx1
dCB0byB2YWxpZGF0ZSBnYW1tYS9kZWdhbW1hIGx1dCB2YWx1ZXMuCgp2MzogLVJlYmFzZQp2NDog
LVJlbmFtZWQgaW50ZWxfZ2V0X2NvbG9yX2NvbmZpZyB0byBpbnRlbF9jb2xvcl9nZXRfY29uZmln
IFtKYW5pXQogICAgLVdyYXBwZWQgZ2V0X2NvbG9yX2NvbmZpZygpIFtKYW5pXQp2NTogLVJlbmFt
ZWQgaW50ZWxfY29sb3JfZ2V0X2NvbmZpZygpIHRvIGludGVsX2NvbG9yX3JlYWRfbHV0cygpCiAg
ICAtUmVuYW1lZCBnZXRfY29sb3JfY29uZmlnIHRvIHJlYWRfbHV0cwp2NjogLVJlbmFtZWQgaW50
ZWxfY29sb3JfcmVhZF9sdXRzKCkgYmFjayB0byBpbnRlbF9jb2xvcl9nZXRfY29uZmlnKCkKICAg
ICBbSmFuaSBhbmQgVmlsbGVdCgpTaWduZWQtb2ZmLWJ5OiBTd2F0aSBTaGFybWEgPHN3YXRpMi5z
aGFybWFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAg
fCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMgfCA4ICsrKysrKysrCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5oIHwgMSArCiAzIGZpbGVzIGNoYW5nZWQs
IDEwIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCBkMDI1NzgwLi42
MzQzZTcwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTM0Myw2ICszNDMsNyBAQCBzdHJ1
Y3QgZHJtX2k5MTVfZGlzcGxheV9mdW5jcyB7CiAJICogaW52b2x2ZWQgd2l0aCB0aGUgc2FtZSBj
b21taXQuCiAJICovCiAJdm9pZCAoKmxvYWRfbHV0cykoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpOworCXZvaWQgKCpyZWFkX2x1dHMpKHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKTsKIH07CiAKIHN0cnVjdCBpbnRlbF9jc3IgewpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2NvbG9yLmMKaW5kZXggOTYyZGIxMi4uNTBiOThlZSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9jb2xvci5jCkBAIC04NzksNiArODc5LDE0IEBAIGludCBpbnRlbF9jb2xvcl9jaGVj
ayhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAlyZXR1cm4gZGV2X3ByaXYt
PmRpc3BsYXkuY29sb3JfY2hlY2soY3J0Y19zdGF0ZSk7CiB9CiAKK3ZvaWQgaW50ZWxfY29sb3Jf
Z2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGNfc3RhdGUtPmJhc2Uu
Y3J0Yy0+ZGV2KTsKKworCWlmIChkZXZfcHJpdi0+ZGlzcGxheS5yZWFkX2x1dHMpCisJCWRldl9w
cml2LT5kaXNwbGF5LnJlYWRfbHV0cyhjcnRjX3N0YXRlKTsKK30KKwogc3RhdGljIGJvb2wgbmVl
ZF9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKIAkJCSAgICAgIGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2NvbG9yLmgKaW5kZXggYjhhM2NlNi4uMDU3ZThhYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9jb2xvci5oCkBAIC0xMyw1ICsxMyw2IEBACiBpbnQgaW50ZWxfY29sb3JfY2hlY2soc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwogdm9pZCBpbnRlbF9jb2xvcl9jb21taXQo
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwogdm9pZCBpbnRlbF9j
b2xvcl9sb2FkX2x1dHMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
Owordm9pZCBpbnRlbF9jb2xvcl9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKTsKIAogI2VuZGlmIC8qIF9fSU5URUxfQ09MT1JfSF9fICovCi0tIAoxLjkuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
