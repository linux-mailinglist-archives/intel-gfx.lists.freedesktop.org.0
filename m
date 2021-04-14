Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 663A435EACA
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 04:23:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC8606E431;
	Wed, 14 Apr 2021 02:23:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9264A6E431
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 02:23:27 +0000 (UTC)
IronPort-SDR: WSigthQrz2D/1ISrZXSPjq6o2LIzxknAQApczGjpyw0ZvQgUGD1gBODcWMIV2aXf6RRTBHddAK
 HG3XO8Izz4LA==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="215034816"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="215034816"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 19:23:26 -0700
IronPort-SDR: IhMvlCS5Hduqr00laRa59p5VgwNPyFhBjowh0NtFqZoHHSK4MhYaJnDzP07aUpuv7OmtZ040Aj
 mRFVtboV8HbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="383515522"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 13 Apr 2021 19:23:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 14 Apr 2021 05:23:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 05:23:06 +0300
Message-Id: <20210414022309.30898-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210414022309.30898-1-ville.syrjala@linux.intel.com>
References: <20210414022309.30898-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/8] drm/i915: Move the "recompress on activate"
 to a central place
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk9u
IElMSysgd2UgY3VycmVudCBkbyBhIG51a2UgcmlnaHQgYWZ0ZXIgYWN0aXZhdGluZyBGQkMuIElm
IG15Cm1lbW9yeSBpc24ndCBwbGF5aW5nIHRyaWNrcyBvbiBtZSB0aGlzIGlzIGFjdGlhbGx5IHJl
cXVpcmVkIGlmCkZCQyBkaWRuJ3Qgc3RheSBkaXNhYmxlZCBmb3IgYSBmdWxsIGZyYW1lLiBJbiB0
aGF0IGNhc2UgdGhlCmRlYWN0aXZhdGUrcmVhY3RpdmF0ZSBtYXkgbm90IGludmFsaWRhdGUgdGhl
IGNmYi4gSSdkIGhhdmUgdG8KZG91YmxlIGNoZWtjIHRvIGJlIHN1cmUgdGhvdWdoLgoKU28gbGV0
J3Mga2VlcCB0aGUgbnVrZSwgYW5kIGp1c3QgZXh0ZW5kIGl0IGJhY2t3YXJkcyB0byBjb3Zlcgph
bGwgdGhlIHBsYXRmb3JtcyBieSBkb2luZyBpdCBhIGJpdCBoaWdoZXIgdXAuCgpTaWduZWQtb2Zm
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAxMyArKysrKy0tLS0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCmluZGV4IGZiOGMwODcyYTJiNy4u
ODE2NWJkYjZmOTIxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2ZiYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMK
QEAgLTIxMiwxNiArMjEyLDE2IEBAIHN0YXRpYyB2b2lkIGk5NjVfZmJjX3JlY29tcHJlc3Moc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogLyogVGhpcyBmdW5jdGlvbiBmb3JjZXMg
YSBDRkIgcmVjb21wcmVzc2lvbiB0aHJvdWdoIHRoZSBudWtlIG9wZXJhdGlvbi4gKi8KIHN0YXRp
YyB2b2lkIHNuYl9mYmNfcmVjb21wcmVzcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCiB7Ci0Jc3RydWN0IGludGVsX2ZiYyAqZmJjID0gJmRldl9wcml2LT5mYmM7Ci0KLQl0cmFj
ZV9pbnRlbF9mYmNfbnVrZShmYmMtPmNydGMpOwotCiAJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYs
IE1TR19GQkNfUkVORF9TVEFURSwgRkJDX1JFTkRfTlVLRSk7CiAJaW50ZWxfZGVfcG9zdGluZ19y
ZWFkKGRldl9wcml2LCBNU0dfRkJDX1JFTkRfU1RBVEUpOwogfQogCiBzdGF0aWMgdm9pZCBpbnRl
bF9mYmNfcmVjb21wcmVzcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CisJ
c3RydWN0IGludGVsX2ZiYyAqZmJjID0gJmRldl9wcml2LT5mYmM7CisKKwl0cmFjZV9pbnRlbF9m
YmNfbnVrZShmYmMtPmNydGMpOworCiAJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSA2KQog
CQlzbmJfZmJjX3JlY29tcHJlc3MoZGV2X3ByaXYpOwogCWVsc2UgaWYgKERJU1BMQVlfVkVSKGRl
dl9wcml2KSA+PSA0KQpAQCAtMjc0LDggKzI3NCw2IEBAIHN0YXRpYyB2b2lkIGlsa19mYmNfYWN0
aXZhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQkgICAgICAgcGFyYW1z
LT5mZW5jZV95X29mZnNldCk7CiAJLyogZW5hYmxlIGl0Li4uICovCiAJaW50ZWxfZGVfd3JpdGUo
ZGV2X3ByaXYsIElMS19EUEZDX0NPTlRST0wsIGRwZmNfY3RsIHwgRFBGQ19DVExfRU4pOwotCi0J
aW50ZWxfZmJjX3JlY29tcHJlc3MoZGV2X3ByaXYpOwogfQogCiBzdGF0aWMgdm9pZCBpbGtfZmJj
X2RlYWN0aXZhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQpAQCAtMzQ4LDgg
KzM0Niw2IEBAIHN0YXRpYyB2b2lkIGdlbjdfZmJjX2FjdGl2YXRlKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKIAkJZHBmY19jdGwgfD0gRkJDX0NUTF9GQUxTRV9DT0xPUjsKIAog
CWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBJTEtfRFBGQ19DT05UUk9MLCBkcGZjX2N0bCB8IERQ
RkNfQ1RMX0VOKTsKLQotCWludGVsX2ZiY19yZWNvbXByZXNzKGRldl9wcml2KTsKIH0KIAogc3Rh
dGljIGJvb2wgaW50ZWxfZmJjX2h3X2lzX2FjdGl2ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCkBAIC00MTgsNiArNDE0LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfZmJjX2FjdGl2
YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlkcm1fV0FSTl9PTigmZGV2
X3ByaXYtPmRybSwgIW11dGV4X2lzX2xvY2tlZCgmZmJjLT5sb2NrKSk7CiAKIAlpbnRlbF9mYmNf
aHdfYWN0aXZhdGUoZGV2X3ByaXYpOworCWludGVsX2ZiY19yZWNvbXByZXNzKGRldl9wcml2KTsK
IAogCWZiYy0+bm9fZmJjX3JlYXNvbiA9IE5VTEw7CiB9Ci0tIAoyLjI2LjMKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
