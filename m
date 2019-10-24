Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3DEE3AE2
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 20:24:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B59DA6E5D4;
	Thu, 24 Oct 2019 18:24:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B10AE6E5D5
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 18:24:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 11:24:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,225,1569308400"; d="scan'208";a="373305017"
Received: from helsinki.fi.intel.com ([10.237.66.157])
 by orsmga005.jf.intel.com with ESMTP; 24 Oct 2019 11:24:35 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 21:24:20 +0300
Message-Id: <20191024182423.958952-3-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191024182423.958952-1-gwan-gyeong.mun@intel.com>
References: <20191024182423.958952-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Add checking a specific Video DIP
 is enabled or not
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

QmVjYXVzZSBEUCBwb3J0cyBkb24ndCB1c2UgaW50ZWxfaGRtaV9pbmZvZnJhbWVzX2VuYWJsZWQo
KSBtYWNoYW5pc20sCkRQIHBvcnRzIHJlcXVpcmVzIGEgd2F5IHRvIGNoZWNrIGEgc3BlY2lmaWMg
aW5mb2ZyYW1lIChha2EuIFZpZGVvIERJUCApCmlzIGVuYWJsZWQgb3Igbm90LgoKU2lnbmVkLW9m
Zi1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIHwgMjEgKysrKysrKysrKysr
KysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuaCB8ICAz
ICsrKwogMiBmaWxlcyBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwppbmRleCAzYzJhZWE5M2FlMDIuLmFlZDA2YTVkYTQ4
OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKQEAgLTYyMCw2
ICs2MjAsMjcgQEAgdm9pZCBpbnRlbF9lbmFibGVfaW5mb2ZyYW1lKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLAogCX0KIH0KIAorYm9vbCBpbnRlbF9pbmZvZnJhbWVfZW5hYmxlZChzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKKwkJCSAgICAgY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUsCisJCQkgICAgIHVuc2lnbmVkIGludCB0eXBlKQoreworCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5k
ZXYpOworCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gZW5jX3RvX2RpZ19w
b3J0KCZlbmNvZGVyLT5iYXNlKTsKKwl1MzIgdmFsID0gMDsKKworCXZhbCA9IGRpZ19wb3J0LT5p
bmZvZnJhbWVzX2VuYWJsZWQoZW5jb2RlciwgY3J0Y19zdGF0ZSk7CisKKwlpZiAoSEFTX0RESShk
ZXZfcHJpdikpIHsKKwkJaWYgKHZhbCAmIGhzd19pbmZvZnJhbWVfZW5hYmxlKHR5cGUpKQorCQkJ
cmV0dXJuIHRydWU7CisJfSBlbHNlIHsKKwkJaWYgKHZhbCAmIGc0eF9pbmZvZnJhbWVfZW5hYmxl
KHR5cGUpKQorCQkJcmV0dXJuIHRydWU7CisJfQorCisJcmV0dXJuIGZhbHNlOworfQorCiB1MzIg
aW50ZWxfaGRtaV9pbmZvZnJhbWVfZW5hYmxlKHVuc2lnbmVkIGludCB0eXBlKQogewogCWludCBp
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuaAppbmRleCA4NmY5MjU1
MjY1MTQuLjk2ZDUwZjU5MWI2OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9oZG1pLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9oZG1pLmgKQEAgLTUxLDUgKzUxLDggQEAgdm9pZCBpbnRlbF9yZWFkX2luZm9mcmFtZShzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIHZvaWQgaW50ZWxfZW5hYmxlX2luZm9mcmFtZShz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgYm9vbCBlbmFibGUsCiAJCQkgICAgY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCQkgICAgdW5zaWduZWQgaW50
IHR5cGUpOworYm9vbCBpbnRlbF9pbmZvZnJhbWVfZW5hYmxlZChzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwKKwkJCSAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUsCisJCQkgICAgIHVuc2lnbmVkIGludCB0eXBlKTsKIAogI2VuZGlmIC8qIF9fSU5URUxf
SERNSV9IX18gKi8KLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
