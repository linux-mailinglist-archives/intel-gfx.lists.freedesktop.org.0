Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1141BD91E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 12:10:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6F686EA5F;
	Wed, 29 Apr 2020 10:10:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E3AA6EA5F
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 10:10:41 +0000 (UTC)
IronPort-SDR: un0yUt94ORJq6SUxgcVQdSFMUoGhtZIiK45sXDBRd2Hr/dqoQB8SVIoGybw0PJCbZ1RkAjpZTi
 Ai/pwHDvBVCA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 03:10:40 -0700
IronPort-SDR: bLHKv5VQ8fJn5Gun7yqKA4n99Mu52hDA4eDISRQ4LJo4hRvMdTzJQQr6wzFcDIpuD0BcC8jlP+
 f5bmxgToW5QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,331,1583222400"; d="scan'208";a="261388314"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 29 Apr 2020 03:10:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Apr 2020 13:10:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 13:10:23 +0300
Message-Id: <20200429101034.8208-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/12] drm/i915/fbc: Require linear fb stride to
 be multiple of 512 bytes on gen9/glk
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRp
c3BsYXkgV0EgIzExMDUgc2F5cyB0aGF0IEZCQyByZXF1aXJlcyBQTEFORV9TVFJJREUgdG8gYmUg
YSBtdWx0aXBsZQpvZiA1MTIgYnl0ZXMgb24gZ2VuOSBhbmQgZ2xrLgoKVGhpcyBpcyBkZWZpbml0
ZWx5IHRydWUgZm9yIGdsayBhcyBjZXJ0YWluIHRlc3RzIChzdWNoIGFzCmlndC9rbXNfYmlnX2Zi
L2xpbmVhci0xNmJwcC1yb3RhdGUtMCkgYXJlIG5vdyBmYWlsaW5nIHdoZW4gdGhlCmRpc3BsYXkg
cmVzb2x1dGlvbiByZXN1bHRzIGluIGEgcGxhbmUgc3RyaWRlIHdoaWNoIGlzIG5vdCBhCm11bHRp
cGxlIG9mIDUxMiBieXRlcy4KCkN1cmlvdXNseSBJIHdhcyBub3QgYWJsZSB0byByZXByb2R1Y2Ug
dGhpcyBvbiBhIEtCTC4gRmlyc3QgSQpzdXNwZWN0ZWQgdGhhdCBvdXIgdXNlIG9mIHRoZSBGQkMg
b3ZlcnJpZGUgc3RyaWRlIGV4cGxhaW4gdGhpcywKYnV0IGFmdGVyIHRyeWluZyB0byB1c2UgdGhl
IG92ZXJyaWRlIHN0cmlkZSBvbiBnbGsgdGhlIHRlc3QKc3RpbGwgZmFpbGVkLiBJIGRpZCB0cnkg
Ym90aCB0aGUgb2xkIENISUNLRU5fTUlTQ180IHdheSBhbmQKdGhlIG5ldyBGQkNfQ0hJQ0tFTiB3
YXksIG5laXRoZXIgaGFkIGFueSBlZmZlY3Qgb24gdGhlIHJlc3VsdC4KCkFueXdheXMsIHdlIG5l
ZWQgdGhpcyBhdCBsZWFzdCBvbiBnbGsuIEJ1dCBsZXQncyB0cnVzdCB0aGUgc3BlYwphbmQgYXBw
bHkgdGhlIHcvYSBmb3IgYWxsIGdlbjkgYXMgd2VsbCwgZGVzcGl0ZSBiZWluZyB1bmFibGUgdG8K
cmVwcm9kdWNlIHRoZSBwcm9ibGVtLgoKQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgpGaXhlczogNjkxZjdiYTU4ZDUyICgiZHJtL2k5MTUvZGlzcGxheS9m
YmM6IE1ha2UgZmVuY2VzIGEgbmljZS10by1oYXZlIGZvciBHRU45KyIpClNpZ25lZC1vZmYtYnk6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDkgKysrKysrKy0tCiAxIGZp
bGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCmluZGV4IGM2YWZhMTBlODE0Yy4uNzE5NGY5YmM2
MmM1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKQEAgLTU2NCw3
ICs1NjQsNyBAQCB2b2lkIGludGVsX2ZiY19jbGVhbnVwX2NmYihzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCiB9CiAKIHN0YXRpYyBib29sIHN0cmlkZV9pc192YWxpZChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCi0JCQkgICAgdW5zaWduZWQgaW50IHN0cmlkZSkK
KwkJCSAgICB1NjQgbW9kaWZpZXIsIHVuc2lnbmVkIGludCBzdHJpZGUpCiB7CiAJLyogVGhpcyBz
aG91bGQgaGF2ZSBiZWVuIGNhdWdodCBlYXJsaWVyLiAqLwogCWlmIChkcm1fV0FSTl9PTl9PTkNF
KCZkZXZfcHJpdi0+ZHJtLCAoc3RyaWRlICYgKDY0IC0gMSkpICE9IDApKQpAQCAtNTgwLDYgKzU4
MCwxMSBAQCBzdGF0aWMgYm9vbCBzdHJpZGVfaXNfdmFsaWQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LAogCWlmIChJU19HRU4oZGV2X3ByaXYsIDQpICYmICFJU19HNFgoZGV2X3By
aXYpICYmIHN0cmlkZSA8IDIwNDgpCiAJCXJldHVybiBmYWxzZTsKIAorCS8qIERpc3BsYXkgV0Eg
IzExMDU6IHNrbCxieHQsa2JsLGNmbCxnbGsgKi8KKwlpZiAoSVNfR0VOKGRldl9wcml2LCA5KSAm
JgorCSAgICBtb2RpZmllciA9PSBEUk1fRk9STUFUX01PRF9MSU5FQVIgJiYgc3RyaWRlICYgNTEx
KQorCQlyZXR1cm4gZmFsc2U7CisKIAlpZiAoc3RyaWRlID4gMTYzODQpCiAJCXJldHVybiBmYWxz
ZTsKIApAQCAtODEwLDcgKzgxNSw3IEBAIHN0YXRpYyBib29sIGludGVsX2ZiY19jYW5fYWN0aXZh
dGUoc3RydWN0IGludGVsX2NydGMgKmNydGMpCiAJCXJldHVybiBmYWxzZTsKIAl9CiAKLQlpZiAo
IXN0cmlkZV9pc192YWxpZChkZXZfcHJpdiwgY2FjaGUtPmZiLnN0cmlkZSkpIHsKKwlpZiAoIXN0
cmlkZV9pc192YWxpZChkZXZfcHJpdiwgY2FjaGUtPmZiLm1vZGlmaWVyLCBjYWNoZS0+ZmIuc3Ry
aWRlKSkgewogCQlmYmMtPm5vX2ZiY19yZWFzb24gPSAiZnJhbWVidWZmZXIgc3RyaWRlIG5vdCBz
dXBwb3J0ZWQiOwogCQlyZXR1cm4gZmFsc2U7CiAJfQotLSAKMi4yNC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
