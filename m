Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BD6145D41
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 21:43:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B06D46F8D1;
	Wed, 22 Jan 2020 20:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D2A66F8D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 20:43:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 12:43:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="216032771"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 22 Jan 2020 12:43:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Jan 2020 22:43:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jan 2020 22:43:29 +0200
Message-Id: <20200122204329.2477-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix modeset locks in
 sanitize_watermarks()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
J3ZlIGFkZGVkIG1vcmUgaW50ZXJuYWwgdGhpbmdzIHRoYXQgdXNlIG1vZGVzZXQgbG9ja3MgYW5k
CnRodXMgd2UgbmVlZCB0byBiZSBwcmVwYXJlZCBmb3IgaW50ZWxfYXRvbWljX2NoZWNrKCkgZ3Jh
YmJpbmcKbW9yZSBsb2NrcyB0aGFuIHdoYXQgb3VyIGluaXRpYWwgZHJtX21vZGVzZXRfbG9ja19h
bGxfY3R4KCkKdG9vay4gU28gd2UncmUgbWlzc2luZyB0aGUgYmFja29mZiBoYW5kbGluZyBoZXJl
LgoKQWxzbyBkcm1fYXRvbWljX2hlbHBlcl9kdXBsaWNhdGVfc3RhdGUoKSB3b3JrcyBhZ2FpbnN0
IHVzCmJ5IGNsZWFyaW5nIHN0YXRlLT5hY3F1aXJlX2N0eCBpbiBhbnRpY2lwYXRpb24gb2YKZHJt
X2F0b21pY19oZWxwZXJfY29tbWl0X2R1cGxpY2F0ZWRfc3RhdGUoKSBiZWluZyB1c2VkIHRvCmNv
bW1pdCB0aGUgc3RhdGUuCgpXZSBjb3VsZCBwcm9iYWJseSBqdXN0IHJlc2V0IGFjcXVpcmVfY3R4
IGJhY2ssIGJ1dCBpbnN0ZWFkCmxldCdzIGp1c3QgcmV3cml0ZSB0aGUgd2hvbGUgdGhpbmcgd2l0
aG91dCB1c2luZyBlaXRoZXIgb2YKdGhvc2UgImhlbHBlcnMiLiBUaGVyZSdzIGFsc28gbm8gbmVl
ZCB0byBhZGQgYW55IGNvbm5lY3RvcnMKdG8gdGhlIHN0YXRlIGhlcmUgc2luY2Ugd2UganVzdCB3
YW50IHRoZSBuZXcgd2F0ZXJtYXJrcwp3aGljaCBkb24ndCBkZXBlbmQgb24gY29ubmVjdG9ycy4K
CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDEwMCArKysrKysr
KysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNjIgaW5zZXJ0aW9ucygrKSwgMzggZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpp
bmRleCA4NzhkMzMxYjllOGMuLmNmYzBhMDY3YWQ0OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE3Mjk3LDYgKzE3Mjk3LDMwIEBAIHZvaWQg
aW50ZWxfbW9kZXNldF9pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCWk5
MTUtPmNkY2xrLmxvZ2ljYWwgPSBpOTE1LT5jZGNsay5hY3R1YWwgPSBpOTE1LT5jZGNsay5odzsK
IH0KIAorc3RhdGljIGludCBzYW5pdGl6ZV93YXRlcm1hcmtzX2FkZF9hZmZlY3RlZChzdHJ1Y3Qg
ZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUpCit7CisJc3RydWN0IGRybV9wbGFuZSAqcGxhbmU7CisJ
c3RydWN0IGRybV9jcnRjICpjcnRjOworCisJZHJtX2Zvcl9lYWNoX2NydGMoY3J0Yywgc3RhdGUt
PmRldikgeworCQlzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7CisKKwkJY3J0Y19z
dGF0ZSA9IGRybV9hdG9taWNfZ2V0X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOworCQlpZiAoSVNf
RVJSKGNydGNfc3RhdGUpKQorCQkJcmV0dXJuIFBUUl9FUlIoY3J0Y19zdGF0ZSk7CisJfQorCisJ
ZHJtX2Zvcl9lYWNoX3BsYW5lKHBsYW5lLCBzdGF0ZS0+ZGV2KSB7CisJCXN0cnVjdCBkcm1fcGxh
bmVfc3RhdGUgKnBsYW5lX3N0YXRlOworCisJCXBsYW5lX3N0YXRlID0gZHJtX2F0b21pY19nZXRf
cGxhbmVfc3RhdGUoc3RhdGUsIHBsYW5lKTsKKwkJaWYgKElTX0VSUihwbGFuZV9zdGF0ZSkpCisJ
CQlyZXR1cm4gUFRSX0VSUihwbGFuZV9zdGF0ZSk7CisJfQorCisJcmV0dXJuIDA7Cit9CisKIC8q
CiAgKiBDYWxjdWxhdGUgd2hhdCB3ZSB0aGluayB0aGUgd2F0ZXJtYXJrcyBzaG91bGQgYmUgZm9y
IHRoZSBzdGF0ZSB3ZSd2ZSByZWFkCiAgKiBvdXQgb2YgdGhlIGhhcmR3YXJlIGFuZCB0aGVuIGlt
bWVkaWF0ZWx5IHByb2dyYW0gdGhvc2Ugd2F0ZXJtYXJrcyBzbyB0aGF0CkBAIC0xNzMwNyw5ICsx
NzMzMSw4IEBAIHZvaWQgaW50ZWxfbW9kZXNldF9pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQogICogdGhyb3VnaCB0aGUgYXRvbWljIGNoZWNrIGNvZGUgdG8gY2FsY3VsYXRl
IG5ldyB3YXRlcm1hcmsgdmFsdWVzIGluIHRoZQogICogc3RhdGUgb2JqZWN0LgogICovCi1zdGF0
aWMgdm9pZCBzYW5pdGl6ZV93YXRlcm1hcmtzKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCitzdGF0
aWMgdm9pZCBzYW5pdGl6ZV93YXRlcm1hcmtzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRl
dik7CiAJc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlOwogCXN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKmludGVsX3N0YXRlOwogCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwpAQCAtMTcz
MjIsMjYgKzE3MzQ1LDE3IEBAIHN0YXRpYyB2b2lkIHNhbml0aXplX3dhdGVybWFya3Moc3RydWN0
IGRybV9kZXZpY2UgKmRldikKIAlpZiAoIWRldl9wcml2LT5kaXNwbGF5Lm9wdGltaXplX3dhdGVy
bWFya3MpCiAJCXJldHVybjsKIAotCS8qCi0JICogV2UgbmVlZCB0byBob2xkIGNvbm5lY3Rpb25f
bXV0ZXggYmVmb3JlIGNhbGxpbmcgZHVwbGljYXRlX3N0YXRlIHNvCi0JICogdGhhdCB0aGUgY29u
bmVjdG9yIGxvb3AgaXMgcHJvdGVjdGVkLgotCSAqLwotCWRybV9tb2Rlc2V0X2FjcXVpcmVfaW5p
dCgmY3R4LCAwKTsKLXJldHJ5OgotCXJldCA9IGRybV9tb2Rlc2V0X2xvY2tfYWxsX2N0eChkZXYs
ICZjdHgpOwotCWlmIChyZXQgPT0gLUVERUFETEspIHsKLQkJZHJtX21vZGVzZXRfYmFja29mZigm
Y3R4KTsKLQkJZ290byByZXRyeTsKLQl9IGVsc2UgaWYgKFdBUk5fT04ocmV0KSkgewotCQlnb3Rv
IGZhaWw7Ci0JfQotCi0Jc3RhdGUgPSBkcm1fYXRvbWljX2hlbHBlcl9kdXBsaWNhdGVfc3RhdGUo
ZGV2LCAmY3R4KTsKLQlpZiAoV0FSTl9PTihJU19FUlIoc3RhdGUpKSkKLQkJZ290byBmYWlsOwor
CXN0YXRlID0gZHJtX2F0b21pY19zdGF0ZV9hbGxvYygmZGV2X3ByaXYtPmRybSk7CisJaWYgKFdB
Uk5fT04oIXN0YXRlKSkKKwkJcmV0dXJuOwogCiAJaW50ZWxfc3RhdGUgPSB0b19pbnRlbF9hdG9t
aWNfc3RhdGUoc3RhdGUpOwogCisJZHJtX21vZGVzZXRfYWNxdWlyZV9pbml0KCZjdHgsIDApOwor
CityZXRyeToKKwlzdGF0ZS0+YWNxdWlyZV9jdHggPSAmY3R4OworCiAJLyoKIAkgKiBIYXJkd2Fy
ZSByZWFkb3V0IGlzIHRoZSBvbmx5IHRpbWUgd2UgZG9uJ3Qgd2FudCB0byBjYWxjdWxhdGUKIAkg
KiBpbnRlcm1lZGlhdGUgd2F0ZXJtYXJrcyAoc2luY2Ugd2UgZG9uJ3QgdHJ1c3QgdGhlIGN1cnJl
bnQKQEAgLTE3MzUwLDIyICsxNzM2NCwxMyBAQCBzdGF0aWMgdm9pZCBzYW5pdGl6ZV93YXRlcm1h
cmtzKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAJaWYgKCFIQVNfR01DSChkZXZfcHJpdikpCiAJ
CWludGVsX3N0YXRlLT5za2lwX2ludGVybWVkaWF0ZV93bSA9IHRydWU7CiAKLQlyZXQgPSBpbnRl
bF9hdG9taWNfY2hlY2soZGV2LCBzdGF0ZSk7Ci0JaWYgKHJldCkgewotCQkvKgotCQkgKiBJZiB3
ZSBmYWlsIGhlcmUsIGl0IG1lYW5zIHRoYXQgdGhlIGhhcmR3YXJlIGFwcGVhcnMgdG8gYmUKLQkJ
ICogcHJvZ3JhbW1lZCBpbiBhIHdheSB0aGF0IHNob3VsZG4ndCBiZSBwb3NzaWJsZSwgZ2l2ZW4g
b3VyCi0JCSAqIHVuZGVyc3RhbmRpbmcgb2Ygd2F0ZXJtYXJrIHJlcXVpcmVtZW50cy4gIFRoaXMg
bWlnaHQgbWVhbiBhCi0JCSAqIG1pc3Rha2UgaW4gdGhlIGhhcmR3YXJlIHJlYWRvdXQgY29kZSBv
ciBhIG1pc3Rha2UgaW4gdGhlCi0JCSAqIHdhdGVybWFyayBjYWxjdWxhdGlvbnMgZm9yIGEgZ2l2
ZW4gcGxhdGZvcm0uICBSYWlzZSBhIFdBUk4KLQkJICogc28gdGhhdCB0aGlzIGlzIG5vdGljZWFi
bGUuCi0JCSAqCi0JCSAqIElmIHRoaXMgYWN0dWFsbHkgaGFwcGVucywgd2UnbGwgaGF2ZSB0byBq
dXN0IGxlYXZlIHRoZQotCQkgKiBCSU9TLXByb2dyYW1tZWQgd2F0ZXJtYXJrcyB1bnRvdWNoZWQg
YW5kIGhvcGUgZm9yIHRoZSBiZXN0LgotCQkgKi8KLQkJV0FSTih0cnVlLCAiQ291bGQgbm90IGRl
dGVybWluZSB2YWxpZCB3YXRlcm1hcmtzIGZvciBpbmhlcml0ZWQgc3RhdGVcbiIpOwotCQlnb3Rv
IHB1dF9zdGF0ZTsKLQl9CisJcmV0ID0gc2FuaXRpemVfd2F0ZXJtYXJrc19hZGRfYWZmZWN0ZWQo
c3RhdGUpOworCWlmIChyZXQpCisJCWdvdG8gZmFpbDsKKworCXJldCA9IGludGVsX2F0b21pY19j
aGVjaygmZGV2X3ByaXYtPmRybSwgc3RhdGUpOworCWlmIChyZXQpCisJCWdvdG8gZmFpbDsKIAog
CS8qIFdyaXRlIGNhbGN1bGF0ZWQgd2F0ZXJtYXJrIHZhbHVlcyBiYWNrICovCiAJZm9yX2VhY2hf
bmV3X2ludGVsX2NydGNfaW5fc3RhdGUoaW50ZWxfc3RhdGUsIGNydGMsIGNydGNfc3RhdGUsIGkp
IHsKQEAgLTE3Mzc1LDkgKzE3MzgwLDI4IEBAIHN0YXRpYyB2b2lkIHNhbml0aXplX3dhdGVybWFy
a3Moc3RydWN0IGRybV9kZXZpY2UgKmRldikKIAkJdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5i
YXNlLnN0YXRlKS0+d20gPSBjcnRjX3N0YXRlLT53bTsKIAl9CiAKLXB1dF9zdGF0ZToKLQlkcm1f
YXRvbWljX3N0YXRlX3B1dChzdGF0ZSk7CiBmYWlsOgorCWlmIChyZXQgPT0gLUVERUFETEspIHsK
KwkJZHJtX2F0b21pY19zdGF0ZV9jbGVhcihzdGF0ZSk7CisJCWRybV9tb2Rlc2V0X2JhY2tvZmYo
JmN0eCk7CisJCWdvdG8gcmV0cnk7CisJfQorCisJLyoKKwkgKiBJZiB3ZSBmYWlsIGhlcmUsIGl0
IG1lYW5zIHRoYXQgdGhlIGhhcmR3YXJlIGFwcGVhcnMgdG8gYmUKKwkgKiBwcm9ncmFtbWVkIGlu
IGEgd2F5IHRoYXQgc2hvdWxkbid0IGJlIHBvc3NpYmxlLCBnaXZlbiBvdXIKKwkgKiB1bmRlcnN0
YW5kaW5nIG9mIHdhdGVybWFyayByZXF1aXJlbWVudHMuICBUaGlzIG1pZ2h0IG1lYW4gYQorCSAq
IG1pc3Rha2UgaW4gdGhlIGhhcmR3YXJlIHJlYWRvdXQgY29kZSBvciBhIG1pc3Rha2UgaW4gdGhl
CisJICogd2F0ZXJtYXJrIGNhbGN1bGF0aW9ucyBmb3IgYSBnaXZlbiBwbGF0Zm9ybS4gIFJhaXNl
IGEgV0FSTgorCSAqIHNvIHRoYXQgdGhpcyBpcyBub3RpY2VhYmxlLgorCSAqCisJICogSWYgdGhp
cyBhY3R1YWxseSBoYXBwZW5zLCB3ZSdsbCBoYXZlIHRvIGp1c3QgbGVhdmUgdGhlCisJICogQklP
Uy1wcm9ncmFtbWVkIHdhdGVybWFya3MgdW50b3VjaGVkIGFuZCBob3BlIGZvciB0aGUgYmVzdC4K
KwkgKi8KKwlXQVJOKHJldCwgIkNvdWxkIG5vdCBkZXRlcm1pbmUgdmFsaWQgd2F0ZXJtYXJrcyBm
b3IgaW5oZXJpdGVkIHN0YXRlXG4iKTsKKworCWRybV9hdG9taWNfc3RhdGVfcHV0KHN0YXRlKTsK
KwogCWRybV9tb2Rlc2V0X2Ryb3BfbG9ja3MoJmN0eCk7CiAJZHJtX21vZGVzZXRfYWNxdWlyZV9m
aW5pKCZjdHgpOwogfQpAQCAtMTc1OTMsNyArMTc2MTcsNyBAQCBpbnQgaW50ZWxfbW9kZXNldF9p
bml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCSAqIHNpbmNlIHRoZSB3YXRlcm1h
cmsgY2FsY3VsYXRpb24gZG9uZSBoZXJlIHdpbGwgdXNlIHBzdGF0ZS0+ZmIuCiAJICovCiAJaWYg
KCFIQVNfR01DSChpOTE1KSkKLQkJc2FuaXRpemVfd2F0ZXJtYXJrcyhkZXYpOworCQlzYW5pdGl6
ZV93YXRlcm1hcmtzKGk5MTUpOwogCiAJLyoKIAkgKiBGb3JjZSBhbGwgYWN0aXZlIHBsYW5lcyB0
byByZWNvbXB1dGUgdGhlaXIgc3RhdGVzLiBTbyB0aGF0IG9uCi0tIAoyLjI0LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
