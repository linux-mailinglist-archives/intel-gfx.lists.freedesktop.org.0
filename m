Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E19EA24450
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 01:25:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADC53891C2;
	Mon, 20 May 2019 23:25:47 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CD72891C2
 for <Intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 23:25:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 16:25:45 -0700
X-ExtLoop1: 1
Received: from unknown (HELO kialmah1-mobl1.jf.intel.com) ([10.241.230.151])
 by orsmga007.jf.intel.com with ESMTP; 20 May 2019 16:25:45 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 20 May 2019 16:25:41 -0700
Message-Id: <20190520232541.16085-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Fix the interpretation of
 MAX_PRE-EMPHASIS_REACHED bit inorder to pass Link Layer compliance test
 number 400.3.1.15
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
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWNjb3JkaW5nIHRvIERQIDEuNCBzdGFuZGFyZCwgaWYgdGhlIHNvdXJjZSBzdXBwb3J0cyBmb3Vy
IHByZS1lbXBoYXNpcyBsZXZlbHMsIHRoZW4gdGhlIHNvdXJjZSBzaGFsbCBzZXQgdGhlIGJpdCBN
QVhfUFJFLUVNUEhBU0lTX1JFQUNIRUQgPSAxIG9ubHkgd2hlbiB0cmFzbWl0dGVyIHByb2dyYW1t
ZWQgUFJFLUVNUEhBU0lTX1NFVCBmaWVsZCAoYml0cyA0OjMpIHRvIDExYiAoTGV2ZWwgMykuIFBy
ZS1lbXBoYXNpcyBsZXZlbCAzIGlzIHRoZSBtYXhpbXVtIHByZS1lbXBoYXNpcyBsZXZlbCB0aGF0
IHRoZSBzb3VyY2Ugc3VwcG9ydHMuCkN1cnJlbnRseSB0aGUgTUFYX1BSRS1FTVBIQVNJU19SRUFD
SEVEIGJpdCBpcyBpbnRlcnByZXRlZCBhcyB0aGUgTWF4IFByZS1FbXBoYXNpcyBsZXZlbCBmb3Ig
Y2VydGFpbiBTd2luZyBMZXZlbC4gVGhpcyBpbnRlcnByZXRhdGlvbiBmYWlscyBMaW5rIExheWVy
IGNvbXBsaWFuY2UgdGVzdCA0MDAuMy4xLjE1IHN0ZXAgMTcgYWNjb3JkaW5nIHRvIHRoZSBmb2xs
b3dpbmcgRmFpbCBjb25kaXRpb246IFRSQUlOSU5HX0xBTkV4X1NFVC5NQVhfUFJFLUVNUEhBU0lT
X1JFQUNIRUQgPSAxIChjaGVjayBhbGwgYWN0aXZlIGxhbmVzKSBhbmQgdGhlIFNvdXJjZSBEVVQg
c3VwcG9ydHMgcHJlLWVtcGhhc2lzIGxldmVsIDMgKDkuNWRiKS4KCkNjOiBDbGludCBUYXlsb3Ig
PENsaW50b24uQS5UYXlsb3JAaW50ZWwuY29tPgpDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQu
bmF2YXJlQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogS2hhbGVkIEFsbWFoYWxsYXd5IDxraGFs
ZWQuYWxtYWhhbGxhd3lAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RkaS5jIHwgMjAgLS0tLS0tLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RwLmMgIHwgIDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIxIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RkaS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGRpLmMKaW5kZXggMGFmNDdmMzQzZmFhLi42
NTQwYzk3OWMwOTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RkaS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RkaS5jCkBAIC0yMjM5LDI2ICsyMjM5
LDYgQEAgdTggaW50ZWxfZGRpX2RwX3ZvbHRhZ2VfbWF4KHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyKQogCQlEUF9UUkFJTl9WT0xUQUdFX1NXSU5HX01BU0s7CiB9CiAKLS8qCi0gKiBXZSBh
c3N1bWUgdGhhdCB0aGUgZnVsbCBzZXQgb2YgcHJlLWVtcGhhc2lzIHZhbHVlcyBjYW4gYmUKLSAq
IHVzZWQgb24gYWxsIERESSBwbGF0Zm9ybXMuIFNob3VsZCB0aGF0IGNoYW5nZSB3ZSBuZWVkIHRv
Ci0gKiByZXRoaW5rIHRoaXMgY29kZS4KLSAqLwotdTggaW50ZWxfZGRpX2RwX3ByZV9lbXBoYXNp
c19tYXgoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsIHU4IHZvbHRhZ2Vfc3dpbmcpCi17
Ci0Jc3dpdGNoICh2b2x0YWdlX3N3aW5nICYgRFBfVFJBSU5fVk9MVEFHRV9TV0lOR19NQVNLKSB7
Ci0JY2FzZSBEUF9UUkFJTl9WT0xUQUdFX1NXSU5HX0xFVkVMXzA6Ci0JCXJldHVybiBEUF9UUkFJ
Tl9QUkVfRU1QSF9MRVZFTF8zOwotCWNhc2UgRFBfVFJBSU5fVk9MVEFHRV9TV0lOR19MRVZFTF8x
OgotCQlyZXR1cm4gRFBfVFJBSU5fUFJFX0VNUEhfTEVWRUxfMjsKLQljYXNlIERQX1RSQUlOX1ZP
TFRBR0VfU1dJTkdfTEVWRUxfMjoKLQkJcmV0dXJuIERQX1RSQUlOX1BSRV9FTVBIX0xFVkVMXzE7
Ci0JY2FzZSBEUF9UUkFJTl9WT0xUQUdFX1NXSU5HX0xFVkVMXzM6Ci0JZGVmYXVsdDoKLQkJcmV0
dXJuIERQX1RSQUlOX1BSRV9FTVBIX0xFVkVMXzA7Ci0JfQotfQotCiBzdGF0aWMgdm9pZCBjbmxf
ZGRpX3Zzd2luZ19wcm9ncmFtKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJCSAg
IGludCBsZXZlbCwgZW51bSBpbnRlbF9vdXRwdXRfdHlwZSB0eXBlKQogewpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RwLmMKaW5kZXggNzdiYTRkYTZiOTgxLi5mOTQ3NTllNDU4NjIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZHAuYwpAQCAtMzU0MSw3ICszNTQxLDcgQEAgaW50ZWxfZHBfcHJlX2VtcGhhc2lzX21h
eChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCB1OCB2b2x0YWdlX3N3aW5nKQogCWVudW0gcG9y
dCBwb3J0ID0gZW5jb2Rlci0+cG9ydDsKIAogCWlmIChIQVNfRERJKGRldl9wcml2KSkgewotCQly
ZXR1cm4gaW50ZWxfZGRpX2RwX3ByZV9lbXBoYXNpc19tYXgoZW5jb2Rlciwgdm9sdGFnZV9zd2lu
Zyk7CisJCXJldHVybiBEUF9UUkFJTl9QUkVfRU1QSF9MRVZFTF8zOwogCX0gZWxzZSBpZiAoSVNf
VkFMTEVZVklFVyhkZXZfcHJpdikgfHwgSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikpIHsKIAkJc3dp
dGNoICh2b2x0YWdlX3N3aW5nICYgRFBfVFJBSU5fVk9MVEFHRV9TV0lOR19NQVNLKSB7CiAJCWNh
c2UgRFBfVFJBSU5fVk9MVEFHRV9TV0lOR19MRVZFTF8wOgotLSAKMi4xNy4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
