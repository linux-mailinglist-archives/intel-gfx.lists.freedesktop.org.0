Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C47734BFA9
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Mar 2021 00:58:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DEC189FCE;
	Sun, 28 Mar 2021 22:58:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B839789FCE
 for <intel-gfx@lists.freedesktop.org>; Sun, 28 Mar 2021 22:57:58 +0000 (UTC)
IronPort-SDR: zMkv75g5UnYo7lz7DYZlOz0CfTdQr8hTrCMWWebIQacYFuWxHxmFH+A0j9qnYKLfELzkc0LI3V
 38lF9KG5eVAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9937"; a="255444010"
X-IronPort-AV: E=Sophos;i="5.81,285,1610438400"; d="scan'208";a="255444010"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2021 15:57:58 -0700
IronPort-SDR: Q8dccCKBN1D18lOv3KbrKg8TdQRHsHN9T0h7F7NB9ts7tYC4yhskPI4p6Eyy7EsbrLYuja/EI3
 jtQEoqHJlEvA==
X-IronPort-AV: E=Sophos;i="5.81,285,1610438400"; d="scan'208";a="376213807"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2021 15:57:58 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 28 Mar 2021 15:57:07 -0700
Message-Id: <20210328225709.18541-16-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
References: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 15/16] drm/i915/pxp: black pixels on pxp
 disabled
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
Cc: Gaurav Kumar <kumar.gaurav@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KCldoZW4gcHJv
dGVjdGVkIHN1ZmFjZXMgaGFzIGZsaXBwZWQgYW5kIHB4cCBzZXNzaW9uIGlzIGRpc2FibGVkCmRp
c3BsYXkgYmxhY2sgcGl4ZWxzIGJ5IHVzaW5nIHBsYW5lIGNvbG9yIENUTSBjb3JyZWN0aW9uLgoK
Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBH
YXVyYXYgS3VtYXIgPGt1bWFyLmdhdXJhdkBpbnRlbC5jb20+CkNjOiBTaGFua2FyIFVtYSA8dW1h
LnNoYW5rYXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVt
YW4uZ3VwdGFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlv
IDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgotLS0KIC4uLi9kcm0vaTkxNS9kaXNw
bGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYyAgICB8IDQwICsrKysrKysrKysrKysrKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8IDQ2ICsrKysrKysrKysr
KysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgODQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJz
YWxfcGxhbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9w
bGFuZS5jCmluZGV4IGIyMWJmYjViZTg3Ni4uZTdhNTVjNzIzM2NkIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYwpAQCAtOTQ5LDYg
Kzk0OSwzMyBAQCBza2xfbWFpbl90b19hdXhfcGxhbmUoY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1
ZmZlciAqZmIsIGludCBtYWluX3BsYW5lKQogCQlyZXR1cm4gMDsKIH0KIAorc3RhdGljIHZvaWQg
aW50ZWxfbG9hZF9wbGFuZV9jc2NfYmxhY2soc3RydWN0IGludGVsX3BsYW5lICppbnRlbF9wbGFu
ZSkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGludGVs
X3BsYW5lLT5iYXNlLmRldik7CisJZW51bSBwaXBlIHBpcGUgPSBpbnRlbF9wbGFuZS0+cGlwZTsK
KwllbnVtIHBsYW5lX2lkIHBsYW5lID0gaW50ZWxfcGxhbmUtPmlkOworCXUxNiBwb3N0b2ZmID0g
MDsKKworCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAicGxhbmUgY29sb3IgQ1RNIHRvIGJs
YWNrICAlczolZFxuIiwKKwkJICAgIGludGVsX3BsYW5lLT5iYXNlLm5hbWUsIHBsYW5lKTsKKwlp
bnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExBTkVfQ1NDX0NPRUZGKHBpcGUsIHBsYW5lLCAw
KSwgMCk7CisJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFBMQU5FX0NTQ19DT0VGRihwaXBl
LCBwbGFuZSwgMSksIDApOworCisJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFBMQU5FX0NT
Q19DT0VGRihwaXBlLCBwbGFuZSwgMiksIDApOworCWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2
LCBQTEFORV9DU0NfQ09FRkYocGlwZSwgcGxhbmUsIDMpLCAwKTsKKworCWludGVsX2RlX3dyaXRl
X2Z3KGRldl9wcml2LCBQTEFORV9DU0NfQ09FRkYocGlwZSwgcGxhbmUsIDQpLCAwKTsKKwlpbnRl
bF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExBTkVfQ1NDX0NPRUZGKHBpcGUsIHBsYW5lLCA1KSwg
MCk7CisKKwlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExBTkVfQ1NDX1BSRU9GRihwaXBl
LCBwbGFuZSwgMCksIDApOworCWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBQTEFORV9DU0Nf
UFJFT0ZGKHBpcGUsIHBsYW5lLCAxKSwgMCk7CisJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYs
IFBMQU5FX0NTQ19QUkVPRkYocGlwZSwgcGxhbmUsIDIpLCAwKTsKKworCWludGVsX2RlX3dyaXRl
X2Z3KGRldl9wcml2LCBQTEFORV9DU0NfUE9TVE9GRihwaXBlLCBwbGFuZSwgMCksIHBvc3RvZmYp
OworCWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBQTEFORV9DU0NfUE9TVE9GRihwaXBlLCBw
bGFuZSwgMSksIHBvc3RvZmYpOworCWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBQTEFORV9D
U0NfUE9TVE9GRihwaXBlLCBwbGFuZSwgMiksIHBvc3RvZmYpOworfQorCiBzdGF0aWMgdm9pZAog
c2tsX3Byb2dyYW1fcGxhbmUoc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKIAkJICBjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKQEAgLTEwNTMsMTMgKzEwODAsMjIg
QEAgc2tsX3Byb2dyYW1fcGxhbmUoc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKIAkgKi8KIAlp
bnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExBTkVfQ1RMKHBpcGUsIHBsYW5lX2lkKSwgcGxh
bmVfY3RsKTsKIAlwbGFuZV9zdXJmID0gaW50ZWxfcGxhbmVfZ2d0dF9vZmZzZXQocGxhbmVfc3Rh
dGUpICsgc3VyZl9hZGRyOworCXBsYW5lX2NvbG9yX2N0bCA9IGludGVsX2RlX3JlYWRfZncoZGV2
X3ByaXYsIFBMQU5FX0NPTE9SX0NUTChwaXBlLCBwbGFuZV9pZCkpOwogCiAJaWYgKGludGVsX3B4
cF9pc19hY3RpdmUoJmRldl9wcml2LT5ndC5weHApICYmCi0JICAgIGk5MTVfZ2VtX29iamVjdF9o
YXNfdmFsaWRfcHJvdGVjdGlvbihpbnRlbF9mYl9vYmooZmIpKSkKKwkgICAgaTkxNV9nZW1fb2Jq
ZWN0X2hhc192YWxpZF9wcm90ZWN0aW9uKGludGVsX2ZiX29iaihmYikpKSB7CiAJCXBsYW5lX3N1
cmYgfD0gUExBTkVfU1VSRl9ERUNSWVBUSU9OX0VOQUJMRUQ7Ci0JZWxzZQorCQlwbGFuZV9jb2xv
cl9jdGwgJj0gflBMQU5FX0NPTE9SX1BMQU5FX0NTQ19FTkFCTEU7CisJfSBlbHNlIGlmIChpOTE1
X2dlbV9vYmplY3RfaXNfcHJvdGVjdGVkKGludGVsX2ZiX29iaihmYikpKSB7CisJCWludGVsX2xv
YWRfcGxhbmVfY3NjX2JsYWNrKHBsYW5lKTsKKwkJcGxhbmVfY29sb3JfY3RsIHw9IFBMQU5FX0NP
TE9SX1BMQU5FX0NTQ19FTkFCTEU7CisJfSBlbHNlIHsKIAkJcGxhbmVfc3VyZiAmPSB+UExBTkVf
U1VSRl9ERUNSWVBUSU9OX0VOQUJMRUQ7CisJCXBsYW5lX2NvbG9yX2N0bCAmPSB+UExBTkVfQ09M
T1JfUExBTkVfQ1NDX0VOQUJMRTsKKwl9CiAKKwlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwg
UExBTkVfQ09MT1JfQ1RMKHBpcGUsIHBsYW5lX2lkKSwKKwkJCSAgcGxhbmVfY29sb3JfY3RsKTsK
IAlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExBTkVfU1VSRihwaXBlLCBwbGFuZV9pZCks
IHBsYW5lX3N1cmYpOwogCiAJaWYgKHBsYW5lX3N0YXRlLT5zY2FsZXJfaWQgPj0gMCkKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCmluZGV4IGEwMzEzZDcxODkwNS4uMzVjZDgxNDI5Yjk3IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgKQEAgLTcxMTMsNiArNzExMyw3IEBAIGVudW0gewogI2RlZmluZSBf
UExBTkVfQ09MT1JfQ1RMXzNfQQkJCTB4NzAzQ0MgLyogR0xLKyAqLwogI2RlZmluZSAgIFBMQU5F
X0NPTE9SX1BJUEVfR0FNTUFfRU5BQkxFCQkoMSA8PCAzMCkgLyogUHJlLUlDTCAqLwogI2RlZmlu
ZSAgIFBMQU5FX0NPTE9SX1lVVl9SQU5HRV9DT1JSRUNUSU9OX0RJU0FCTEUJKDEgPDwgMjgpCisj
ZGVmaW5lICAgUExBTkVfQ09MT1JfUExBTkVfQ1NDX0VOQUJMRQkJCSgxIDw8IDIxKSAvKiBJQ0wr
ICovCiAjZGVmaW5lICAgUExBTkVfQ09MT1JfSU5QVVRfQ1NDX0VOQUJMRQkJKDEgPDwgMjApIC8q
IElDTCsgKi8KICNkZWZpbmUgICBQTEFORV9DT0xPUl9QSVBFX0NTQ19FTkFCTEUJCSgxIDw8IDIz
KSAvKiBQcmUtSUNMICovCiAjZGVmaW5lICAgUExBTkVfQ09MT1JfQ1NDX01PREVfQllQQVNTCQkJ
KDAgPDwgMTcpCkBAIC0xMTE4NSw2ICsxMTE4Niw1MSBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsK
IAkJCQkJX1BBTF9QUkVDX01VTFRJX1NFR19EQVRBX0EsIFwKIAkJCQkJX1BBTF9QUkVDX01VTFRJ
X1NFR19EQVRBX0IpCiAKKyNkZWZpbmUgX01NSU9fUExBTkVfR0FNQyhwbGFuZSwgaSwgYSwgYikg
IF9NTUlPKF9QSVBFKHBsYW5lLCBhLCBiKSArIChpKSAqIDQpCisKKy8qIFBsYW5lIENTQyBSZWdp
c3RlcnMgKi8KKyNkZWZpbmUgX1BMQU5FX0NTQ19SWV9HWV8xX0EJMHg3MDIxMAorI2RlZmluZSBf
UExBTkVfQ1NDX1JZX0dZXzJfQQkweDcwMzEwCisKKyNkZWZpbmUgX1BMQU5FX0NTQ19SWV9HWV8x
X0IJMHg3MTIxMAorI2RlZmluZSBfUExBTkVfQ1NDX1JZX0dZXzJfQgkweDcxMzEwCisKKyNkZWZp
bmUgX1BMQU5FX0NTQ19SWV9HWV8xKHBpcGUpCV9QSVBFKHBpcGUsIF9QTEFORV9DU0NfUllfR1lf
MV9BLCBcCisJCQkJCSAgICAgIF9QTEFORV9DU0NfUllfR1lfMV9CKQorI2RlZmluZSBfUExBTkVf
Q1NDX1JZX0dZXzIocGlwZSkJX1BJUEUocGlwZSwgX1BMQU5FX0lOUFVUX0NTQ19SWV9HWV8yX0Es
IFwKKwkJCQkJICAgICAgX1BMQU5FX0lOUFVUX0NTQ19SWV9HWV8yX0IpCisjZGVmaW5lIFBMQU5F
X0NTQ19DT0VGRihwaXBlLCBwbGFuZSwgaW5kZXgpCV9NTUlPX1BMQU5FKHBsYW5lLCBcCisJCQkJ
CQkJICAgIF9QTEFORV9DU0NfUllfR1lfMShwaXBlKSArICAoaW5kZXgpICogNCwgXAorCQkJCQkJ
CSAgICBfUExBTkVfQ1NDX1JZX0dZXzIocGlwZSkgKyAoaW5kZXgpICogNCkKKworI2RlZmluZSBf
UExBTkVfQ1NDX1BSRU9GRl9ISV8xX0EJCTB4NzAyMjgKKyNkZWZpbmUgX1BMQU5FX0NTQ19QUkVP
RkZfSElfMl9BCQkweDcwMzI4CisKKyNkZWZpbmUgX1BMQU5FX0NTQ19QUkVPRkZfSElfMV9CCQkw
eDcxMjI4CisjZGVmaW5lIF9QTEFORV9DU0NfUFJFT0ZGX0hJXzJfQgkJMHg3MTMyOAorCisjZGVm
aW5lIF9QTEFORV9DU0NfUFJFT0ZGX0hJXzEocGlwZSkJX1BJUEUocGlwZSwgX1BMQU5FX0NTQ19Q
UkVPRkZfSElfMV9BLCBcCisJCQkJCSAgICAgIF9QTEFORV9DU0NfUFJFT0ZGX0hJXzFfQikKKyNk
ZWZpbmUgX1BMQU5FX0NTQ19QUkVPRkZfSElfMihwaXBlKQlfUElQRShwaXBlLCBfUExBTkVfQ1ND
X1BSRU9GRl9ISV8yX0EsIFwKKwkJCQkJICAgICAgX1BMQU5FX0NTQ19QUkVPRkZfSElfMl9CKQor
I2RlZmluZSBQTEFORV9DU0NfUFJFT0ZGKHBpcGUsIHBsYW5lLCBpbmRleCkJX01NSU9fUExBTkUo
cGxhbmUsIF9QTEFORV9DU0NfUFJFT0ZGX0hJXzEocGlwZSkgKyBcCisJCQkJCQkJICAgIChpbmRl
eCkgKiA0LCBfUExBTkVfQ1NDX1BSRU9GRl9ISV8yKHBpcGUpICsgXAorCQkJCQkJCSAgICAoaW5k
ZXgpICogNCkKKworI2RlZmluZSBfUExBTkVfQ1NDX1BPU1RPRkZfSElfMV9BCQkweDcwMjM0Cisj
ZGVmaW5lIF9QTEFORV9DU0NfUE9TVE9GRl9ISV8yX0EJCTB4NzAzMzQKKworI2RlZmluZSBfUExB
TkVfQ1NDX1BPU1RPRkZfSElfMV9CCQkweDcxMjM0CisjZGVmaW5lIF9QTEFORV9DU0NfUE9TVE9G
Rl9ISV8yX0IJCTB4NzEzMzQKKworI2RlZmluZSBfUExBTkVfQ1NDX1BPU1RPRkZfSElfMShwaXBl
KQlfUElQRShwaXBlLCBfUExBTkVfQ1NDX1BPU1RPRkZfSElfMV9BLCBcCisJCQkJCSAgICAgIF9Q
TEFORV9DU0NfUE9TVE9GRl9ISV8xX0IpCisjZGVmaW5lIF9QTEFORV9DU0NfUE9TVE9GRl9ISV8y
KHBpcGUpCV9QSVBFKHBpcGUsIF9QTEFORV9DU0NfUE9TVE9GRl9ISV8yX0EsIFwKKwkJCQkJICAg
ICAgX1BMQU5FX0NTQ19QT1NUT0ZGX0hJXzJfQikKKyNkZWZpbmUgUExBTkVfQ1NDX1BPU1RPRkYo
cGlwZSwgcGxhbmUsIGluZGV4KQlfTU1JT19QTEFORShwbGFuZSwgX1BMQU5FX0NTQ19QT1NUT0ZG
X0hJXzEocGlwZSkgKyBcCisJCQkJCQkJICAgIChpbmRleCkgKiA0LCBfUExBTkVfQ1NDX1BPU1RP
RkZfSElfMihwaXBlKSArIFwKKwkJCQkJCQkgICAgKGluZGV4KSAqIDQpCisKIC8qIHBpcGUgQ1ND
ICYgZGVnYW1tYS9nYW1tYSBMVVRzIG9uIENIViAqLwogI2RlZmluZSBfQ0dNX1BJUEVfQV9DU0Nf
Q09FRkYwMQkoVkxWX0RJU1BMQVlfQkFTRSArIDB4Njc5MDApCiAjZGVmaW5lIF9DR01fUElQRV9B
X0NTQ19DT0VGRjIzCShWTFZfRElTUExBWV9CQVNFICsgMHg2NzkwNCkKLS0gCjIuMjkuMgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
