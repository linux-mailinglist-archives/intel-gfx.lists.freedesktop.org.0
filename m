Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 484FA3BA4C9
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 22:46:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9844C6E207;
	Fri,  2 Jul 2021 20:46:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6109F6E207
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jul 2021 20:46:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10033"; a="272635568"
X-IronPort-AV: E=Sophos;i="5.83,320,1616482800"; d="scan'208";a="272635568"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2021 13:46:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,320,1616482800"; d="scan'208";a="458691731"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 02 Jul 2021 13:46:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 02 Jul 2021 23:46:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Jul 2021 23:45:58 +0300
Message-Id: <20210702204603.596-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210702204603.596-1-ville.syrjala@linux.intel.com>
References: <20210702204603.596-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/8] drm/i915/fbc: Move the "recompress on
 activate" to a central place
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
Cc: Jani Nikula <jani.nikula@intel.com>
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
bGwgdGhlIHBsYXRmb3JtcyBieSBkb2luZyBpdCBhIGJpdCBoaWdoZXIgdXAuCgpSZXZpZXdlZC1i
eTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgMjAgKysrKysrKysrKystLS0tLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCmluZGV4IDhiNzIxYzhjZGQ2Yy4u
YzljZGU5NmYzMzBiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2ZiYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMK
QEAgLTIzMiwxNiArMjMyLDE2IEBAIHN0YXRpYyB2b2lkIGk5NjVfZmJjX3JlY29tcHJlc3Moc3Ry
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
dl9wcml2KSA+PSA0KQpAQCAtMjgwLDggKzI4MCw2IEBAIHN0YXRpYyB2b2lkIGlsa19mYmNfYWN0
aXZhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQkgICAgICAgcGFyYW1z
LT5mZW5jZV95X29mZnNldCk7CiAJLyogZW5hYmxlIGl0Li4uICovCiAJaW50ZWxfZGVfd3JpdGUo
ZGV2X3ByaXYsIElMS19EUEZDX0NPTlRST0wsIGRwZmNfY3RsIHwgRFBGQ19DVExfRU4pOwotCi0J
aW50ZWxfZmJjX3JlY29tcHJlc3MoZGV2X3ByaXYpOwogfQogCiBzdGF0aWMgdm9pZCBpbGtfZmJj
X2RlYWN0aXZhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQpAQCAtMzM5LDgg
KzMzNyw2IEBAIHN0YXRpYyB2b2lkIGdlbjdfZmJjX2FjdGl2YXRlKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKIAkJZHBmY19jdGwgfD0gRkJDX0NUTF9GQUxTRV9DT0xPUjsKIAog
CWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBJTEtfRFBGQ19DT05UUk9MLCBkcGZjX2N0bCB8IERQ
RkNfQ1RMX0VOKTsKLQotCWludGVsX2ZiY19yZWNvbXByZXNzKGRldl9wcml2KTsKIH0KIAogc3Rh
dGljIGJvb2wgaW50ZWxfZmJjX2h3X2lzX2FjdGl2ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCkBAIC00MDIsNiArMzk4LDEyIEBAIGJvb2wgaW50ZWxfZmJjX2lzX2FjdGl2ZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJcmV0dXJuIGRldl9wcml2LT5mYmMu
YWN0aXZlOwogfQogCitzdGF0aWMgdm9pZCBpbnRlbF9mYmNfYWN0aXZhdGUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQoreworCWludGVsX2ZiY19od19hY3RpdmF0ZShkZXZfcHJp
dik7CisJaW50ZWxfZmJjX3JlY29tcHJlc3MoZGV2X3ByaXYpOworfQorCiBzdGF0aWMgdm9pZCBp
bnRlbF9mYmNfZGVhY3RpdmF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJ
CQkJIGNvbnN0IGNoYXIgKnJlYXNvbikKIHsKQEAgLTEwODgsNyArMTA5MCw3IEBAIHN0YXRpYyB2
b2lkIF9faW50ZWxfZmJjX3Bvc3RfdXBkYXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogCQly
ZXR1cm47CiAKIAlpZiAoIWZiYy0+YnVzeV9iaXRzKQotCQlpbnRlbF9mYmNfaHdfYWN0aXZhdGUo
ZGV2X3ByaXYpOworCQlpbnRlbF9mYmNfYWN0aXZhdGUoZGV2X3ByaXYpOwogCWVsc2UKIAkJaW50
ZWxfZmJjX2RlYWN0aXZhdGUoZGV2X3ByaXYsICJmcm9udGJ1ZmZlciB3cml0ZSIpOwogfQotLSAK
Mi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
