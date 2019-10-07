Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F9CCE6D3
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 17:10:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CFA76E0AA;
	Mon,  7 Oct 2019 15:10:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1523A6E0AA
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 15:10:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 08:10:36 -0700
X-IronPort-AV: E=Sophos;i="5.67,268,1566889200"; d="scan'208";a="368141528"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 08:10:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Oct 2019 18:09:35 +0300
Message-Id: <25bf6bf7a482c698d236e02c12b686ee1d0fe79f.1570460714.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1570460714.git.jani.nikula@intel.com>
References: <cover.1570460714.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 10/11] drm/i915: move modeset probe failures
 down to intel_display.c
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

TWFrZXMgbW9yZSBzZW5zZSwgZmFjaWxpdGF0ZXMgZnVydGhlciBjbGVhbnVwLgoKU2lnbmVkLW9m
Zi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDYgKysrKysrCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgICAgICB8IDYgLS0tLS0tCiAyIGZpbGVzIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGRiNzlmYWZmYTdjNy4uZjRiOWQ0
ZTI5ZWRjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YwpAQCAtMTYxOTMsNiArMTYxOTMsOSBAQCBpbnQgaW50ZWxfbW9kZXNldF9pbml0X25vaXJxKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogewogCWludCByZXQ7CiAKKwlpZiAoaTkxNV9p
bmplY3RfcHJvYmVfZmFpbHVyZShpOTE1KSkKKwkJcmV0dXJuIC1FTk9ERVY7CisKIAlpZiAoSEFT
X0RJU1BMQVkoaTkxNSkgJiYgSU5URUxfRElTUExBWV9FTkFCTEVEKGk5MTUpKSB7CiAJCXJldCA9
IGRybV92YmxhbmtfaW5pdCgmaTkxNS0+ZHJtLAogCQkJCSAgICAgIElOVEVMX05VTV9QSVBFUyhp
OTE1KSk7CkBAIC0xNjI0MCw2ICsxNjI0Myw5IEBAIGludCBpbnRlbF9tb2Rlc2V0X2luaXRfbm9n
ZW0oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJc3RydWN0IGludGVsX2NydGMgKmNy
dGM7CiAJaW50IHJldDsKIAorCWlmIChpOTE1X2luamVjdF9wcm9iZV9mYWlsdXJlKGk5MTUpKQor
CQlyZXR1cm4gLUVOT0RFVjsKKwogCWludGVsX2luaXRfcG0oaTkxNSk7CiAKIAlpbnRlbF9wYW5l
bF9zYW5pdGl6ZV9zc2MoaTkxNSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwppbmRleCBkMDkyY2Mx
MzBhY2YuLjVhNzc4OTQ0ZDdhOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCkBAIC0yNzIsOSAr
MjcyLDYgQEAgaW50ZWxfdGVhcmRvd25fbWNoYmFyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKIC8qIHBhcnQgIzE6IGNhbGwgYmVmb3JlIGlycSBpbnN0YWxsICovCiBzdGF0aWMg
aW50IGk5MTVfZHJpdmVyX21vZGVzZXRfcHJvYmVfbm9pcnEoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCiB7Ci0JaWYgKGk5MTVfaW5qZWN0X3Byb2JlX2ZhaWx1cmUoaTkxNSkpCi0JCXJl
dHVybiAtRU5PREVWOwotCiAJcmV0dXJuIGludGVsX21vZGVzZXRfaW5pdF9ub2lycShpOTE1KTsK
IH0KIApAQCAtMjgzLDkgKzI4MCw2IEBAIHN0YXRpYyBpbnQgaTkxNV9kcml2ZXJfbW9kZXNldF9w
cm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKIAlpbnQgcmV0OwogCi0JaWYg
KGk5MTVfaW5qZWN0X3Byb2JlX2ZhaWx1cmUoaTkxNSkpCi0JCXJldHVybiAtRU5PREVWOwotCiAJ
LyogSW1wb3J0YW50OiBUaGUgb3V0cHV0IHNldHVwIGZ1bmN0aW9ucyBjYWxsZWQgYnkgbW9kZXNl
dF9pbml0IG5lZWQKIAkgKiB3b3JraW5nIGlycXMgZm9yIGUuZy4gZ21idXMgYW5kIGRwIGF1eCB0
cmFuc2ZlcnMuICovCiAJcmV0ID0gaW50ZWxfbW9kZXNldF9pbml0X25vZ2VtKGk5MTUpOwotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
