Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB4E2F6C89
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 21:51:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52DCE6E139;
	Thu, 14 Jan 2021 20:51:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A5066E135
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 20:51:05 +0000 (UTC)
IronPort-SDR: eq9wVIBCFFbKM/nTn0akTYuiWHHEFPpLdJDjPK6DJZUsaEu7vRW0LKwASv4Az/gcaRhr5WvHvU
 wJwvQnqpXPZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="263234043"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="263234043"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 12:51:04 -0800
IronPort-SDR: 2L6QJppWjjs8Q6ytt3uR8R1vYJlvCB9nH6efvWalAZ0f6uGP0wM8uEKcfxtSD398GBEo69PyZj
 7i82sw9BSzcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="352615090"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 14 Jan 2021 12:51:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Jan 2021 22:51:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jan 2021 22:50:44 +0200
Message-Id: <20210114205046.8247-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210114205046.8247-1-ville.syrjala@linux.intel.com>
References: <20210114205046.8247-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915: Split intel_ddi_encoder_reset()
 from intel_dp_encoder_reset()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1v
c3Qgb2YgaW50ZWxfZHBfZW5jb2Rlcl9yZXNldCgpIGlzIGZvciBwcmUtZGRpIHBsYXRmb3Jtcy4K
TWFrZSBhIGNsZWFuIHNwbGl0LgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jIHwgMTEgKysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYyAgfCAgNSArKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5oICB8ICAxIC0KIDMgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwg
NSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpp
bmRleCBkNzE0ZThiMzRkNTIuLjQ0NDNhNGFiNzIyZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jCkBAIC01MDQ1LDggKzUwNDUsMTcgQEAgc3RhdGljIHZvaWQgaW50
ZWxfZGRpX2VuY29kZXJfZGVzdHJveShzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIpCiAJa2Zy
ZWUoZGlnX3BvcnQpOwogfQogCitzdGF0aWMgdm9pZCBpbnRlbF9kZGlfZW5jb2Rlcl9yZXNldChz
dHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIpCit7CisJc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCA9IGVuY190b19pbnRlbF9kcCh0b19pbnRlbF9lbmNvZGVyKGVuY29kZXIpKTsKKworCWludGVs
X2RwLT5yZXNldF9saW5rX3BhcmFtcyA9IHRydWU7CisKKwlpbnRlbF9wcHNfZW5jb2Rlcl9yZXNl
dChpbnRlbF9kcCk7Cit9CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2VuY29kZXJfZnVuY3Mg
aW50ZWxfZGRpX2Z1bmNzID0gewotCS5yZXNldCA9IGludGVsX2RwX2VuY29kZXJfcmVzZXQsCisJ
LnJlc2V0ID0gaW50ZWxfZGRpX2VuY29kZXJfcmVzZXQsCiAJLmRlc3Ryb3kgPSBpbnRlbF9kZGlf
ZW5jb2Rlcl9kZXN0cm95LAogfTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jCmluZGV4IDFkZjAwYzQ5ODBiZi4uMzA3MTM4MTZiZjlkIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC02MzE5LDEzICs2MzE5LDEyIEBAIHN0YXRpYyBlbnVt
IHBpcGUgdmx2X2FjdGl2ZV9waXBlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJcmV0dXJu
IElOVkFMSURfUElQRTsKIH0KIAotdm9pZCBpbnRlbF9kcF9lbmNvZGVyX3Jlc2V0KHN0cnVjdCBk
cm1fZW5jb2RlciAqZW5jb2RlcikKK3N0YXRpYyB2b2lkIGludGVsX2RwX2VuY29kZXJfcmVzZXQo
c3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+ZGV2KTsKIAlzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKHRvX2ludGVsX2VuY29kZXIoZW5jb2RlcikpOwogCi0J
aWYgKCFIQVNfRERJKGRldl9wcml2KSkKLQkJaW50ZWxfZHAtPkRQID0gaW50ZWxfZGVfcmVhZChk
ZXZfcHJpdiwgaW50ZWxfZHAtPm91dHB1dF9yZWcpOworCWludGVsX2RwLT5EUCA9IGludGVsX2Rl
X3JlYWQoZGV2X3ByaXYsIGludGVsX2RwLT5vdXRwdXRfcmVnKTsKIAogCWludGVsX2RwLT5yZXNl
dF9saW5rX3BhcmFtcyA9IHRydWU7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuaAppbmRleCA5NTA4ZmE3OWQ5YmUuLjZhMmM3NTlhZDQ2ZiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuaApAQCAtNTYsNyArNTYsNiBAQCB2b2lkIGludGVsX2RwX2Nv
bmZpZ3VyZV9wcm90b2NvbF9jb252ZXJ0ZXIoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIHZv
aWQgaW50ZWxfZHBfc2lua19zZXRfZGVjb21wcmVzc2lvbl9zdGF0ZShzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwLAogCQkJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSwKIAkJCQkJICAgYm9vbCBlbmFibGUpOwotdm9pZCBpbnRlbF9kcF9lbmNvZGVyX3Jlc2V0
KHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2Rlcik7CiB2b2lkIGludGVsX2RwX2VuY29kZXJfc3Vz
cGVuZChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqaW50ZWxfZW5jb2Rlcik7CiB2b2lkIGludGVsX2Rw
X2VuY29kZXJfc2h1dGRvd24oc3RydWN0IGludGVsX2VuY29kZXIgKmludGVsX2VuY29kZXIpOwog
dm9pZCBpbnRlbF9kcF9lbmNvZGVyX2ZsdXNoX3dvcmsoc3RydWN0IGRybV9lbmNvZGVyICplbmNv
ZGVyKTsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
