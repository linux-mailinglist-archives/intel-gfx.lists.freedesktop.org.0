Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FD749682
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 03:01:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3776C6E0C5;
	Tue, 18 Jun 2019 01:01:11 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D6606E0BA
 for <Intel-GFX@lists.freedesktop.org>; Tue, 18 Jun 2019 01:01:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 18:01:08 -0700
X-ExtLoop1: 1
Received: from relo-linux-5.ra.intel.com ([10.54.133.84])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jun 2019 18:01:08 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Mon, 17 Jun 2019 18:01:05 -0700
Message-Id: <20190618010108.27499-2-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190618010108.27499-1-John.C.Harrison@Intel.com>
References: <20190618010108.27499-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Support flags in whitlist WAs
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

RnJvbTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KCk5ld2VyIGhh
cmR3YXJlIGFkZHMgZmxhZ3MgdG8gdGhlIHdoaXRlbGlzdCB3b3JrLWFyb3VuZCByZWdpc3Rlci4g
VGhlc2UKYWxsb3cgcGVyIGFjY2VzcyBkaXJlY3Rpb24gcHJpdmlsZWdlcyBhbmQgcmFuZ2VzLgoK
U2lnbmVkLW9mZi1ieTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogUm9iZXJ0IE0uIEZvc2hhIDxyb2JlcnQubS5mb3NoYUBpbnRlbC5jb20+
CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpDYzogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDkgKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgIHwgNyArKysrKysrCiAyIGZpbGVzIGNoYW5nZWQs
IDE1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYwppbmRleCAxNjViMGE0NWUwMDkuLmFlODIzNDBmZmY0NSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC0xMDEy
LDcgKzEwMTIsNyBAQCBib29sIGludGVsX2d0X3ZlcmlmeV93b3JrYXJvdW5kcyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwKIH0KIAogc3RhdGljIHZvaWQKLXdoaXRlbGlzdF9yZWcoc3Ry
dWN0IGk5MTVfd2FfbGlzdCAqd2FsLCBpOTE1X3JlZ190IHJlZykKK3doaXRlbGlzdF9yZWdfZXh0
KHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgaTkxNV9yZWdfdCByZWcsIHUzMiBmbGFncykKIHsK
IAlzdHJ1Y3QgaTkxNV93YSB3YSA9IHsKIAkJLnJlZyA9IHJlZwpAQCAtMTAyMSw5ICsxMDIxLDE2
IEBAIHdoaXRlbGlzdF9yZWcoc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsLCBpOTE1X3JlZ190IHJl
ZykKIAlpZiAoR0VNX0RFQlVHX1dBUk5fT04od2FsLT5jb3VudCA+PSBSSU5HX01BWF9OT05QUklW
X1NMT1RTKSkKIAkJcmV0dXJuOwogCisJd2EucmVnLnJlZyB8PSBmbGFnczsKIAlfd2FfYWRkKHdh
bCwgJndhKTsKIH0KIAorc3RhdGljIHZvaWQKK3doaXRlbGlzdF9yZWcoc3RydWN0IGk5MTVfd2Ff
bGlzdCAqd2FsLCBpOTE1X3JlZ190IHJlZykKK3sKKwl3aGl0ZWxpc3RfcmVnX2V4dCh3YWwsIHJl
ZywgUklOR19GT1JDRV9UT19OT05QUklWX1JXKTsKK30KKwogc3RhdGljIHZvaWQgZ2VuOV93aGl0
ZWxpc3RfYnVpbGQoc3RydWN0IGk5MTVfd2FfbGlzdCAqdykKIHsKIAkvKiBXYVZGRVN0YXRlQWZ0
ZXJQaXBlQ29udHJvbHdpdGhNZWRpYVN0YXRlQ2xlYXI6c2tsLGJ4dCxnbGssY2ZsICovCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaAppbmRleCA3YTI2NzY2YmE4NGQuLmNjMjk1YTRmNmU5MiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oCkBAIC0yNTEzLDYgKzI1MTMsMTMgQEAgZW51bSBpOTE1X3Bvd2Vy
X3dlbGxfaWQgewogI2RlZmluZSAgIFJJTkdfV0FJVF9TRU1BUEhPUkUJKDEgPDwgMTApIC8qIGdl
bjYrICovCiAKICNkZWZpbmUgUklOR19GT1JDRV9UT19OT05QUklWKGJhc2UsIGkpIF9NTUlPKCgo
YmFzZSkgKyAweDREMCkgKyAoaSkgKiA0KQorI2RlZmluZSAgIFJJTkdfRk9SQ0VfVE9fTk9OUFJJ
Vl9SVwkJKDAgPDwgMjgpICAgIC8qIENGTCsgJiBHZW4xMSsgKi8KKyNkZWZpbmUgICBSSU5HX0ZP
UkNFX1RPX05PTlBSSVZfUkQJCSgxIDw8IDI4KQorI2RlZmluZSAgIFJJTkdfRk9SQ0VfVE9fTk9O
UFJJVl9XUgkJKDIgPDwgMjgpCisjZGVmaW5lICAgUklOR19GT1JDRV9UT19OT05QUklWX1JBTkdF
XzEJCSgwIDw8IDApICAgICAvKiBDRkwrICYgR2VuMTErICovCisjZGVmaW5lICAgUklOR19GT1JD
RV9UT19OT05QUklWX1JBTkdFXzQJCSgxIDw8IDApCisjZGVmaW5lICAgUklOR19GT1JDRV9UT19O
T05QUklWX1JBTkdFXzE2CSgyIDw8IDApCisjZGVmaW5lICAgUklOR19GT1JDRV9UT19OT05QUklW
X1JBTkdFXzY0CSgzIDw8IDApCiAjZGVmaW5lICAgUklOR19NQVhfTk9OUFJJVl9TTE9UUyAgMTIK
IAogI2RlZmluZSBHRU43X1RMQl9SRF9BRERSCV9NTUlPKDB4NDcwMCkKLS0gCjIuMjEuMC41Lmdh
ZWI1ODJhOTgzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
