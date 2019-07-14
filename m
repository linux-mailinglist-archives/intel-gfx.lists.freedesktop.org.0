Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB9C67EFD
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Jul 2019 14:39:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC9BC8967F;
	Sun, 14 Jul 2019 12:39:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A6618967F
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Jul 2019 12:39:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17285323-1500050 
 for multiple; Sun, 14 Jul 2019 13:39:25 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 14 Jul 2019 13:39:23 +0100
Message-Id: <20190714123923.850-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <f4d7d506-bed5-c205-8532-0d360f9eee04@gmail.com>
References: <f4d7d506-bed5-c205-8532-0d360f9eee04@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Prevent GFP with !CONFIG_TMPFS and
 remounting shmemfs
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
Cc: Heiner Kallweit <hkallweit1@gmail.com>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgQ09ORklHX1RNUEZTIGlzIG5vdCBzZXQsIHRoZW4gdGhlIHNobWVtZnMgZG9lcyBub3Qgc3Vw
cG9ydApyZW1vdW50aW5nLiBXZSBhcmUgdXNpbmcgdGhlIHJlbW91bnQgaW4gb3JkZXIgdG8gc2V0
IG1vdW50IG9wdGlvbnMgb24Kb3VyIHByaXZhdGUgZ2VtZnMgKHNobWVtZnMpIGtlcm5fbW91bnQu
IElmIHdlIGNhbid0IHBhc3Mgb3B0aW9ucwpkaXJlY3RseSBvbiBjcmVhdGluZyB0aGUgbW91bnRw
b2ludCwgYW5kIHdlIGNhbid0IHJlbGlhYmx5IHJlbW91bnQsIHNldAp0aGUgb3B0aW9uIHdpdGhp
biB0aGUgc3VwZXJibG9jayBkaXJlY3RseS4gVW5mb3J0dW5hdGVseSB0aGUgZGVmaW5lcyBmb3IK
c2JfaW5mby0+aHVnZSBhcmUgcHJpdmF0ZSB0byBzaG1lbWZzLCBzbyB3ZSBoYXZlIHRvIGhvcGUg
dGhleSBkb24ndApjaGFuZ2Ugd2l0aG91dCB1cyBub3RpY2luZy4KClJlcG9ydGVkLWJ5OiBIZWlu
ZXIgS2FsbHdlaXQgPGhrYWxsd2VpdDFAZ21haWwuY29tPgpGaXhlczogYjkwMWJiODkzMjRhICgi
ZHJtL2k5MTUvZ2VtZnM6IGVuYWJsZSBUSFAiKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxk
QGludGVsLmNvbT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4Lmlu
dGVsLmNvbT4KQ2M6IEhlaW5lciBLYWxsd2VpdCA8aGthbGx3ZWl0MUBnbWFpbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtZnMuYyB8IDE0ICsrKystLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1mcy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtZnMuYwppbmRleCAwOTlmMzM5N2FhZGEuLjU5MTAzMTVm
MjA2OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtZnMuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1mcy5jCkBAIC03LDYgKzcsNyBA
QAogI2luY2x1ZGUgPGxpbnV4L2ZzLmg+CiAjaW5jbHVkZSA8bGludXgvbW91bnQuaD4KICNpbmNs
dWRlIDxsaW51eC9wYWdlbWFwLmg+CisjaW5jbHVkZSA8bGludXgvc2htZW1fZnMuaD4KIAogI2lu
Y2x1ZGUgImk5MTVfZHJ2LmgiCiAjaW5jbHVkZSAiaTkxNV9nZW1mcy5oIgpAQCAtMzMsMTcgKzM0
LDEwIEBAIGludCBpOTE1X2dlbWZzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
CiAJICovCiAKIAlpZiAoaGFzX3RyYW5zcGFyZW50X2h1Z2VwYWdlKCkpIHsKLQkJc3RydWN0IHN1
cGVyX2Jsb2NrICpzYiA9IGdlbWZzLT5tbnRfc2I7CisJCXN0cnVjdCBzaG1lbV9zYl9pbmZvICpz
Yl9pbmZvID0gZ2VtZnMtPm1udF9zYi0+c19mc19pbmZvOworCiAJCS8qIEZJWE1FOiBEaXNhYmxl
ZCB1bnRpbCB3ZSBnZXQgVy9BIGZvciByZWFkIEJXIGlzc3VlLiAqLwotCQljaGFyIG9wdGlvbnNb
XSA9ICJodWdlPW5ldmVyIjsKLQkJaW50IGZsYWdzID0gMDsKLQkJaW50IGVycjsKLQotCQllcnIg
PSBzYi0+c19vcC0+cmVtb3VudF9mcyhzYiwgJmZsYWdzLCBvcHRpb25zKTsKLQkJaWYgKGVycikg
ewotCQkJa2Vybl91bm1vdW50KGdlbWZzKTsKLQkJCXJldHVybiBlcnI7Ci0JCX0KKwkJc2JfaW5m
by0+aHVnZSA9IDA7IC8qIFNITUVNX0hVR0VfTkVWRVIgKi8KIAl9CiAKIAlpOTE1LT5tbS5nZW1m
cyA9IGdlbWZzOwotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
