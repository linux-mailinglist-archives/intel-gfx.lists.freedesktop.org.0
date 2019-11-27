Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 903CC10B73B
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 21:12:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9430F89831;
	Wed, 27 Nov 2019 20:12:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0CBD897EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 20:12:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 12:12:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,250,1571727600"; d="scan'208";a="240457991"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 27 Nov 2019 12:12:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Nov 2019 22:12:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 22:12:15 +0200
Message-Id: <20191127201222.16669-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191127201222.16669-1-ville.syrjala@linux.intel.com>
References: <20191127201222.16669-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 07/14] drm/i915/fbc: Store fence_id direction
 in fbc cache/params
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJh
dGhlciB0aGFuIHBsYXlpbmcgYXJvdW5kIHdpdGggdm1hK2ZsYWdzIGxldCdzIGp1c3QgZ3JhYgp0
aGUgZmVuY2UgaWQgZnJvbSB3aXRoaW4gYW5kIHN0YXNoIHRoYXQgZGlyZWN0bHkgaW4gdGhlIGZi
YwpjYWNoZS9wYXJhbXMuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJjLmMgfCAzMyArKysrKysrKysrKysrLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgfCAgOCArKy0tLS0KIDIgZmlsZXMgY2hhbmdlZCwg
MjAgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZmJjLmMKaW5kZXggNTRlZDFhNzRkMDJiLi42MDA1NjU2NDdmMzcgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwpAQCAtMTUxLDcgKzE1MSw3IEBA
IHN0YXRpYyB2b2lkIGk4eHhfZmJjX2FjdGl2YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKIAlpZiAoSVNfSTk0NUdNKGRldl9wcml2KSkKIAkJZmJjX2N0bCB8PSBGQkNfQ1RM
X0MzX0lETEU7IC8qIDk0NSBuZWVkcyBzcGVjaWFsIFNSIGhhbmRsaW5nICovCiAJZmJjX2N0bCB8
PSAoY2ZiX3BpdGNoICYgMHhmZikgPDwgRkJDX0NUTF9TVFJJREVfU0hJRlQ7Ci0JZmJjX2N0bCB8
PSBwYXJhbXMtPnZtYS0+ZmVuY2UtPmlkOworCWZiY19jdGwgfD0gcGFyYW1zLT5mZW5jZV9pZDsK
IAlJOTE1X1dSSVRFKEZCQ19DT05UUk9MLCBmYmNfY3RsKTsKIH0KIApAQCAtMTcxLDggKzE3MSw4
IEBAIHN0YXRpYyB2b2lkIGc0eF9mYmNfYWN0aXZhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQogCWVsc2UKIAkJZHBmY19jdGwgfD0gRFBGQ19DVExfTElNSVRfMVg7CiAKLQlp
ZiAocGFyYW1zLT5mbGFncyAmIFBMQU5FX0hBU19GRU5DRSkgewotCQlkcGZjX2N0bCB8PSBEUEZD
X0NUTF9GRU5DRV9FTiB8IHBhcmFtcy0+dm1hLT5mZW5jZS0+aWQ7CisJaWYgKHBhcmFtcy0+ZmVu
Y2VfaWQgPj0gMCkgeworCQlkcGZjX2N0bCB8PSBEUEZDX0NUTF9GRU5DRV9FTiB8IHBhcmFtcy0+
ZmVuY2VfaWQ7CiAJCUk5MTVfV1JJVEUoRFBGQ19GRU5DRV9ZT0ZGLCBwYXJhbXMtPmNydGMuZmVu
Y2VfeV9vZmZzZXQpOwogCX0gZWxzZSB7CiAJCUk5MTVfV1JJVEUoRFBGQ19GRU5DRV9ZT0ZGLCAw
KTsKQEAgLTIyOSwxNCArMjI5LDE0IEBAIHN0YXRpYyB2b2lkIGlsa19mYmNfYWN0aXZhdGUoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQlicmVhazsKIAl9CiAKLQlpZiAocGFy
YW1zLT5mbGFncyAmIFBMQU5FX0hBU19GRU5DRSkgeworCWlmIChwYXJhbXMtPmZlbmNlX2lkID49
IDApIHsKIAkJZHBmY19jdGwgfD0gRFBGQ19DVExfRkVOQ0VfRU47CiAJCWlmIChJU19HRU4oZGV2
X3ByaXYsIDUpKQotCQkJZHBmY19jdGwgfD0gcGFyYW1zLT52bWEtPmZlbmNlLT5pZDsKKwkJCWRw
ZmNfY3RsIHw9IHBhcmFtcy0+ZmVuY2VfaWQ7CiAJCWlmIChJU19HRU4oZGV2X3ByaXYsIDYpKSB7
CiAJCQlJOTE1X1dSSVRFKFNOQl9EUEZDX0NUTF9TQSwKIAkJCQkgICBTTkJfQ1BVX0ZFTkNFX0VO
QUJMRSB8Ci0JCQkJICAgcGFyYW1zLT52bWEtPmZlbmNlLT5pZCk7CisJCQkJICAgcGFyYW1zLT5m
ZW5jZV9pZCk7CiAJCQlJOTE1X1dSSVRFKERQRkNfQ1BVX0ZFTkNFX09GRlNFVCwKIAkJCQkgICBw
YXJhbXMtPmNydGMuZmVuY2VfeV9vZmZzZXQpOwogCQl9CkBAIC0zMDksMTEgKzMwOSwxMSBAQCBz
dGF0aWMgdm9pZCBnZW43X2ZiY19hY3RpdmF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCiAJCWJyZWFrOwogCX0KIAotCWlmIChwYXJhbXMtPmZsYWdzICYgUExBTkVfSEFTX0ZF
TkNFKSB7CisJaWYgKHBhcmFtcy0+ZmVuY2VfaWQgPj0gMCkgewogCQlkcGZjX2N0bCB8PSBJVkJf
RFBGQ19DVExfRkVOQ0VfRU47CiAJCUk5MTVfV1JJVEUoU05CX0RQRkNfQ1RMX1NBLAogCQkJICAg
U05CX0NQVV9GRU5DRV9FTkFCTEUgfAotCQkJICAgcGFyYW1zLT52bWEtPmZlbmNlLT5pZCk7CisJ
CQkgICBwYXJhbXMtPmZlbmNlX2lkKTsKIAkJSTkxNV9XUklURShEUEZDX0NQVV9GRU5DRV9PRkZT
RVQsIHBhcmFtcy0+Y3J0Yy5mZW5jZV95X29mZnNldCk7CiAJfSBlbHNlIHsKIAkJSTkxNV9XUklU
RShTTkJfRFBGQ19DVExfU0EsMCk7CkBAIC02NTksMTAgKzY1OSwxNCBAQCBzdGF0aWMgdm9pZCBp
bnRlbF9mYmNfdXBkYXRlX3N0YXRlX2NhY2hlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCWNh
Y2hlLT5mYi5mb3JtYXQgPSBmYi0+Zm9ybWF0OwogCWNhY2hlLT5mYi5zdHJpZGUgPSBmYi0+cGl0
Y2hlc1swXTsKIAotCWNhY2hlLT52bWEgPSBwbGFuZV9zdGF0ZS0+dm1hOwotCWNhY2hlLT5mbGFn
cyA9IHBsYW5lX3N0YXRlLT5mbGFnczsKLQlpZiAoV0FSTl9PTihjYWNoZS0+ZmxhZ3MgJiBQTEFO
RV9IQVNfRkVOQ0UgJiYgIWNhY2hlLT52bWEtPmZlbmNlKSkKLQkJY2FjaGUtPmZsYWdzICY9IH5Q
TEFORV9IQVNfRkVOQ0U7CisJV0FSTl9PTihwbGFuZV9zdGF0ZS0+ZmxhZ3MgJiBQTEFORV9IQVNf
RkVOQ0UgJiYKKwkJIXBsYW5lX3N0YXRlLT52bWEtPmZlbmNlKTsKKworCWlmIChwbGFuZV9zdGF0
ZS0+ZmxhZ3MgJiBQTEFORV9IQVNfRkVOQ0UgJiYKKwkgICAgcGxhbmVfc3RhdGUtPnZtYS0+ZmVu
Y2UpCisJCWNhY2hlLT5mZW5jZV9pZCA9IHBsYW5lX3N0YXRlLT52bWEtPmZlbmNlLT5pZDsKKwll
bHNlCisJCWNhY2hlLT5mZW5jZV9pZCA9IC0xOwogfQogCiBzdGF0aWMgYm9vbCBpbnRlbF9mYmNf
Y2FuX2FjdGl2YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQpAQCAtNzA3LDcgKzcxMSw3IEBA
IHN0YXRpYyBib29sIGludGVsX2ZiY19jYW5fYWN0aXZhdGUoc3RydWN0IGludGVsX2NydGMgKmNy
dGMpCiAJICogRm9yIG5vdyB0aGlzIHdpbGwgZWZmZWNpdmVseSBkaXNhYmxlIEZCQyB3aXRoIDkw
LzI3MCBkZWdyZWUKIAkgKiByb3RhdGlvbi4KIAkgKi8KLQlpZiAoIShjYWNoZS0+ZmxhZ3MgJiBQ
TEFORV9IQVNfRkVOQ0UpKSB7CisJaWYgKGNhY2hlLT5mZW5jZV9pZCA8IDApIHsKIAkJZmJjLT5u
b19mYmNfcmVhc29uID0gImZyYW1lYnVmZmVyIG5vdCB0aWxlZCBvciBmZW5jZWQiOwogCQlyZXR1
cm4gZmFsc2U7CiAJfQpAQCAtODA0LDggKzgwOCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2ZiY19n
ZXRfcmVnX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAkgKiB6ZXJvLiAqLwogCW1l
bXNldChwYXJhbXMsIDAsIHNpemVvZigqcGFyYW1zKSk7CiAKLQlwYXJhbXMtPnZtYSA9IGNhY2hl
LT52bWE7Ci0JcGFyYW1zLT5mbGFncyA9IGNhY2hlLT5mbGFnczsKKwlwYXJhbXMtPmZlbmNlX2lk
ID0gY2FjaGUtPmZlbmNlX2lkOwogCiAJcGFyYW1zLT5jcnRjLnBpcGUgPSBjcnRjLT5waXBlOwog
CXBhcmFtcy0+Y3J0Yy5pOXh4X3BsYW5lID0gdG9faW50ZWxfcGxhbmUoY3J0Yy0+YmFzZS5wcmlt
YXJ5KS0+aTl4eF9wbGFuZTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDgyZGFmZWY5YWUx
MC4uODE1NTZkYzM1M2I1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTM4Niw5ICszODYs
NiBAQCBzdHJ1Y3QgaW50ZWxfZmJjIHsKIAkgKiB0aGVzZSBwcm9ibGVtcy4KIAkgKi8KIAlzdHJ1
Y3QgaW50ZWxfZmJjX3N0YXRlX2NhY2hlIHsKLQkJc3RydWN0IGk5MTVfdm1hICp2bWE7Ci0JCXVu
c2lnbmVkIGxvbmcgZmxhZ3M7Ci0KIAkJc3RydWN0IHsKIAkJCXVuc2lnbmVkIGludCBtb2RlX2Zs
YWdzOwogCQkJdTMyIGhzd19iZHdfcGl4ZWxfcmF0ZTsKQEAgLTQxOCw2ICs0MTUsNyBAQCBzdHJ1
Y3QgaW50ZWxfZmJjIHsKIAkJCXVuc2lnbmVkIGludCBzdHJpZGU7CiAJCX0gZmI7CiAJCXUxNiBn
ZW45X3dhX2NmYl9zdHJpZGU7CisJCXM4IGZlbmNlX2lkOwogCX0gc3RhdGVfY2FjaGU7CiAKIAkv
KgpAQCAtNDI4LDkgKzQyNiw2IEBAIHN0cnVjdCBpbnRlbF9mYmMgewogCSAqIGFyZSBzdXBwb3Nl
ZCB0byByZWFkIGZyb20gaXQgaW4gb3JkZXIgdG8gcHJvZ3JhbSB0aGUgcmVnaXN0ZXJzLgogCSAq
LwogCXN0cnVjdCBpbnRlbF9mYmNfcmVnX3BhcmFtcyB7Ci0JCXN0cnVjdCBpOTE1X3ZtYSAqdm1h
OwotCQl1bnNpZ25lZCBsb25nIGZsYWdzOwotCiAJCXN0cnVjdCB7CiAJCQllbnVtIHBpcGUgcGlw
ZTsKIAkJCWVudW0gaTl4eF9wbGFuZV9pZCBpOXh4X3BsYW5lOwpAQCAtNDQ0LDYgKzQzOSw3IEBA
IHN0cnVjdCBpbnRlbF9mYmMgewogCiAJCWludCBjZmJfc2l6ZTsKIAkJdTE2IGdlbjlfd2FfY2Zi
X3N0cmlkZTsKKwkJczggZmVuY2VfaWQ7CiAJCWJvb2wgcGxhbmVfdmlzaWJsZTsKIAl9IHBhcmFt
czsKIAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
