Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C9715096D
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 16:14:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B07336EC3E;
	Mon,  3 Feb 2020 15:14:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE97B6EC38;
 Mon,  3 Feb 2020 15:14:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 07:14:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; d="scan'208";a="219415773"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 03 Feb 2020 07:14:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Feb 2020 17:14:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon,  3 Feb 2020 17:13:30 +0200
Message-Id: <20200203151343.14378-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200203151343.14378-1-ville.syrjala@linux.intel.com>
References: <20200203151343.14378-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/26] drm/i915: Reworkd DP DFP clock handling
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1v
dmUgdGhlIGRvd25zdHJlYW0gZmFjaW5nIHBvcnQgZG90Y2xvY2sgY2hlY2sgaW50byBhIG5ldyBm
dW5jdGlvbgooaW50ZWxfZHBfbW9kZV92YWxpZF9kb3duc3RyZWFtKCkpIHNvIHRoYXQgd2UgaGF2
ZSBhIG5pY2UgZnV0dXJlCnBsYWNlIHdoZXJlIHdlIGNhbiBjb2xsZWN0IG90aGVyIHJlbGF0ZWQg
Y2hlY2tzLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KLS0tCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmggICAgfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMg
ICAgICAgfCA1NSArKysrKysrKystLS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDI4IGluc2Vy
dGlvbnMoKyksIDI4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKaW5kZXggZGJhMGJiMjQ1YTQzLi5mOTc4YjMz
ZWE3NTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oCkBAIC0xMzA3LDYgKzEzMDcsNyBAQCBzdHJ1Y3QgaW50ZWxfZHAgewogCiAJ
LyogRG93bnN0cmVhbSBmYWNpbmcgcG9ydCBjYXBzICovCiAJc3RydWN0IHsKKwkJaW50IG1heF9k
b3RjbG9jazsKIAkJdTggbWF4X2JwYzsKIAl9IGRmcDsKIH07CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMKaW5kZXggMjJjNTk5NWUzMWE3Li5iYmU1YzcyYjViYjMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAgLTIzOCwyOSArMjM4LDYgQEAg
aW50ZWxfZHBfbWF4X2RhdGFfcmF0ZShpbnQgbWF4X2xpbmtfY2xvY2ssIGludCBtYXhfbGFuZXMp
CiAJcmV0dXJuIG1heF9saW5rX2Nsb2NrICogbWF4X2xhbmVzOwogfQogCi1zdGF0aWMgaW50Ci1p
bnRlbF9kcF9kb3duc3RyZWFtX21heF9kb3RjbG9jayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
KQotewotCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0ID0gZHBfdG9f
ZGlnX3BvcnQoaW50ZWxfZHApOwotCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyID0gJmlu
dGVsX2RpZ19wb3J0LT5iYXNlOwotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwotCWludCBtYXhfZG90Y2xrID0gZGV2X3ByaXYt
Pm1heF9kb3RjbGtfZnJlcTsKLQlpbnQgZHNfbWF4X2RvdGNsazsKLQotCWludCB0eXBlID0gaW50
ZWxfZHAtPmRvd25zdHJlYW1fcG9ydHNbMF0gJiBEUF9EU19QT1JUX1RZUEVfTUFTSzsKLQotCWlm
ICh0eXBlICE9IERQX0RTX1BPUlRfVFlQRV9WR0EpCi0JCXJldHVybiBtYXhfZG90Y2xrOwotCi0J
ZHNfbWF4X2RvdGNsayA9IGRybV9kcF9kb3duc3RyZWFtX21heF9kb3RjbG9jayhpbnRlbF9kcC0+
ZHBjZCwKLQkJCQkJCSAgICAgICBpbnRlbF9kcC0+ZG93bnN0cmVhbV9wb3J0cyk7Ci0KLQlpZiAo
ZHNfbWF4X2RvdGNsayAhPSAwKQotCQltYXhfZG90Y2xrID0gbWluKG1heF9kb3RjbGssIGRzX21h
eF9kb3RjbGspOwotCi0JcmV0dXJuIG1heF9kb3RjbGs7Ci19Ci0KIHN0YXRpYyBpbnQgY25sX21h
eF9zb3VyY2VfcmF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogewogCXN0cnVjdCBpbnRl
bF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApOwpAQCAt
NjA2LDYgKzU4MywxOSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9kcF9oZGlzcGxheV9iYWQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCXJldHVybiBoZGlzcGxheSA9PSA0MDk2ICYm
ICFIQVNfRERJKGRldl9wcml2KTsKIH0KIAorc3RhdGljIGVudW0gZHJtX21vZGVfc3RhdHVzCitp
bnRlbF9kcF9tb2RlX3ZhbGlkX2Rvd25zdHJlYW0oc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29u
bmVjdG9yLAorCQkJICAgICAgIGludCB0YXJnZXRfY2xvY2spCit7CisJc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCA9IGludGVsX2F0dGFjaGVkX2RwKGNvbm5lY3Rvcik7CisKKwlpZiAoaW50ZWxf
ZHAtPmRmcC5tYXhfZG90Y2xvY2sgJiYKKwkgICAgdGFyZ2V0X2Nsb2NrID4gaW50ZWxfZHAtPmRm
cC5tYXhfZG90Y2xvY2spCisJCXJldHVybiBNT0RFX0NMT0NLX0hJR0g7CisKKwlyZXR1cm4gTU9E
RV9PSzsKK30KKwogc3RhdGljIGVudW0gZHJtX21vZGVfc3RhdHVzCiBpbnRlbF9kcF9tb2RlX3Zh
bGlkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiAJCSAgICBzdHJ1Y3QgZHJtX2Rp
c3BsYXlfbW9kZSAqbW9kZSkKQEAgLTYxNiwxNSArNjA2LDE0IEBAIGludGVsX2RwX21vZGVfdmFs
aWQoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNvbm5lY3Rvci0+ZGV2KTsKIAlpbnQgdGFyZ2V0X2Ns
b2NrID0gbW9kZS0+Y2xvY2s7CiAJaW50IG1heF9yYXRlLCBtb2RlX3JhdGUsIG1heF9sYW5lcywg
bWF4X2xpbmtfY2xvY2s7Ci0JaW50IG1heF9kb3RjbGs7CisJaW50IG1heF9kb3RjbGsgPSBkZXZf
cHJpdi0+bWF4X2RvdGNsa19mcmVxOwogCXUxNiBkc2NfbWF4X291dHB1dF9icHAgPSAwOwogCXU4
IGRzY19zbGljZV9jb3VudCA9IDA7CisJZW51bSBkcm1fbW9kZV9zdGF0dXMgc3RhdHVzOwogCiAJ
aWYgKG1vZGUtPmZsYWdzICYgRFJNX01PREVfRkxBR19EQkxTQ0FOKQogCQlyZXR1cm4gTU9ERV9O
T19EQkxFU0NBTjsKIAotCW1heF9kb3RjbGsgPSBpbnRlbF9kcF9kb3duc3RyZWFtX21heF9kb3Rj
bG9jayhpbnRlbF9kcCk7Ci0KIAlpZiAoaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSAmJiBmaXhl
ZF9tb2RlKSB7CiAJCWlmIChtb2RlLT5oZGlzcGxheSA+IGZpeGVkX21vZGUtPmhkaXNwbGF5KQog
CQkJcmV0dXJuIE1PREVfUEFORUw7CkBAIC02ODAsNiArNjY5LDEwIEBAIGludGVsX2RwX21vZGVf
dmFsaWQoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKIAlpZiAobW9kZS0+ZmxhZ3Mg
JiBEUk1fTU9ERV9GTEFHX0RCTENMSykKIAkJcmV0dXJuIE1PREVfSF9JTExFR0FMOwogCisJc3Rh
dHVzID0gaW50ZWxfZHBfbW9kZV92YWxpZF9kb3duc3RyZWFtKGludGVsX2Nvbm5lY3RvciwgdGFy
Z2V0X2Nsb2NrKTsKKwlpZiAoc3RhdHVzICE9IE1PREVfT0spCisJCXJldHVybiBzdGF0dXM7CisK
IAlyZXR1cm4gaW50ZWxfbW9kZV92YWxpZF9tYXhfcGxhbmVfc2l6ZShkZXZfcHJpdiwgbW9kZSk7
CiB9CiAKQEAgLTU2NjcsOSArNTY2MCwxNCBAQCBpbnRlbF9kcF9zZXRfZWRpZChzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKQogCQlkcm1fZHBfZG93bnN0cmVhbV9tYXhfYnBjKGludGVsX2RwLT5k
cGNkLAogCQkJCQkgIGludGVsX2RwLT5kb3duc3RyZWFtX3BvcnRzLCBlZGlkKTsKIAotCURSTV9E
RUJVR19LTVMoIltDT05ORUNUT1I6JWQ6JXNdIERGUCBtYXggYnBjICVkXG4iLAorCWludGVsX2Rw
LT5kZnAubWF4X2RvdGNsb2NrID0KKwkJZHJtX2RwX2Rvd25zdHJlYW1fbWF4X2RvdGNsb2NrKGlu
dGVsX2RwLT5kcGNkLAorCQkJCQkgICAgICAgaW50ZWxfZHAtPmRvd25zdHJlYW1fcG9ydHMpOwor
CisJRFJNX0RFQlVHX0tNUygiW0NPTk5FQ1RPUjolZDolc10gREZQIG1heCBicGMgJWQsIG1heCBk
b3RjbG9jayAlZFxuIiwKIAkJICAgICAgY29ubmVjdG9yLT5iYXNlLmJhc2UuaWQsIGNvbm5lY3Rv
ci0+YmFzZS5uYW1lLAotCQkgICAgICBpbnRlbF9kcC0+ZGZwLm1heF9icGMpOworCQkgICAgICBp
bnRlbF9kcC0+ZGZwLm1heF9icGMsCisJCSAgICAgIGludGVsX2RwLT5kZnAubWF4X2RvdGNsb2Nr
KTsKIAogCWlmIChlZGlkICYmIGVkaWQtPmlucHV0ICYgRFJNX0VESURfSU5QVVRfRElHSVRBTCkg
ewogCQlpbnRlbF9kcC0+aGFzX2hkbWlfc2luayA9IGRybV9kZXRlY3RfaGRtaV9tb25pdG9yKGVk
aWQpOwpAQCAtNTY5Miw2ICs1NjkwLDcgQEAgaW50ZWxfZHBfdW5zZXRfZWRpZChzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKQogCWludGVsX2RwLT5oYXNfYXVkaW8gPSBmYWxzZTsKIAogCWludGVs
X2RwLT5kZnAubWF4X2JwYyA9IDA7CisJaW50ZWxfZHAtPmRmcC5tYXhfZG90Y2xvY2sgPSAwOwog
fQogCiBzdGF0aWMgaW50Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
