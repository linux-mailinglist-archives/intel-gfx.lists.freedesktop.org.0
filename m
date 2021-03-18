Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 617BF3409B8
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 17:10:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59E7C6E906;
	Thu, 18 Mar 2021 16:10:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7F256E8F6
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Mar 2021 16:10:34 +0000 (UTC)
IronPort-SDR: S0ryDet/Y07kBl8kcehKrQqpBWAYDFI7KFEe//be+Li3RbcsKlJ5N9KHWv21MKnGEoBpRVCR2N
 eNTi3f1IGzXQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="274773340"
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="274773340"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 09:10:32 -0700
IronPort-SDR: s7jRZWKDkT4dGp5GAyrJyZUQ6pp7Lt6RI+aziCw5fOYIO/pNGCemZtJm964Ahtr3lAPmzB0DKn
 LNEn9Iztebkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="406420596"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 18 Mar 2021 09:10:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Mar 2021 18:10:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Mar 2021 18:10:12 +0200
Message-Id: <20210318161015.22070-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210318161015.22070-1-ville.syrjala@linux.intel.com>
References: <20210318161015.22070-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/7] drm/i915: Split
 intel_ddi_encoder_reset() from intel_dp_encoder_reset()
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1v
c3Qgb2YgaW50ZWxfZHBfZW5jb2Rlcl9yZXNldCgpIGlzIGZvciBwcmUtZGRpIHBsYXRmb3Jtcy4K
TWFrZSBhIGNsZWFuIHNwbGl0LgoKUmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52
ZXR0ZXJAZmZ3bGwuY2g+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYyB8IDExICsrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMgIHwgIDUgKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuaCAgfCAgMSAtCiAzIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDUgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXgg
NzU2NTVmNDdmMjZjLi42NDM4ZTEwMmFkMWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYwpAQCAtNDAxNyw4ICs0MDE3LDE3IEBAIHN0YXRpYyB2b2lkIGludGVsX2Rk
aV9lbmNvZGVyX2Rlc3Ryb3koc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyKQogCWtmcmVlKGRp
Z19wb3J0KTsKIH0KIAorc3RhdGljIHZvaWQgaW50ZWxfZGRpX2VuY29kZXJfcmVzZXQoc3RydWN0
IGRybV9lbmNvZGVyICplbmNvZGVyKQoreworCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBl
bmNfdG9faW50ZWxfZHAodG9faW50ZWxfZW5jb2RlcihlbmNvZGVyKSk7CisKKwlpbnRlbF9kcC0+
cmVzZXRfbGlua19wYXJhbXMgPSB0cnVlOworCisJaW50ZWxfcHBzX2VuY29kZXJfcmVzZXQoaW50
ZWxfZHApOworfQorCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9lbmNvZGVyX2Z1bmNzIGludGVs
X2RkaV9mdW5jcyA9IHsKLQkucmVzZXQgPSBpbnRlbF9kcF9lbmNvZGVyX3Jlc2V0LAorCS5yZXNl
dCA9IGludGVsX2RkaV9lbmNvZGVyX3Jlc2V0LAogCS5kZXN0cm95ID0gaW50ZWxfZGRpX2VuY29k
ZXJfZGVzdHJveSwKIH07CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpp
bmRleCA0MTU3MzJiODAxMDguLjI0OWZmZDJjN2M1NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYwpAQCAtNTczOCwxMyArNTczOCwxMiBAQCBzdGF0aWMgZW51bSBwaXBl
IHZsdl9hY3RpdmVfcGlwZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCXJldHVybiBJTlZB
TElEX1BJUEU7CiB9CiAKLXZvaWQgaW50ZWxfZHBfZW5jb2Rlcl9yZXNldChzdHJ1Y3QgZHJtX2Vu
Y29kZXIgKmVuY29kZXIpCitzdGF0aWMgdm9pZCBpbnRlbF9kcF9lbmNvZGVyX3Jlc2V0KHN0cnVj
dCBkcm1fZW5jb2RlciAqZW5jb2RlcikKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmRldik7CiAJc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCA9IGVuY190b19pbnRlbF9kcCh0b19pbnRlbF9lbmNvZGVyKGVuY29kZXIpKTsKIAotCWlmICgh
SEFTX0RESShkZXZfcHJpdikpCi0JCWludGVsX2RwLT5EUCA9IGludGVsX2RlX3JlYWQoZGV2X3By
aXYsIGludGVsX2RwLT5vdXRwdXRfcmVnKTsKKwlpbnRlbF9kcC0+RFAgPSBpbnRlbF9kZV9yZWFk
KGRldl9wcml2LCBpbnRlbF9kcC0+b3V0cHV0X3JlZyk7CiAKIAlpbnRlbF9kcC0+cmVzZXRfbGlu
a19wYXJhbXMgPSB0cnVlOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgK
aW5kZXggZDY3M2NiYTE2ODM1Li5lNGE3MWMxOWJkNTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmgKQEAgLTU2LDcgKzU2LDYgQEAgdm9pZCBpbnRlbF9kcF9jb25maWd1
cmVfcHJvdG9jb2xfY29udmVydGVyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiB2b2lkIGlu
dGVsX2RwX3Npbmtfc2V0X2RlY29tcHJlc3Npb25fc3RhdGUoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCwKIAkJCQkJICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUs
CiAJCQkJCSAgIGJvb2wgZW5hYmxlKTsKLXZvaWQgaW50ZWxfZHBfZW5jb2Rlcl9yZXNldChzdHJ1
Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIpOwogdm9pZCBpbnRlbF9kcF9lbmNvZGVyX3N1c3BlbmQo
c3RydWN0IGludGVsX2VuY29kZXIgKmludGVsX2VuY29kZXIpOwogdm9pZCBpbnRlbF9kcF9lbmNv
ZGVyX3NodXRkb3duKHN0cnVjdCBpbnRlbF9lbmNvZGVyICppbnRlbF9lbmNvZGVyKTsKIHZvaWQg
aW50ZWxfZHBfZW5jb2Rlcl9mbHVzaF93b3JrKHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2Rlcik7
Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
