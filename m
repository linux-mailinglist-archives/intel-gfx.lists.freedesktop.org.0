Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA4EA8692
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 18:26:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5BCC89C14;
	Wed,  4 Sep 2019 16:26:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FB2F89C0A
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 16:26:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 09:26:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,467,1559545200"; d="scan'208";a="176997483"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 04 Sep 2019 09:26:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Sep 2019 19:26:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 19:26:16 +0300
Message-Id: <20190904162625.15048-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
References: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/15] drm/i915: Use drm_rect to store the pfit
 window pos/size
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1h
a2UgdGhpbmdzIGEgYml0IG1vcmUgYWJzdHJhY3QgYnkgcmVwbGFjaW5nIHRoZSBwY2hfcGZpdC5w
b3Mvc2l6ZQpyYXcgcmVnaXN0ZXIgdmFsdWVzIHdpdGggYSBkcm1fcmVjdC4gTWFrZXMgaXQgc2xp
Z2hseSBtb3JlIGNvbnZlbmllbnQKdG8gZWcuIGNvbXB1dGUgdGhlIHNjYWxpbmcgZmFjdG9ycy4K
ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
IHwgODMgKysrKysrKysrKysrLS0tLS0tLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oICAgIHwgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcGFuZWwuYyAgICB8IDE1ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMg
ICAgICAgICAgICAgICB8ICA1ICstCiA0IGZpbGVzIGNoYW5nZWQsIDY2IGluc2VydGlvbnMoKyks
IDQwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKaW5kZXggN2VmYjM3ODExMDlhLi4zNDgwNzFkYjhiNGMgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC01NDg2LDEwICs1NDg2LDgg
QEAgc3RhdGljIGludCBza2xfdXBkYXRlX3NjYWxlcl9jcnRjKHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKQogCWludCB3aWR0aCwgaGVpZ2h0OwogCiAJaWYgKGNydGNfc3RhdGUt
PnBjaF9wZml0LmVuYWJsZWQpIHsKLQkJdTMyIHBmaXRfc2l6ZSA9IGNydGNfc3RhdGUtPnBjaF9w
Zml0LnNpemU7Ci0KLQkJd2lkdGggPSBwZml0X3NpemUgPj4gMTY7Ci0JCWhlaWdodCA9IHBmaXRf
c2l6ZSAmIDB4ZmZmZjsKKwkJd2lkdGggPSBkcm1fcmVjdF93aWR0aCgmY3J0Y19zdGF0ZS0+cGNo
X3BmaXQuZHN0KTsKKwkJaGVpZ2h0ID0gZHJtX3JlY3RfaGVpZ2h0KCZjcnRjX3N0YXRlLT5wY2hf
cGZpdC5kc3QpOwogCX0gZWxzZSB7CiAJCXdpZHRoID0gYWRqdXN0ZWRfbW9kZS0+Y3J0Y19oZGlz
cGxheTsKIAkJaGVpZ2h0ID0gYWRqdXN0ZWRfbW9kZS0+Y3J0Y192ZGlzcGxheTsKQEAgLTU1OTgs
MTEgKzU1OTYsMjAgQEAgc3RhdGljIHZvaWQgc2t5bGFrZV9wZml0X2VuYWJsZShjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+YmFzZS5jcnRjKTsKIAlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKLQllbnVt
IHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7CiAJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc2NhbGVy
X3N0YXRlICpzY2FsZXJfc3RhdGUgPQogCQkmY3J0Y19zdGF0ZS0+c2NhbGVyX3N0YXRlOworCXN0
cnVjdCBkcm1fcmVjdCBzcmMgPSB7CisJCS54MiA9IGNydGNfc3RhdGUtPnBpcGVfc3JjX3cgPDwg
MTYsCisJCS55MiA9IGNydGNfc3RhdGUtPnBpcGVfc3JjX2ggPDwgMTYsCisJfTsKKwljb25zdCBz
dHJ1Y3QgZHJtX3JlY3QgKmRzdCA9ICZjcnRjX3N0YXRlLT5wY2hfcGZpdC5kc3Q7CiAJdTE2IHV2
X3JnYl9ocGhhc2UsIHV2X3JnYl92cGhhc2U7Ci0JaW50IHBmaXRfdywgcGZpdF9oLCBoc2NhbGUs
IHZzY2FsZTsKKwllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7CisJaW50IHdpZHRoID0gZHJt
X3JlY3Rfd2lkdGgoZHN0KTsKKwlpbnQgaGVpZ2h0ID0gZHJtX3JlY3RfaGVpZ2h0KGRzdCk7CisJ
aW50IHggPSBkc3QtPngxOworCWludCB5ID0gZHN0LT55MTsKKwlpbnQgaHNjYWxlLCB2c2NhbGU7
CiAJaW50IGlkOwogCiAJaWYgKCFjcnRjX3N0YXRlLT5wY2hfcGZpdC5lbmFibGVkKQpAQCAtNTYx
MSwxMSArNTYxOCw4IEBAIHN0YXRpYyB2b2lkIHNreWxha2VfcGZpdF9lbmFibGUoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJaWYgKFdBUk5fT04oY3J0Y19zdGF0
ZS0+c2NhbGVyX3N0YXRlLnNjYWxlcl9pZCA8IDApKQogCQlyZXR1cm47CiAKLQlwZml0X3cgPSAo
Y3J0Y19zdGF0ZS0+cGNoX3BmaXQuc2l6ZSA+PiAxNikgJiAweEZGRkY7Ci0JcGZpdF9oID0gY3J0
Y19zdGF0ZS0+cGNoX3BmaXQuc2l6ZSAmIDB4RkZGRjsKLQotCWhzY2FsZSA9IChjcnRjX3N0YXRl
LT5waXBlX3NyY193IDw8IDE2KSAvIHBmaXRfdzsKLQl2c2NhbGUgPSAoY3J0Y19zdGF0ZS0+cGlw
ZV9zcmNfaCA8PCAxNikgLyBwZml0X2g7CisJaHNjYWxlID0gZHJtX3JlY3RfY2FsY19oc2NhbGUo
JnNyYywgZHN0LCAwLCBJTlRfTUFYKTsKKwl2c2NhbGUgPSBkcm1fcmVjdF9jYWxjX3ZzY2FsZSgm
c3JjLCBkc3QsIDAsIElOVF9NQVgpOwogCiAJdXZfcmdiX2hwaGFzZSA9IHNrbF9zY2FsZXJfY2Fs
Y19waGFzZSgxLCBoc2NhbGUsIGZhbHNlKTsKIAl1dl9yZ2JfdnBoYXNlID0gc2tsX3NjYWxlcl9j
YWxjX3BoYXNlKDEsIHZzY2FsZSwgZmFsc2UpOwpAQCAtNTYyNywxNSArNTYzMSwyMCBAQCBzdGF0
aWMgdm9pZCBza3lsYWtlX3BmaXRfZW5hYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKQogCQkgICBQU19ZX1BIQVNFKDApIHwgUFNfVVZfUkdCX1BIQVNFKHV2X3Jn
Yl92cGhhc2UpKTsKIAlJOTE1X1dSSVRFKFNLTF9QU19IUEhBU0UocGlwZSwgaWQpLAogCQkgICBQ
U19ZX1BIQVNFKDApIHwgUFNfVVZfUkdCX1BIQVNFKHV2X3JnYl9ocGhhc2UpKTsKLQlJOTE1X1dS
SVRFKFNLTF9QU19XSU5fUE9TKHBpcGUsIGlkKSwgY3J0Y19zdGF0ZS0+cGNoX3BmaXQucG9zKTsK
LQlJOTE1X1dSSVRFKFNLTF9QU19XSU5fU1oocGlwZSwgaWQpLCBjcnRjX3N0YXRlLT5wY2hfcGZp
dC5zaXplKTsKKwlJOTE1X1dSSVRFKFNLTF9QU19XSU5fUE9TKHBpcGUsIGlkKSwgeCA8PCAxNiB8
IHkpOworCUk5MTVfV1JJVEUoU0tMX1BTX1dJTl9TWihwaXBlLCBpZCksIHdpZHRoIDw8IDE2IHwg
aGVpZ2h0KTsKIH0KIAogc3RhdGljIHZvaWQgaXJvbmxha2VfcGZpdF9lbmFibGUoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CiAJc3RydWN0IGludGVsX2NydGMg
KmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPmJhc2UuY3J0Yyk7CiAJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CisJY29u
c3Qgc3RydWN0IGRybV9yZWN0ICpkc3QgPSAmY3J0Y19zdGF0ZS0+cGNoX3BmaXQuZHN0OwogCWVu
dW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKKwlpbnQgd2lkdGggPSBkcm1fcmVjdF93aWR0aChk
c3QpOworCWludCBoZWlnaHQgPSBkcm1fcmVjdF9oZWlnaHQoZHN0KTsKKwlpbnQgeCA9IGRzdC0+
eDE7CisJaW50IHkgPSBkc3QtPnkxOwogCiAJaWYgKCFjcnRjX3N0YXRlLT5wY2hfcGZpdC5lbmFi
bGVkKQogCQlyZXR1cm47CkBAIC01NjQ5LDggKzU2NTgsOCBAQCBzdGF0aWMgdm9pZCBpcm9ubGFr
ZV9wZml0X2VuYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkK
IAkJCSAgIFBGX1BJUEVfU0VMX0lWQihwaXBlKSk7CiAJZWxzZQogCQlJOTE1X1dSSVRFKFBGX0NU
TChwaXBlKSwgUEZfRU5BQkxFIHwgUEZfRklMVEVSX01FRF8zeDMpOwotCUk5MTVfV1JJVEUoUEZf
V0lOX1BPUyhwaXBlKSwgY3J0Y19zdGF0ZS0+cGNoX3BmaXQucG9zKTsKLQlJOTE1X1dSSVRFKFBG
X1dJTl9TWihwaXBlKSwgY3J0Y19zdGF0ZS0+cGNoX3BmaXQuc2l6ZSk7CisJSTkxNV9XUklURShQ
Rl9XSU5fUE9TKHBpcGUpLCB4IDw8IDE2IHwgeSk7CisJSTkxNV9XUklURShQRl9XSU5fU1oocGlw
ZSksIHdpZHRoIDw8IDE2IHwgaGVpZ2h0KTsKIH0KIAogdm9pZCBoc3dfZW5hYmxlX2lwcyhjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKQEAgLTczNTksOCArNzM2OCw3
IEBAIHN0YXRpYyBib29sIGludGVsX2NydGNfc3VwcG9ydHNfZG91YmxlX3dpZGUoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGMgKmNydGMpCiBzdGF0aWMgdTMyIGlsa19waXBlX3BpeGVsX3JhdGUoY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CiAJdTMyIHBpeGVsX3Jh
dGUgPSBjcnRjX3N0YXRlLT5iYXNlLmFkanVzdGVkX21vZGUuY3J0Y19jbG9jazsKLQl1MzIgcGZp
dF9zaXplID0gY3J0Y19zdGF0ZS0+cGNoX3BmaXQuc2l6ZTsKLQl1NjQgcGlwZV93LCBwaXBlX2gs
IHBmaXRfdywgcGZpdF9oOworCXVuc2lnbmVkIGludCBwaXBlX3csIHBpcGVfaCwgcGZpdF93LCBw
Zml0X2g7CiAKIAkvKgogCSAqIFdlIG9ubHkgdXNlIElGLUlEIGludGVybGFjaW5nLiBJZiB3ZSBl
dmVyIHVzZQpAQCAtNzM3Myw4ICs3MzgxLDkgQEAgc3RhdGljIHUzMiBpbGtfcGlwZV9waXhlbF9y
YXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCXBpcGVfdyA9
IGNydGNfc3RhdGUtPnBpcGVfc3JjX3c7CiAJcGlwZV9oID0gY3J0Y19zdGF0ZS0+cGlwZV9zcmNf
aDsKIAotCXBmaXRfdyA9IChwZml0X3NpemUgPj4gMTYpICYgMHhGRkZGOwotCXBmaXRfaCA9IHBm
aXRfc2l6ZSAmIDB4RkZGRjsKKwlwZml0X3cgPSBkcm1fcmVjdF93aWR0aCgmY3J0Y19zdGF0ZS0+
cGNoX3BmaXQuZHN0KTsKKwlwZml0X2ggPSBkcm1fcmVjdF9oZWlnaHQoJmNydGNfc3RhdGUtPnBj
aF9wZml0LmRzdCk7CisKIAlpZiAocGlwZV93IDwgcGZpdF93KQogCQlwaXBlX3cgPSBwZml0X3c7
CiAJaWYgKHBpcGVfaCA8IHBmaXRfaCkKQEAgLTk3MzYsNiArOTc0NSwxOCBAQCBzdGF0aWMgdm9p
ZCBpcm9ubGFrZV9nZXRfZmRpX21fbl9jb25maWcoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJ
CQkJICAgICAmcGlwZV9jb25maWctPmZkaV9tX24sIE5VTEwpOwogfQogCitzdGF0aWMgdm9pZCBp
bGtfZ2V0X3BmaXRfcG9zX3NpemUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUs
CisJCQkJICB1MzIgcG9zLCB1MzIgc2l6ZSkKK3sKKwljcnRjX3N0YXRlLT5wY2hfcGZpdC5kc3Qu
eDEgPSBwb3MgPj4gMTY7CisJY3J0Y19zdGF0ZS0+cGNoX3BmaXQuZHN0LnkxID0gcG9zICYgMHhm
ZmZmOworCisJY3J0Y19zdGF0ZS0+cGNoX3BmaXQuZHN0LngyID0gKHNpemUgPj4gMTYpICsKKwkJ
Y3J0Y19zdGF0ZS0+cGNoX3BmaXQuZHN0LngxOworCWNydGNfc3RhdGUtPnBjaF9wZml0LmRzdC55
MiA9IChzaXplICYgMHhmZmZmKSArCisJCWNydGNfc3RhdGUtPnBjaF9wZml0LmRzdC55MTsKK30K
Kwogc3RhdGljIHZvaWQgc2t5bGFrZV9nZXRfcGZpdF9jb25maWcoc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpCiB7CiAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRl
bF9jcnRjKGNydGNfc3RhdGUtPmJhc2UuY3J0Yyk7CkBAIC05NzU0LDggKzk3NzUsMTEgQEAgc3Rh
dGljIHZvaWQgc2t5bGFrZV9nZXRfcGZpdF9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUpCiAKIAkJaWQgPSBpOwogCQljcnRjX3N0YXRlLT5wY2hfcGZpdC5lbmFibGVk
ID0gdHJ1ZTsKLQkJY3J0Y19zdGF0ZS0+cGNoX3BmaXQucG9zID0gSTkxNV9SRUFEKFNLTF9QU19X
SU5fUE9TKGNydGMtPnBpcGUsIGkpKTsKLQkJY3J0Y19zdGF0ZS0+cGNoX3BmaXQuc2l6ZSA9IEk5
MTVfUkVBRChTS0xfUFNfV0lOX1NaKGNydGMtPnBpcGUsIGkpKTsKKworCQlpbGtfZ2V0X3BmaXRf
cG9zX3NpemUoY3J0Y19zdGF0ZSwKKwkJCQkgICAgICBJOTE1X1JFQUQoU0tMX1BTX1dJTl9QT1Mo
Y3J0Yy0+cGlwZSwgaSkpLAorCQkJCSAgICAgIEk5MTVfUkVBRChTS0xfUFNfV0lOX1NaKGNydGMt
PnBpcGUsIGkpKSk7CisKIAkJc2NhbGVyX3N0YXRlLT5zY2FsZXJzW2ldLmluX3VzZSA9IHRydWU7
CiAJCWJyZWFrOwogCX0KQEAgLTk5MTMsOCArOTkzNywxMCBAQCBzdGF0aWMgdm9pZCBpcm9ubGFr
ZV9nZXRfcGZpdF9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJ
CSh0bXAgJiBQRl9QSVBFX1NFTF9NQVNLX0lWQikgIT0gUEZfUElQRV9TRUxfSVZCKGNydGMtPnBp
cGUpKTsKIAogCWNydGNfc3RhdGUtPnBjaF9wZml0LmVuYWJsZWQgPSB0cnVlOwotCWNydGNfc3Rh
dGUtPnBjaF9wZml0LnBvcyA9IEk5MTVfUkVBRChQRl9XSU5fUE9TKGNydGMtPnBpcGUpKTsKLQlj
cnRjX3N0YXRlLT5wY2hfcGZpdC5zaXplID0gSTkxNV9SRUFEKFBGX1dJTl9TWihjcnRjLT5waXBl
KSk7CisKKwlpbGtfZ2V0X3BmaXRfcG9zX3NpemUoY3J0Y19zdGF0ZSwKKwkJCSAgICAgIEk5MTVf
UkVBRChQRl9XSU5fUE9TKGNydGMtPnBpcGUpKSwKKwkJCSAgICAgIEk5MTVfUkVBRChQRl9XSU5f
U1ooY3J0Yy0+cGlwZSkpKTsKIH0KIAogc3RhdGljIGJvb2wgaXJvbmxha2VfZ2V0X3BpcGVfY29u
ZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLApAQCAtMTIxMjYsOSArMTIxNTIsOCBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9kdW1wX3BpcGVfY29uZmlnKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpwaXBlX2NvbmZpZywKIAkJCSAgICAgIHBpcGVfY29uZmlnLT5nbWNoX3BmaXQucGdtX3Jh
dGlvcywKIAkJCSAgICAgIHBpcGVfY29uZmlnLT5nbWNoX3BmaXQubHZkc19ib3JkZXJfYml0cyk7
CiAJZWxzZQotCQlEUk1fREVCVUdfS01TKCJwY2ggcGZpdDogcG9zOiAweCUwOHgsIHNpemU6IDB4
JTA4eCwgJXMsIGZvcmNlIHRocnU6ICVzXG4iLAotCQkJICAgICAgcGlwZV9jb25maWctPnBjaF9w
Zml0LnBvcywKLQkJCSAgICAgIHBpcGVfY29uZmlnLT5wY2hfcGZpdC5zaXplLAorCQlEUk1fREVC
VUdfS01TKCJwY2ggcGZpdDogIiBEUk1fUkVDVF9GTVQgIiwgJXMsIGZvcmNlIHRocnU6ICVzXG4i
LAorCQkJICAgICAgRFJNX1JFQ1RfQVJHKCZwaXBlX2NvbmZpZy0+cGNoX3BmaXQuZHN0KSwKIAkJ
CSAgICAgIGVuYWJsZWRkaXNhYmxlZChwaXBlX2NvbmZpZy0+cGNoX3BmaXQuZW5hYmxlZCksCiAJ
CQkgICAgICB5ZXNubyhwaXBlX2NvbmZpZy0+cGNoX3BmaXQuZm9yY2VfdGhydSkpOwogCkBAIC0x
Mjc3OSw4ICsxMjgwNCwxMCBAQCBpbnRlbF9waXBlX2NvbmZpZ19jb21wYXJlKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjdXJyZW50X2NvbmZpZywKIAogCQlQSVBFX0NPTkZfQ0hFQ0tf
Qk9PTChwY2hfcGZpdC5lbmFibGVkKTsKIAkJaWYgKGN1cnJlbnRfY29uZmlnLT5wY2hfcGZpdC5l
bmFibGVkKSB7Ci0JCQlQSVBFX0NPTkZfQ0hFQ0tfWChwY2hfcGZpdC5wb3MpOwotCQkJUElQRV9D
T05GX0NIRUNLX1gocGNoX3BmaXQuc2l6ZSk7CisJCQlQSVBFX0NPTkZfQ0hFQ0tfSShwY2hfcGZp
dC5kc3QueDEpOworCQkJUElQRV9DT05GX0NIRUNLX0kocGNoX3BmaXQuZHN0LnkxKTsKKwkJCVBJ
UEVfQ09ORl9DSEVDS19JKHBjaF9wZml0LmRzdC54Mik7CisJCQlQSVBFX0NPTkZfQ0hFQ0tfSShw
Y2hfcGZpdC5kc3QueTIpOwogCQl9CiAKIAkJUElQRV9DT05GX0NIRUNLX0koc2NhbGVyX3N0YXRl
LnNjYWxlcl9pZCk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oCmluZGV4IDYxMjc3YTg3ZGJlNy4uODdlZDc2NTBlZTI3IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApA
QCAtOTAyLDggKzkwMiw3IEBAIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIHsKIAogCS8qIFBhbmVs
IGZpdHRlciBwbGFjZW1lbnQgYW5kIHNpemUgZm9yIElyb25sYWtlKyAqLwogCXN0cnVjdCB7Ci0J
CXUzMiBwb3M7Ci0JCXUzMiBzaXplOworCQlzdHJ1Y3QgZHJtX3JlY3QgZHN0OwogCQlib29sIGVu
YWJsZWQ7CiAJCWJvb2wgZm9yY2VfdGhydTsKIAl9IHBjaF9wZml0OwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jCmluZGV4IDQ2MDE0MTZjNjAzZS4uOGYyZTc3NTBl
OGY0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BhbmVs
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jCkBAIC0x
NzksMTMgKzE3OSwxMyBAQCBpbnRlbF9wY2hfcGFuZWxfZml0dGluZyhzdHJ1Y3QgaW50ZWxfY3J0
YyAqaW50ZWxfY3J0YywKIAkJCWludCBmaXR0aW5nX21vZGUpCiB7CiAJY29uc3Qgc3RydWN0IGRy
bV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUgPSAmcGlwZV9jb25maWctPmJhc2UuYWRqdXN0
ZWRfbW9kZTsKLQlpbnQgeCA9IDAsIHkgPSAwLCB3aWR0aCA9IDAsIGhlaWdodCA9IDA7CisJaW50
IHgsIHksIHdpZHRoLCBoZWlnaHQ7CiAKIAkvKiBOYXRpdmUgbW9kZXMgZG9uJ3QgbmVlZCBmaXR0
aW5nICovCiAJaWYgKGFkanVzdGVkX21vZGUtPmNydGNfaGRpc3BsYXkgPT0gcGlwZV9jb25maWct
PnBpcGVfc3JjX3cgJiYKIAkgICAgYWRqdXN0ZWRfbW9kZS0+Y3J0Y192ZGlzcGxheSA9PSBwaXBl
X2NvbmZpZy0+cGlwZV9zcmNfaCAmJgogCSAgICBwaXBlX2NvbmZpZy0+b3V0cHV0X2Zvcm1hdCAh
PSBJTlRFTF9PVVRQVVRfRk9STUFUX1lDQkNSNDIwKQotCQlnb3RvIGRvbmU7CisJCXJldHVybjsK
IAogCXN3aXRjaCAoZml0dGluZ19tb2RlKSB7CiAJY2FzZSBEUk1fTU9ERV9TQ0FMRV9DRU5URVI6
CkBAIC0yMzEsMTQgKzIzMSwxNSBAQCBpbnRlbF9wY2hfcGFuZWxfZml0dGluZyhzdHJ1Y3QgaW50
ZWxfY3J0YyAqaW50ZWxfY3J0YywKIAkJYnJlYWs7CiAKIAlkZWZhdWx0OgotCQlXQVJOKDEsICJi
YWQgcGFuZWwgZml0IG1vZGU6ICVkXG4iLCBmaXR0aW5nX21vZGUpOworCQlNSVNTSU5HX0NBU0Uo
Zml0dGluZ19tb2RlKTsKIAkJcmV0dXJuOwogCX0KIAotZG9uZToKLQlwaXBlX2NvbmZpZy0+cGNo
X3BmaXQucG9zID0gKHggPDwgMTYpIHwgeTsKLQlwaXBlX2NvbmZpZy0+cGNoX3BmaXQuc2l6ZSA9
ICh3aWR0aCA8PCAxNikgfCBoZWlnaHQ7Ci0JcGlwZV9jb25maWctPnBjaF9wZml0LmVuYWJsZWQg
PSBwaXBlX2NvbmZpZy0+cGNoX3BmaXQuc2l6ZSAhPSAwOworCXBpcGVfY29uZmlnLT5wY2hfcGZp
dC5kc3QueDEgPSB4OworCXBpcGVfY29uZmlnLT5wY2hfcGZpdC5kc3QueTEgPSB5OworCXBpcGVf
Y29uZmlnLT5wY2hfcGZpdC5kc3QueDIgPSB4ICsgd2lkdGg7CisJcGlwZV9jb25maWctPnBjaF9w
Zml0LmRzdC55MiA9IHkgKyBoZWlnaHQ7CisJcGlwZV9jb25maWctPnBjaF9wZml0LmVuYWJsZWQg
PSB0cnVlOwogfQogCiBzdGF0aWMgdm9pZApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggOWYz
MTg0ZTBkMmYxLi4yNjg3ZjdhMDQ3ZjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtNDEw
Niw3ICs0MTA2LDYgQEAgc2tsX3BpcGVfZG93bnNjYWxlX2Ftb3VudChjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKIAl1aW50X2ZpeGVkXzE2XzE2X3QgcGlwZV9k
b3duc2NhbGUgPSB1MzJfdG9fZml4ZWQxNigxKTsKIAl1MzIgc3JjX3csIHNyY19oLCBkc3Rfdywg
ZHN0X2g7Ci0JdTMyIHBmaXRfc2l6ZSA9IGNydGNfc3RhdGUtPnBjaF9wZml0LnNpemU7CiAJdWlu
dF9maXhlZF8xNl8xNl90IGZwX3dfcmF0aW8sIGZwX2hfcmF0aW87CiAJdWludF9maXhlZF8xNl8x
Nl90IGRvd25zY2FsZV9oLCBkb3duc2NhbGVfdzsKIApAQCAtNDExNiw4ICs0MTE1LDggQEAgc2ts
X3BpcGVfZG93bnNjYWxlX2Ftb3VudChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkKIAogCXNyY193ID0gY3J0Y19zdGF0ZS0+cGlwZV9zcmNfdzsKIAlzcmNfaCA9IGNy
dGNfc3RhdGUtPnBpcGVfc3JjX2g7Ci0JZHN0X3cgPSBwZml0X3NpemUgPj4gMTY7Ci0JZHN0X2gg
PSBwZml0X3NpemUgJiAweGZmZmY7CisJZHN0X3cgPSBkcm1fcmVjdF93aWR0aCgmY3J0Y19zdGF0
ZS0+cGNoX3BmaXQuZHN0KTsKKwlkc3RfaCA9IGRybV9yZWN0X2hlaWdodCgmY3J0Y19zdGF0ZS0+
cGNoX3BmaXQuZHN0KTsKIAogCWlmICghZHN0X3cgfHwgIWRzdF9oKQogCQlyZXR1cm4gcGlwZV9k
b3duc2NhbGU7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
