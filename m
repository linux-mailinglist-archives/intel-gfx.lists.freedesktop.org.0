Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60490E56E7
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 01:06:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E87F6EBC2;
	Fri, 25 Oct 2019 23:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87B736EBC2
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 23:06:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 16:06:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,230,1569308400"; d="scan'208";a="282396815"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by orsmga001.jf.intel.com with ESMTP; 25 Oct 2019 16:06:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 16:06:20 -0700
Message-Id: <20191025230623.27829-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191025230623.27829-1-matthew.d.roper@intel.com>
References: <20191025230623.27829-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Drop unused AUX register offsets
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

V2UgcmVmZXJlbmNlIERQIEFVWCByZWdpc3RlcnMgdmlhIHRoZSBEUF9BVVhfQ0hfQ1RMKCkgYW5k
CkRQX0FVWF9DSF9EQVRBKCkgbWFjcm9zIHRoYXQgY2FsY3VsYXRlIGFsbCB0aGUgcmVnaXN0ZXIg
b2Zmc2V0cyBmb3IgdXMKYXV0b21hdGljYWxseTsgdGhlcmUncyBubyBuZWVkIHRvIGV4cGxpY2l0
bHkgZGVmaW5lIGV2ZXJ5IG9mZnNldCBpbgppOTE1X3JlZy5oIGlmIHRoZXkncmUgbmV2ZXIgZ29p
bmcgdG8gYmUgdXNlZCBieSB0aGUgZHJpdmVyIGNvZGUuCgpTaWduZWQtb2ZmLWJ5OiBNYXR0IFJv
cGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggfCAzNiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAzNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA4
Y2Q0MGU3YWY2MTguLmNiZjZkZjAwMjc3MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC01
NTM4LDQ1ICs1NTM4LDkgQEAgZW51bSB7CiAgKi8KICNkZWZpbmUgX0RQQV9BVVhfQ0hfQ1RMCQko
RElTUExBWV9NTUlPX0JBU0UoZGV2X3ByaXYpICsgMHg2NDAxMCkKICNkZWZpbmUgX0RQQV9BVVhf
Q0hfREFUQTEJKERJU1BMQVlfTU1JT19CQVNFKGRldl9wcml2KSArIDB4NjQwMTQpCi0jZGVmaW5l
IF9EUEFfQVVYX0NIX0RBVEEyCShESVNQTEFZX01NSU9fQkFTRShkZXZfcHJpdikgKyAweDY0MDE4
KQotI2RlZmluZSBfRFBBX0FVWF9DSF9EQVRBMwkoRElTUExBWV9NTUlPX0JBU0UoZGV2X3ByaXYp
ICsgMHg2NDAxYykKLSNkZWZpbmUgX0RQQV9BVVhfQ0hfREFUQTQJKERJU1BMQVlfTU1JT19CQVNF
KGRldl9wcml2KSArIDB4NjQwMjApCi0jZGVmaW5lIF9EUEFfQVVYX0NIX0RBVEE1CShESVNQTEFZ
X01NSU9fQkFTRShkZXZfcHJpdikgKyAweDY0MDI0KQogCiAjZGVmaW5lIF9EUEJfQVVYX0NIX0NU
TAkJKERJU1BMQVlfTU1JT19CQVNFKGRldl9wcml2KSArIDB4NjQxMTApCiAjZGVmaW5lIF9EUEJf
QVVYX0NIX0RBVEExCShESVNQTEFZX01NSU9fQkFTRShkZXZfcHJpdikgKyAweDY0MTE0KQotI2Rl
ZmluZSBfRFBCX0FVWF9DSF9EQVRBMgkoRElTUExBWV9NTUlPX0JBU0UoZGV2X3ByaXYpICsgMHg2
NDExOCkKLSNkZWZpbmUgX0RQQl9BVVhfQ0hfREFUQTMJKERJU1BMQVlfTU1JT19CQVNFKGRldl9w
cml2KSArIDB4NjQxMWMpCi0jZGVmaW5lIF9EUEJfQVVYX0NIX0RBVEE0CShESVNQTEFZX01NSU9f
QkFTRShkZXZfcHJpdikgKyAweDY0MTIwKQotI2RlZmluZSBfRFBCX0FVWF9DSF9EQVRBNQkoRElT
UExBWV9NTUlPX0JBU0UoZGV2X3ByaXYpICsgMHg2NDEyNCkKLQotI2RlZmluZSBfRFBDX0FVWF9D
SF9DVEwJCShESVNQTEFZX01NSU9fQkFTRShkZXZfcHJpdikgKyAweDY0MjEwKQotI2RlZmluZSBf
RFBDX0FVWF9DSF9EQVRBMQkoRElTUExBWV9NTUlPX0JBU0UoZGV2X3ByaXYpICsgMHg2NDIxNCkK
LSNkZWZpbmUgX0RQQ19BVVhfQ0hfREFUQTIJKERJU1BMQVlfTU1JT19CQVNFKGRldl9wcml2KSAr
IDB4NjQyMTgpCi0jZGVmaW5lIF9EUENfQVVYX0NIX0RBVEEzCShESVNQTEFZX01NSU9fQkFTRShk
ZXZfcHJpdikgKyAweDY0MjFjKQotI2RlZmluZSBfRFBDX0FVWF9DSF9EQVRBNAkoRElTUExBWV9N
TUlPX0JBU0UoZGV2X3ByaXYpICsgMHg2NDIyMCkKLSNkZWZpbmUgX0RQQ19BVVhfQ0hfREFUQTUJ
KERJU1BMQVlfTU1JT19CQVNFKGRldl9wcml2KSArIDB4NjQyMjQpCi0KLSNkZWZpbmUgX0RQRF9B
VVhfQ0hfQ1RMCQkoRElTUExBWV9NTUlPX0JBU0UoZGV2X3ByaXYpICsgMHg2NDMxMCkKLSNkZWZp
bmUgX0RQRF9BVVhfQ0hfREFUQTEJKERJU1BMQVlfTU1JT19CQVNFKGRldl9wcml2KSArIDB4NjQz
MTQpCi0jZGVmaW5lIF9EUERfQVVYX0NIX0RBVEEyCShESVNQTEFZX01NSU9fQkFTRShkZXZfcHJp
dikgKyAweDY0MzE4KQotI2RlZmluZSBfRFBEX0FVWF9DSF9EQVRBMwkoRElTUExBWV9NTUlPX0JB
U0UoZGV2X3ByaXYpICsgMHg2NDMxYykKLSNkZWZpbmUgX0RQRF9BVVhfQ0hfREFUQTQJKERJU1BM
QVlfTU1JT19CQVNFKGRldl9wcml2KSArIDB4NjQzMjApCi0jZGVmaW5lIF9EUERfQVVYX0NIX0RB
VEE1CShESVNQTEFZX01NSU9fQkFTRShkZXZfcHJpdikgKyAweDY0MzI0KQotCi0jZGVmaW5lIF9E
UEVfQVVYX0NIX0NUTAkJKERJU1BMQVlfTU1JT19CQVNFKGRldl9wcml2KSArIDB4NjQ0MTApCi0j
ZGVmaW5lIF9EUEVfQVVYX0NIX0RBVEExCShESVNQTEFZX01NSU9fQkFTRShkZXZfcHJpdikgKyAw
eDY0NDE0KQotI2RlZmluZSBfRFBFX0FVWF9DSF9EQVRBMgkoRElTUExBWV9NTUlPX0JBU0UoZGV2
X3ByaXYpICsgMHg2NDQxOCkKLSNkZWZpbmUgX0RQRV9BVVhfQ0hfREFUQTMJKERJU1BMQVlfTU1J
T19CQVNFKGRldl9wcml2KSArIDB4NjQ0MWMpCi0jZGVmaW5lIF9EUEVfQVVYX0NIX0RBVEE0CShE
SVNQTEFZX01NSU9fQkFTRShkZXZfcHJpdikgKyAweDY0NDIwKQotI2RlZmluZSBfRFBFX0FVWF9D
SF9EQVRBNQkoRElTUExBWV9NTUlPX0JBU0UoZGV2X3ByaXYpICsgMHg2NDQyNCkKLQotI2RlZmlu
ZSBfRFBGX0FVWF9DSF9DVEwJCShESVNQTEFZX01NSU9fQkFTRShkZXZfcHJpdikgKyAweDY0NTEw
KQotI2RlZmluZSBfRFBGX0FVWF9DSF9EQVRBMQkoRElTUExBWV9NTUlPX0JBU0UoZGV2X3ByaXYp
ICsgMHg2NDUxNCkKLSNkZWZpbmUgX0RQRl9BVVhfQ0hfREFUQTIJKERJU1BMQVlfTU1JT19CQVNF
KGRldl9wcml2KSArIDB4NjQ1MTgpCi0jZGVmaW5lIF9EUEZfQVVYX0NIX0RBVEEzCShESVNQTEFZ
X01NSU9fQkFTRShkZXZfcHJpdikgKyAweDY0NTFjKQotI2RlZmluZSBfRFBGX0FVWF9DSF9EQVRB
NAkoRElTUExBWV9NTUlPX0JBU0UoZGV2X3ByaXYpICsgMHg2NDUyMCkKLSNkZWZpbmUgX0RQRl9B
VVhfQ0hfREFUQTUJKERJU1BMQVlfTU1JT19CQVNFKGRldl9wcml2KSArIDB4NjQ1MjQpCiAKICNk
ZWZpbmUgRFBfQVVYX0NIX0NUTChhdXhfY2gpCV9NTUlPX1BPUlQoYXV4X2NoLCBfRFBBX0FVWF9D
SF9DVEwsIF9EUEJfQVVYX0NIX0NUTCkKICNkZWZpbmUgRFBfQVVYX0NIX0RBVEEoYXV4X2NoLCBp
KQlfTU1JTyhfUE9SVChhdXhfY2gsIF9EUEFfQVVYX0NIX0RBVEExLCBfRFBCX0FVWF9DSF9EQVRB
MSkgKyAoaSkgKiA0KSAvKiA1IHJlZ2lzdGVycyAqLwotLSAKMi4yMS4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
