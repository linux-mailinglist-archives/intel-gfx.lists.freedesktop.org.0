Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB823A3330
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 20:33:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FEF96EDD3;
	Thu, 10 Jun 2021 18:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09E116EDD5
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 18:33:06 +0000 (UTC)
IronPort-SDR: wW7UIOvtL6oqK7IgVvIsttgl1bgdJ06ToOFV6/Eks3yGQK1BHrRumQO0yXSlGlGiMP9tbDff//
 C75DiT8DYp7g==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="290999712"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="290999712"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 11:33:05 -0700
IronPort-SDR: hKixB/wEKPyuJrBDuZkgK4L3JWQLA+jd5f6P0s3167jwrkr8+h4YgeW5k1O6EJIIMRVqZr6gYn
 UmBVLjXEf+xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="450487121"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 10 Jun 2021 11:33:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Jun 2021 21:33:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Jun 2021 21:32:36 +0300
Message-Id: <20210610183237.3920-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210610183237.3920-1-ville.syrjala@linux.intel.com>
References: <20210610183237.3920-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/9] drm/i915/fbc: Make the cfb allocation loop
 a bit more legible
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldy
aXRlIHRoZSBjZmIgYWxsb2NhdGlvbiBsb29wIGFzIGFuIGFjdHVhbCBsb29wIGluc3RlYWQgb2Yg
c29tZQpoYXJkIHRvIHJlYWQgZ290byB0aGluZy4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDUxICsrKysrKysrKysrKy0tLS0tLS0tLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDI1IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCmluZGV4IDY0MTVmMmNmZDFhYy4uYjZi
ZmI0NDM5YThiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKQEAg
LTQ0MCw0NCArNDQwLDQ1IEBAIHN0YXRpYyB1NjQgaW50ZWxfZmJjX3N0b2xlbl9lbmQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCXJldHVybiBtaW4oZW5kLCBpbnRlbF9mYmNf
Y2ZiX2Jhc2VfbWF4KGRldl9wcml2KSk7CiB9CiAKK3N0YXRpYyBpbnQgaW50ZWxfZmJjX21heF9s
aW1pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGludCBmYl9jcHApCit7CisJ
LyoKKwkgKiBGSVhNRTogRkJDMSBjYW4gaGF2ZSBhcmJpdHJhcnkgY2ZiIHN0cmlkZSwKKwkgKiBz
byB3ZSBjb3VsZCBzdXBwb3J0IGRpZmZlcmVudCBjb21wcmVzc2lvbiByYXRpb3MuCisJICovCisJ
aWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA8IDUgJiYgIUlTX0c0WChkZXZfcHJpdikpCisJCXJl
dHVybiAxOworCisJLyogV2FGYmNPbmx5MXRvMVJhdGlvOmN0ZyAqLworCWlmIChJU19HNFgoZGV2
X3ByaXYpKQorCQlyZXR1cm4gMTsKKworCS8qIEZCQzIgY2FuIG9ubHkgZG8gMToxLCAxOjIsIDE6
NCAqLworCXJldHVybiBmYl9jcHAgPT0gMiA/IDIgOiA0OworfQorCiBzdGF0aWMgaW50IGZpbmRf
Y29tcHJlc3Npb25fbGltaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJ
CSAgdW5zaWduZWQgaW50IHNpemUsCiAJCQkJICB1bnNpZ25lZCBpbnQgZmJfY3BwKQogewogCXN0
cnVjdCBpbnRlbF9mYmMgKmZiYyA9ICZkZXZfcHJpdi0+ZmJjOwogCXU2NCBlbmQgPSBpbnRlbF9m
YmNfc3RvbGVuX2VuZChkZXZfcHJpdik7Ci0JaW50IGNvbXByZXNzaW9uX2xpbWl0ID0gMTsKLQlp
bnQgcmV0OwotCi0JLyogSEFDSzogVGhpcyBjb2RlIGRlcGVuZHMgb24gd2hhdCB3ZSB3aWxsIGRv
IGluICpfZW5hYmxlX2ZiYy4gSWYgdGhhdAotCSAqIGNvZGUgY2hhbmdlcywgdGhpcyBjb2RlIG5l
ZWRzIHRvIGNoYW5nZSBhcyB3ZWxsLgotCSAqCi0JICogVGhlIGVuYWJsZV9mYmMgY29kZSB3aWxs
IGF0dGVtcHQgdG8gdXNlIG9uZSBvZiBvdXIgMiBjb21wcmVzc2lvbgotCSAqIGxpbWl0cywgdGhl
cmVmb3JlLCBpbiB0aGF0IGNhc2UsIHdlIG9ubHkgaGF2ZSAxIHJlc29ydC4KLQkgKi8KKwlpbnQg
cmV0LCBsaW1pdCA9IDE7CiAKIAkvKiBUcnkgdG8gb3Zlci1hbGxvY2F0ZSB0byByZWR1Y2UgcmVh
bGxvY2F0aW9ucyBhbmQgZnJhZ21lbnRhdGlvbi4gKi8KIAlyZXQgPSBpOTE1X2dlbV9zdG9sZW5f
aW5zZXJ0X25vZGVfaW5fcmFuZ2UoZGV2X3ByaXYsICZmYmMtPmNvbXByZXNzZWRfZmIsCiAJCQkJ
CQkgICBzaXplIDw8PSAxLCA0MDk2LCAwLCBlbmQpOwogCWlmIChyZXQgPT0gMCkKLQkJcmV0dXJu
IGNvbXByZXNzaW9uX2xpbWl0OworCQlyZXR1cm4gbGltaXQ7CiAKLWFnYWluOgotCS8qIEhXJ3Mg
YWJpbGl0eSB0byBsaW1pdCB0aGUgQ0ZCIGlzIDE6NCAqLwotCWlmIChjb21wcmVzc2lvbl9saW1p
dCA+IDQgfHwKLQkgICAgKGZiX2NwcCA9PSAyICYmIGNvbXByZXNzaW9uX2xpbWl0ID09IDIpKQot
CQlyZXR1cm4gMDsKLQotCXJldCA9IGk5MTVfZ2VtX3N0b2xlbl9pbnNlcnRfbm9kZV9pbl9yYW5n
ZShkZXZfcHJpdiwgJmZiYy0+Y29tcHJlc3NlZF9mYiwKLQkJCQkJCSAgIHNpemUgPj49IDEsIDQw
OTYsIDAsIGVuZCk7Ci0JaWYgKHJldCAmJiBESVNQTEFZX1ZFUihkZXZfcHJpdikgPD0gNCkgewot
CQlyZXR1cm4gMDsKLQl9IGVsc2UgaWYgKHJldCkgewotCQljb21wcmVzc2lvbl9saW1pdCA8PD0g
MTsKLQkJZ290byBhZ2FpbjsKLQl9IGVsc2UgewotCQlyZXR1cm4gY29tcHJlc3Npb25fbGltaXQ7
CisJZm9yICg7IGxpbWl0IDw9IGludGVsX2ZiY19tYXhfbGltaXQoZGV2X3ByaXYsIGZiX2NwcCk7
IGxpbWl0IDw8PSAxKSB7CisJCXJldCA9IGk5MTVfZ2VtX3N0b2xlbl9pbnNlcnRfbm9kZV9pbl9y
YW5nZShkZXZfcHJpdiwgJmZiYy0+Y29tcHJlc3NlZF9mYiwKKwkJCQkJCQkgICBzaXplID4+PSAx
LCA0MDk2LCAwLCBlbmQpOworCQlpZiAocmV0ID09IDApCisJCQlyZXR1cm4gbGltaXQ7CiAJfQor
CisJcmV0dXJuIDA7CiB9CiAKIHN0YXRpYyBpbnQgaW50ZWxfZmJjX2FsbG9jX2NmYihzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCi0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
