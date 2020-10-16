Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DB1290C6E
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 21:48:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9A8A6E116;
	Fri, 16 Oct 2020 19:48:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 800056E116
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Oct 2020 19:48:05 +0000 (UTC)
IronPort-SDR: dNLXVx00oeqs4vteqzwCNNmaUY3YI2nIigGyxZnkZ2UfKAQLG7lkZB0PLKthmYwiC09eerY3TG
 lu0Z8WoADt6w==
X-IronPort-AV: E=McAfee;i="6000,8403,9776"; a="251370936"
X-IronPort-AV: E=Sophos;i="5.77,383,1596524400"; d="scan'208";a="251370936"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2020 12:48:03 -0700
IronPort-SDR: WanQbEWZ1mIxlc1oMEwn1/wt6zgcEG4pX1IIrCQdCJ7eHtDWBhcj95hDxMluO/geUe9T8+GtMc
 6CKsAR0dFGzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,383,1596524400"; d="scan'208";a="300755647"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 16 Oct 2020 12:48:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Oct 2020 22:48:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 22:47:59 +0300
Message-Id: <20201016194800.25581-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Move the lspcon resume from
 .reset() to intel_dp_sink_dpms()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJh
dGhlciB0aGF0IHRyeSB0byB0cmljayBMU1BDT04gYmFjayBpbnRvIFBDT04gbW9kZSBmcm9tIHRo
ZSAucmVzZXQoKQpob29rIGxldCdzIGp1c3QgZG8gdGhhdCBhcyBhIHJlZ3VsYXIgcGFydCBvZiB0
aGUgbm9ybWFsIG1vZGVzZXQKc2VxdWVuY2UsIHdoaWNoIGlzIGdvaW5nIHRvIHRha2UgY2FyZSBv
ZiB0aGUgc3lzdGVtIHJlc3VtZSBjYXNlLiBEdXJpbmcKYSBub3JtYWwgbW9kZXNldCB0aGlzIHNo
b3VsZCBub3JtYWxseSBiZSBhIG5vcCBhcyB0aGUgbW9kZSBzaG91bGQgaGF2ZQphbHJlYWR5IGJl
ZW4gc3dpdGNoZWQgYnkgLmRldGVjdCgpLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMgfCA1ICsrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYwppbmRleCA1MjA3NWEyNDFlYWYuLjQ3ODRhYWViOTM0ZSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpAQCAtMzQ5MCw2ICszNDkwLDggQEAgdm9pZCBpbnRlbF9k
cF9zaW5rX2RwbXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgaW50IG1vZGUpCiAJfSBlbHNl
IHsKIAkJc3RydWN0IGludGVsX2xzcGNvbiAqbHNwY29uID0gZHBfdG9fbHNwY29uKGludGVsX2Rw
KTsKIAorCQlsc3Bjb25fcmVzdW1lKGRwX3RvX2RpZ19wb3J0KGludGVsX2RwKSk7CisKIAkJLyoK
IAkJICogV2hlbiB0dXJuaW5nIG9uLCB3ZSBuZWVkIHRvIHJldHJ5IGZvciAxbXMgdG8gZ2l2ZSB0
aGUgc2luawogCQkgKiB0aW1lIHRvIHdha2UgdXAuCkBAIC02NzgyLDE0ICs2Nzg0LDExIEBAIHZv
aWQgaW50ZWxfZHBfZW5jb2Rlcl9yZXNldChzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIpCiB7
CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5k
ZXYpOwogCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAodG9faW50
ZWxfZW5jb2RlcihlbmNvZGVyKSk7Ci0Jc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3Bv
cnQgPSBkcF90b19kaWdfcG9ydChpbnRlbF9kcCk7CiAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7
CiAKIAlpZiAoIUhBU19EREkoZGV2X3ByaXYpKQogCQlpbnRlbF9kcC0+RFAgPSBpbnRlbF9kZV9y
ZWFkKGRldl9wcml2LCBpbnRlbF9kcC0+b3V0cHV0X3JlZyk7CiAKLQlsc3Bjb25fcmVzdW1lKGRp
Z19wb3J0KTsKLQogCWludGVsX2RwLT5yZXNldF9saW5rX3BhcmFtcyA9IHRydWU7CiAKIAlpZiAo
IUlTX1ZBTExFWVZJRVcoZGV2X3ByaXYpICYmICFJU19DSEVSUllWSUVXKGRldl9wcml2KSAmJgot
LSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
