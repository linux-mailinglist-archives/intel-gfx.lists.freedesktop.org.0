Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C48452D0516
	for <lists+intel-gfx@lfdr.de>; Sun,  6 Dec 2020 14:20:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFA2589D6C;
	Sun,  6 Dec 2020 13:20:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3A1E89D6C
 for <intel-gfx@lists.freedesktop.org>; Sun,  6 Dec 2020 13:20:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23231643-1500050 
 for multiple; Sun, 06 Dec 2020 13:20:05 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  6 Dec 2020 13:20:03 +0000
Message-Id: <20201206132003.1912-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <877dpvb4g4.fsf@intel.com>
References: <877dpvb4g4.fsf@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Inject a failure into the
 initial modeset
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RXhwZXJpbWVudCB3aXRoIGhvdyBmYXVsdCB0b2xlcmFudCB3ZSBhcmUgaWYgdGhlIGluaXRpYWwg
bW9kZXNldCBmYWlscwphbmQgd2UgbmVlZCB0byBhYm9ydCB0aGUgZHJpdmVyIGxvYWQuCgpTdWdn
ZXN0ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDYgKysrKystCiAxIGZpbGUg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBjNTY3YzBjYWRhN2UuLjg3NWE3
YzFkZGYwOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKQEAgLTE4NDk1LDggKzE4NDk1LDEyIEBAIHN0YXRpYyBpbnQgaW50ZWxfaW5pdGlhbF9jb21t
aXQoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIAkJfQogCX0KIAotCXJldCA9IGRybV9hdG9taWNf
Y29tbWl0KHN0YXRlKTsKKwlpZiAoaTkxNV9pbmplY3RfcHJvYmVfZmFpbHVyZSh0b19pOTE1KGRl
dikpKSB7CisJCXJldCA9IC1FTk9ERVY7CisJCWdvdG8gb3V0OworCX0KIAorCXJldCA9IGRybV9h
dG9taWNfY29tbWl0KHN0YXRlKTsKIG91dDoKIAlpZiAocmV0ID09IC1FREVBRExLKSB7CiAJCWRy
bV9hdG9taWNfc3RhdGVfY2xlYXIoc3RhdGUpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
