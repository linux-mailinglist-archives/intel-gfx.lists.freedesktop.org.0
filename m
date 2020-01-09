Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D08135B1D
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 15:12:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 010AE6E43D;
	Thu,  9 Jan 2020 14:12:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 287036E43D
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 14:12:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19821916-1500050 
 for multiple; Thu, 09 Jan 2020 14:11:53 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jan 2020 14:11:52 +0000
Message-Id: <20200109141152.975687-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Validation rotated vma bounds are
 within the object
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

UXVpdGUgdW5kZXJzdGFuZGFibHksIHdlIGJ1ZyBvdXQgd2hlbiBhc2tlZCB0byBmaW5kIGEgcGFn
ZSB0aGF0IGRvZXNuJ3QKYmVsb25nIHRvIHRoZSBvYmplY3QuIEhvd2V2ZXIsIHdlIHNob3VsZCBy
ZXBvcnQgdGhlIGVycm9yIGJhY2sgdG8gdGhlCnVzZXIgbG9uZyBiZWZvcmUgd2UgYXR0ZW1wdCB0
aGUgb3V0LW9mLWJvdW5kIGFjY2VzcyEgSW4gdGhpcyBjYXNlLCBpdCBpcwppbnN1ZmZpY2llbnQg
dmFsaWRhdGlvbiBvbiB0aGUgcm90YXRlZCB2bWEsIHdpdGggdGhlIHNpbXBsZXN0L2NoZWFwZXN0
CnBvaW50IGZvciB1cyB0byBpbnNlcnQgYSBib3VuZCBjaGVjayB3aGVuIHdlIGFyZSBjb21wdXRp
bmcgdGhlIHJvdGF0ZWQKcGFnZSBsb29rdXBzLgoKU2ltaWxhcmx5LCBpdCBtaWdodCBiZSB3aXNl
IHRvIHNlZSBpZiB3ZSBjYW4gdmFsaWRhdGUgdGhlIHVzZXIgaW5wdXQKdXBvbiBjcmVhdGluZyB0
aGUgcm90YXRlZCBmcmFtZWJ1ZmZlci4KCkNsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvOTUxClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVs
LmNvbQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYyB8IDIxICsrKysr
KysrKysrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ2d0
dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ2d0dC5jCmluZGV4IDk5MTg5Y2Ri
YThhOS4uNTlhNjA5NjhhNmRhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9nZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ2d0dC5jCkBA
IC0xMjgzLDYgKzEyODMsNyBAQCBzdGF0aWMgbm9pbmxpbmUgc3RydWN0IHNnX3RhYmxlICoKIGlu
dGVsX3JvdGF0ZV9wYWdlcyhzdHJ1Y3QgaW50ZWxfcm90YXRpb25faW5mbyAqcm90X2luZm8sCiAJ
CSAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiB7CisJY29uc3QgdW5zaWduZWQg
bG9uZyBucGFnZXMgPSBvYmotPmJhc2Uuc2l6ZSA+PiBQQUdFX1NISUZUOwogCXVuc2lnbmVkIGlu
dCBzaXplID0gaW50ZWxfcm90YXRpb25faW5mb19zaXplKHJvdF9pbmZvKTsKIAlzdHJ1Y3Qgc2df
dGFibGUgKnN0OwogCXN0cnVjdCBzY2F0dGVybGlzdCAqc2c7CkBAIC0xMzAyLDkgKzEzMDMsMjMg
QEAgaW50ZWxfcm90YXRlX3BhZ2VzKHN0cnVjdCBpbnRlbF9yb3RhdGlvbl9pbmZvICpyb3RfaW5m
bywKIAlzZyA9IHN0LT5zZ2w7CiAKIAlmb3IgKGkgPSAwIDsgaSA8IEFSUkFZX1NJWkUocm90X2lu
Zm8tPnBsYW5lKTsgaSsrKSB7Ci0JCXNnID0gcm90YXRlX3BhZ2VzKG9iaiwgcm90X2luZm8tPnBs
YW5lW2ldLm9mZnNldCwKLQkJCQkgIHJvdF9pbmZvLT5wbGFuZVtpXS53aWR0aCwgcm90X2luZm8t
PnBsYW5lW2ldLmhlaWdodCwKLQkJCQkgIHJvdF9pbmZvLT5wbGFuZVtpXS5zdHJpZGUsIHN0LCBz
Zyk7CisJCWNvbnN0IHN0cnVjdCBpbnRlbF9yZW1hcHBlZF9wbGFuZV9pbmZvICpwbGFuZSA9CisJ
CQkmcm90X2luZm8tPnBsYW5lW2ldOworCQl1bnNpZ25lZCBsb25nIGxhc3Q7CisKKwkJbGFzdCA9
IHBsYW5lLT5vZmZzZXQ7CisJCWxhc3QgKz0gKHBsYW5lLT5oZWlnaHQgLSAxKSAqIHBsYW5lLT5z
dHJpZGU7CisJCWxhc3QgKz0gcGxhbmUtPndpZHRoIC0gMTsKKwkJaWYgKGxhc3QgPj0gbnBhZ2Vz
KSB7CisJCQlyZXQgPSAtRUlOVkFMOworCQkJZ290byBlcnJfc2dfYWxsb2M7CisJCX0KKworCQlz
ZyA9IHJvdGF0ZV9wYWdlcyhvYmosCisJCQkJICBwbGFuZS0+b2Zmc2V0LAorCQkJCSAgcGxhbmUt
PndpZHRoLCBwbGFuZS0+aGVpZ2h0LAorCQkJCSAgcGxhbmUtPnN0cmlkZSwKKwkJCQkgIHN0LCBz
Zyk7CiAJfQogCiAJcmV0dXJuIHN0OwotLSAKMi4yNS4wLnJjMgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
