Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88427CE6CF
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 17:10:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02B2689D4F;
	Mon,  7 Oct 2019 15:10:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC81689D4F
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 15:10:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 08:10:21 -0700
X-IronPort-AV: E=Sophos;i="5.67,268,1566889200"; d="scan'208";a="344758739"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 08:10:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Oct 2019 18:09:32 +0300
Message-Id: <d3acaef111f59413dfbcd7443abad6eba4a8e43b.1570460714.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1570460714.git.jani.nikula@intel.com>
References: <cover.1570460714.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 07/11] drm/i915: split intel_modeset_init() to
 pre/post irq install
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

U3BsaXQgaW50ZV9tb2Rlc2V0X2luaXQoKSB0byBwYXJ0cyBiZWZvcmUgYW5kIGFmdGVyIGlycSBp
bnN0YWxsLCB0bwpmYWNpbGl0YXRlIGZ1cnRoZXIgY2xlYW51cC4gVGhlIGVycm9yIHBhdGhzIGFy
ZSBhIG1lc3MsIG90aGVyd2lzZSBubwpmdW5jdGlvbmFsIGNoYW5nZXMuCgpTaWduZWQtb2ZmLWJ5
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTcgKysrKysrKysrKysrKy0tLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIHwgIDEgKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgfCAgNiArKysrKysKIDMgZmls
ZXMgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGQ3OGYyYzkwOGQ4Yi4u
MjM1MmMwYjZiOWZhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwpAQCAtMTYxODcsMTEgKzE2MTg3LDkgQEAgc3RhdGljIHZvaWQgaW50ZWxfbW9kZV9j
b25maWdfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAl9CiB9CiAKLWludCBp
bnRlbF9tb2Rlc2V0X2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCisvKiBwYXJ0
ICMxOiBjYWxsIGJlZm9yZSBpcnEgaW5zdGFsbCAqLworaW50IGludGVsX21vZGVzZXRfaW5pdF9u
b2lycShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKLQlzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2ID0gJmk5MTUtPmRybTsKLQllbnVtIHBpcGUgcGlwZTsKLQlzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YzsKIAlpbnQgcmV0OwogCiAJaTkxNS0+bW9kZXNldF93cSA9IGFsbG9jX29yZGVyZWRf
d29ya3F1ZXVlKCJpOTE1X21vZGVzZXQiLCAwKTsKQEAgLTE2MjEyLDYgKzE2MjEwLDE3IEBAIGlu
dCBpbnRlbF9tb2Rlc2V0X2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAKIAlp
bnRlbF9mYmNfaW5pdChpOTE1KTsKIAorCXJldHVybiAwOworfQorCisvKiBwYXJ0ICMyOiBjYWxs
IGFmdGVyIGlycSBpbnN0YWxsICovCitpbnQgaW50ZWxfbW9kZXNldF9pbml0KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KQoreworCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSAmaTkxNS0+
ZHJtOworCWVudW0gcGlwZSBwaXBlOworCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOworCWludCBy
ZXQ7CisKIAlpbnRlbF9pbml0X3BtKGk5MTUpOwogCiAJaW50ZWxfcGFuZWxfc2FuaXRpemVfc3Nj
KGk5MTUpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaApp
bmRleCBkMDcwNWYzMzgwNDguLjU2OGI2NDFhMzhkZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKQEAgLTU3Nyw2ICs1NzcsNyBAQCB2b2lkIGludGVs
X2Rpc3BsYXlfcHJpbnRfZXJyb3Jfc3RhdGUoc3RydWN0IGRybV9pOTE1X2Vycm9yX3N0YXRlX2J1
ZiAqZSwKIAogLyogbW9kZXNldHRpbmcgKi8KIHZvaWQgaW50ZWxfbW9kZXNldF9pbml0X2h3KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKK2ludCBpbnRlbF9tb2Rlc2V0X2luaXRfbm9p
cnEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwogaW50IGludGVsX21vZGVzZXRfaW5p
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7CiB2b2lkIGludGVsX21vZGVzZXRfZHJp
dmVyX3JlbW92ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7CiB2b2lkIGludGVsX21v
ZGVzZXRfZHJpdmVyX3JlbW92ZV9ub2lycShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuYwppbmRleCBjZjNkYWE0OWE0ZDEuLjMzMzBlNDA3MjRjYiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCkBAIC0yOTIsOCArMjkyLDE0IEBAIHN0YXRpYyBpbnQg
aTkxNV9kcml2ZXJfbW9kZXNldF9wcm9iZV9ub2lycShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkKIAogCWludGVsX2Nzcl91Y29kZV9pbml0KGk5MTUpOwogCisJcmV0ID0gaW50ZWxfbW9k
ZXNldF9pbml0X25vaXJxKGk5MTUpOworCWlmIChyZXQpCisJCWdvdG8gY2xlYW51cF92Z2FfY2xp
ZW50OworCiAJcmV0dXJuIDA7CiAKK2NsZWFudXBfdmdhX2NsaWVudDoKKwlpbnRlbF92Z2FfdW5y
ZWdpc3RlcihpOTE1KTsKIG91dDoKIAlyZXR1cm4gcmV0OwogfQotLSAKMi4yMC4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
